-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 05, 2023 at 08:56 AM
-- Server version: 8.0.31-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `self_health`
--

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `id` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`id`, `nama`, `deskripsi`) VALUES
(1, 'Kamar Kelas VVIP', '1 Tempat Tidur, AC, Kamar Mandi dalam, Dispenser, Sofa, Tv, Almari Es, Almari Pakaian, Meja Makan, WiFi'),
(2, 'Kamar Kelas VIP', 'AC, Kamar Mandi Dalam, 1 Tempat Tidur, Almari Pakaian, Dispenser, TV, Telepon, '),
(3, 'Kamar Kelas 1', 'Kamar Mandi Dalam, 2Tempat Tidur, 2 Meja, 2 Lemari Pasien, AC'),
(4, 'Kelas Kamar 2', 'Kamar Mandi Bersama, 4 Tempat Tidur, 4 Meja, 2 Kipas Angin'),
(5, 'Kelas Kamar 3', 'Kamar Mandi Bersama, 8 Tempat Tidur, 8 Meja');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int NOT NULL,
  `nomor_pasien` varchar(255) NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ttl` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `keluhan` varchar(255) NOT NULL,
  `kamar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `nomor_pasien`, `nama`, `ttl`, `jenis_kelamin`, `alamat`, `keluhan`, `kamar`) VALUES
(1, 'A2254', 'John Doe', 'Jakarta, 13 Januari 1988', 'L', 'Sleman, Yogyakarta', 'Flu dan Batuk', 'Kamar Kelas VVIP'),
(2, 'A2255', 'Inna Malika', 'Bogor, 17 Agustus 1990', 'P', 'Kotagede, Yogyakarta', 'Pusing Kepala', 'Kamar Kelas VVIP'),
(3, 'A2256', 'Alex Suranto', 'Surabaya, 23 Juli 1978', 'L', 'Malioboro, Yogyakarta', 'Badan pegal-pegal', 'Kamar Kelas 1'),
(4, 'A2257', 'Mas Laut', 'Yogyakarta, 25 Desember 2000', 'L', 'Godean, Yogyakarta', 'Lemas tak berdaya', 'Kamar Kelas 2'),
(6, 'A44532', 'Happy asmara', 'Bali, 22 Februari 1955', 'P', 'Berbah, Yogyakarta', 'Sakit Kepala', 'Kamar Kelas VVIP');

-- --------------------------------------------------------

--
-- Table structure for table `rumahsakit`
--

CREATE TABLE `rumahsakit` (
  `id` int NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `kota` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rumahsakit`
--

INSERT INTO `rumahsakit` (`id`, `nama`, `alamat`, `kota`) VALUES
(1, 'RSUP Dr. Sardjito', 'Jl. Kesehatan Sendowo No.1, Sendowo, Sinduadi, Kec. Mlati', 'Sleman, DI Yogyakarta'),
(2, 'RS PKU Muhammadiyah YK', 'Jl. KH. Ahmad Dahlan No.20, Ngupasan, Kec. Gondomanan', 'Yogyakarta, DI Yogyakarta'),
(3, 'RS Umum Panti Rapih', 'Jl. Cik Di Tiro No.30, Samirono, Terban, Kec. Gondokusuman', 'Yogyakarta, DI Yogyakarta'),
(4, 'RSUD Kota Yogyakarta', 'Jl. Ki Ageng Pemanahan No.1-6, Sorosutan, Kec. Umbulharjo', 'Yogyakarta, DI Yogyakarta'),
(5, 'RS Bethesda Yogyakarta', 'Jl. Jend. Sudirman No.70, Kotabaru, Kec. Gondokusuman', 'Yogyakarta, DI Yogyakarta');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rumahsakit`
--
ALTER TABLE `rumahsakit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rumahsakit`
--
ALTER TABLE `rumahsakit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
