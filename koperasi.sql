# Host: localhost  (Version: 5.6.25)
# Date: 2016-12-27 15:50:26
# Generator: MySQL-Front 5.2  (Build 5.66)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

DROP DATABASE IF EXISTS `koperasi`;
CREATE DATABASE `koperasi` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `koperasi`;

#
# Source for table "barang"
#

DROP TABLE IF EXISTS `barang`;
CREATE TABLE `barang` (
  `kd_barang` varchar(5) NOT NULL DEFAULT '',
  `nama_barang` varchar(50) DEFAULT NULL,
  `harga` decimal(10,0) DEFAULT NULL,
  `jumlah` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`kd_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Data for table "barang"
#

INSERT INTO `barang` VALUES ('9197','lhsxihy',2333,'32'),('B002','Pasta Gigi',6000,'20'),('B0020','Sikat WC',20000,'15'),('B003','Sampo',12000,'38'),('B010','sabun',30000,'92'),('B011','Handuk',20000,'20'),('uyuh','kiko',12000,'10');

#
# Source for table "pelanggan"
#

DROP TABLE IF EXISTS `pelanggan`;
CREATE TABLE `pelanggan` (
  `nipe` varchar(10) NOT NULL DEFAULT '',
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `jenkel` varchar(20) DEFAULT NULL,
  `tgllahir` varchar(255) DEFAULT '',
  `agama` varchar(10) DEFAULT NULL,
  `telp` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`nipe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Data for table "pelanggan"
#

INSERT INTO `pelanggan` VALUES ('PE010','ardy lator','jalan jalan  ','laki-laki','null','Islam','898'),('PE011','ajis','jalan kemana kek','laki-laki','09-90-1995','Islam','002829');

#
# Source for table "supplier"
#

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `nips` varchar(10) NOT NULL DEFAULT '',
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `jenkel` varchar(20) DEFAULT NULL,
  `tgllahir` varchar(255) DEFAULT NULL,
  `agama` varchar(30) DEFAULT NULL,
  `telp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`nips`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Data for table "supplier"
#

INSERT INTO `supplier` VALUES ('19299','rakha','jalan sini nih','laki-laki','1965-10-29','Budha','2324242'),('858875','hvjhvh',NULL,'perempuan','2016-12-21','Budha','68708707'),('878','hshdh',NULL,'perempuan','2016-12-23','Hindu','15276276'),('null','Dono','Aren','laki-laki','1899-09-07','Katolik','0878787871'),('S009','ngenyem','alamatnya','laki-laki','32','Islam','0928193');

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
