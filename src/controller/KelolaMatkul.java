package controller;

import helper.SQLHelper;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import model.Kelas;
import model.MataKuliah;

import java.net.URL;
import java.sql.*;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;

public class KelolaMatkul implements Initializable {

    @FXML
    private AnchorPane kelolaMataKuliahPane;
    @FXML
    private AnchorPane pane;
    @FXML
    private TextField namaField;
    @FXML
    private TextField kodeField;
    @FXML
    private TextField sksField;
    @FXML
    private TableView<MataKuliah> tblDataMataKuliah;
    @FXML
    private TableColumn<MataKuliah, String> tblKolomNama;
    @FXML
    private TableColumn<MataKuliah, String> tblKolomKode;
    @FXML
    private TableColumn<MataKuliah, String> tblKolomSKS;

    private ObservableList<MataKuliah> ol;
    private Connection connec;
    private PreparedStatement prs;
    private ResultSet rs;
    private Statement stmt;
    private SQLHelper sqlHelper = new SQLHelper();
    private String id_mata_kuliah = null;

    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        connec = sqlHelper.getConnection();
        ol = FXCollections.observableArrayList();
        loadDataFromDatabase();
        fromTableToTextField();
        setCellValue();
    }

    @FXML
    private void tambahMataKuliahAction(ActionEvent event) {
        String nama = namaField.getText();
        String kode = kodeField.getText();
        String sks = sksField.getText();

        try {
            stmt = (Statement) connec.createStatement();

            String sql = "INSERT INTO mata_kuliah (nama, kode, sks)"
                    + "VALUES('" + nama + "', '" + kode + "', '" + sks + "')";
            int exec = stmt.executeUpdate(sql);
            stmt.close();

            AnchorPane pane = FXMLLoader.load(getClass().getResource("/view/kelola_matkul.fxml"));
            kelolaMataKuliahPane.getChildren().setAll(pane);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @FXML
    private void updateMataKuliahAction(ActionEvent event) {
        String sql = "UPDATE mata_kuliah SET nama=?, kode=?, sks=? WHERE id_mata_kuliah=?";

        try {
            prs = connec.prepareStatement(sql);
            prs.setString(1, namaField.getText());
            prs.setString(2, kodeField.getText());
            prs.setString(3, sksField.getText());
            prs.setString(4, id_mata_kuliah);
            int exec = prs.executeUpdate();

            if(exec == 1){
                Alert alert = new Alert(Alert.AlertType.INFORMATION, "Update berhasil", ButtonType.OK);
                alert.setTitle("Update");
                alert.showAndWait();
                loadDataFromDatabase();
                clearText();
            }

            prs.close();
        } catch (SQLException ex) {
            Logger.getLogger(KelolaMatkul.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @FXML
    private void hapusMataKuliahAction(ActionEvent event) {
        String sql = "DELETE FROM mata_kuliah WHERE id_mata_kuliah = ?";

        try {
            prs = connec.prepareStatement(sql);
            prs.setString(1, id_mata_kuliah);
            int exec = prs.executeUpdate();

            if(exec == 1){
                Alert alert = new Alert(Alert.AlertType.INFORMATION, "Berhasil dihapus", ButtonType.OK);
                alert.setTitle("Dihapus");
                alert.showAndWait();
                loadDataFromDatabase();
                clearText();
            }
        } catch (SQLException ex) {
            Logger.getLogger(KelolaMatkul.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @FXML
    private void toDashboard(ActionEvent event) {
        try{
            AnchorPane ap = FXMLLoader.load(getClass().getResource("../view/dashboard.fxml"));
            kelolaMataKuliahPane.getChildren().setAll(ap);
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    private void setCellValue() {
        tblKolomNama.setCellValueFactory(new PropertyValueFactory<>("nama"));
        tblKolomKode.setCellValueFactory(new PropertyValueFactory<>("kode"));
        tblKolomSKS.setCellValueFactory(new PropertyValueFactory<>("sks"));
    }

    private void loadDataFromDatabase() {
        ol.clear();
        try {
            String sql = "SELECT * FROM mata_kuliah";
            rs = connec.createStatement().executeQuery(sql);

            while (rs.next()) {
                ol.add(new MataKuliah(rs.getString("id_mata_kuliah"), rs.getString("nama"), rs.getString("kode"), rs.getString("sks")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(KelolaMatkul.class.getName()).log(Level.SEVERE, null, ex);
        }
        tblDataMataKuliah.setItems(ol);
    }

    private void fromTableToTextField() {
        tblDataMataKuliah.setOnMouseClicked((MouseEvent event) -> {
            MataKuliah mataKuliah = tblDataMataKuliah.getItems().get(tblDataMataKuliah.getSelectionModel().getSelectedIndex());
            if (mataKuliah != null){
                id_mata_kuliah = mataKuliah.getId_mata_kuliah();
                namaField.setText(mataKuliah.getNama());
                kodeField.setText(mataKuliah.getKode());
                sksField.setText(mataKuliah.getSks());
            }
        });
    }

    private void clearText(){
        namaField.clear();
        kodeField.clear();
        sksField.clear();
    }

}
