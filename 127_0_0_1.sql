-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19 Jul 2017 pada 01.38
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
('1', 33, 'Januari 2017', 'MHF BOGOR'),
('10', 5028, 'Januari 2017', 'BEST'),
('10', 432, 'Januari 2017', 'KP'),
('11', 6345, 'Januari 2017', 'BEST'),
('11', 741, 'Januari 2017', 'KP'),
('12', 2611, 'Januari 2017', 'BEST'),
('12', 7, 'Januari 2017', 'MHF BOGOR'),
('13', 3144, 'Januari 2017', 'BEST'),
('13', 147, 'Januari 2017', 'MHF BOGOR'),
('14', 2330, 'Januari 2017', 'BEST'),
('14', 4, 'Januari 2017', 'DASA'),
('14', 490, 'Januari 2017', 'KP'),
('14', 3, 'Januari 2017', 'MHF BOGOR'),
('14', 115, 'Januari 2017', 'PII'),
('15', 4235, 'Januari 2017', 'BEST'),
('15', 30, 'Januari 2017', 'MHF BOGOR'),
('15', 49, 'Januari 2017', 'MHF PUSAT'),
('15', 4430, 'Januari 2017', 'PII'),
('16', 3608, 'Januari 2017', 'BEST'),
('16', 24, 'Januari 2017', 'MHF BOGOR'),
('16', 36, 'Januari 2017', 'MHF PUSAT'),
('16', 2812, 'Januari 2017', 'PII'),
('17', 0, 'Januari 2017', 'ALIDA'),
('17', 1324, 'Januari 2017', 'BEST'),
('17', 12, 'Januari 2017', 'DASA'),
('17', 5, 'Januari 2017', 'MHF BOGOR'),
('17', 12335, 'Januari 2017', 'PII'),
('18', 5822, 'Januari 2017', 'BEST'),
('18', 123, 'Januari 2017', 'MHF BOGOR'),
('19', 678, 'Januari 2017', 'BEST'),
('19', 27, 'Januari 2017', 'MHF BOGOR'),
('2', 1962, 'Januari 2017', 'BEST'),
('2', 231, 'Januari 2017', 'MHF BOGOR'),
('2', 21, 'Januari 2017', 'MHF PUSAT'),
('20', 0, 'Januari 2017', 'ALIDA'),
('20', 8037, 'Januari 2017', 'BEST'),
('20', 4, 'Januari 2017', 'DASA'),
('20', 0, 'Januari 2017', 'MHF BOGOR'),
('21', 31, 'Januari 2017', 'ALIDA'),
('21', 1272, 'Januari 2017', 'BEST'),
('21', 0, 'Januari 2017', 'DASA'),
('21', 12, 'Januari 2017', 'MHF BOGOR'),
('21', 43, 'Januari 2017', 'MHF PUSAT'),
('22', 0, 'Januari 2017', 'ALIDA'),
('22', 3458, 'Januari 2017', 'BEST'),
('22', 0, 'Januari 2017', 'DASA'),
('22', 0, 'Januari 2017', 'MHF BOGOR'),
('22', 8341, 'Januari 2017', 'PII'),
('23', 0, 'Januari 2017', 'ALIDA'),
('23', 9762, 'Januari 2017', 'BEST'),
('23', 0, 'Januari 2017', 'DASA'),
('23', 150, 'Januari 2017', 'MHF BOGOR'),
('23', 324, 'Januari 2017', 'PII'),
('24', 18, 'Januari 2017', 'ALIDA'),
('24', 5421, 'Januari 2017', 'BEST'),
('24', 12, 'Januari 2017', 'DASA'),
('24', 23, 'Januari 2017', 'MHF BOGOR'),
('24', 1, 'Januari 2017', 'MHF PUSAT'),
('24', 169, 'Januari 2017', 'PII'),
('25', 0, 'Januari 2017', 'ALIDA'),
('25', 2864, 'Januari 2017', 'BEST'),
('25', 0, 'Januari 2017', 'DASA'),
('25', 0, 'Januari 2017', 'MHF BOGOR'),
('25', 9, 'Januari 2017', 'MHF PUSAT'),
('26', 5706, 'Januari 2017', 'BEST'),
('26', 11, 'Januari 2017', 'MHF BOGOR'),
('27', 0, 'Januari 2017', 'ALIDA'),
('27', 3193, 'Januari 2017', 'BEST'),
('27', 54, 'Januari 2017', 'DASA'),
('27', 16, 'Januari 2017', 'MHF BOGOR'),
('27', 15626, 'Januari 2017', 'PII'),
('28', 0, 'Januari 2017', 'ALIDA'),
('28', 3004, 'Januari 2017', 'BEST'),
('28', 24, 'Januari 2017', 'DASA'),
('28', 111, 'Januari 2017', 'MHF BOGOR'),
('28', 300, 'Januari 2017', 'PII'),
('29', 0, 'Januari 2017', 'ALIDA'),
('29', 7933, 'Januari 2017', 'BEST'),
('29', 42, 'Januari 2017', 'DASA'),
('29', 87, 'Januari 2017', 'MHF BOGOR'),
('29', 513607, 'Januari 2017', 'PII'),
('3', 3291, 'Januari 2017', 'BEST'),
('30', 0, 'Januari 2017', 'ALIDA'),
('30', 4620, 'Januari 2017', 'BEST'),
('30', 0, 'Januari 2017', 'DASA'),
('30', 0, 'Januari 2017', 'MHF BOGOR'),
('31', 1230, 'Januari 2017', 'BEST'),
('31', 291, 'Januari 2017', 'MHF BOGOR'),
('31', 2, 'Januari 2017', 'MHF PUSAT'),
('31', 9334, 'Januari 2017', 'PII'),
('32', 1219, 'Januari 2017', 'BEST'),
('32', 7, 'Januari 2017', 'MHF BOGOR'),
('32', 74, 'Januari 2017', 'MHF PUSAT'),
('33', -1659, 'Januari 2017', 'BEST'),
('33', 130, 'Januari 2017', 'MHF BOGOR'),
('33', 34, 'Januari 2017', 'MHF PUSAT'),
('34', 110, 'Januari 2017', 'BEST'),
('34', 8, 'Januari 2017', 'MHF BOGOR'),
('34', 32, 'Januari 2017', 'MHF PUSAT'),
('35', 18, 'Januari 2017', 'BEST'),
('35', 160, 'Januari 2017', 'MHF BOGOR'),
('36', 1063, 'Januari 2017', 'BEST'),
('36', 0, 'Januari 2017', 'MHF BOGOR'),
('37', 2017, 'Januari 2017', 'BEST'),
('37', 7, 'Januari 2017', 'MHF BOGOR'),
('37', 94, 'Januari 2017', 'MHF PUSAT'),
('38', -1769, 'Januari 2017', 'BEST'),
('38', 0, 'Januari 2017', 'MHF BOGOR'),
('38', 65, 'Januari 2017', 'MHF PUSAT'),
('39', 1818, 'Januari 2017', 'BEST'),
('39', 23, 'Januari 2017', 'MAP'),
('39', 4, 'Januari 2017', 'MHF BOGOR'),
('4', 30, 'Januari 2017', 'ALIDA'),
('4', 13138, 'Januari 2017', 'BEST'),
('4', 53, 'Januari 2017', 'DASA'),
('4', 167, 'Januari 2017', 'KP'),
('40', 2421, 'Januari 2017', 'BEST'),
('40', 0, 'Januari 2017', 'MHF BOGOR'),
('40', 20, 'Januari 2017', 'MHF PUSAT'),
('41', 322, 'Januari 2017', 'BEST'),
('41', 0, 'Januari 2017', 'MHF BOGOR'),
('42', 0, 'Januari 2017', 'ALIDA'),
('42', 13464, 'Januari 2017', 'BEST'),
('42', 228, 'Januari 2017', 'DASA'),
('42', 119, 'Januari 2017', 'MHF BOGOR'),
('42', 177000, 'Januari 2017', 'PII'),
('43', 6235, 'Januari 2017', 'BEST'),
('43', 147, 'Januari 2017', 'MHF BOGOR'),
('43', 60, 'Januari 2017', 'MHF PUSAT'),
('44', -936, 'Januari 2017', 'BEST'),
('44', 1, 'Januari 2017', 'MHF BOGOR'),
('44', 9, 'Januari 2017', 'MHF PUSAT'),
('45', 1732, 'Januari 2017', 'BEST'),
('45', 513, 'Januari 2017', 'MHF BOGOR'),
('45', 84, 'Januari 2017', 'PII'),
('46', 16, 'Januari 2017', 'BEST'),
('46', 35, 'Januari 2017', 'MHF BOGOR'),
('46', 90, 'Januari 2017', 'MHF PUSAT'),
('46', 4980, 'Januari 2017', 'PII'),
('47', 548, 'Januari 2017', 'BEST'),
('47', 96, 'Januari 2017', 'MHF BOGOR'),
('47', 11, 'Januari 2017', 'MHF PUSAT'),
('48', 181, 'Januari 2017', 'BEST'),
('48', 10, 'Januari 2017', 'MHF BOGOR'),
('48', 6, 'Januari 2017', 'MHF PUSAT'),
('5', 159, 'Januari 2017', 'ALIDA'),
('5', 1191, 'Januari 2017', 'BEST'),
('5', 0, 'Januari 2017', 'DASA'),
('5', 948, 'Januari 2017', 'KP'),
('5', 14, 'Januari 2017', 'MHF BOGOR'),
('6', 3936, 'Januari 2017', 'BEST'),
('6', 118, 'Januari 2017', 'KP'),
('6', 1, 'Januari 2017', 'MHF BOGOR'),
('6', 4050, 'Januari 2017', 'PII'),
('7', 0, 'Januari 2017', 'ALIDA'),
('7', 6438, 'Januari 2017', 'BEST'),
('7', 7, 'Januari 2017', 'DASA'),
('7', 1823, 'Januari 2017', 'KP'),
('7', 16, 'Januari 2017', 'PII'),
('8', 70, 'Januari 2017', 'ALIDA'),
('8', 1305, 'Januari 2017', 'BEST'),
('8', 56, 'Januari 2017', 'DASA'),
('8', 1172, 'Januari 2017', 'KP'),
('8', 12, 'Januari 2017', 'MHF BOGOR'),
('8', 4, 'Januari 2017', 'MHF PUSAT'),
('8', 63553, 'Januari 2017', 'PII'),
('9', 513, 'Januari 2017', 'BEST'),
('9', 340, 'Januari 2017', 'KP'),
('9', 4, 'Januari 2017', 'MHF BOGOR'),
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
('Januari 2017', '1', 1159, 0, 0, 0, -104, 0, 0),
('Januari 2017', '10', 432, 5028, 0, 636, 176, 0, 0),
('Januari 2017', '11', 741, 6345, 0, 427, 144, 12, 0),
('Januari 2017', '12', 7, 2611, 0, 358, 8, 0, 0),
('Januari 2017', '13', 147, 3144, 0, 152, 125, 0, 23),
('Januari 2017', '14', 493, 2330, 115, 65, -145, 0, 0),
('Januari 2017', '15', 79, 4235, 4430, 452, 22, 0, 0),
('Januari 2017', '16', 60, 3608, 2812, 320, 9, 0, 0),
('Januari 2017', '17', 5, 1324, 12335, 48, 3, 0, 1231),
('Januari 2017', '18', 123, 5822, 0, 209, 49, 0, 765),
('Januari 2017', '19', 27, 678, 0, 28, 14, 0, 0),
('Januari 2017', '2', 252, 1962, 0, 872, 28, 0, 0),
('Januari 2017', '20', 0, 8037, 0, 671, 0, 0, 0),
('Januari 2017', '21', 86, 1272, 0, 409, 22, 0, 0),
('Januari 2017', '22', 0, 3458, 8341, 194, 0, 0, 0),
('Januari 2017', '23', 150, 9762, 324, 0, 3, 0, 0),
('Januari 2017', '24', 42, 5421, 169, 624, 22, 0, 0),
('Januari 2017', '25', 9, 2864, 0, 55, 0, 0, 0),
('Januari 2017', '26', 11, 5706, 0, 251, 3, 0, 0),
('Januari 2017', '27', 16, 3193, 15626, 120, 3, 0, 0),
('Januari 2017', '28', 111, 3004, 300, 205, 3, 0, 0),
('Januari 2017', '29', 87, 7933, 513607, 79, 3, 0, 0),
('Januari 2017', '3', 0, 3291, 0, -9, 0, 0, 0),
('Januari 2017', '30', 0, 4620, 0, -2, -28, 0, 0),
('Januari 2017', '31', 293, 1230, 9334, 216, 83, 0, 0),
('Januari 2017', '32', 81, 1219, 0, 2792, 119, 0, 0),
('Januari 2017', '33', 164, -1659, 0, 583, 63, 0, 0),
('Januari 2017', '34', 40, 110, 0, 831, 11, 0, 0),
('Januari 2017', '35', 160, 18, 0, 360, 131, 0, 0),
('Januari 2017', '36', 0, 1063, 0, 150, 6, 0, 0),
('Januari 2017', '37', 101, 2017, 0, 2132, 1438, 0, 0),
('Januari 2017', '38', 65, -1769, 0, 429, 797, 0, 0),
('Januari 2017', '39', 27, 1818, 0, 78, 3, 0, 0),
('Januari 2017', '4', 197, 13138, 0, 4254, -5, 0, 0),
('Januari 2017', '40', 20, 2421, 0, 82, 0, 0, 0),
('Januari 2017', '41', 0, 322, 0, -3, 0, 0, 0),
('Januari 2017', '42', 119, 13464, 177000, 638, 116, 0, 0),
('Januari 2017', '43', 207, 6235, 0, 731, 86, 0, 0),
('Januari 2017', '44', 10, -936, 0, 477, 0, 0, 0),
('Januari 2017', '45', 513, 1732, 84, 161, 6, 0, 0),
('Januari 2017', '46', 125, 16, 4980, 145, 3, 0, 0),
('Januari 2017', '47', 107, 548, 0, 1864, 549, 0, 0),
('Januari 2017', '48', 16, 181, 0, 973, 433, 0, 0),
('Januari 2017', '5', 1121, 1191, 0, -9, 335, 0, 0),
('Januari 2017', '6', 119, 3936, 4050, -117, -47, 0, 0),
('Januari 2017', '7', 1823, 6438, 16, 68, 68, 21, 0),
('Januari 2017', '8', 1258, 1305, 63553, 429, 138, 0, 0),
('Januari 2017', '9', 344, 513, 3947, 196, 296, 564, 0);

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
('1', -107, 'Januari 2017', 'OUT - KP'),
('1', 3, 'Januari 2017', 'OUT - MHF BOGOR'),
('10', 636, 'Januari 2017', 'IN'),
('10', 176, 'Januari 2017', 'OUT - KP'),
('11', 427, 'Januari 2017', 'IN'),
('11', 144, 'Januari 2017', 'OUT - KP'),
('12', 358, 'Januari 2017', 'IN'),
('12', 8, 'Januari 2017', 'OUT - MHF BOGOR'),
('13', 152, 'Januari 2017', 'IN'),
('13', 125, 'Januari 2017', 'OUT - MHF BOGOR'),
('14', 65, 'Januari 2017', 'IN'),
('14', 10, 'Januari 2017', 'OUT - DASA'),
('14', -166, 'Januari 2017', 'OUT - KP'),
('14', 3, 'Januari 2017', 'OUT - MHF BOGOR'),
('14', 18, 'Januari 2017', 'OUT - NSI'),
('15', 452, 'Januari 2017', 'IN'),
('15', 22, 'Januari 2017', 'OUT - MHF BOGOR'),
('16', 320, 'Januari 2017', 'IN'),
('16', 9, 'Januari 2017', 'OUT - MHF BOGOR'),
('17', 48, 'Januari 2017', 'IN'),
('17', 3, 'Januari 2017', 'OUT - MHF BOGOR'),
('18', 209, 'Januari 2017', 'IN'),
('18', 49, 'Januari 2017', 'OUT - MHF BOGOR'),
('19', 28, 'Januari 2017', 'IN'),
('19', 14, 'Januari 2017', 'OUT - MHF BOGOR'),
('2', 872, 'Januari 2017', 'IN'),
('2', 28, 'Januari 2017', 'OUT - MHF BOGOR'),
('20', 671, 'Januari 2017', 'IN'),
('20', 95, 'Januari 2017', 'OUT - DASA'),
('21', 409, 'Januari 2017', 'IN'),
('21', 3, 'Januari 2017', 'OUT - MHF BOGOR'),
('21', 19, 'Januari 2017', 'OUT - MHF PUSAT'),
('22', 194, 'Januari 2017', 'IN'),
('23', 3, 'Januari 2017', 'OUT - MHF BOGOR'),
('24', 624, 'Januari 2017', 'IN'),
('24', 16, 'Januari 2017', 'OUT - ALIDA'),
('24', 6, 'Januari 2017', 'OUT - MHF BOGOR'),
('25', 55, 'Januari 2017', 'IN'),
('26', 251, 'Januari 2017', 'IN'),
('26', 3, 'Januari 2017', 'OUT - MHF BOGOR'),
('27', 120, 'Januari 2017', 'IN'),
('27', 3, 'Januari 2017', 'OUT - MHF BOGOR'),
('28', 205, 'Januari 2017', 'IN'),
('28', 3, 'Januari 2017', 'OUT - MHF BOGOR'),
('29', 79, 'Januari 2017', 'IN'),
('29', 3, 'Januari 2017', 'OUT - MHF BOGOR'),
('3', -9, 'Januari 2017', 'IN'),
('30', -2, 'Januari 2017', 'IN'),
('30', -28, 'Januari 2017', 'OUT - MHF BOGOR'),
('31', 216, 'Januari 2017', 'IN'),
('31', 120, 'Januari 2017', 'OUT - DASA'),
('31', 83, 'Januari 2017', 'OUT - MHF BOGOR'),
('32', 2792, 'Januari 2017', 'IN'),
('32', 73, 'Januari 2017', 'OUT - MHF BOGOR'),
('32', 46, 'Januari 2017', 'OUT - MHF PUSAT'),
('33', 583, 'Januari 2017', 'IN'),
('33', 29, 'Januari 2017', 'OUT - MHF BOGOR'),
('33', 34, 'Januari 2017', 'OUT - MHF PUSAT'),
('34', 831, 'Januari 2017', 'IN'),
('34', 11, 'Januari 2017', 'OUT - MHF BOGOR'),
('35', 360, 'Januari 2017', 'IN'),
('35', 86, 'Januari 2017', 'OUT - MHF BOGOR'),
('35', 45, 'Januari 2017', 'OUT - NSI'),
('36', 150, 'Januari 2017', 'IN'),
('36', 6, 'Januari 2017', 'OUT - NSI'),
('37', 2132, 'Januari 2017', 'IN'),
('37', 142, 'Januari 2017', 'OUT - MHF BOGOR'),
('37', 146, 'Januari 2017', 'OUT - MHF PUSAT'),
('37', 1150, 'Januari 2017', 'OUT - NSI'),
('38', 429, 'Januari 2017', 'IN'),
('38', -23, 'Januari 2017', 'OUT - MHF BOGOR'),
('38', 76, 'Januari 2017', 'OUT - MHF PUSAT'),
('38', 744, 'Januari 2017', 'OUT - NSI'),
('39', 78, 'Januari 2017', 'IN'),
('39', 3, 'Januari 2017', 'OUT - MHF BOGOR'),
('4', 4254, 'Januari 2017', 'IN'),
('4', -5, 'Januari 2017', 'OUT - KP'),
('40', 82, 'Januari 2017', 'IN'),
('41', -3, 'Januari 2017', 'IN'),
('42', 638, 'Januari 2017', 'IN'),
('42', 120, 'Januari 2017', 'OUT - DASA'),
('42', 116, 'Januari 2017', 'OUT - MHF BOGOR'),
('43', 731, 'Januari 2017', 'IN'),
('43', 73, 'Januari 2017', 'OUT - MHF BOGOR'),
('43', 13, 'Januari 2017', 'OUT - MHF PUSAT'),
('44', 477, 'Januari 2017', 'IN'),
('45', 161, 'Januari 2017', 'IN'),
('45', 6, 'Januari 2017', 'OUT - MHF BOGOR'),
('46', 145, 'Januari 2017', 'IN'),
('46', 3, 'Januari 2017', 'OUT - MHF BOGOR'),
('47', 1864, 'Januari 2017', 'IN'),
('47', 26, 'Januari 2017', 'OUT - MHF BOGOR'),
('47', 136, 'Januari 2017', 'OUT - MHF PUSAT'),
('47', 387, 'Januari 2017', 'OUT - NSI'),
('48', 973, 'Januari 2017', 'IN'),
('48', 6, 'Januari 2017', 'OUT - MHF BOGOR'),
('48', 114, 'Januari 2017', 'OUT - MHF PUSAT'),
('48', 313, 'Januari 2017', 'OUT - NSI'),
('5', -9, 'Januari 2017', 'IN'),
('5', 72, 'Januari 2017', 'OUT - ALIDA'),
('5', 75, 'Januari 2017', 'OUT - KP'),
('5', 188, 'Januari 2017', 'OUT - MHF BOGOR'),
('6', -117, 'Januari 2017', 'IN'),
('6', 2, 'Januari 2017', 'OUT - DASA'),
('6', -47, 'Januari 2017', 'OUT - KP'),
('7', 68, 'Januari 2017', 'IN'),
('7', 5, 'Januari 2017', 'OUT - DASA'),
('7', 68, 'Januari 2017', 'OUT - KP'),
('8', 429, 'Januari 2017', 'IN'),
('8', 40, 'Januari 2017', 'OUT - DASA'),
('8', 61, 'Januari 2017', 'OUT - KP'),
('8', 5, 'Januari 2017', 'OUT - MHF BOGOR'),
('8', 72, 'Januari 2017', 'OUT - NSI'),
('9', 196, 'Januari 2017', 'IN'),
('9', 257, 'Januari 2017', 'OUT - KP'),
('9', 39, 'Januari 2017', 'OUT - MHF BOGOR');

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

--
-- Dumping data untuk tabel `trn_others`
--

INSERT INTO `trn_others` (`periode`, `kode_barang`, `kuantitas`, `type`) VALUES
('Januari 2017', '9', 564, 'PROSES'),
('Januari 2017', '11', 12, 'PROSES'),
('Januari 2017', '7', 21, 'PROSES'),
('Januari 2017', '17', 1231, 'STOCK ON THE WAY'),
('Januari 2017', '13', 23, 'STOCK ON THE WAY'),
('Januari 2017', '18', 765, 'STOCK ON THE WAY');

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
('Januari 2017', 'PO no.2/2017', '1', 12),
('Januari 2017', 'PO no.2/2017', '4', 2),
('Januari 2017', 'PO no.2/2017', '6', 34);

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
