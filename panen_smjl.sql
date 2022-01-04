-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2022 at 08:52 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `panen_smjl`
--

-- --------------------------------------------------------

--
-- Table structure for table `panen_smjl_blok`
--

CREATE TABLE `panen_smjl_blok` (
  `tanggal` date NOT NULL,
  `Divisi` int(2) NOT NULL,
  `payroll` varchar(8) NOT NULL,
  `nama` text NOT NULL,
  `blok` varchar(5) NOT NULL,
  `bnormal` int(5) NOT NULL,
  `bmentah` int(5) NOT NULL,
  `tdnkosong` int(5) NOT NULL,
  `Babnormal` int(5) NOT NULL,
  `Brondolkg` int(5) NOT NULL,
  `Dendajjg` int(5) NOT NULL,
  `Totaljanjang` int(5) NOT NULL,
  `Basisjanjang` int(5) NOT NULL,
  `HK` decimal(4,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_karyawan_smjl`
--

CREATE TABLE `payroll_karyawan_smjl` (
  `NIK` varchar(10) NOT NULL,
  `Nama` text NOT NULL,
  `Departemen` text NOT NULL,
  `Jabatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_panen_smjl`
--

CREATE TABLE `payroll_panen_smjl` (
  `Payroll` varchar(8) NOT NULL,
  `Nama` text NOT NULL,
  `Divisi` int(2) NOT NULL,
  `Blok` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pemanen`
--

CREATE TABLE `pemanen` (
  `id` int(8) NOT NULL,
  `NIK` varchar(8) NOT NULL,
  `Nama` varchar(40) NOT NULL,
  `Departemen` varchar(25) NOT NULL,
  `Jabatan` varchar(30) NOT NULL,
  `Status_Kerja` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemanen`
--

INSERT INTO `pemanen` (`id`, `NIK`, `Nama`, `Departemen`, `Jabatan`, `Status_Kerja`) VALUES
(1, '5234141', 'Defrizal', 'LAJU', 'Manajer', 'Aktif'),
(2, '12315454', 'Sofiatul', 'Traksi', 'Mandor Traksi', 'Aktif'),
(3, '123124', 'Abdullah', 'Rawat Panen', 'Staf Traksi', 'Aktif'),
(4, '10111125', 'Dody', 'Procurement', 'General Manager', 'Aktif'),
(5, '1211414', 'Firman Caris', 'Traksi', 'Mandor Traksi', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nik` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `telepon` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(25) NOT NULL DEFAULT 'member',
  `foto` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nik`, `nama`, `alamat`, `telepon`, `username`, `password`, `level`, `foto`) VALUES
(26, '1001', 'Superadmin', '', '08999444000', 'superadmin', '17c4520f6cfd1ab53d8745e84681eb49', 'superadmin', 'teacher4.png'),
(27, '10001', 'admin', '', '0986660000', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'Leying1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payroll_karyawan_smjl`
--
ALTER TABLE `payroll_karyawan_smjl`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `payroll_panen_smjl`
--
ALTER TABLE `payroll_panen_smjl`
  ADD PRIMARY KEY (`Payroll`);

--
-- Indexes for table `pemanen`
--
ALTER TABLE `pemanen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pemanen`
--
ALTER TABLE `pemanen`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
