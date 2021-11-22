-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for pembayaran
CREATE DATABASE IF NOT EXISTS `pembayaran` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `pembayaran`;

-- Dumping structure for table pembayaran.kelas
CREATE TABLE IF NOT EXISTS `kelas` (
  `id_kelas` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(10) NOT NULL DEFAULT '0',
  `kompetensi_keahlian` varchar(64) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table pembayaran.pembayaran
CREATE TABLE IF NOT EXISTS `pembayaran` (
  `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT,
  `id_petugas` int(11) NOT NULL,
  `id_spp` int(11) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `bulan_dibayar` varchar(8) NOT NULL,
  `tahun_dibayar` varchar(4) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_pembayaran`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table pembayaran.petugas
CREATE TABLE IF NOT EXISTS `petugas` (
  `id_petugas` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_lengkap` varchar(35) NOT NULL,
  `level` enum('1','2') NOT NULL,
  PRIMARY KEY (`id_petugas`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table pembayaran.siswa
CREATE TABLE IF NOT EXISTS `siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `id_spp` int(11) NOT NULL DEFAULT 0,
  `id_kelas` int(11) NOT NULL DEFAULT 0,
  `nisn` varchar(10) NOT NULL DEFAULT '0',
  `nis` varchar(8) NOT NULL DEFAULT '0',
  `nama` varchar(64) NOT NULL DEFAULT '0',
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table pembayaran.spp
CREATE TABLE IF NOT EXISTS `spp` (
  `id_spp` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` varchar(4) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_spp`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;