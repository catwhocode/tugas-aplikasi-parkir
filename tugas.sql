-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2021 at 06:01 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas`
--

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `IDKendaraan` int(11) NOT NULL,
  `Keterangan` varchar(100) NOT NULL,
  `Deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kendaraan`
--

INSERT INTO `kendaraan` (`IDKendaraan`, `Keterangan`, `Deleted`) VALUES
(1, 'Avanza', 0),
(2, 'Xenia', 0),
(3, 'Ertiga', 0),
(4, 'Pajero', 0),
(5, 'Veloz', 0),
(6, 'Calya', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lokasiparkir`
--

CREATE TABLE `lokasiparkir` (
  `IDLokasi` int(11) NOT NULL,
  `NamaLokasi` varchar(50) NOT NULL,
  `Keterangan` varchar(100) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lokasiparkir`
--

INSERT INTO `lokasiparkir` (`IDLokasi`, `NamaLokasi`, `Keterangan`, `Status`, `Deleted`) VALUES
(1, 'MAJA', 'Jl Kyai Maja', 'OK', 0),
(2, 'BLOK S', 'Jalan Tendean', 'Maintenance', 0),
(3, 'RW MANGUN', 'Sebelah Tip Top', 'OK', 0),
(4, 'BUARAN', 'Sebelah Buaran Plaza', 'Fixed', 0),
(5, 'PULOMAS', 'Sebelah POM Bensin', 'OK', 1);

-- --------------------------------------------------------

--
-- Table structure for table `parkir`
--

CREATE TABLE `parkir` (
  `IDParkir` int(11) NOT NULL,
  `TglParkir` date NOT NULL,
  `JamMasuk` varchar(20) NOT NULL,
  `JamKeluar` varchar(20) NOT NULL,
  `Biaya` decimal(7,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parkir`
--

INSERT INTO `parkir` (`IDParkir`, `TglParkir`, `JamMasuk`, `JamKeluar`, `Biaya`) VALUES
(1, '2021-12-12', '08:00:00', '14:00:00', '12000'),
(2, '2021-12-10', '07:00:00', '12:00:00', '10000');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `IDStaf` int(11) NOT NULL,
  `NamaStaf` varchar(50) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Posisi` int(2) NOT NULL,
  `Keterangan` varchar(100) NOT NULL,
  `Deleted` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`IDStaf`, `NamaStaf`, `Alamat`, `Posisi`, `Keterangan`, `Deleted`) VALUES
(2, 'Maudy Ayunda', 'Jakarta Selatan', 1, 'ini keterangan 1', 0),
(3, 'Cinta Laura', 'Jakarta Pusat', 2, 'Ini keterangan 2', 0),
(4, 'Isyana Sarasvati Cantik', 'Denpasar Dab', 3, 'Ini keterangan 3 ya', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`IDKendaraan`);

--
-- Indexes for table `lokasiparkir`
--
ALTER TABLE `lokasiparkir`
  ADD PRIMARY KEY (`IDLokasi`);

--
-- Indexes for table `parkir`
--
ALTER TABLE `parkir`
  ADD PRIMARY KEY (`IDParkir`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`IDStaf`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kendaraan`
--
ALTER TABLE `kendaraan`
  MODIFY `IDKendaraan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lokasiparkir`
--
ALTER TABLE `lokasiparkir`
  MODIFY `IDLokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `parkir`
--
ALTER TABLE `parkir`
  MODIFY `IDParkir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `IDStaf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
