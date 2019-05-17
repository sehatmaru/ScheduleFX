/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.1.21-MariaDB : Database - penjadwalan_diploma
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`penjadwalan_diploma` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `penjadwalan_diploma`;

/*Table structure for table `dosen` */

DROP TABLE IF EXISTS `dosen`;

CREATE TABLE `dosen` (
  `no` int(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `dosen` */

insert  into `dosen`(`no`,`nama`) values 
(1,'RMM'),
(2,'TLS'),
(3,'ESS'),
(4,'IPM'),
(5,'TMP'),
(6,'ART'),
(7,'YHP'),
(8,'ANA'),
(9,'MPR'),
(10,'VES'),
(11,'ASD'),
(12,'MMS'),
(13,'IFY'),
(14,'SAM'),
(15,'AMS'),
(16,'SML'),
(17,'TNT'),
(18,'RDT'),
(19,'RIS'),
(20,'LMG'),
(21,'TLG'),
(22,'ACB'),
(23,'JUN');

/*Table structure for table `dosen_matkul` */

DROP TABLE IF EXISTS `dosen_matkul`;

CREATE TABLE `dosen_matkul` (
  `no_dosen` int(20) DEFAULT NULL,
  `no_matkul` int(20) DEFAULT NULL,
  `nilai` int(20) DEFAULT NULL,
  KEY `fk_dosen` (`no_dosen`),
  KEY `fk_matkul2` (`no_matkul`),
  CONSTRAINT `fk_dosen` FOREIGN KEY (`no_dosen`) REFERENCES `dosen` (`no`),
  CONSTRAINT `fk_matkul2` FOREIGN KEY (`no_matkul`) REFERENCES `matkul` (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dosen_matkul` */

insert  into `dosen_matkul`(`no_dosen`,`no_matkul`,`nilai`) values 
(1,1,1),
(1,2,0),
(1,3,0),
(1,4,0),
(1,5,0),
(1,6,0),
(1,7,0),
(1,8,0),
(1,9,0),
(1,10,0),
(1,11,0),
(1,12,0),
(1,13,0),
(1,14,0),
(1,15,0),
(1,16,0),
(1,17,0),
(1,18,0),
(1,19,0),
(1,20,0),
(1,21,0),
(1,22,0),
(1,23,0),
(1,24,0),
(1,25,0),
(1,26,0),
(1,27,0),
(1,28,0),
(1,29,0),
(1,30,0),
(1,31,0),
(1,32,0),
(1,33,0),
(1,34,0),
(1,35,0),
(1,36,0),
(1,37,0),
(1,38,0),
(1,39,0),
(1,40,0),
(1,41,0),
(1,42,0),
(1,43,0),
(1,44,0),
(1,45,0),
(1,46,0),
(1,47,0),
(1,48,1),
(1,49,0),
(1,50,0),
(1,51,0),
(1,52,0),
(1,53,0),
(1,54,0),
(1,55,0),
(1,56,0),
(1,57,0),
(1,58,0),
(1,59,1),
(1,60,0),
(1,61,0),
(1,62,0),
(1,63,0),
(1,64,0),
(1,65,0),
(1,66,0),
(1,67,0),
(1,68,0),
(1,69,0),
(1,70,0),
(1,71,0),
(2,1,0),
(2,2,0),
(2,3,0),
(2,4,0),
(2,5,0),
(2,6,0),
(2,7,0),
(2,8,0),
(2,9,0),
(2,10,0),
(2,11,0),
(2,12,0),
(2,13,1),
(2,14,0),
(2,15,0),
(2,16,0),
(2,17,0),
(2,18,0),
(2,19,0),
(2,20,0),
(2,21,0),
(2,22,0),
(2,23,0),
(2,24,0),
(2,25,0),
(2,26,0),
(2,27,0),
(2,28,0),
(2,29,0),
(2,30,0),
(2,31,0),
(2,32,0),
(2,33,0),
(2,34,0),
(2,35,0),
(2,36,0),
(2,37,0),
(2,38,0),
(2,39,0),
(2,40,0),
(2,41,0),
(2,42,1),
(2,43,0),
(2,44,0),
(2,45,0),
(2,46,0),
(2,47,0),
(2,48,0),
(2,49,0),
(2,50,0),
(2,51,0),
(2,52,0),
(2,53,0),
(2,54,0),
(2,55,0),
(2,56,0),
(2,57,0),
(2,58,0),
(2,59,0),
(2,60,0),
(2,61,0),
(2,62,0),
(2,63,0),
(2,64,0),
(2,65,0),
(2,66,0),
(2,67,0),
(2,68,0),
(2,69,0),
(2,70,0),
(2,71,0),
(3,1,0),
(3,2,0),
(3,3,0),
(3,4,0),
(3,5,0),
(3,6,0),
(3,7,0),
(3,8,0),
(3,9,0),
(3,10,1),
(3,11,0),
(3,12,0),
(3,13,0),
(3,14,0),
(3,15,0),
(3,16,1),
(3,17,0),
(3,18,0),
(3,19,0),
(3,20,0),
(3,21,0),
(3,22,0),
(3,23,0),
(3,24,0),
(3,25,0),
(3,26,0),
(3,27,0),
(3,28,0),
(3,29,0),
(3,30,0),
(3,31,0),
(3,32,0),
(3,33,0),
(3,34,0),
(3,35,0),
(3,36,0),
(3,37,0),
(3,38,0),
(3,39,0),
(3,40,0),
(3,41,0),
(3,42,0),
(3,43,0),
(3,44,0),
(3,45,0),
(3,46,1),
(3,47,0),
(3,48,0),
(3,49,0),
(3,50,0),
(3,51,0),
(3,52,0),
(3,53,0),
(3,54,0),
(3,55,0),
(3,56,0),
(3,57,0),
(3,58,0),
(3,59,0),
(3,60,0),
(3,61,0),
(3,62,0),
(3,63,0),
(3,64,0),
(3,65,0),
(3,66,0),
(3,67,0),
(3,68,0),
(3,69,0),
(3,70,0),
(3,71,0),
(4,1,0),
(4,2,0),
(4,3,1),
(4,4,0),
(4,5,0),
(4,6,0),
(4,7,0),
(4,8,0),
(4,9,1),
(4,10,0),
(4,11,0),
(4,12,0),
(4,13,0),
(4,14,0),
(4,15,0),
(4,16,0),
(4,17,0),
(4,18,0),
(4,19,0),
(4,20,0),
(4,21,0),
(4,22,1),
(4,23,0),
(4,24,0),
(4,25,0),
(4,26,0),
(4,27,0),
(4,28,0),
(4,29,0),
(4,30,0),
(4,31,0),
(4,32,0),
(4,33,0),
(4,34,0),
(4,35,0),
(4,36,0),
(4,37,0),
(4,38,0),
(4,39,0),
(4,40,0),
(4,41,0),
(4,42,0),
(4,43,0),
(4,44,0),
(4,45,0),
(4,46,0),
(4,47,0),
(4,48,0),
(4,49,0),
(4,50,0),
(4,51,0),
(4,52,0),
(4,53,0),
(4,54,0),
(4,55,0),
(4,56,0),
(4,57,0),
(4,58,0),
(4,59,0),
(4,60,0),
(4,61,0),
(4,62,0),
(4,63,0),
(4,64,0),
(4,65,0),
(4,66,0),
(4,67,1),
(4,68,0),
(4,69,0),
(4,70,0),
(4,71,0),
(5,1,0),
(5,2,0),
(5,3,0),
(5,4,1),
(5,5,0),
(5,6,0),
(5,7,0),
(5,8,0),
(5,9,0),
(5,10,0),
(5,11,0),
(5,12,0),
(5,13,0),
(5,14,0),
(5,15,0),
(5,16,0),
(5,17,0),
(5,18,0),
(5,19,0),
(5,20,0),
(5,21,0),
(5,22,0),
(5,23,0),
(5,24,0),
(5,25,0),
(5,26,0),
(5,27,0),
(5,28,0),
(5,29,0),
(5,30,0),
(5,31,0),
(5,32,0),
(5,33,0),
(5,34,0),
(5,35,0),
(5,36,0),
(5,37,0),
(5,38,0),
(5,39,0),
(5,40,0),
(5,41,0),
(5,42,0),
(5,43,0),
(5,44,0),
(5,45,0),
(5,46,0),
(5,47,0),
(5,48,0),
(5,49,0),
(5,50,1),
(5,51,0),
(5,52,0),
(5,53,0),
(5,54,0),
(5,55,0),
(5,56,0),
(5,57,0),
(5,58,0),
(5,59,0),
(5,60,0),
(5,61,0),
(5,62,1),
(5,63,0),
(5,64,0),
(5,65,0),
(5,66,0),
(5,67,0),
(5,68,0),
(5,69,0),
(5,70,0),
(5,71,0),
(6,1,0),
(6,2,0),
(6,3,0),
(6,4,0),
(6,5,1),
(6,6,0),
(6,7,0),
(6,8,0),
(6,9,0),
(6,10,0),
(6,11,0),
(6,12,0),
(6,13,0),
(6,14,0),
(6,15,0),
(6,16,0),
(6,17,0),
(6,18,0),
(6,19,0),
(6,20,0),
(6,21,0),
(6,22,0),
(6,23,0),
(6,24,0),
(6,25,0),
(6,26,0),
(6,27,0),
(6,28,0),
(6,29,0),
(6,30,0),
(6,31,0),
(6,32,0),
(6,33,0),
(6,34,1),
(6,35,0),
(6,36,0),
(6,37,0),
(6,38,1),
(6,39,0),
(6,40,0),
(6,41,0),
(6,42,0),
(6,43,0),
(6,44,0),
(6,45,0),
(6,46,0),
(6,47,0),
(6,48,0),
(6,49,0),
(6,50,0),
(6,51,0),
(6,52,0),
(6,53,0),
(6,54,0),
(6,55,0),
(6,56,0),
(6,57,0),
(6,58,0),
(6,59,0),
(6,60,0),
(6,61,0),
(6,62,0),
(6,63,0),
(6,64,0),
(6,65,0),
(6,66,0),
(6,67,0),
(6,68,0),
(6,69,0),
(6,70,0),
(6,71,0),
(7,1,0),
(7,2,0),
(7,3,0),
(7,4,0),
(7,5,0),
(7,6,1),
(7,7,0),
(7,8,0),
(7,9,0),
(7,10,0),
(7,11,0),
(7,12,0),
(7,13,0),
(7,14,0),
(7,15,0),
(7,16,0),
(7,17,0),
(7,18,0),
(7,19,0),
(7,20,0),
(7,21,0),
(7,22,0),
(7,23,1),
(7,24,0),
(7,25,0),
(7,26,0),
(7,27,0),
(7,28,0),
(7,29,0),
(7,30,0),
(7,31,0),
(7,32,0),
(7,33,0),
(7,34,0),
(7,35,0),
(7,36,0),
(7,37,0),
(7,38,0),
(7,39,0),
(7,40,0),
(7,41,0),
(7,42,0),
(7,43,0),
(7,44,0),
(7,45,0),
(7,46,0),
(7,47,0),
(7,48,0),
(7,49,1),
(7,50,0),
(7,51,0),
(7,52,0),
(7,53,0),
(7,54,0),
(7,55,0),
(7,56,0),
(7,57,0),
(7,58,0),
(7,59,0),
(7,60,1),
(7,61,0),
(7,62,0),
(7,63,0),
(7,64,0),
(7,65,0),
(7,66,0),
(7,67,0),
(7,68,0),
(7,69,1),
(7,70,0),
(7,71,0),
(8,1,0),
(8,2,0),
(8,3,0),
(8,4,0),
(8,5,0),
(8,6,0),
(8,7,0),
(8,8,0),
(8,9,0),
(8,10,0),
(8,11,0),
(8,12,0),
(8,13,0),
(8,14,0),
(8,15,0),
(8,16,0),
(8,17,0),
(8,18,0),
(8,19,1),
(8,20,0),
(8,21,0),
(8,22,0),
(8,23,0),
(8,24,0),
(8,25,0),
(8,26,0),
(8,27,0),
(8,28,0),
(8,29,0),
(8,30,0),
(8,31,0),
(8,32,0),
(8,33,0),
(8,34,0),
(8,35,0),
(8,36,0),
(8,37,0),
(8,38,0),
(8,39,0),
(8,40,0),
(8,41,0),
(8,42,0),
(8,43,1),
(8,44,0),
(8,45,0),
(8,46,0),
(8,47,0),
(8,48,0),
(8,49,0),
(8,50,0),
(8,51,0),
(8,52,0),
(8,53,0),
(8,54,0),
(8,55,0),
(8,56,0),
(8,57,0),
(8,58,0),
(8,59,0),
(8,60,0),
(8,61,0),
(8,62,0),
(8,63,0),
(8,64,1),
(8,65,0),
(8,66,0),
(8,67,0),
(8,68,0),
(8,69,0),
(8,70,0),
(8,71,0),
(9,1,0),
(9,2,0),
(9,3,0),
(9,4,0),
(9,5,0),
(9,6,0),
(9,7,0),
(9,8,0),
(9,9,0),
(9,10,0),
(9,11,0),
(9,12,0),
(9,13,0),
(9,14,0),
(9,15,0),
(9,16,0),
(9,17,0),
(9,18,0),
(9,19,0),
(9,20,0),
(9,21,0),
(9,22,0),
(9,23,0),
(9,24,0),
(9,25,0),
(9,26,0),
(9,27,1),
(9,28,0),
(9,29,0),
(9,30,0),
(9,31,0),
(9,32,0),
(9,33,0),
(9,34,0),
(9,35,0),
(9,36,0),
(9,37,0),
(9,38,0),
(9,39,0),
(9,40,0),
(9,41,0),
(9,42,0),
(9,43,0),
(9,44,1),
(9,45,0),
(9,46,0),
(9,47,0),
(9,48,0),
(9,49,0),
(9,50,0),
(9,51,0),
(9,52,1),
(9,53,0),
(9,54,0),
(9,55,0),
(9,56,0),
(9,57,0),
(9,58,0),
(9,59,0),
(9,60,0),
(9,61,0),
(9,62,0),
(9,63,0),
(9,64,0),
(9,65,0),
(9,66,0),
(9,67,0),
(9,68,0),
(9,69,0),
(9,70,0),
(9,71,0),
(10,1,0),
(10,2,0),
(10,3,0),
(10,4,0),
(10,5,0),
(10,6,0),
(10,7,1),
(10,8,0),
(10,9,0),
(10,10,0),
(10,11,0),
(10,12,0),
(10,13,0),
(10,14,0),
(10,15,0),
(10,16,0),
(10,17,0),
(10,18,0),
(10,19,0),
(10,20,1),
(10,21,0),
(10,22,0),
(10,23,0),
(10,24,0),
(10,25,0),
(10,26,0),
(10,27,0),
(10,28,0),
(10,29,0),
(10,30,0),
(10,31,0),
(10,32,0),
(10,33,0),
(10,34,0),
(10,35,0),
(10,36,0),
(10,37,0),
(10,38,0),
(10,39,1),
(10,40,0),
(10,41,0),
(10,42,0),
(10,43,0),
(10,44,0),
(10,45,0),
(10,46,0),
(10,47,0),
(10,48,0),
(10,49,0),
(10,50,0),
(10,51,0),
(10,52,0),
(10,53,0),
(10,54,0),
(10,55,0),
(10,56,0),
(10,57,0),
(10,58,0),
(10,59,0),
(10,60,0),
(10,61,0),
(10,62,0),
(10,63,0),
(10,64,0),
(10,65,1),
(10,66,0),
(10,67,0),
(10,68,0),
(10,69,0),
(10,70,0),
(10,71,0),
(11,1,0),
(11,2,0),
(11,3,0),
(11,4,0),
(11,5,0),
(11,6,0),
(11,7,0),
(11,8,1),
(11,9,0),
(11,10,0),
(11,11,0),
(11,12,0),
(11,13,0),
(11,14,0),
(11,15,0),
(11,16,0),
(11,17,0),
(11,18,0),
(11,19,0),
(11,20,0),
(11,21,0),
(11,22,0),
(11,23,0),
(11,24,0),
(11,25,0),
(11,26,0),
(11,27,0),
(11,28,0),
(11,29,0),
(11,30,0),
(11,31,0),
(11,32,0),
(11,33,0),
(11,34,0),
(11,35,0),
(11,36,0),
(11,37,0),
(11,38,0),
(11,39,0),
(11,40,0),
(11,41,0),
(11,42,0),
(11,43,0),
(11,44,0),
(11,45,0),
(11,46,0),
(11,47,0),
(11,48,0),
(11,49,0),
(11,50,0),
(11,51,0),
(11,52,0),
(11,53,0),
(11,54,0),
(11,55,0),
(11,56,0),
(11,57,0),
(11,58,0),
(11,59,0),
(11,60,0),
(11,61,0),
(11,62,0),
(11,63,0),
(11,64,0),
(11,65,0),
(11,66,0),
(11,67,0),
(11,68,0),
(11,69,0),
(11,70,0),
(11,71,0),
(12,1,0),
(12,2,0),
(12,3,0),
(12,4,0),
(12,5,0),
(12,6,0),
(12,7,0),
(12,8,0),
(12,9,0),
(12,10,0),
(12,11,1),
(12,12,0),
(12,13,0),
(12,14,1),
(12,15,1),
(12,16,0),
(12,17,0),
(12,18,1),
(12,19,0),
(12,20,0),
(12,21,0),
(12,22,0),
(12,23,0),
(12,24,0),
(12,25,0),
(12,26,0),
(12,27,0),
(12,28,0),
(12,29,0),
(12,30,0),
(12,31,0),
(12,32,0),
(12,33,0),
(12,34,0),
(12,35,0),
(12,36,0),
(12,37,0),
(12,38,0),
(12,39,0),
(12,40,0),
(12,41,0),
(12,42,0),
(12,43,0),
(12,44,0),
(12,45,0),
(12,46,0),
(12,47,0),
(12,48,0),
(12,49,0),
(12,50,0),
(12,51,0),
(12,52,0),
(12,53,0),
(12,54,0),
(12,55,0),
(12,56,0),
(12,57,0),
(12,58,0),
(12,59,0),
(12,60,0),
(12,61,0),
(12,62,0),
(12,63,1),
(12,64,0),
(12,65,0),
(12,66,0),
(12,67,0),
(12,68,0),
(12,69,0),
(12,70,0),
(12,71,0),
(13,1,0),
(13,2,0),
(13,3,0),
(13,4,0),
(13,5,0),
(13,6,0),
(13,7,0),
(13,8,0),
(13,9,0),
(13,10,0),
(13,11,0),
(13,12,0),
(13,13,0),
(13,14,0),
(13,15,0),
(13,16,0),
(13,17,0),
(13,18,0),
(13,19,0),
(13,20,0),
(13,21,0),
(13,22,0),
(13,23,0),
(13,24,1),
(13,25,0),
(13,26,0),
(13,27,0),
(13,28,0),
(13,29,0),
(13,30,0),
(13,31,0),
(13,32,1),
(13,33,0),
(13,34,0),
(13,35,0),
(13,36,0),
(13,37,0),
(13,38,0),
(13,39,0),
(13,40,0),
(13,41,0),
(13,42,0),
(13,43,0),
(13,44,0),
(13,45,1),
(13,46,0),
(13,47,0),
(13,48,0),
(13,49,0),
(13,50,0),
(13,51,0),
(13,52,0),
(13,53,0),
(13,54,0),
(13,55,0),
(13,56,0),
(13,57,0),
(13,58,0),
(13,59,0),
(13,60,0),
(13,61,0),
(13,62,0),
(13,63,0),
(13,64,0),
(13,65,0),
(13,66,0),
(13,67,0),
(13,68,0),
(13,69,0),
(13,70,1),
(13,71,0),
(14,1,0),
(14,2,0),
(14,3,0),
(14,4,0),
(14,5,0),
(14,6,0),
(14,7,0),
(14,8,0),
(14,9,0),
(14,10,0),
(14,11,0),
(14,12,1),
(14,13,0),
(14,14,0),
(14,15,0),
(14,16,0),
(14,17,0),
(14,18,0),
(14,19,0),
(14,20,0),
(14,21,0),
(14,22,0),
(14,23,0),
(14,24,0),
(14,25,0),
(14,26,0),
(14,27,0),
(14,28,0),
(14,29,0),
(14,30,0),
(14,31,0),
(14,32,0),
(14,33,0),
(14,34,0),
(14,35,0),
(14,36,0),
(14,37,0),
(14,38,0),
(14,39,0),
(14,40,0),
(14,41,0),
(14,42,0),
(14,43,0),
(14,44,0),
(14,45,0),
(14,46,0),
(14,47,0),
(14,48,0),
(14,49,0),
(14,50,0),
(14,51,0),
(14,52,0),
(14,53,0),
(14,54,0),
(14,55,1),
(14,56,0),
(14,57,0),
(14,58,0),
(14,59,0),
(14,60,0),
(14,61,0),
(14,62,0),
(14,63,0),
(14,64,0),
(14,65,0),
(14,66,0),
(14,67,0),
(14,68,1),
(14,69,0),
(14,70,0),
(14,71,0),
(15,1,0),
(15,2,0),
(15,3,0),
(15,4,0),
(15,5,0),
(15,6,0),
(15,7,0),
(15,8,0),
(15,9,0),
(15,10,0),
(15,11,0),
(15,12,0),
(15,13,0),
(15,14,0),
(15,15,0),
(15,16,0),
(15,17,0),
(15,18,0),
(15,19,0),
(15,20,0),
(15,21,0),
(15,22,0),
(15,23,0),
(15,24,0),
(15,25,0),
(15,26,1),
(15,27,0),
(15,28,0),
(15,29,0),
(15,30,0),
(15,31,0),
(15,32,0),
(15,33,0),
(15,34,0),
(15,35,1),
(15,36,0),
(15,37,0),
(15,38,0),
(15,39,0),
(15,40,0),
(15,41,0),
(15,42,0),
(15,43,0),
(15,44,0),
(15,45,0),
(15,46,0),
(15,47,0),
(15,48,0),
(15,49,0),
(15,50,0),
(15,51,1),
(15,52,0),
(15,53,0),
(15,54,0),
(15,55,0),
(15,56,0),
(15,57,0),
(15,58,0),
(15,59,0),
(15,60,0),
(15,61,0),
(15,62,0),
(15,63,0),
(15,64,0),
(15,65,0),
(15,66,0),
(15,67,0),
(15,68,0),
(15,69,0),
(15,70,0),
(15,71,0),
(16,1,0),
(16,2,0),
(16,3,0),
(16,4,0),
(16,5,0),
(16,6,0),
(16,7,0),
(16,8,0),
(16,9,0),
(16,10,0),
(16,11,0),
(16,12,0),
(16,13,0),
(16,14,0),
(16,15,0),
(16,16,0),
(16,17,0),
(16,18,0),
(16,19,0),
(16,20,0),
(16,21,0),
(16,22,0),
(16,23,0),
(16,24,0),
(16,25,0),
(16,26,0),
(16,27,0),
(16,28,0),
(16,29,0),
(16,30,0),
(16,31,0),
(16,32,0),
(16,33,0),
(16,34,0),
(16,35,0),
(16,36,0),
(16,37,0),
(16,38,0),
(16,39,0),
(16,40,0),
(16,41,1),
(16,42,0),
(16,43,0),
(16,44,0),
(16,45,0),
(16,46,0),
(16,47,1),
(16,48,0),
(16,49,0),
(16,50,0),
(16,51,0),
(16,52,0),
(16,53,0),
(16,54,0),
(16,55,0),
(16,56,0),
(16,57,0),
(16,58,0),
(16,59,0),
(16,60,0),
(16,61,0),
(16,62,0),
(16,63,0),
(16,64,0),
(16,65,0),
(16,66,0),
(16,67,0),
(16,68,0),
(16,69,0),
(16,70,0),
(16,71,0),
(17,1,0),
(17,2,0),
(17,3,0),
(17,4,0),
(17,5,0),
(17,6,0),
(17,7,0),
(17,8,0),
(17,9,0),
(17,10,0),
(17,11,0),
(17,12,0),
(17,13,0),
(17,14,0),
(17,15,0),
(17,16,0),
(17,17,1),
(17,18,0),
(17,19,0),
(17,20,0),
(17,21,0),
(17,22,0),
(17,23,0),
(17,24,0),
(17,25,0),
(17,26,0),
(17,27,0),
(17,28,0),
(17,29,0),
(17,30,0),
(17,31,1),
(17,32,0),
(17,33,0),
(17,34,0),
(17,35,0),
(17,36,0),
(17,37,0),
(17,38,0),
(17,39,0),
(17,40,0),
(17,41,0),
(17,42,0),
(17,43,0),
(17,44,0),
(17,45,0),
(17,46,0),
(17,47,0),
(17,48,0),
(17,49,0),
(17,50,0),
(17,51,0),
(17,52,0),
(17,53,0),
(17,54,0),
(17,55,0),
(17,56,0),
(17,57,1),
(17,58,1),
(17,59,0),
(17,60,0),
(17,61,0),
(17,62,0),
(17,63,0),
(17,64,0),
(17,65,0),
(17,66,0),
(17,67,0),
(17,68,0),
(17,69,0),
(17,70,0),
(17,71,0),
(18,1,0),
(18,2,0),
(18,3,0),
(18,4,0),
(18,5,0),
(18,6,0),
(18,7,0),
(18,8,0),
(18,9,0),
(18,10,0),
(18,11,0),
(18,12,0),
(18,13,0),
(18,14,0),
(18,15,0),
(18,16,0),
(18,17,0),
(18,18,0),
(18,19,0),
(18,20,0),
(18,21,0),
(18,22,0),
(18,23,0),
(18,24,0),
(18,25,0),
(18,26,0),
(18,27,0),
(18,28,1),
(18,29,0),
(18,30,0),
(18,31,0),
(18,32,0),
(18,33,0),
(18,34,0),
(18,35,0),
(18,36,0),
(18,37,0),
(18,38,0),
(18,39,0),
(18,40,1),
(18,41,0),
(18,42,0),
(18,43,0),
(18,44,0),
(18,45,0),
(18,46,0),
(18,47,0),
(18,48,0),
(18,49,0),
(18,50,0),
(18,51,0),
(18,52,0),
(18,53,1),
(18,54,0),
(18,55,0),
(18,56,0),
(18,57,0),
(18,58,0),
(18,59,0),
(18,60,0),
(18,61,1),
(18,62,0),
(18,63,0),
(18,64,0),
(18,65,0),
(18,66,0),
(18,67,0),
(18,68,0),
(18,69,0),
(18,70,0),
(18,71,0),
(19,1,0),
(19,2,0),
(19,3,0),
(19,4,0),
(19,5,0),
(19,6,0),
(19,7,0),
(19,8,0),
(19,9,0),
(19,10,0),
(19,11,0),
(19,12,0),
(19,13,0),
(19,14,0),
(19,15,0),
(19,16,0),
(19,17,0),
(19,18,0),
(19,19,0),
(19,20,0),
(19,21,1),
(19,22,0),
(19,23,0),
(19,24,0),
(19,25,0),
(19,26,0),
(19,27,0),
(19,28,0),
(19,29,1),
(19,30,0),
(19,31,0),
(19,32,0),
(19,33,1),
(19,34,0),
(19,35,0),
(19,36,0),
(19,37,1),
(19,38,0),
(19,39,0),
(19,40,0),
(19,41,0),
(19,42,0),
(19,43,0),
(19,44,0),
(19,45,0),
(19,46,0),
(19,47,0),
(19,48,0),
(19,49,0),
(19,50,0),
(19,51,0),
(19,52,0),
(19,53,0),
(19,54,1),
(19,55,0),
(19,56,0),
(19,57,0),
(19,58,0),
(19,59,0),
(19,60,0),
(19,61,0),
(19,62,0),
(19,63,0),
(19,64,0),
(19,65,0),
(19,66,1),
(19,67,0),
(19,68,0),
(19,69,0),
(19,70,0),
(19,71,0),
(20,1,0),
(20,2,0),
(20,3,0),
(20,4,0),
(20,5,0),
(20,6,0),
(20,7,0),
(20,8,0),
(20,9,0),
(20,10,0),
(20,11,0),
(20,12,0),
(20,13,0),
(20,14,0),
(20,15,0),
(20,16,0),
(20,17,0),
(20,18,0),
(20,19,0),
(20,20,0),
(20,21,0),
(20,22,0),
(20,23,0),
(20,24,0),
(20,25,0),
(20,26,0),
(20,27,0),
(20,28,0),
(20,29,0),
(20,30,1),
(20,31,0),
(20,32,0),
(20,33,0),
(20,34,0),
(20,35,0),
(20,36,0),
(20,37,0),
(20,38,0),
(20,39,0),
(20,40,0),
(20,41,0),
(20,42,0),
(20,43,0),
(20,44,0),
(20,45,0),
(20,46,0),
(20,47,0),
(20,48,0),
(20,49,0),
(20,50,0),
(20,51,0),
(20,52,0),
(20,53,0),
(20,54,0),
(20,55,0),
(20,56,1),
(20,57,0),
(20,58,0),
(20,59,0),
(20,60,0),
(20,61,0),
(20,62,0),
(20,63,0),
(20,64,0),
(20,65,0),
(20,66,0),
(20,67,0),
(20,68,0),
(20,69,0),
(20,70,0),
(20,71,0),
(21,1,0),
(21,2,0),
(21,3,0),
(21,4,0),
(21,5,0),
(21,6,0),
(21,7,0),
(21,8,0),
(21,9,0),
(21,10,0),
(21,11,0),
(21,12,0),
(21,13,0),
(21,14,0),
(21,15,0),
(21,16,0),
(21,17,0),
(21,18,0),
(21,19,0),
(21,20,0),
(21,21,0),
(21,22,0),
(21,23,0),
(21,24,0),
(21,25,1),
(21,26,0),
(21,27,0),
(21,28,0),
(21,29,0),
(21,30,0),
(21,31,0),
(21,32,0),
(21,33,0),
(21,34,0),
(21,35,0),
(21,36,0),
(21,37,0),
(21,38,0),
(21,39,0),
(21,40,0),
(21,41,0),
(21,42,0),
(21,43,0),
(21,44,0),
(21,45,0),
(21,46,0),
(21,47,0),
(21,48,0),
(21,49,0),
(21,50,0),
(21,51,0),
(21,52,0),
(21,53,0),
(21,54,0),
(21,55,0),
(21,56,0),
(21,57,0),
(21,58,0),
(21,59,0),
(21,60,0),
(21,61,0),
(21,62,0),
(21,63,0),
(21,64,0),
(21,65,0),
(21,66,0),
(21,67,0),
(21,68,0),
(21,69,0),
(21,70,0),
(21,71,1),
(22,1,0),
(22,2,0),
(22,3,0),
(22,4,0),
(22,5,0),
(22,6,0),
(22,7,0),
(22,8,0),
(22,9,0),
(22,10,0),
(22,11,0),
(22,12,0),
(22,13,0),
(22,14,0),
(22,15,0),
(22,16,0),
(22,17,0),
(22,18,0),
(22,19,0),
(22,20,0),
(22,21,0),
(22,22,0),
(22,23,0),
(22,24,0),
(22,25,0),
(22,26,0),
(22,27,0),
(22,28,0),
(22,29,0),
(22,30,0),
(22,31,0),
(22,32,0),
(22,33,0),
(22,34,0),
(22,35,0),
(22,36,1),
(22,37,0),
(22,38,0),
(22,39,0),
(22,40,0),
(22,41,0),
(22,42,0),
(22,43,0),
(22,44,0),
(22,45,0),
(22,46,0),
(22,47,0),
(22,48,0),
(22,49,0),
(22,50,0),
(22,51,0),
(22,52,0),
(22,53,0),
(22,54,0),
(22,55,0),
(22,56,0),
(22,57,0),
(22,58,0),
(22,59,0),
(22,60,0),
(22,61,0),
(22,62,0),
(22,63,0),
(22,64,0),
(22,65,0),
(22,66,0),
(22,67,0),
(22,68,0),
(22,69,0),
(22,70,0),
(22,71,0),
(23,1,0),
(23,2,1),
(23,3,0),
(23,4,0),
(23,5,0),
(23,6,0),
(23,7,0),
(23,8,0),
(23,9,0),
(23,10,0),
(23,11,0),
(23,12,0),
(23,13,0),
(23,14,0),
(23,15,0),
(23,16,0),
(23,17,0),
(23,18,0),
(23,19,0),
(23,20,0),
(23,21,0),
(23,22,0),
(23,23,0),
(23,24,0),
(23,25,0),
(23,26,0),
(23,27,0),
(23,28,0),
(23,29,0),
(23,30,0),
(23,31,0),
(23,32,0),
(23,33,0),
(23,34,0),
(23,35,0),
(23,36,0),
(23,37,0),
(23,38,0),
(23,39,0),
(23,40,0),
(23,41,0),
(23,42,0),
(23,43,0),
(23,44,0),
(23,45,0),
(23,46,0),
(23,47,0),
(23,48,0),
(23,49,0),
(23,50,0),
(23,51,0),
(23,52,0),
(23,53,0),
(23,54,0),
(23,55,0),
(23,56,0),
(23,57,0),
(23,58,0),
(23,59,0),
(23,60,0),
(23,61,0),
(23,62,0),
(23,63,0),
(23,64,0),
(23,65,0),
(23,66,0),
(23,67,0),
(23,68,0),
(23,69,0),
(23,70,0),
(23,71,0);

/*Table structure for table `hari` */

DROP TABLE IF EXISTS `hari`;

CREATE TABLE `hari` (
  `no` int(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `hari` */

insert  into `hari`(`no`,`nama`) values 
(1,'JUMAT'),
(2,'KAMIS'),
(3,'RABU'),
(4,'SELASA'),
(5,'SENIN');

/*Table structure for table `jadwal` */

DROP TABLE IF EXISTS `jadwal`;

CREATE TABLE `jadwal` (
  `id_jadwal` int(20) NOT NULL AUTO_INCREMENT,
  `no_dosen` int(20) DEFAULT NULL,
  `no_matkul` int(20) DEFAULT NULL,
  `no_kelas` int(20) DEFAULT NULL,
  `no_ruangan` int(20) DEFAULT NULL,
  `no_hari` int(20) DEFAULT NULL,
  `no_sesi` int(20) DEFAULT NULL,
  `kategori` int(20) DEFAULT NULL,
  `tot_ruangan` int(20) DEFAULT NULL,
  PRIMARY KEY (`id_jadwal`),
  KEY `fk_jadwaldosen` (`no_dosen`),
  KEY `fk_jadwalhari` (`no_hari`),
  KEY `fk_jadwalsesi` (`no_sesi`),
  KEY `fk_jadwalmatkul` (`no_matkul`),
  KEY `fk_jadwalkelas` (`no_kelas`),
  KEY `fk_jadwalruangan` (`no_ruangan`),
  KEY `fk_jadwalkategori` (`kategori`),
  CONSTRAINT `fk_jadwaldosen` FOREIGN KEY (`no_dosen`) REFERENCES `dosen` (`no`),
  CONSTRAINT `fk_jadwalhari` FOREIGN KEY (`no_hari`) REFERENCES `hari` (`no`),
  CONSTRAINT `fk_jadwalkategori` FOREIGN KEY (`kategori`) REFERENCES `kategori` (`no`),
  CONSTRAINT `fk_jadwalkelas` FOREIGN KEY (`no_kelas`) REFERENCES `kelas` (`no`),
  CONSTRAINT `fk_jadwalmatkul` FOREIGN KEY (`no_matkul`) REFERENCES `matkul` (`no`),
  CONSTRAINT `fk_jadwalruangan` FOREIGN KEY (`no_ruangan`) REFERENCES `ruangan` (`no`),
  CONSTRAINT `fk_jadwalsesi` FOREIGN KEY (`no_sesi`) REFERENCES `sesi` (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `jadwal` */

/*Table structure for table `kategori` */

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `kategori` */

insert  into `kategori`(`no`,`nama`) values 
(1,'Teori'),
(2,'Praktikum');

/*Table structure for table `kelas` */

DROP TABLE IF EXISTS `kelas`;

CREATE TABLE `kelas` (
  `no` int(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(225) DEFAULT NULL,
  `jumlah` int(20) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `kelas` */

insert  into `kelas`(`no`,`nama`,`jumlah`) values 
(1,'31TK',58),
(2,'32TK',30),
(3,'33TK',27),
(4,'31TI',60),
(5,'32TI',60),
(6,'33TI',28),
(7,'41TI',29),
(8,'42TI',30),
(9,'43TI',26),
(10,'44TI',30);

/*Table structure for table `matkul` */

DROP TABLE IF EXISTS `matkul`;

CREATE TABLE `matkul` (
  `no` int(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(225) DEFAULT NULL,
  `sks` int(20) DEFAULT NULL,
  `jumlah` int(20) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

/*Data for the table `matkul` */

insert  into `matkul`(`no`,`nama`,`sks`,`jumlah`) values 
(1,'ING I 31 TK',2,58),
(2,'MATDIS 41TI',3,29),
(3,'OAK 31TK',3,58),
(4,'DASPRO 31 TK',3,58),
(5,'PSW 31TK',3,58),
(6,'PTI 31TK',2,58),
(7,'BASDAT',3,30),
(8,'PABI',4,30),
(9,'DACOM',2,30),
(10,'ANJAR I',3,30),
(11,'MMPE',3,30),
(12,'ING V 33TK',2,27),
(13,'ADJAR',3,27),
(14,'PIC',4,27),
(15,'SISTAN',3,27),
(16,'ANJAR II',3,27),
(17,'PSW I 31T1',3,60),
(18,'SISOP 31TI',2,60),
(19,'DEL CHA 31TI',2,60),
(20,'SBD 32TI',3,60),
(21,'KREN 32TI',3,60),
(22,'AOK 32TK',3,60),
(23,'ALU33TI',3,28),
(24,'PROBSTAT 33TI',3,28),
(25,'IND 33TI',2,28),
(26,'PRPL 41TI',3,29),
(27,'ING III 42TI',2,30),
(28,'OOSD 42TI',4,30),
(29,'PAP 42TI',3,30),
(30,'PG 43TI',3,30),
(31,'KEPAL 43TI',3,26),
(32,'METPEN',3,26),
(33,'DETING',2,26),
(34,'APPEL',3,30),
(35,'MANPRO',3,30),
(36,'KUPEL',2,30),
(37,'WIRA',2,30),
(38,'BPR',2,30),
(39,'MAIN',2,30),
(40,'TA I 44TI',3,30),
(41,'MATDIS 31TK',3,60),
(42,'PAP 31TK',3,58),
(43,'DEL CHA 31TK',2,58),
(44,'ING III 32TK',2,30),
(45,'PROBSTAT 32TK',3,30),
(46,'TA I 33TK',4,27),
(47,'MATDIS 31TI',3,60),
(48,'ING I 31TI',2,60),
(49,'PTI 31TI',2,60),
(50,'DASPRO 31TI',2,60),
(51,'PRPL 31TI',3,60),
(52,'ING III 32TI',2,60),
(53,'OOSD 32TI',4,60),
(54,'PAP 32TI',3,60),
(55,'ING V 33TI',2,28),
(56,'PG33TI',3,28),
(57,'KEPAL 33TI',3,60),
(58,'TA I 33TI',3,28),
(59,'ING I 41TI',2,29),
(60,'PTI 41TI',2,29),
(61,'PSW I 41TI',3,29),
(62,'DASPRO 41TI',3,29),
(63,'SISOP 41TI',2,29),
(64,'DEL CHA 41TI',2,29),
(65,'SBD 42TI',3,30),
(66,'KREN 42TI',3,30),
(67,'AOK 42TI',3,30),
(68,'ING V 43 TI',2,26),
(69,'ALU 43TI',3,26),
(70,'PROBSTAT 43TI',3,26),
(71,'IND 43TI',2,26);

/*Table structure for table `matkul_kelas` */

DROP TABLE IF EXISTS `matkul_kelas`;

CREATE TABLE `matkul_kelas` (
  `no_matkul` int(20) DEFAULT NULL,
  `no_kelas` int(20) DEFAULT NULL,
  `nilai` int(20) DEFAULT NULL,
  KEY `fk_matkul` (`no_matkul`),
  KEY `fk_kelas` (`no_kelas`),
  CONSTRAINT `fk_kelas` FOREIGN KEY (`no_kelas`) REFERENCES `kelas` (`no`),
  CONSTRAINT `fk_matkul` FOREIGN KEY (`no_matkul`) REFERENCES `matkul` (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `matkul_kelas` */

insert  into `matkul_kelas`(`no_matkul`,`no_kelas`,`nilai`) values 
(1,1,1),
(1,2,0),
(1,3,0),
(1,4,0),
(1,5,0),
(1,6,0),
(1,7,0),
(1,8,0),
(1,9,0),
(1,10,0),
(2,1,0),
(2,2,0),
(2,3,0),
(2,4,0),
(2,5,0),
(2,6,0),
(2,7,1),
(2,8,0),
(2,9,0),
(2,10,0),
(3,1,1),
(3,2,0),
(3,3,0),
(3,4,0),
(3,5,0),
(3,6,0),
(3,7,0),
(3,8,0),
(3,9,0),
(3,10,0),
(4,1,1),
(4,2,0),
(4,3,0),
(4,4,0),
(4,5,0),
(4,6,0),
(4,7,0),
(4,8,0),
(4,9,0),
(4,10,0),
(5,1,1),
(5,2,0),
(5,3,0),
(5,4,0),
(5,5,0),
(5,6,0),
(5,7,0),
(5,8,0),
(5,9,0),
(5,10,0),
(6,1,1),
(6,2,0),
(6,3,0),
(6,4,0),
(6,5,0),
(6,6,0),
(6,7,0),
(6,8,0),
(6,9,0),
(6,10,0),
(7,1,0),
(7,2,1),
(7,3,0),
(7,4,0),
(7,5,0),
(7,6,0),
(7,7,0),
(7,8,0),
(7,9,0),
(7,10,0),
(8,1,0),
(8,2,1),
(8,3,0),
(8,4,0),
(8,5,0),
(8,6,0),
(8,7,0),
(8,8,0),
(8,9,0),
(8,10,0),
(9,1,0),
(9,2,1),
(9,3,0),
(9,4,0),
(9,5,0),
(9,6,0),
(9,7,0),
(9,8,0),
(9,9,0),
(9,10,0),
(10,1,0),
(10,2,1),
(10,3,0),
(10,4,0),
(10,5,0),
(10,6,0),
(10,7,0),
(10,8,0),
(10,9,0),
(10,10,0),
(11,1,0),
(11,2,1),
(11,3,0),
(11,4,0),
(11,5,0),
(11,6,0),
(11,7,0),
(11,8,0),
(11,9,0),
(11,10,0),
(12,1,0),
(12,2,0),
(12,3,1),
(12,4,0),
(12,5,0),
(12,6,0),
(12,7,0),
(12,8,0),
(12,9,0),
(12,10,0),
(13,1,0),
(13,2,0),
(13,3,1),
(13,4,0),
(13,5,0),
(13,6,0),
(13,7,0),
(13,8,0),
(13,9,0),
(13,10,0),
(14,1,0),
(14,2,0),
(14,3,1),
(14,4,0),
(14,5,0),
(14,6,0),
(14,7,0),
(14,8,0),
(14,9,0),
(14,10,0),
(15,1,0),
(15,2,0),
(15,3,1),
(15,4,0),
(15,5,0),
(15,6,0),
(15,7,0),
(15,8,0),
(15,9,0),
(15,10,0),
(16,1,0),
(16,2,0),
(16,3,1),
(16,4,0),
(16,5,0),
(16,6,0),
(16,7,0),
(16,8,0),
(16,9,0),
(16,10,0),
(17,1,0),
(17,2,0),
(17,3,0),
(17,4,1),
(17,5,0),
(17,6,0),
(17,7,0),
(17,8,0),
(17,9,0),
(17,10,0),
(18,1,0),
(18,2,0),
(18,3,0),
(18,4,1),
(18,5,0),
(18,6,0),
(18,7,0),
(18,8,0),
(18,9,0),
(18,10,0),
(19,1,0),
(19,2,0),
(19,3,0),
(19,4,1),
(19,5,0),
(19,6,0),
(19,7,0),
(19,8,0),
(19,9,0),
(19,10,0),
(20,1,0),
(20,2,0),
(20,3,0),
(20,4,0),
(20,5,1),
(20,6,0),
(20,7,0),
(20,8,0),
(20,9,0),
(20,10,0),
(21,1,0),
(21,2,0),
(21,3,0),
(21,4,0),
(21,5,1),
(21,6,0),
(21,7,0),
(21,8,0),
(21,9,0),
(21,10,0),
(22,1,0),
(22,2,1),
(22,3,0),
(22,4,0),
(22,5,0),
(22,6,0),
(22,7,0),
(22,8,0),
(22,9,0),
(22,10,0),
(23,1,0),
(23,2,0),
(23,3,0),
(23,4,0),
(23,5,0),
(23,6,1),
(23,7,0),
(23,8,0),
(23,9,0),
(23,10,0),
(24,1,0),
(24,2,0),
(24,3,0),
(24,4,0),
(24,5,0),
(24,6,1),
(24,7,0),
(24,8,0),
(24,9,0),
(24,10,0),
(25,1,0),
(25,2,0),
(25,3,0),
(25,4,0),
(25,5,0),
(25,6,1),
(25,7,0),
(25,8,0),
(25,9,0),
(25,10,0),
(26,1,0),
(26,2,0),
(26,3,0),
(26,4,0),
(26,5,0),
(26,6,0),
(26,7,1),
(26,8,0),
(26,9,0),
(26,10,0),
(27,1,0),
(27,2,0),
(27,3,0),
(27,4,0),
(27,5,0),
(27,6,0),
(27,7,0),
(27,8,1),
(27,9,0),
(27,10,0),
(28,1,0),
(28,2,0),
(28,3,0),
(28,4,0),
(28,5,0),
(28,6,0),
(28,7,0),
(28,8,1),
(28,9,0),
(28,10,0),
(29,1,0),
(29,2,0),
(29,3,0),
(29,4,0),
(29,5,0),
(29,6,0),
(29,7,0),
(29,8,1),
(29,9,0),
(29,10,0),
(30,1,0),
(30,2,0),
(30,3,0),
(30,4,0),
(30,5,0),
(30,6,0),
(30,7,0),
(30,8,0),
(30,9,1),
(30,10,0),
(31,1,0),
(31,2,0),
(31,3,0),
(31,4,0),
(31,5,0),
(31,6,0),
(31,7,0),
(31,8,0),
(31,9,1),
(31,10,0),
(32,1,0),
(32,2,0),
(32,3,0),
(32,4,0),
(32,5,0),
(32,6,0),
(32,7,0),
(32,8,0),
(32,9,1),
(32,10,0),
(33,1,0),
(33,2,0),
(33,3,0),
(33,4,0),
(33,5,0),
(33,6,0),
(33,7,0),
(33,8,0),
(33,9,0),
(33,10,1),
(34,1,0),
(34,2,0),
(34,3,0),
(34,4,0),
(34,5,0),
(34,6,0),
(34,7,0),
(34,8,0),
(34,9,0),
(34,10,1),
(35,1,0),
(35,2,0),
(35,3,0),
(35,4,0),
(35,5,0),
(35,6,0),
(35,7,0),
(35,8,0),
(35,9,0),
(35,10,1),
(36,1,0),
(36,2,0),
(36,3,0),
(36,4,0),
(36,5,0),
(36,6,0),
(36,7,0),
(36,8,0),
(36,9,0),
(36,10,1),
(37,1,0),
(37,2,0),
(37,3,0),
(37,4,0),
(37,5,0),
(37,6,0),
(37,7,0),
(37,8,0),
(37,9,0),
(37,10,1),
(38,1,0),
(38,2,0),
(38,3,0),
(38,4,0),
(38,5,0),
(38,6,0),
(38,7,0),
(38,8,0),
(38,9,0),
(38,10,1),
(39,1,0),
(39,2,0),
(39,3,0),
(39,4,0),
(39,5,0),
(39,6,0),
(39,7,0),
(39,8,0),
(39,9,0),
(39,10,1),
(40,1,0),
(40,2,0),
(40,3,0),
(40,4,0),
(40,5,0),
(40,6,0),
(40,7,0),
(40,8,0),
(40,9,0),
(40,10,1),
(41,1,1),
(41,2,0),
(41,3,0),
(41,4,0),
(41,5,0),
(41,6,0),
(41,7,0),
(41,8,0),
(41,9,0),
(41,10,0),
(42,1,1),
(42,2,0),
(42,3,0),
(42,4,0),
(42,5,0),
(42,6,0),
(42,7,0),
(42,8,0),
(42,9,0),
(42,10,0),
(43,1,1),
(43,2,0),
(43,3,0),
(43,4,0),
(43,5,0),
(43,6,0),
(43,7,0),
(43,8,0),
(43,9,0),
(43,10,0),
(44,1,0),
(44,2,1),
(44,3,0),
(44,4,0),
(44,5,0),
(44,6,0),
(44,7,0),
(44,8,0),
(44,9,0),
(44,10,0),
(45,1,0),
(45,2,1),
(45,3,0),
(45,4,0),
(45,5,0),
(45,6,0),
(45,7,0),
(45,8,0),
(45,9,0),
(45,10,0),
(46,1,0),
(46,2,0),
(46,3,1),
(46,4,0),
(46,5,0),
(46,6,0),
(46,7,0),
(46,8,0),
(46,9,0),
(46,10,0),
(47,1,0),
(47,2,0),
(47,3,0),
(47,4,1),
(47,5,0),
(47,6,0),
(47,7,0),
(47,8,0),
(47,9,0),
(47,10,0),
(48,1,0),
(48,2,0),
(48,3,0),
(48,4,1),
(48,5,0),
(48,6,0),
(48,7,0),
(48,8,0),
(48,9,0),
(48,10,0),
(49,1,0),
(49,2,0),
(49,3,0),
(49,4,1),
(49,5,0),
(49,6,0),
(49,7,0),
(49,8,0),
(49,9,0),
(49,10,0),
(50,1,0),
(50,2,0),
(50,3,0),
(50,4,1),
(50,5,0),
(50,6,0),
(50,7,0),
(50,8,0),
(50,9,0),
(50,10,0),
(51,1,0),
(51,2,0),
(51,3,0),
(51,4,1),
(51,5,0),
(51,6,0),
(51,7,0),
(51,8,0),
(51,9,0),
(51,10,0),
(52,1,0),
(52,2,0),
(52,3,0),
(52,4,0),
(52,5,1),
(52,6,0),
(52,7,0),
(52,8,0),
(52,9,0),
(52,10,0),
(53,1,0),
(53,2,0),
(53,3,0),
(53,4,0),
(53,5,1),
(53,6,0),
(53,7,0),
(53,8,0),
(53,9,0),
(53,10,0),
(54,1,0),
(54,2,0),
(54,3,0),
(54,4,0),
(54,5,1),
(54,6,0),
(54,7,0),
(54,8,0),
(54,9,0),
(54,10,0),
(55,1,0),
(55,2,0),
(55,3,0),
(55,4,0),
(55,5,0),
(55,6,1),
(55,7,0),
(55,8,0),
(55,9,0),
(55,10,0),
(56,1,0),
(56,2,0),
(56,3,0),
(56,4,0),
(56,5,0),
(56,6,1),
(56,7,0),
(56,8,0),
(56,9,0),
(56,10,0),
(57,1,0),
(57,2,0),
(57,3,0),
(57,4,0),
(57,5,0),
(57,6,1),
(57,7,0),
(57,8,0),
(57,9,0),
(57,10,0),
(58,1,0),
(58,2,0),
(58,3,0),
(58,4,0),
(58,5,0),
(58,6,1),
(58,7,0),
(58,8,0),
(58,9,0),
(58,10,0),
(59,1,0),
(59,2,0),
(59,3,0),
(59,4,0),
(59,5,0),
(59,6,0),
(59,7,1),
(59,8,0),
(59,9,0),
(59,10,0),
(60,1,0),
(60,2,0),
(60,3,0),
(60,4,0),
(60,5,0),
(60,6,0),
(60,7,1),
(60,8,0),
(60,9,0),
(60,10,0),
(61,1,0),
(61,2,0),
(61,3,0),
(61,4,0),
(61,5,0),
(61,6,0),
(61,7,1),
(61,8,0),
(61,9,0),
(61,10,0),
(62,1,0),
(62,2,0),
(62,3,0),
(62,4,0),
(62,5,0),
(62,6,0),
(62,7,1),
(62,8,0),
(62,9,0),
(62,10,0),
(63,1,0),
(63,2,0),
(63,3,0),
(63,4,0),
(63,5,0),
(63,6,0),
(63,7,1),
(63,8,0),
(63,9,0),
(63,10,0),
(64,1,0),
(64,2,0),
(64,3,0),
(64,4,0),
(64,5,0),
(64,6,0),
(64,7,1),
(64,8,0),
(64,9,0),
(64,10,0),
(65,1,0),
(65,2,0),
(65,3,0),
(65,4,0),
(65,5,0),
(65,6,0),
(65,7,0),
(65,8,1),
(65,9,0),
(65,10,0),
(66,1,0),
(66,2,0),
(66,3,0),
(66,4,0),
(66,5,0),
(66,6,0),
(66,7,0),
(66,8,1),
(66,9,0),
(66,10,0),
(67,1,0),
(67,2,0),
(67,3,0),
(67,4,0),
(67,5,0),
(67,6,0),
(67,7,0),
(67,8,1),
(67,9,0),
(67,10,0),
(68,1,0),
(68,2,0),
(68,3,0),
(68,4,0),
(68,5,0),
(68,6,0),
(68,7,0),
(68,8,0),
(68,9,1),
(68,10,0),
(69,1,0),
(69,2,0),
(69,3,0),
(69,4,0),
(69,5,0),
(69,6,0),
(69,7,0),
(69,8,0),
(69,9,1),
(69,10,0),
(70,1,0),
(70,2,0),
(70,3,0),
(70,4,0),
(70,5,0),
(70,6,0),
(70,7,0),
(70,8,0),
(70,9,1),
(70,10,0),
(71,1,0),
(71,2,0),
(71,3,0),
(71,4,0),
(71,5,0),
(71,6,0),
(71,7,0),
(71,8,0),
(71,9,1),
(71,10,0);

/*Table structure for table `ruangan` */

DROP TABLE IF EXISTS `ruangan`;

CREATE TABLE `ruangan` (
  `no` int(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(225) DEFAULT NULL,
  `kapasitas` int(20) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `ruangan` */

insert  into `ruangan`(`no`,`nama`,`kapasitas`) values 
(1,'GD513',30),
(2,'GD514',30),
(3,'GD515',30),
(4,'GD516',60),
(5,'GD524',30),
(6,'GD525',30),
(7,'GD526',30),
(8,'GD711',60),
(9,'GD712',30),
(10,'GD713',30),
(11,'GD714',60),
(12,'GD721',60),
(13,'GD722',120),
(14,'GD723',60),
(15,'GD724',30),
(16,'GD725',30),
(17,'GD726',30),
(18,'GD912',60),
(19,'GD922',60),
(20,'GD923',60),
(21,'AUD',200);

/*Table structure for table `sesi` */

DROP TABLE IF EXISTS `sesi`;

CREATE TABLE `sesi` (
  `no` int(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `sesi` */

insert  into `sesi`(`no`,`nama`) values 
(1,'SESI 8'),
(2,'SESI 7'),
(3,'SESI 6'),
(4,'SESI 5'),
(5,'SESI 4'),
(6,'SESI 3'),
(7,'SESI 2'),
(8,'SESI 1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;