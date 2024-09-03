-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2023 at 06:49 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_beasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `gapsiswa`
--

CREATE TABLE `gapsiswa` (
  `nama` varchar(30) NOT NULL,
  `gapipk` int(5) NOT NULL,
  `gappenghasilan` int(5) NOT NULL,
  `gaptanggungan` int(5) NOT NULL,
  `gapsmt` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gapsiswa`
--

INSERT INTO `gapsiswa` (`nama`, `gapipk`, `gappenghasilan`, `gaptanggungan`, `gapsmt`) VALUES
('Muhammad Agil Ghifari', 1, -2, -2, 2),
('Rafiq Irwan Julianto', 1, -2, -1, 1),
('Ahmad Baihaqi', -1, 0, -2, 2),
('Muhammad Qurtubi', 0, -1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `hasilsiswa`
--

CREATE TABLE `hasilsiswa` (
  `nama` varchar(30) NOT NULL,
  `bobotipk` float NOT NULL,
  `bobotpenghasilan` float NOT NULL,
  `bobottanggungan` float NOT NULL,
  `bobotsmt` float NOT NULL,
  `ncf` float NOT NULL,
  `nsf` float NOT NULL,
  `hasil` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hasilsiswa`
--

INSERT INTO `hasilsiswa` (`nama`, `bobotipk`, `bobotpenghasilan`, `bobottanggungan`, `bobotsmt`, `ncf`, `nsf`, `hasil`) VALUES
('Muhammad Agil Ghifari', 4.5, 3, 3, 3.5, 3.75, 3.25, 3.55),
('Rafiq Irwan Julianto', 4.5, 3, 4, 4.5, 3.75, 4.25, 3.95),
('Ahmad Baihaqi', 4, 5, 3, 3.5, 4.5, 3.25, 4),
('Muhammad Qurtubi', 5, 4, 4.5, 3.5, 4.5, 4, 4.3);

-- --------------------------------------------------------

--
-- Table structure for table `keterangansiswa`
--

CREATE TABLE `keterangansiswa` (
  `nama` varchar(30) NOT NULL,
  `ket_ipk` varchar(20) NOT NULL,
  `ket_penghasilan` varchar(20) NOT NULL,
  `ket_tanggungan` varchar(20) NOT NULL,
  `ket_smt` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `keterangansiswa`
--

INSERT INTO `keterangansiswa` (`nama`, `ket_ipk`, `ket_penghasilan`, `ket_tanggungan`, `ket_smt`) VALUES
('Muhammad Agil Ghifari', '> 3,5', '>=5.000.000', 'Jumlah 1', '7, 8'),
('Rafiq Irwan Julianto', '> 3,5', '>=5.000.000', 'Jumlah 2', '5, 6'),
('Ahmad Baihaqi', '>2,5 dan <= 3', '>1.000.000 - <=3.000', 'Jumlah 1', '7, 8'),
('Muhammad Qurtubi', '>3 dan <= 3,5', '>3.000.000 - <=5.000', 'Jumlah >3', '7, 8');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nama` varchar(30) NOT NULL,
  `ipk` int(5) NOT NULL,
  `penghasilan` int(5) NOT NULL,
  `tanggungan` int(5) NOT NULL,
  `semester` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nama`, `ipk`, `penghasilan`, `tanggungan`, `semester`) VALUES
('Muhammad Agil Ghifari', 4, 1, 1, 4),
('Rafiq Irwan Julianto', 4, 1, 2, 3),
('Ahmad Baihaqi', 2, 3, 1, 4),
('Muhammad Qurtubi', 3, 2, 4, 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
