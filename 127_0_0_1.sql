-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 30 Mei 2017 pada 00.59
-- Versi Server: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `best_system`
--
DROP DATABASE `best_system`;
CREATE DATABASE IF NOT EXISTS `best_system` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `best_system`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `kode_barang` varchar(20) NOT NULL,
  `kuantitas` int(11) DEFAULT NULL,
  `periode` varchar(100) NOT NULL,
  `principal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `inventory`
--

INSERT INTO `inventory` (`kode_barang`, `kuantitas`, `periode`, `principal`) VALUES
('1', 1126, 'Januari 2017', 'KP'),
('1', 33, 'Januari 2017', 'MHF'),
('10', 10056, 'Februari 2017', 'BEST'),
('10', 10056, 'Januari 2017', 'BEST'),
('10', 432, 'Januari 2017', 'KP'),
('11', 12690, 'Februari 2017', 'BEST'),
('11', 12690, 'Januari 2017', 'BEST'),
('11', 741, 'Januari 2017', 'KP'),
('12', 5222, 'Februari 2017', 'BEST'),
('12', 5222, 'Januari 2017', 'BEST'),
('12', 7, 'Januari 2017', 'MHF'),
('13', 6288, 'Februari 2017', 'BEST'),
('13', 6288, 'Januari 2017', 'BEST'),
('13', 147, 'Januari 2017', 'MHF'),
('14', 4660, 'Februari 2017', 'BEST'),
('14', 4660, 'Januari 2017', 'BEST'),
('14', 490, 'Januari 2017', 'KP'),
('14', 241, 'Januari 2017', 'MAP'),
('14', 3, 'Januari 2017', 'MHF'),
('14', 115, 'Januari 2017', 'PII'),
('15', 8470, 'Februari 2017', 'BEST'),
('15', 8470, 'Januari 2017', 'BEST'),
('15', 30, 'Januari 2017', 'MHF'),
('15', 49, 'Januari 2017', 'MHF PUSAT'),
('15', 4430, 'Januari 2017', 'PII'),
('16', 7216, 'Februari 2017', 'BEST'),
('16', 7216, 'Januari 2017', 'BEST'),
('16', 253, 'Januari 2017', 'MAP'),
('16', 24, 'Januari 2017', 'MHF'),
('16', 36, 'Januari 2017', 'MHF PUSAT'),
('16', 2812, 'Januari 2017', 'PII'),
('17', 2648, 'Februari 2017', 'BEST'),
('17', 0, 'Januari 2017', 'ALIDA'),
('17', 2648, 'Januari 2017', 'BEST'),
('17', 5, 'Januari 2017', 'MHF'),
('17', 12335, 'Januari 2017', 'PII'),
('18', 11644, 'Februari 2017', 'BEST'),
('18', 11644, 'Januari 2017', 'BEST'),
('18', 123, 'Januari 2017', 'MHF'),
('19', 1356, 'Februari 2017', 'BEST'),
('19', 1356, 'Januari 2017', 'BEST'),
('19', 27, 'Januari 2017', 'MHF'),
('2', 3924, 'Februari 2017', 'BEST'),
('2', 3924, 'Januari 2017', 'BEST'),
('2', 231, 'Januari 2017', 'MHF'),
('2', 21, 'Januari 2017', 'MHF PUSAT'),
('20', 16074, 'Februari 2017', 'BEST'),
('20', 0, 'Januari 2017', 'ALIDA'),
('20', 16074, 'Januari 2017', 'BEST'),
('20', 0, 'Januari 2017', 'MHF'),
('21', 2544, 'Februari 2017', 'BEST'),
('21', 62, 'Januari 2017', 'ALIDA'),
('21', 2544, 'Januari 2017', 'BEST'),
('21', 12, 'Januari 2017', 'MHF'),
('21', 43, 'Januari 2017', 'MHF PUSAT'),
('22', 6916, 'Februari 2017', 'BEST'),
('22', 0, 'Januari 2017', 'ALIDA'),
('22', 6916, 'Januari 2017', 'BEST'),
('22', 0, 'Januari 2017', 'MHF'),
('22', 8341, 'Januari 2017', 'PII'),
('23', 19524, 'Februari 2017', 'BEST'),
('23', 0, 'Januari 2017', 'ALIDA'),
('23', 19524, 'Januari 2017', 'BEST'),
('23', 150, 'Januari 2017', 'MHF'),
('23', 324, 'Januari 2017', 'PII'),
('24', 10842, 'Februari 2017', 'BEST'),
('24', 36, 'Januari 2017', 'ALIDA'),
('24', 10842, 'Januari 2017', 'BEST'),
('24', 23, 'Januari 2017', 'MHF'),
('24', 1, 'Januari 2017', 'MHF PUSAT'),
('24', 169, 'Januari 2017', 'PII'),
('25', 5728, 'Februari 2017', 'BEST'),
('25', 0, 'Januari 2017', 'ALIDA'),
('25', 5728, 'Januari 2017', 'BEST'),
('25', 0, 'Januari 2017', 'MHF'),
('25', 9, 'Januari 2017', 'MHF PUSAT'),
('26', 11412, 'Februari 2017', 'BEST'),
('26', 11412, 'Januari 2017', 'BEST'),
('26', 11, 'Januari 2017', 'MHF'),
('27', 6386, 'Februari 2017', 'BEST'),
('27', 0, 'Januari 2017', 'ALIDA'),
('27', 6386, 'Januari 2017', 'BEST'),
('27', 16, 'Januari 2017', 'MHF'),
('27', 15626, 'Januari 2017', 'PII'),
('28', 6008, 'Februari 2017', 'BEST'),
('28', 0, 'Januari 2017', 'ALIDA'),
('28', 6008, 'Januari 2017', 'BEST'),
('28', 111, 'Januari 2017', 'MHF'),
('28', 300, 'Januari 2017', 'PII'),
('29', 15866, 'Februari 2017', 'BEST'),
('29', 0, 'Januari 2017', 'ALIDA'),
('29', 15866, 'Januari 2017', 'BEST'),
('29', 87, 'Januari 2017', 'MHF'),
('29', 513607, 'Januari 2017', 'PII'),
('3', 6582, 'Februari 2017', 'BEST'),
('3', 6582, 'Januari 2017', 'BEST'),
('30', 9240, 'Februari 2017', 'BEST'),
('30', 0, 'Januari 2017', 'ALIDA'),
('30', 9240, 'Januari 2017', 'BEST'),
('30', 0, 'Januari 2017', 'MHF'),
('31', 2460, 'Februari 2017', 'BEST'),
('31', 2460, 'Januari 2017', 'BEST'),
('31', 291, 'Januari 2017', 'MHF'),
('31', 2, 'Januari 2017', 'MHF PUSAT'),
('31', 9334, 'Januari 2017', 'PII'),
('32', 2438, 'Februari 2017', 'BEST'),
('32', 2438, 'Januari 2017', 'BEST'),
('32', 7, 'Januari 2017', 'MHF'),
('32', 74, 'Januari 2017', 'MHF PUSAT'),
('33', -3318, 'Februari 2017', 'BEST'),
('33', -3318, 'Januari 2017', 'BEST'),
('33', 130, 'Januari 2017', 'MHF'),
('33', 34, 'Januari 2017', 'MHF PUSAT'),
('34', 220, 'Februari 2017', 'BEST'),
('34', 220, 'Januari 2017', 'BEST'),
('34', 8, 'Januari 2017', 'MHF'),
('34', 32, 'Januari 2017', 'MHF PUSAT'),
('35', 36, 'Februari 2017', 'BEST'),
('35', 36, 'Januari 2017', 'BEST'),
('35', 160, 'Januari 2017', 'MHF'),
('36', 2126, 'Februari 2017', 'BEST'),
('36', 2126, 'Januari 2017', 'BEST'),
('36', 0, 'Januari 2017', 'MHF'),
('36', 3000, 'Maret 2017', 'MAP'),
('37', 4034, 'Februari 2017', 'BEST'),
('37', 4034, 'Januari 2017', 'BEST'),
('37', 7, 'Januari 2017', 'MHF'),
('37', 94, 'Januari 2017', 'MHF PUSAT'),
('38', -3538, 'Februari 2017', 'BEST'),
('38', -3538, 'Januari 2017', 'BEST'),
('38', 0, 'Januari 2017', 'MHF'),
('38', 65, 'Januari 2017', 'MHF PUSAT'),
('39', 3636, 'Februari 2017', 'BEST'),
('39', 3636, 'Januari 2017', 'BEST'),
('39', 4, 'Januari 2017', 'MHF'),
('4', 26276, 'Februari 2017', 'BEST'),
('4', 60, 'Januari 2017', 'ALIDA'),
('4', 26276, 'Januari 2017', 'BEST'),
('4', 167, 'Januari 2017', 'KP'),
('40', 4842, 'Februari 2017', 'BEST'),
('40', 4842, 'Januari 2017', 'BEST'),
('40', 0, 'Januari 2017', 'MHF'),
('40', 20, 'Januari 2017', 'MHF PUSAT'),
('41', 644, 'Februari 2017', 'BEST'),
('41', 644, 'Januari 2017', 'BEST'),
('41', 0, 'Januari 2017', 'MHF'),
('42', 26928, 'Februari 2017', 'BEST'),
('42', 0, 'Januari 2017', 'ALIDA'),
('42', 26928, 'Januari 2017', 'BEST'),
('42', 119, 'Januari 2017', 'MHF'),
('42', 177000, 'Januari 2017', 'PII'),
('43', 12470, 'Februari 2017', 'BEST'),
('43', 12470, 'Januari 2017', 'BEST'),
('43', 147, 'Januari 2017', 'MHF'),
('43', 60, 'Januari 2017', 'MHF PUSAT'),
('44', -1872, 'Februari 2017', 'BEST'),
('44', -1872, 'Januari 2017', 'BEST'),
('44', 1, 'Januari 2017', 'MHF'),
('44', 9, 'Januari 2017', 'MHF PUSAT'),
('45', 3464, 'Februari 2017', 'BEST'),
('45', 3464, 'Januari 2017', 'BEST'),
('45', 513, 'Januari 2017', 'MHF'),
('45', 84, 'Januari 2017', 'PII'),
('46', 32, 'Februari 2017', 'BEST'),
('46', 32, 'Januari 2017', 'BEST'),
('46', 35, 'Januari 2017', 'MHF'),
('46', 90, 'Januari 2017', 'MHF PUSAT'),
('46', 4980, 'Januari 2017', 'PII'),
('47', 1096, 'Februari 2017', 'BEST'),
('47', 1096, 'Januari 2017', 'BEST'),
('47', 96, 'Januari 2017', 'MHF'),
('47', 11, 'Januari 2017', 'MHF PUSAT'),
('48', 362, 'Februari 2017', 'BEST'),
('48', 362, 'Januari 2017', 'BEST'),
('48', 10, 'Januari 2017', 'MHF'),
('48', 6, 'Januari 2017', 'MHF PUSAT'),
('5', 2382, 'Februari 2017', 'BEST'),
('5', 318, 'Januari 2017', 'ALIDA'),
('5', 2382, 'Januari 2017', 'BEST'),
('5', 948, 'Januari 2017', 'KP'),
('5', 14, 'Januari 2017', 'MHF'),
('6', 7872, 'Februari 2017', 'BEST'),
('6', 7872, 'Januari 2017', 'BEST'),
('6', 118, 'Januari 2017', 'KP'),
('6', 1, 'Januari 2017', 'MHF'),
('6', 4050, 'Januari 2017', 'PII'),
('7', 12876, 'Februari 2017', 'BEST'),
('7', 0, 'Januari 2017', 'ALIDA'),
('7', 12876, 'Januari 2017', 'BEST'),
('7', 1823, 'Januari 2017', 'KP'),
('7', 16, 'Januari 2017', 'PII'),
('8', 2610, 'Februari 2017', 'BEST'),
('8', 140, 'Januari 2017', 'ALIDA'),
('8', 2610, 'Januari 2017', 'BEST'),
('8', 1172, 'Januari 2017', 'KP'),
('8', 12, 'Januari 2017', 'MHF'),
('8', 4, 'Januari 2017', 'MHF PUSAT'),
('8', 23, 'Januari 2017', 'NSI'),
('8', 63553, 'Januari 2017', 'PII'),
('9', 1026, 'Februari 2017', 'BEST'),
('9', 1026, 'Januari 2017', 'BEST'),
('9', 340, 'Januari 2017', 'KP'),
('9', 4, 'Januari 2017', 'MHF'),
('9', 3947, 'Januari 2017', 'PII');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_barang`
--

DROP TABLE IF EXISTS `mst_barang`;
CREATE TABLE `mst_barang` (
  `kode_barang` int(11) DEFAULT NULL,
  `nama_barang` varchar(200) DEFAULT NULL,
  `alias` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mst_barang`
--

INSERT INTO `mst_barang` (`kode_barang`, `nama_barang`, `alias`) VALUES
(1, 'Beskin', 'BESKIN MO'),
(1, 'Beskin', 'BESKIN 30s BANDED'),
(1, 'Beskin', 'BESKIN ( BEST)'),
(1, 'Beskin', 'BESKIN BANDED'),
(1, 'Beskin', 'BESKIN 30''S / DUS'),
(2, 'Chew E 10''s', 'Chew E 10 S'),
(2, 'Chew E 10''s', 'CHEW-E/DUS/10''S'),
(2, 'Chew E 10''s', 'CHEW-E DUS/10''S'),
(3, 'Chew E 30''s', 'CHEW - E 30S'),
(4, 'Dynamic C 250 mg', 'DYNAMIC C 250 MG'),
(4, 'Dynamic C 250 mg', 'DYNAMIC C 250 MG - MO'),
(5, 'Dynamic C 500 MG', 'DYNAMIC C 500 MG'),
(5, 'Dynamic C 500 MG', 'DYNAMIC C 500 MG - MO'),
(6, 'Estro Tab', 'NEW ESTRO TABLET'),
(6, 'Estro Tab', 'ESTRO TAB TWIN PACK'),
(6, 'Estro Tab', 'ESTRO TABLET'),
(6, 'Estro Tab', 'ESTRO'),
(7, 'EXTRIM', 'Extrim'),
(7, 'EXTRIM', 'EXTRIM BANDED'),
(7, 'EXTRIM', 'EXTRIM TABLET'),
(8, 'GLOMEGA 30''S', 'GLOMEGA 30 S LIFEPHARM'),
(8, 'GLOMEGA 30''S', 'GLOMEGA LIFEPHARM 30S'),
(8, 'GLOMEGA 30''S', 'Glomega Lifepharm'),
(8, 'GLOMEGA 30''S', 'GLOMEGA'),
(8, 'GLOMEGA 30''S', 'MVT GLOMEGA 30`S'),
(8, 'GLOMEGA 30''S', 'GLUMEGA NEW ISI 30'),
(8, 'GLOMEGA 30''S', 'GLUMEGA 30''S / BTL'),
(9, 'GLOMEGA 60''S', 'GLOMEGA 60 S LIFEPHARM'),
(9, 'GLOMEGA 60''S', 'GLOMEGA LIFEPHARM 60S'),
(9, 'GLOMEGA 60''S', 'Glomega Lifepharm'),
(9, 'GLOMEGA 60''S', 'GLOMEGA LIFEPHARM 60''S'),
(10, 'Intenz 30''s', 'INTENZ 30 S'),
(10, 'Intenz 30''s', 'INTENZ 30`S'),
(11, 'Intenz 60''s', 'INTENZ 60 S'),
(11, 'Intenz 60''s', 'INTENZ 60`S'),
(11, 'Intenz 60''s', 'INTENZ 60`S BANDED'),
(12, 'MultiKids 15''s', 'Multikids 15 s Reguler'),
(12, 'MultiKids 15''s', 'MULTIKIDS ''15/ DUS'),
(13, 'MultiKids 30''s', 'Multikids 30 s Reguler'),
(13, 'MultiKids 30''s', 'MULTIKIDS / BTL /30''S'),
(14, 'SlimTrim', 'Slim Trim'),
(15, 'B-Complex Plus', 'B COMPLEX'),
(15, 'B-Complex Plus', 'Enervita B Complex Plus'),
(15, 'B-Complex Plus', 'Enervita - B Complex Plus'),
(15, 'B-Complex Plus', 'B-COMPLEX PLUS/DUS/30'''),
(15, 'B-Complex Plus', 'B-COMPLEX PLUS NEW 30''S'),
(15, 'B-Complex Plus', 'B - COMPLEX PLUS 30''S / BTL'),
(16, 'Chewable Multi', 'CHEWABEL MULTIVITAMIN'),
(16, 'Chewable Multi', 'Enervita - Chewable Multi'),
(16, 'Chewable Multi', 'CHEWABLE MULTIVITAMIN/DUS/30''S'),
(16, 'Chewable Multi', 'CHEWABLE MULTI 30''S / BTL'),
(17, 'Creatine', 'CREATINE'),
(17, 'Creatine', 'Enervita Creatine'),
(17, 'Creatine', 'Enervita - Creatine'),
(17, 'Creatine', 'CREATINE /DUS ''30S'),
(18, 'Digestion & Absorb', 'PRODIGESTION & ABSORPTION'),
(18, 'Digestion & Absorb', 'DIGESTION & ABSORPTION/DUS 30'''),
(18, 'Digestion & Absorb', 'PRODIGEST 30''S'),
(19, 'Enhance Mood', 'ENHANCED MOOD'),
(19, 'Enhance Mood', 'ENHANCE MOOD / DUS/30''S'),
(20, 'Garlic with Parsley', 'GARLIC WITH PARSLEY'),
(20, 'Garlic with Parsley', 'GARLIC WITH PARSLEY / DUS/30'''),
(21, 'Ginkgo Biloba', 'GINKGO BILOBA'),
(21, 'Ginkgo Biloba', 'GINKGO BILOBA/DUS/30''S'),
(21, 'Ginkgo Biloba', 'GINKGO BILOBA 30''S / BTL'),
(22, 'Horny Goat Weed', 'HORNY GOAT WEED'),
(22, 'Horny Goat Weed', 'Enervita Horny Goat Weed'),
(22, 'Horny Goat Weed', 'Enervita - Horny Goat Weed'),
(22, 'Horny Goat Weed', 'HORNY GOAT WEED/DUS/30'''),
(23, 'Mineral Complex', 'MINERAL COMPLEX'),
(23, 'Mineral Complex', 'Enervita Mineral Complex'),
(23, 'Mineral Complex', 'MINERAL COMPLEX /DUS30'''),
(24, 'MSM', 'MSM '),
(24, 'MSM', 'Enervita MSM'),
(24, 'MSM', 'MSM (METIL SULFONYL METHANE)/DUS 30'''),
(24, 'MSM', 'MSM 30''S / BTL'),
(25, 'Multivitamin Forte', 'MULTIVITAMIN FORTE'),
(25, 'Multivitamin Forte', 'MULTIVITAMIN /DUS''30'),
(25, 'Multivitamin Forte', 'MULTIVITAMIN FORTE 30''S / BTL'),
(26, 'Siberian Ginseng', 'SIBERIAN GINGSENG'),
(26, 'Siberian Ginseng', 'SIBERIAN GINSENG /DUS/30'''),
(27, 'Vitamin A & D', 'VITAMIN A & D'),
(27, 'Vitamin A & D', 'Enervita - Vitamin A & D'),
(27, 'Vitamin A & D', 'VITAMIN A & D /DUS30'''),
(28, 'Vitamin C 500 mg', 'VITAMIN C 500 MG'),
(28, 'Vitamin C 500 mg', 'Enervita Vitamin C 500mg'),
(28, 'Vitamin C 500 mg', 'VITAMIN C 500 MG /DUS''30'),
(29, 'Vitamin E 200 IU', 'VITAMIN E 200 IU'),
(29, 'Vitamin E 200 IU', 'Vitamin E 200 iu'),
(29, 'Vitamin E 200 IU', 'VITAMIN E 200 IU/DUS/30'''),
(30, 'Bestrim', 'BESTRIM'),
(30, 'Bestrim', 'BESTRIM 30''S / DUS'),
(31, 'CalciBAG', 'CALCIBAG 30 s'),
(31, 'CalciBAG', 'CALCIBAG 30 S'),
(31, 'CalciBAG', 'CALCIBAG 30S'),
(31, 'CalciBAG', 'CALCIBAG / DUS/30''S'),
(31, 'CalciBAG', 'CALCIBAG 30''S'),
(32, 'Calcium 600 mg 30''s', 'CALCIUM 600MG 30S'),
(32, 'Calcium 600 mg 30''s', 'MVT CALCIUM 600 MG 30`S'),
(32, 'Calcium 600 mg 30''s', 'CALCIUM 600 MG/DUS/30''S'),
(32, 'Calcium 600 mg 30''s', 'CALCIUM 600 MG DUS/30''S'),
(33, 'Calcium 600 mg 60''s', 'CALCIUM 600MG 60S'),
(33, 'Calcium 600 mg 60''s', 'MVT CALCIUM 600 MG 60`S'),
(33, 'Calcium 600 mg 60''s', 'CALCIUM 600 MG/DUS/60''S'),
(33, 'Calcium 600 mg 60''s', 'CALSIUM 600 MG DUS/60''S'),
(34, 'Collage', 'COLLAGE 60 S'),
(34, 'Collage', 'MVT COLLAGE'),
(34, 'Collage', 'MAXVITA COLLAGE'),
(34, 'Collage', 'COLL-AGE 60''S'),
(34, 'Collage', 'MAXVITA COLLAGE/60''S'),
(35, 'Eye Cleer 30''s', 'EYE CLEER 30 S'),
(35, 'Eye Cleer 30''s', 'EYE CLEER 30''S/DUS'),
(36, 'Eye Cleer 60''s', 'EYE CLEER 60 S'),
(36, 'Eye Cleer 60''s', 'EYE CLEER 60''S/DUS'),
(37, 'Glucosamine 30''s', 'GLUCOSAMIN CHONDROITIN 30 S'),
(37, 'Glucosamine 30''s', 'MVT GLUCOSAMIN CHONDROITIN 30`S'),
(37, 'Glucosamine 30''s', 'GLUCOSAMIN 30''S/DUS'),
(37, 'Glucosamine 30''s', 'GLUCOSAMIN 30''S'),
(38, 'Glucosamine 60''s', 'GLUCOSAMIN CHONDROITIN 60 S'),
(38, 'Glucosamine 60''s', 'MVT GLUCOSAMIN CHONDROITIN 60`S'),
(38, 'Glucosamine 60''s', 'GLUCOSAMIN 60''S/DUS'),
(38, 'Glucosamine 60''s', 'GLUCOSAMIN 60''S'),
(39, 'Sinus Forte 30''s', 'SINUS FORTE 30 S'),
(39, 'Sinus Forte 30''s', 'SINUS FORTE 30''S/DUS'),
(40, 'Sinus Forte 60''s', 'SINUS FORTE 60 S'),
(40, 'Sinus Forte 60''s', 'SINUS FORTE 60''S/DUS'),
(40, 'Sinus Forte 60''s', 'SINUS FORTE 60''S / SINU CLER'),
(41, 'Sitox 30''s', 'SITOX'),
(41, 'Sitox 30''s', 'SITOX 30''S/DUS'),
(42, 'Squalene', 'SQUALENE'),
(42, 'Squalene', 'Squalene'),
(42, 'Squalene', 'MVT SQUALENE 1000 MG'),
(42, 'Squalene', 'SQUALENE 1000 MG/DUS/30''S'),
(43, 'Xtra C w/ Echinacea 30''s', 'XTRA C 30 S'),
(43, 'Xtra C w/ Echinacea 30''s', 'MVT XTRA-C (VIT C+ECHINACEA) 30`S'),
(43, 'Xtra C w/ Echinacea 30''s', 'XTRA-C + ECHINACHEA / DUS / 30''S'),
(43, 'Xtra C w/ Echinacea 30''s', 'XTRA-C + ECHINACEA DUS/30S'),
(44, 'Xtra C w/ Echinacea 60''s', 'XTRA C 60 S'),
(44, 'Xtra C w/ Echinacea 60''s', 'MVT XTRA-C (VIT C+ECHINACEA) 60`S'),
(44, 'Xtra C w/ Echinacea 60''s', 'EXTRA C ECHINACHEA 60''S/DUS'),
(44, 'Xtra C w/ Echinacea 60''s', 'EXTRA C ECHINACHEA 60''S'),
(45, 'Xtra-E 100 iu 30''s', 'XTRA E 100 IU 30 S'),
(45, 'Xtra-E 100 iu 30''s', 'Xtra E 100 IU 30S'),
(45, 'Xtra-E 100 iu 30''s', 'MVT XTRA - E 100 IU 30`S'),
(45, 'Xtra-E 100 iu 30''s', 'XTRA-E 100 30''S/DUS'),
(46, 'Xtra-E 100 iu 60''s', 'XTRA E 100 IU 60 S'),
(46, 'Xtra-E 100 iu 60''s', 'Xtra E 100 IU 60S'),
(46, 'Xtra-E 100 iu 60''s', 'MVT XTRA - E 100 IU 60`S'),
(46, 'Xtra-E 100 iu 60''s', 'XTRA-E 100 60''S/DUS'),
(46, 'Xtra-E 100 iu 60''s', 'XTRA-E 100 60''S'),
(47, 'Xtra-E 400 iu 30''s', 'XTRA E 400 IU 30 s'),
(47, 'Xtra-E 400 iu 30''s', 'MVT XTRA - E 400 IU 30`S'),
(47, 'Xtra-E 400 iu 30''s', 'XTRA-E 400 30''S/DUS'),
(47, 'Xtra-E 400 iu 30''s', 'XTRA-E 400 30''S'),
(48, 'Xtra-E 400 iu 60''s', 'XTRA E 400 IU 60 S'),
(48, 'Xtra-E 400 iu 60''s', 'MVT XTRA - E 400 IU 60`S'),
(48, 'Xtra-E 400 iu 60''s', 'MVT XTRA - E 400 IU 60s BANDED'),
(48, 'Xtra-E 400 iu 60''s', 'XTRA-E 400 60''S/DUS'),
(48, 'Xtra-E 400 iu 60''s', 'XTRA-E 400 60''S');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_user`
--

DROP TABLE IF EXISTS `mst_user`;
CREATE TABLE `mst_user` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reporting`
--

DROP TABLE IF EXISTS `reporting`;
CREATE TABLE `reporting` (
  `periode` varchar(100) NOT NULL,
  `kode_barang` varchar(11) NOT NULL,
  `stock_disti` int(11) DEFAULT '0',
  `stock_best` int(11) DEFAULT '0',
  `stock_pii` int(11) DEFAULT '0',
  `sales_in` int(11) DEFAULT '0',
  `sales_out` int(11) DEFAULT '0',
  `proses` int(11) DEFAULT '0',
  `stock_otw` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `reporting`
--

INSERT INTO `reporting` (`periode`, `kode_barang`, `stock_disti`, `stock_best`, `stock_pii`, `sales_in`, `sales_out`, `proses`, `stock_otw`) VALUES
('Januari 2017', '1', 1159, 0, 0, 0, -208, 2, 20),
('Januari 2017', '10', 432, 10056, 0, 636, 357, 32, 9),
('Januari 2017', '11', 741, 12690, 0, 427, 291, 0, 0),
('Januari 2017', '12', 7, 5222, 0, 358, 0, 0, 0),
('Januari 2017', '13', 147, 6288, 0, 152, 0, 0, 0),
('Januari 2017', '14', 734, 4660, 115, 65, -332, 0, 0),
('Januari 2017', '15', 79, 8470, 4430, 452, 0, 0, 0),
('Januari 2017', '16', 313, 7216, 2812, 320, 0, 0, 2),
('Januari 2017', '17', 5, 2648, 12335, 48, 0, 0, 0),
('Januari 2017', '18', 123, 11644, 0, 209, 0, 0, 0),
('Januari 2017', '19', 27, 1356, 0, 28, 0, 43, 0),
('Januari 2017', '2', 252, 3924, 0, 872, 0, 0, 0),
('Januari 2017', '20', 0, 16074, 0, 671, 0, 0, 0),
('Januari 2017', '21', 117, 2544, 0, 409, 0, 0, 0),
('Januari 2017', '22', 0, 6916, 8341, 194, 0, 0, 12),
('Januari 2017', '23', 150, 19524, 324, 0, 0, 0, 0),
('Januari 2017', '24', 60, 10842, 169, 624, 16, 0, 0),
('Januari 2017', '25', 9, 5728, 0, 55, 0, 54, 0),
('Januari 2017', '26', 11, 11412, 0, 251, 0, 0, 0),
('Januari 2017', '27', 16, 6386, 15626, 120, 0, 0, 0),
('Januari 2017', '28', 111, 6008, 300, 205, 0, 0, 0),
('Januari 2017', '29', 87, 15866, 513607, 79, 0, 0, 0),
('Januari 2017', '3', 0, 6582, 0, -9, 0, 0, 0),
('Januari 2017', '30', 0, 9240, 0, -2, 0, 0, 0),
('Januari 2017', '31', 293, 2460, 9334, 216, 0, 0, 0),
('Januari 2017', '32', 81, 2438, 0, 2792, 0, 0, 0),
('Januari 2017', '33', 164, -3318, 0, 583, 0, 0, 0),
('Januari 2017', '34', 40, 220, 0, 831, 0, 0, 0),
('Januari 2017', '35', 160, 36, 0, 360, 0, 0, 0),
('Januari 2017', '36', 0, 2126, 0, 150, 0, 0, 0),
('Januari 2017', '37', 101, 4034, 0, 2132, 0, 0, 0),
('Januari 2017', '38', 65, -3538, 0, 429, 0, 0, 0),
('Januari 2017', '39', 4, 3636, 0, 78, 0, 0, 0),
('Januari 2017', '4', 227, 26276, 0, 4254, 39, 0, 0),
('Januari 2017', '40', 20, 4842, 0, 82, 0, 0, 0),
('Januari 2017', '41', 0, 644, 0, -3, 0, 0, 0),
('Januari 2017', '42', 119, 26928, 177000, 638, 0, 0, 0),
('Januari 2017', '43', 207, 12470, 0, 731, 0, 0, 0),
('Januari 2017', '44', 10, -1872, 0, 477, 0, 0, 0),
('Januari 2017', '45', 513, 3464, 84, 161, 0, 0, 0),
('Januari 2017', '46', 125, 32, 4980, 145, 0, 0, 0),
('Januari 2017', '47', 107, 1096, 0, 1864, 0, 0, 0),
('Januari 2017', '48', 16, 362, 0, 973, 0, 0, 0),
('Januari 2017', '5', 1280, 2382, 0, -9, 505, 0, 0),
('Januari 2017', '6', 119, 7872, 4050, -117, -94, 0, 0),
('Januari 2017', '7', 1823, 12876, 16, 68, 136, 0, 0),
('Januari 2017', '8', 1351, 2610, 63553, 429, 124, 0, 0),
('Januari 2017', '9', 344, 1026, 3947, 196, 514, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `kode_barang` varchar(20) NOT NULL,
  `kuantitas` int(11) DEFAULT NULL,
  `periode` varchar(100) NOT NULL,
  `principal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sales`
--

INSERT INTO `sales` (`kode_barang`, `kuantitas`, `periode`, `principal`) VALUES
('1', 3, 'Februari 2017', 'OUT - MHF BOGOR'),
('1', -208, 'Januari 2017', 'OUT - KP'),
('10', 636, 'Januari 2017', 'IN'),
('10', 357, 'Januari 2017', 'OUT - KP'),
('11', 427, 'Januari 2017', 'IN'),
('11', 291, 'Januari 2017', 'OUT - KP'),
('12', 8, 'Februari 2017', 'OUT - MHF BOGOR'),
('12', 358, 'Januari 2017', 'IN'),
('13', 125, 'Februari 2017', 'OUT - MHF BOGOR'),
('13', 152, 'Januari 2017', 'IN'),
('14', 3, 'Februari 2017', 'OUT - MHF BOGOR'),
('14', 65, 'Januari 2017', 'IN'),
('14', -332, 'Januari 2017', 'OUT - KP'),
('15', 22, 'Februari 2017', 'OUT - MHF BOGOR'),
('15', 452, 'Januari 2017', 'IN'),
('16', 9, 'Februari 2017', 'OUT - MHF BOGOR'),
('16', 320, 'Januari 2017', 'IN'),
('17', 3, 'Februari 2017', 'OUT - MHF BOGOR'),
('17', 48, 'Januari 2017', 'IN'),
('18', 49, 'Februari 2017', 'OUT - MHF BOGOR'),
('18', 209, 'Januari 2017', 'IN'),
('19', 14, 'Februari 2017', 'OUT - MHF BOGOR'),
('19', 28, 'Januari 2017', 'IN'),
('2', 28, 'Februari 2017', 'OUT - MHF BOGOR'),
('2', 872, 'Januari 2017', 'IN'),
('20', 671, 'Januari 2017', 'IN'),
('21', 3, 'Februari 2017', 'OUT - MHF BOGOR'),
('21', 409, 'Januari 2017', 'IN'),
('22', 194, 'Januari 2017', 'IN'),
('23', 3, 'Februari 2017', 'OUT - MHF BOGOR'),
('24', 6, 'Februari 2017', 'OUT - MHF BOGOR'),
('24', 624, 'Januari 2017', 'IN'),
('24', 16, 'Januari 2017', 'OUT - ALIDA'),
('25', 55, 'Januari 2017', 'IN'),
('26', 3, 'Februari 2017', 'OUT - MHF BOGOR'),
('26', 251, 'Januari 2017', 'IN'),
('27', 3, 'Februari 2017', 'OUT - MHF BOGOR'),
('27', 120, 'Januari 2017', 'IN'),
('28', 3, 'Februari 2017', 'OUT - MHF BOGOR'),
('28', 205, 'Januari 2017', 'IN'),
('29', 3, 'Februari 2017', 'OUT - MHF BOGOR'),
('29', 79, 'Januari 2017', 'IN'),
('3', -9, 'Januari 2017', 'IN'),
('30', -28, 'Februari 2017', 'OUT - MHF BOGOR'),
('30', -2, 'Januari 2017', 'IN'),
('31', 83, 'Februari 2017', 'OUT - MHF BOGOR'),
('31', 216, 'Januari 2017', 'IN'),
('32', 73, 'Februari 2017', 'OUT - MHF BOGOR'),
('32', 2792, 'Januari 2017', 'IN'),
('33', 29, 'Februari 2017', 'OUT - MHF BOGOR'),
('33', 583, 'Januari 2017', 'IN'),
('34', 11, 'Februari 2017', 'OUT - MHF BOGOR'),
('34', 831, 'Januari 2017', 'IN'),
('35', 86, 'Februari 2017', 'OUT - MHF BOGOR'),
('35', 360, 'Januari 2017', 'IN'),
('36', 150, 'Januari 2017', 'IN'),
('37', 142, 'Februari 2017', 'OUT - MHF BOGOR'),
('37', 2132, 'Januari 2017', 'IN'),
('38', -23, 'Februari 2017', 'OUT - MHF BOGOR'),
('38', 429, 'Januari 2017', 'IN'),
('39', 3, 'Februari 2017', 'OUT - MHF BOGOR'),
('39', 78, 'Januari 2017', 'IN'),
('4', 4254, 'Januari 2017', 'IN'),
('4', 39, 'Januari 2017', 'OUT - KP'),
('40', 82, 'Januari 2017', 'IN'),
('41', -3, 'Januari 2017', 'IN'),
('42', 116, 'Februari 2017', 'OUT - MHF BOGOR'),
('42', 638, 'Januari 2017', 'IN'),
('43', 73, 'Februari 2017', 'OUT - MHF BOGOR'),
('43', 731, 'Januari 2017', 'IN'),
('44', 477, 'Januari 2017', 'IN'),
('45', 6, 'Februari 2017', 'OUT - MHF BOGOR'),
('45', 161, 'Januari 2017', 'IN'),
('46', 3, 'Februari 2017', 'OUT - MHF BOGOR'),
('46', 145, 'Januari 2017', 'IN'),
('47', 26, 'Februari 2017', 'OUT - MHF BOGOR'),
('47', 1864, 'Januari 2017', 'IN'),
('48', 6, 'Februari 2017', 'OUT - MHF BOGOR'),
('48', 973, 'Januari 2017', 'IN'),
('5', 188, 'Februari 2017', 'OUT - MHF BOGOR'),
('5', -9, 'Januari 2017', 'IN'),
('5', 72, 'Januari 2017', 'OUT - ALIDA'),
('5', 433, 'Januari 2017', 'OUT - KP'),
('6', -117, 'Januari 2017', 'IN'),
('6', -94, 'Januari 2017', 'OUT - KP'),
('7', 68, 'Januari 2017', 'IN'),
('7', 136, 'Januari 2017', 'OUT - KP'),
('8', 5, 'Februari 2017', 'OUT - MHF BOGOR'),
('8', 429, 'Januari 2017', 'IN'),
('8', 124, 'Januari 2017', 'OUT - KP'),
('9', 39, 'Februari 2017', 'OUT - MHF BOGOR'),
('9', 196, 'Januari 2017', 'IN'),
('9', 514, 'Januari 2017', 'OUT - KP');

-- --------------------------------------------------------

--
-- Struktur dari tabel `trn_others`
--

DROP TABLE IF EXISTS `trn_others`;
CREATE TABLE `trn_others` (
  `periode` varchar(20) DEFAULT NULL,
  `kode_barang` varchar(20) DEFAULT NULL,
  `kuantitas` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `trn_po`
--

DROP TABLE IF EXISTS `trn_po`;
CREATE TABLE `trn_po` (
  `periode` varchar(20) NOT NULL,
  `no_po` varchar(20) NOT NULL,
  `kode_barang` varchar(20) NOT NULL,
  `kuantitas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `trn_po`
--

INSERT INTO `trn_po` (`periode`, `no_po`, `kode_barang`, `kuantitas`) VALUES
('Januari 2017', 'PO.075/PII/XI/16', '2', 20),
('Januari 2017', 'PO.075/PII/XI/16', '20', 3),
('Januari 2017', 'PO.075/PII/XI/16', '21', 323),
('Januari 2017', 'PO.075/PII/XI/16', '24', 423),
('Januari 2017', 'PO.077/PII/IX/16', '1', 302),
('Januari 2017', 'PO.077/PII/IX/16', '2', 42333),
('Januari 2017', 'PO.077/PII/IX/16', '20', 41113),
('Januari 2017', 'PO.077/PII/IX/16', '24', 42321);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`kode_barang`,`periode`,`principal`);

--
-- Indexes for table `reporting`
--
ALTER TABLE `reporting`
  ADD PRIMARY KEY (`kode_barang`,`periode`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`kode_barang`,`periode`,`principal`);

--
-- Indexes for table `trn_po`
--
ALTER TABLE `trn_po`
  ADD PRIMARY KEY (`periode`,`no_po`,`kode_barang`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
