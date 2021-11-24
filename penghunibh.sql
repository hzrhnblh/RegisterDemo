-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2021 at 09:07 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penghunibh`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `status` varchar(12) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `name`, `email`, `username`, `password`, `photo`, `status`, `datetime`) VALUES
(0, 'Infinity Yakult', 'kidrauhlbieber608@gmail.com', 'Infinity', '1f82ea75c5cc526729e2d581aeb3aeccfef4407e', 'png', 'active', '2021-11-17 03:59:18');

-- --------------------------------------------------------

--
-- Table structure for table `pelajar`
--

CREATE TABLE `pelajar` (
  `bil` int(11) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `no_ic` varchar(12) NOT NULL,
  `jantina` varchar(10) NOT NULL,
  `tarikh_daftar` date NOT NULL,
  `tahap` varchar(35) NOT NULL,
  `no_tel_waris` varchar(255) NOT NULL,
  `nama_waris` varchar(50) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelajar`
--

INSERT INTO `pelajar` (`bil`, `nama`, `no_ic`, `jantina`, `tarikh_daftar`, `tahap`, `no_tel_waris`, `nama_waris`, `alamat`, `gambar`) VALUES
(1, 'Intan', '040302012031', 'perempuan', '2021-07-01', 'tingkatan 2', '0112384290', 'Mohd Aris', 'Lorong 4, Sri Aman Kota Marudu', ''),
(15, 'Hazirah', '020325120544', 'perempuan', '2021-07-31', 'tingkatan 1', '0178165260', 'Arsid ', 'Lot 22, Taman Ehsan Kudat', ''),
(17, 'Hairry ', '910304016849', 'lelaki', '2021-07-30', 'darjah 1', '0117656789', 'Mohd Sadali', 'Lot A10, Lorong 3, Taman Friendly Kudat', ''),
(22, 'Kidrauhl', '030403120889', 'lelaki', '2021-11-04', 'darjah 1', '0156535478', 'Abdul Hanif', 'Kampung Kulambai, Kota Marudu', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `pelajar`
--
ALTER TABLE `pelajar`
  ADD PRIMARY KEY (`bil`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pelajar`
--
ALTER TABLE `pelajar`
  MODIFY `bil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
