-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2021 at 02:56 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rsabcd`
--

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `idPasien` int(10) NOT NULL,
  `idAdmin` int(10) NOT NULL,
  `Keluhan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel obat`
--

CREATE TABLE `tabel obat` (
  `idObat` int(10) NOT NULL,
  `Nama Dokter` varchar(50) NOT NULL,
  `Jenis Obat` varchar(15) NOT NULL,
  `Dosis` varchar(15) NOT NULL,
  `Biaya` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel transaksi`
--

CREATE TABLE `tabel transaksi` (
  `idTransaksi` int(10) NOT NULL,
  `idPasien` int(10) NOT NULL,
  `idAdmin` int(10) NOT NULL,
  `Tanggal Transaksi` date NOT NULL,
  `Obat Dibeli` varchar(100) NOT NULL,
  `Biaya` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel obat`
--
ALTER TABLE `tabel obat`
  ADD PRIMARY KEY (`idObat`);

--
-- Indexes for table `tabel transaksi`
--
ALTER TABLE `tabel transaksi`
  ADD PRIMARY KEY (`idTransaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
