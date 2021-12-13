-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2021 at 10:38 AM
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
-- Table structure for table `biaya`
--

CREATE TABLE `biaya` (
  `IDBiaya` int(11) NOT NULL,
  `IDJenisKendaraan` int(3) NOT NULL DEFAULT 1,
  `Biaya` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `biaya`
--

INSERT INTO `biaya` (`IDBiaya`, `IDJenisKendaraan`, `Biaya`) VALUES
(1, 0, '2000'),
(2, 0, '3000');

-- --------------------------------------------------------

--
-- Table structure for table `jeniskendaraan`
--

CREATE TABLE `jeniskendaraan` (
  `IDJenisKendaraan` int(3) NOT NULL,
  `JenisKendaraan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jeniskendaraan`
--

INSERT INTO `jeniskendaraan` (`IDJenisKendaraan`, `JenisKendaraan`) VALUES
(1, 'Motor'),
(2, 'Mobil'),
(3, 'Truk'),
(4, 'Bus');

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `IDKendaraan` int(11) NOT NULL,
  `IDJenisKendaraan` int(3) NOT NULL DEFAULT 1,
  `NamaKendaraan` varchar(50) NOT NULL,
  `Deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kendaraan`
--

INSERT INTO `kendaraan` (`IDKendaraan`, `IDJenisKendaraan`, `NamaKendaraan`, `Deleted`) VALUES
(1, 1, 'Avanza', 0),
(2, 1, 'Xenia', 0),
(3, 1, 'Ertiga', 0),
(4, 1, 'Pajero', 0),
(5, 1, 'Veloz Vexia', 0),
(6, 1, 'Calya', 1),
(7, 1, 'Avigan', 0);

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
(1, 'KMAJA', 'Jl Kyai Maja', 'OK', 0),
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
  `IDLokasiParkir` int(3) NOT NULL,
  `TglParkir` date NOT NULL,
  `JamMasuk` varchar(20) NOT NULL,
  `JamKeluar` varchar(20) NOT NULL,
  `IDKendaraan` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parkir`
--

INSERT INTO `parkir` (`IDParkir`, `IDLokasiParkir`, `TglParkir`, `JamMasuk`, `JamKeluar`, `IDKendaraan`) VALUES
(1, 1, '2021-12-12', '08:00:00', '14:00:00', 1),
(2, 0, '2021-12-10', '07:00:00', '12:00:00', 0);

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
(2, 'Maudy Ayunda', 'Jakarta Selatan', 1, 'ini keterangan ayunda', 0),
(3, 'Cinta Laura', 'Jakarta Pusat', 2, 'Ini keterangan 2', 0),
(4, 'Isyana Sarasvati Cantik', 'Denpasar Dab', 3, 'Ini keterangan 3 ya', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biaya`
--
ALTER TABLE `biaya`
  ADD PRIMARY KEY (`IDBiaya`);

--
-- Indexes for table `jeniskendaraan`
--
ALTER TABLE `jeniskendaraan`
  ADD PRIMARY KEY (`IDJenisKendaraan`);

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
-- AUTO_INCREMENT for table `biaya`
--
ALTER TABLE `biaya`
  MODIFY `IDBiaya` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jeniskendaraan`
--
ALTER TABLE `jeniskendaraan`
  MODIFY `IDJenisKendaraan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kendaraan`
--
ALTER TABLE `kendaraan`
  MODIFY `IDKendaraan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
