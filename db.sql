-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 8.0.17 - MySQL Community Server - GPL
-- OS Server:                    Win64
-- HeidiSQL Versi:               10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- membuang struktur untuk table bayes.alternatif
CREATE TABLE IF NOT EXISTS `alternatif` (
  `id_alternatif` int(11) NOT NULL AUTO_INCREMENT,
  `alternatif` varchar(50) NOT NULL DEFAULT '',
  `k1` varchar(50) NOT NULL DEFAULT '0',
  `k2` varchar(50) NOT NULL DEFAULT '0',
  `k3` varchar(50) NOT NULL DEFAULT '0',
  `k4` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_alternatif`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Membuang data untuk tabel bayes.alternatif: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `alternatif` DISABLE KEYS */;
REPLACE INTO `alternatif` (`id_alternatif`, `alternatif`, `k1`, `k2`, `k3`, `k4`) VALUES
	(1, 'Rangut', 'dekat', 'murah', 'sedang', 'tidak'),
	(2, 'Manyar', 'jauh', 'mahal', 'besar', 'tidak'),
	(3, 'Jagir', 'sedang', 'sedang', 'besar', 'tidak');
/*!40000 ALTER TABLE `alternatif` ENABLE KEYS */;

-- membuang struktur untuk table bayes.aturan
CREATE TABLE IF NOT EXISTS `aturan` (
  `id_aturan` int(11) NOT NULL AUTO_INCREMENT,
  `k1` varchar(50) DEFAULT NULL,
  `k2` varchar(50) DEFAULT NULL,
  `k3` varchar(50) DEFAULT NULL,
  `k4` varchar(50) DEFAULT NULL,
  `k5` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_aturan`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Membuang data untuk tabel bayes.aturan: ~10 rows (lebih kurang)
/*!40000 ALTER TABLE `aturan` DISABLE KEYS */;
REPLACE INTO `aturan` (`id_aturan`, `k1`, `k2`, `k3`, `k4`, `k5`) VALUES
	(2, 'dekat', 'murah', 'kecil', 'ada', 'ya'),
	(3, 'dekat', 'murah', 'sedang', 'tidak', 'tidak'),
	(4, 'dekat', 'sedang', 'kecil', 'ada', 'ya'),
	(5, 'dekat', 'mahal', 'sedang', 'tidak', 'ya'),
	(6, 'sedang', 'murah', 'sedang', 'ada', 'ya'),
	(7, 'sedang', 'murah', 'sedang', 'ada', 'ya'),
	(8, 'sedang', 'sedang', 'kecil', 'ada', 'tidak'),
	(9, 'sedang', 'mahal', 'besar', 'ada', 'ya'),
	(10, 'jauh', 'mahal', 'besar', 'ada', 'tidak'),
	(11, 'jauh', 'sedang', 'sedang', 'ada', 'ya');
/*!40000 ALTER TABLE `aturan` ENABLE KEYS */;

-- membuang struktur untuk table bayes.kriteria
CREATE TABLE IF NOT EXISTS `kriteria` (
  `id_kriteria` int(11) NOT NULL AUTO_INCREMENT,
  `kriteria` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_kriteria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Membuang data untuk tabel bayes.kriteria: ~5 rows (lebih kurang)
/*!40000 ALTER TABLE `kriteria` DISABLE KEYS */;
REPLACE INTO `kriteria` (`id_kriteria`, `kriteria`) VALUES
	(1, 'jarak dengan fasilitas umum'),
	(2, 'harga beli'),
	(3, 'luas bangunan'),
	(4, 'angkutan umum'),
	(5, 'STRATEGIS');
/*!40000 ALTER TABLE `kriteria` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
