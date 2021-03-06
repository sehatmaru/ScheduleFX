package controller;

import helper.AutoCompleteBoxHelper;
import helper.DijkstraHelper;
import helper.SQLHelper;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.scene.text.Text;
import model.Jadwal;

import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class GenerateDijkstra implements Initializable {

    @FXML
    private AnchorPane dijkstraPane;
    @FXML
    private TextField kelasField;
    @FXML
    private ComboBox<String> ruanganCombo;
    @FXML
    private ComboBox<String> hariCombo;
    @FXML
    private Text totalData;
    @FXML
    private TableView<Jadwal> tblDataJadwal;
    @FXML
    private TableColumn<Jadwal, String> tblKolomDosen;
    @FXML
    private TableColumn<Jadwal, String> tblKolomMatkul;
    @FXML
    private TableColumn<Jadwal, String> tblKolomKelas;
    @FXML
    private TableColumn<Jadwal, String> tblKolomSesi;
    @FXML
    private TableColumn<Jadwal, String> tblKolomRuangan;
    @FXML
    private TableColumn<Jadwal, String> tblKolomKategori;

    public Button btnSetRuangan;
    public Button btnDashboard;
    public Button btnGenerateDijkstra;
    public Button btnSetManual;
    public Button btnSetRuanganPerHari;
    public Button btnToOutput;

    private ObservableList<Jadwal> ol;
    private ObservableList<String> ruangan;
    private ObservableList<String> hari;
    private Connection connec;
    private PreparedStatement prs;
    private ResultSet rs_jadwal;
    private String sql_jadwal;
    private String id_ruangan = null;
    private String id_jadwal = null;
    private String id_matkul = null;
    private String id_kelas = null;
    private int hari_dipilih;

    private int kelasSize;
    private int sesiSize;
    private int ruanganSize;
    private String ruangan_unset = null;

    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        connec = SQLHelper.getConnection();
        ol = FXCollections.observableArrayList();
        ruangan = FXCollections.observableArrayList();
        hari = FXCollections.observableArrayList();

        fillComboBox();
        fillSesi();
        fillKelas();
        fillRuangan();
        fromTableToTextField();
        setCellValue();
    }

    @FXML
    private void setRuanganAction() {
        String[] id = (ruanganCombo.getSelectionModel().getSelectedItem()).split(" ");

        try {
            String sql = "SELECT * FROM ruangan WHERE nama=?";
            prs = connec.prepareStatement(sql);
            prs.setString(1, id[0]);
            rs_jadwal = prs.executeQuery();

            while (rs_jadwal.next()){
                id_ruangan = rs_jadwal.getString("no");
            }
        } catch (SQLException e) {
            System.out.println("Erorr");
        }

        String sql_ruangan = "UPDATE ruangan SET status=? WHERE nama=?";

        try {
            prs = connec.prepareStatement(sql_ruangan);
            prs.setInt(1, 2);
            prs.setString(2, id[0]);
            prs.executeUpdate();
            prs.close();
        } catch (SQLException ex) {
            System.out.println("Erorr");
        }

        String sql = "UPDATE jadwal SET no_ruangan=? WHERE id_jadwal=?";

        try {
            prs = connec.prepareStatement(sql);
            prs.setString(1, id_ruangan);
            prs.setString(2, id_jadwal);
            int exec = prs.executeUpdate();

            if(exec == 1){
                Alert alert = new Alert(Alert.AlertType.INFORMATION, "Berhasil di-set", ButtonType.OK);
                alert.setTitle("Set Ruangan");
                alert.showAndWait();
                loadDataFromDatabase(onClickHariCombo());
                fillComboBox();
                clearText();
            }

            prs.close();
        } catch (SQLException ex) {
            System.out.println("Erorr");
        }
    }

    @FXML
    private void toDashboard() {
        try{
            AnchorPane ap = FXMLLoader.load(getClass().getResource("../view/dashboard.fxml"));
            dijkstraPane.getChildren().setAll(ap);
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    private void setCellValue() {
        tblKolomDosen.setCellValueFactory(new PropertyValueFactory<>("dosen"));
        tblKolomMatkul.setCellValueFactory(new PropertyValueFactory<>("mataKuliah"));
        tblKolomKelas.setCellValueFactory(new PropertyValueFactory<>("kelas"));
        tblKolomSesi.setCellValueFactory(new PropertyValueFactory<>("sesi"));
        tblKolomRuangan.setCellValueFactory(new PropertyValueFactory<>("ruangan"));
        tblKolomKategori.setCellValueFactory(new PropertyValueFactory<>("kategori"));
    }

    private void loadDataFromDatabase(int hari) {
        ol.clear();
        try {
            for (int k=kelasSize;k>0;k--){
                boolean filled = false;

                for (int s=sesiSize;s>0;s--){
                    if (!filled){
                        if (checkHari(hari, k, s)){
                            rs_jadwal = connec.createStatement().executeQuery(sql_jadwal);

                            while (rs_jadwal.next()){
                                int no_matkul = rs_jadwal.getInt("matkul_id");
                                if (no_matkul == 28 || no_matkul == 29 || no_matkul == 30 || no_matkul == 31 ||
                                        no_matkul == 32 || no_matkul == 33 || no_matkul ==34){
                                    System.out.println("Preference matkul");
                                } else {
                                    Jadwal jadwal = new Jadwal();

                                    jadwal.setId(rs_jadwal.getString("id"));
                                    jadwal.setDosen(rs_jadwal.getString("dosen"));
                                    jadwal.setDosenId(rs_jadwal.getString("dosen_id"));
                                    jadwal.setMataKuliah(rs_jadwal.getString("matkul"));
                                    jadwal.setMataKuliahId(rs_jadwal.getString("matkul_id"));
                                    jadwal.setKelas(rs_jadwal.getString("kelas"));
                                    jadwal.setKelasId(rs_jadwal.getString("kelas_id"));
                                    jadwal.setHari(rs_jadwal.getString("hari"));
                                    jadwal.setHariId(rs_jadwal.getString("hari_id"));
                                    jadwal.setSesi(rs_jadwal.getString("sesi"));
                                    jadwal.setSesiId(rs_jadwal.getString("sesi_id"));
                                    jadwal.setRuangan(rs_jadwal.getString("ruangan"));
                                    jadwal.setRuanganId(rs_jadwal.getString("ruangan_id"));
                                    jadwal.setKategori(rs_jadwal.getString("kategori"));

                                    ol.add(jadwal);
                                    filled = true;
                                }
                            }
                        }
                    }
                }
            }

            totalData.setText("Total Data : " + ol.size());
        } catch (SQLException ex) {
            System.out.println("Erorr nih");
        }
        tblDataJadwal.setItems(ol);
    }

    private void fromTableToTextField() {
        tblDataJadwal.setOnMouseClicked((MouseEvent event) -> {
            Jadwal jadwal = tblDataJadwal.getItems().get(tblDataJadwal.getSelectionModel().getSelectedIndex());
            if (jadwal != null){
                id_jadwal = jadwal.getId();
                id_matkul = jadwal.getMataKuliahId();
                id_ruangan = jadwal.getRuanganId();
                id_kelas = jadwal.getKelasId();
                kelasField.setText(jadwal.getKelas());
                refreshRuanganComboBox();
            }
        });
    }

    private void refreshRuanganComboBox() {
        ruanganCombo.setEditable(true);
        ruanganCombo.getItems().clear();

        ruanganCombo.setItems(checkKapasitas());
        new AutoCompleteBoxHelper(ruanganCombo);
    }

    private void clearText(){
        kelasField.setText("");
        ruanganCombo.setValue("");
    }

    public void onClickRuanganCombo() {
        String sql = "SELECT * FROM ruangan WHERE nama=?";
        try {
            prs = connec.prepareStatement(sql);
            prs.setString(1, ruanganCombo.getSelectionModel().getSelectedItem());
            rs_jadwal = prs.executeQuery();

            while (rs_jadwal.next()){
                id_ruangan = rs_jadwal.getString("no");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void fillComboBox(){
        ruanganCombo.setEditable(true);
        ruanganCombo.getItems().clear();
        hariCombo.getItems().clear();

        try {
            String sql = "SELECT * FROM ruangan WHERE status='1' OR status='3'";
            prs = connec.prepareStatement(sql);
            rs_jadwal = prs.executeQuery();

            while (rs_jadwal.next()){
                ruangan.add(rs_jadwal.getString("nama") + " | " + rs_jadwal.getString("kapasitas"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            String sql = "SELECT * FROM hari WHERE status='1' ORDER BY no DESC";
            prs = connec.prepareStatement(sql);
            rs_jadwal = prs.executeQuery();

            while (rs_jadwal.next()){
                hari.add(rs_jadwal.getString("nama"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        ruanganCombo.setItems(ruangan);
        hariCombo.setItems(hari);
        new AutoCompleteBoxHelper(ruanganCombo);
    }

    public void generateDijkstra() throws SQLException {
        DijkstraHelper.main(Integer.parseInt(id_kelas), hari_dipilih);

        Alert alert = new Alert(Alert.AlertType.INFORMATION, "Berhasil di-generate", ButtonType.OK);
        alert.setTitle("Set Ruangan");
        alert.showAndWait();
        clearText();
    }

    @FXML
    private void toOutput() {
        try{
            AnchorPane ap = FXMLLoader.load(getClass().getResource("../view/output.fxml"));
            dijkstraPane.getChildren().setAll(ap);
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    public int onClickHariCombo() {
        String sql = "SELECT * FROM hari WHERE nama=?";
        try {
            prs = connec.prepareStatement(sql);
            prs.setString(1, hariCombo.getSelectionModel().getSelectedItem());
            rs_jadwal = prs.executeQuery();

            while (rs_jadwal.next()){
                hari_dipilih = Integer.parseInt(rs_jadwal.getString("no"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        loadDataFromDatabase(hari_dipilih);

        return hari_dipilih;
    }

    private void fillRuangan() {
        try {
            String sql = "SELECT * FROM ruangan ORDER BY no DESC";
            prs = connec.prepareStatement(sql);
            rs_jadwal = prs.executeQuery();

            while (rs_jadwal.next()){
                if (rs_jadwal.getString("nama").equalsIgnoreCase("Belum di-set")){
                    ruangan_unset = rs_jadwal.getString("no");
                }
                ruanganSize++;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void fillKelas() {
        try {
            String sql = "SELECT * FROM kelas ORDER BY no DESC";
            prs = connec.prepareStatement(sql);
            rs_jadwal = prs.executeQuery();

            while (rs_jadwal.next()){
                kelasSize++;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void fillSesi() {
        try {
            String sql = "SELECT * FROM sesi ORDER BY no DESC";
            prs = connec.prepareStatement(sql);
            rs_jadwal = prs.executeQuery();

            while (rs_jadwal.next()){
                sesiSize++;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private boolean checkHari(int hari, int kelas, int sesi) throws SQLException {
        sql_jadwal = "SELECT jadwal.id_jadwal AS id, " +
                "jadwal.no_dosen AS dosen_id, " +
                "jadwal.no_matkul AS matkul_id, " +
                "jadwal.no_hari AS hari_id, " +
                "jadwal.no_sesi AS sesi_id, " +
                "jadwal.no_kelas AS kelas_id, " +
                "jadwal.no_ruangan AS ruangan_id, " +
                "dosen.nama AS dosen, " +
                "matkul.nama AS matkul, " +
                "kelas.nama AS kelas, " +
                "hari.nama AS hari, " +
                "sesi.nama AS sesi, " +
                "ruangan.nama AS ruangan, " +
                "kategori.nama AS kategori " +
                "FROM jadwal " +
                "INNER JOIN matkul ON jadwal.no_matkul = matkul.no " +
                "INNER JOIN dosen ON jadwal.no_dosen = dosen.no " +
                "INNER JOIN kelas ON jadwal.no_kelas = kelas.no " +
                "INNER JOIN hari ON jadwal.no_hari = hari.no " +
                "INNER JOIN sesi ON jadwal.no_sesi = sesi.no " +
                "INNER JOIN ruangan ON jadwal.no_ruangan = ruangan.no " +
                "INNER JOIN kategori ON jadwal.kategori = kategori.no " +
                "WHERE jadwal.no_hari='" + hari + "' AND jadwal.no_kelas='" + kelas + "' AND jadwal.no_sesi='" + sesi + "'" +
                "ORDER BY jadwal.no_hari DESC, jadwal.no_sesi DESC, jadwal.no_kelas DESC";
        rs_jadwal = connec.createStatement().executeQuery(sql_jadwal);

        return rs_jadwal.next();
    }

    public void setRuanganManualAction() {
        try{
            AnchorPane ap = FXMLLoader.load(getClass().getResource("../view/ruangan_manual_set.fxml"));
            dijkstraPane.getChildren().setAll(ap);
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    private ObservableList<String> checkKapasitas(){
        int jumlah = 0;
        try {
            String sql = "SELECT * FROM matkul WHERE no='" + id_matkul + "'";
            prs = connec.prepareStatement(sql);
            rs_jadwal = prs.executeQuery();

            while (rs_jadwal.next()){
                jumlah = rs_jadwal.getInt("jumlah");
            }

            for (int i=1; i<=ruanganSize; i++){
                String sql_ruangan = "SELECT * FROM ruangan WHERE no='" + i + "' AND status='1'";
                prs = connec.prepareStatement(sql_ruangan);
                ResultSet rs = prs.executeQuery();

                int kapasitas;
                int delta;

                while (rs.next()){
                    if (!rs.getString("nama").equalsIgnoreCase("Belum di-set")){
                        kapasitas = rs.getInt("kapasitas");
                        delta = kapasitas - jumlah;

                        if (delta >= 0){
                            ruangan.add(rs.getString("nama") + "  | " + rs.getString("kapasitas"));
                        }
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if (!ruangan.isEmpty()) return ruangan;
        else ruangan.add("Ruangan tidak tersedia"); return ruangan;
    }

    public void setRuanganPerHari() {
        String sql = "UPDATE hari SET status='2' WHERE no=?";

        try {
            prs = connec.prepareStatement(sql);
            prs.setInt(1, hari_dipilih);
            int exec = prs.executeUpdate();

            if(exec == 1){
                Alert alert = new Alert(Alert.AlertType.INFORMATION, "Berhasil di-set", ButtonType.OK);
                alert.setTitle("Berhasil");
                alert.showAndWait();
                loadDataFromDatabase(onClickHariCombo());
                fillComboBox();
                clearText();
            }

            prs.close();
        } catch (SQLException ex) {
            System.out.println("Erorr");
        }

        refreshHariComboBox();
        resetRuangan();
        tblDataJadwal.getItems().clear();
    }

    private void refreshHariComboBox() {
        hariCombo.getItems().clear();
        hariCombo.setItems(checkStatusHari());
    }

    private ObservableList<String> checkStatusHari(){
        try {
            String sql = "SELECT * FROM hari WHERE status='1' ORDER BY no DESC";
            prs = connec.prepareStatement(sql);
            rs_jadwal = prs.executeQuery();

            while (rs_jadwal.next()){
                hari.add(rs_jadwal.getString("nama"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if (!hari.isEmpty()) return hari;
        else {
            toOutput();
            return hari;
        }
    }

    private void resetRuangan(){
        for (int i=1; i<ruanganSize; i++){
            if (i!=Integer.parseInt(ruangan_unset)){
                String sql_ruangan = "UPDATE ruangan SET status='1' WHERE no=?";

                try {
                    prs = connec.prepareStatement(sql_ruangan);
                    prs.setInt(1, i);
                    prs.executeUpdate();
                    prs.close();
                } catch (SQLException ex) {
                    System.out.println("Erorr");
                }
            }
        }
    }
}
