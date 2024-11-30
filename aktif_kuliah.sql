-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Nov 2024 pada 03.22
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aktif_kuliah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `nip` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pangkat_golongan` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `fakultas` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`nip`, `name`, `pangkat_golongan`, `jabatan`, `fakultas`, `id`, `created_at`, `updated_at`) VALUES
('1972020142000121001', 'Khirisman Fedra, S.pt', 'Pembina /IV/a', 'Kepala Kantor Sektariat', 'Teknologi Informasi', 4, '2024-05-29 16:58:07', '2024-05-29 16:58:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `departemen` varchar(100) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` enum('laki-laki','perempuan') NOT NULL,
  `address` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `name`, `departemen`, `phone`, `gender`, `address`, `id`, `created_at`, `updated_at`) VALUES
('2211522020', 'Naufal', 'Sistem Informasi', '08123450', 'laki-laki', 'Filano Jaya 2', 1, '2024-05-29 16:59:16', '2024-05-29 16:59:16'),
('2211522026', 'Alfa Rian', 'Sistem Informasi', '08123456789', 'laki-laki', 'pauh', 3, '2024-05-29 16:59:16', '2024-05-29 16:59:16'),
('2211523004', 'Fajrin Putra Pratama', 'Sistem Informasi', '0812345643423', 'laki-laki', 'limau manih', 2, '2024-05-29 19:03:11', '2024-05-29 19:03:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `userId` varchar(30) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  `tanggal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `notification`
--

INSERT INTO `notification` (`id`, `userId`, `title`, `message`, `href`, `tanggal`) VALUES
(2, '2147483647', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/130', '2024-06-11 12:43:21'),
(3, '2147483647', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/131', '2024-06-11 12:43:33'),
(4, '2147483647', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/146', '2024-06-11 12:46:13'),
(5, '2211', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/138', '2024-06-11 12:46:35'),
(6, '2147483647', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/148', '2024-06-11 12:47:21'),
(7, '2211523004', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/134', '2024-06-11 12:48:01'),
(8, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/155', '2024-06-11 15:22:07'),
(9, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/149', ''),
(10, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/150', ''),
(11, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/151', ''),
(12, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/152', ''),
(13, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/153', ''),
(14, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/154', ''),
(15, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/156', '2024-06-11T17:03:01.692Z'),
(16, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/157', '2024-06-12 15:22:07'),
(17, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/158', '2024-06-11T17:19:15.708Z'),
(18, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/159', '2024-06-12 00:21:39'),
(19, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/160', '2024-06-12 00:24:26'),
(20, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/161', '2024-06-12 00:26:00'),
(21, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/162', '2024-06-12 00:26:59'),
(22, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/163', '2024-06-12 00:28:59'),
(23, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/164', '2024-06-12 00:33:27'),
(24, '2211523004', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/147', '2024-06-12 00:34:54'),
(25, '2211523004', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/145', '2024-06-12 00:35:11'),
(26, '2211523004', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/137', '2024-06-12 00:35:17'),
(27, '2211523004', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/136', '2024-06-12 00:36:46'),
(28, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/165', '2024-06-12 21:34:17'),
(29, '2211523004', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/166', '2024-06-13 09:56:06'),
(30, '2211523004', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/135', '2024-06-13 09:56:24'),
(31, '2211523004', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/167', '2024-06-13 09:57:21'),
(32, '2211523004', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/168', '2024-06-13 09:57:58'),
(33, '2211523004', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/169', '2024-06-13 10:52:57'),
(34, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '172', '2024-06-13 11:11:32'),
(35, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/171', '2024-06-13 11:36:37'),
(36, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '170', '2024-06-13 11:38:06'),
(37, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '173', '2024-06-13 11:40:13'),
(38, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '174', '2024-06-13 11:42:10'),
(39, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '175', '2024-06-13 11:48:24'),
(40, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '175', '2024-06-13 11:48:40'),
(41, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '175', '2024-06-13 11:51:26'),
(42, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '175', '2024-06-13 12:00:58'),
(43, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '175', '2024-06-13 12:01:05'),
(44, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '175', '2024-06-13 12:02:05'),
(45, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '175', '2024-06-13 12:02:19'),
(46, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '175', '2024-06-13 12:03:07'),
(47, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '175', '2024-06-13 12:04:07'),
(48, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '176', '2024-06-16 15:10:06'),
(49, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '176', '2024-06-16 15:10:46'),
(50, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '176', '2024-06-16 15:12:50'),
(51, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '176', '2024-06-16 15:16:52'),
(52, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '176', '2024-06-16 15:19:07'),
(53, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '176', '2024-06-16 15:24:18'),
(54, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '176', '2024-06-16 15:26:34'),
(55, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '176', '2024-06-16 15:27:23'),
(56, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '176', '2024-06-16 15:27:37'),
(57, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '176', '2024-06-16 15:27:47'),
(58, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '176', '2024-06-16 15:28:03'),
(59, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '176', '2024-06-16 15:28:32'),
(60, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '176', '2024-06-16 15:28:37'),
(61, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '176', '2024-06-16 15:28:58'),
(62, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '176', '2024-06-16 15:30:04'),
(63, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', '176', '2024-06-16 15:30:41'),
(64, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/d06b1af282bc4d5453937d6068365821:e706204f8783987036d3bb78f2c482e7', '2024-06-16 15:31:08'),
(65, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/d06b1af282bc4d5453937d6068365821:e706204f8783987036d3bb78f2c482e7', '2024-06-16 15:31:16'),
(66, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/d06b1af282bc4d5453937d6068365821:e706204f8783987036d3bb78f2c482e7', '2024-06-16 15:31:23'),
(67, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/d06b1af282bc4d5453937d6068365821:e706204f8783987036d3bb78f2c482e7', '2024-06-16 15:32:02'),
(68, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/d06b1af282bc4d5453937d6068365821:e706204f8783987036d3bb78f2c482e7', '2024-06-16 15:32:40'),
(69, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/d06b1af282bc4d5453937d6068365821:e706204f8783987036d3bb78f2c482e7', '2024-06-16 15:33:55'),
(70, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/d06b1af282bc4d5453937d6068365821:e706204f8783987036d3bb78f2c482e7', '2024-06-16 15:35:04'),
(71, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/d06b1af282bc4d5453937d6068365821:02d229c4fe80f56b6daefc2d39bfeefe', '2024-06-16 18:47:48'),
(72, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/d06b1af282bc4d5453937d6068365821:b0d0dc01f7ebf07af400a3fc7531bc52', '2024-06-17 10:05:39'),
(73, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/d06b1af282bc4d5453937d6068365821:70fc12b4bbf7bcb999c0b36661b8127d', '2024-06-17 11:56:00'),
(74, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/d06b1af282bc4d5453937d6068365821:70fc12b4bbf7bcb999c0b36661b8127d', '2024-06-17 11:57:23'),
(75, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/d06b1af282bc4d5453937d6068365821:1de9ba7419e89bd37aa487b9d5fb6430', '2024-06-17 11:58:29'),
(76, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/d06b1af282bc4d5453937d6068365821:1de9ba7419e89bd37aa487b9d5fb6430', '2024-06-17 12:04:19'),
(77, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/d06b1af282bc4d5453937d6068365821:1de9ba7419e89bd37aa487b9d5fb6430', '2024-06-17 12:05:50'),
(78, '2211522020', 'Kemahasiswaan', 'Permintaan Anda telah diverifikasi', 'http://localhost:3000/riwayat/d06b1af282bc4d5453937d6068365821:1de9ba7419e89bd37aa487b9d5fb6430', '2024-06-17 12:11:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permintaan`
--

CREATE TABLE `permintaan` (
  `idPermintaan` int(11) NOT NULL,
  `target` varchar(255) DEFAULT NULL,
  `tujuan` varchar(255) DEFAULT NULL,
  `nim` varchar(255) DEFAULT NULL,
  `namaOrangtua` varchar(255) DEFAULT NULL,
  `nip` varchar(255) DEFAULT NULL,
  `pangkatGolongan` varchar(255) DEFAULT NULL,
  `unitKerja` varchar(255) DEFAULT NULL,
  `instansiInduk` varchar(255) DEFAULT NULL,
  `berkas` varchar(500) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tanggal` varchar(20) NOT NULL,
  `waktu` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `permintaan`
--

INSERT INTO `permintaan` (`idPermintaan`, `target`, `tujuan`, `nim`, `namaOrangtua`, `nip`, `pangkatGolongan`, `unitKerja`, `instansiInduk`, `berkas`, `status`, `tanggal`, `waktu`) VALUES
(129, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', '', 'Selesai', '2024-06-10', '03:49:29'),
(130, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', '', 'Proses', '2024-06-10', '03:50:23'),
(131, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1717991488179-603937325.jpeg', 'Proses', '2024-06-10', '03:51:28'),
(132, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1717991533682-432590410.pdf', 'Proses', '2024-06-10', '03:52:13'),
(133, 'Orang tua', 'Tunjangan orang tua', '2211522020', 'widia', '21312', 'guru', 'Dinas Pendidikan Kabupaten', 'sma 1 padang ganting', 'berkas-1717993584488-960373522.docx', 'Selesai', '2024-06-10', '04:26:24'),
(134, 'default', 'default', '2211523004', '', '', '', '', '', 'berkas-1718026502616-414552191.png', 'Proses', '2024-06-10', '13:35:02'),
(135, 'default', 'default', '2211523004', '', '', '', '', '', 'berkas-1718031888961-643030316.jpeg', 'Proses', '2024-06-10', '15:04:48'),
(136, 'default', 'default', '2211523004', '', '', '', '', '', 'berkas-1718032044908-183925530.jpeg', 'Proses', '2024-06-10', '15:07:24'),
(137, 'Orang tua', 'Tunjangan orang tua', '2211523004', '1', '1', '1', '1', '1', 'berkas-1718059977276-707597401.png', 'Proses', '2024-06-11', '22:52:57'),
(138, 'default', 'default', '2211523004', '', '', '', '', '', 'berkas-1718059993050-633527023.jpg', 'Selesai', '2024-06-11', '22:53:13'),
(139, 'Pribadi', 'Beasiswa', '2211523004', '', '', '', '', '', 'berkas-1718067969181-129206965.jpg', 'Selesai', '2024-06-11', '01:06:09'),
(140, 'Pribadi', 'Beasiswa', '2211523004', '', '', '', '', '', 'berkas-1718068261120-533426669.png', 'Diproses', '2024-06-11', '01:11:01'),
(141, 'Pribadi', 'Beasiswa', '2211523004', '', '', '', '', '', 'berkas-1718068324897-995481369.jpg', 'Diproses', '2024-06-11', '01:12:04'),
(142, 'Pribadi', 'Beasiswa', '2211523004', '', '', '', '', '', 'berkas-1718068391496-482493520.jpg', 'Diproses', '2024-06-11', '01:13:11'),
(143, 'Pribadi', 'Beasiswa', '2211523004', '', '', '', '', '', 'berkas-1718068462115-593915088.jpg', 'Diproses', '2024-06-11', '01:14:22'),
(144, 'Pribadi', 'Beasiswa', '2211523004', '', '', '', '', '', 'berkas-1718068509660-327541340.jpg', 'Diproses', '2024-06-11', '01:15:09'),
(145, 'Pribadi', 'Beasiswa', '2211523004', '', '', '', '', '', 'berkas-1718068647152-602469028.jpg', 'Selesai', '2024-06-11', '01:17:27'),
(146, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718074663302-97126542.png', 'Proses', '2024-06-11', '02:57:43'),
(147, 'Pribadi', 'Beasiswa', '2211523004', '', '', '', '', '', 'berkas-1718079211313-287375977.png', 'Selesai', '2024-06-11', '04:13:31'),
(148, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718083338256-495984241.png', 'Selesai', '2024-06-11', '05:22:18'),
(149, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718083517743-236506978.png', 'Selesai', '2024-06-11', '05:25:17'),
(150, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718083553098-503333302.png', 'Selesai', '2024-06-11', '05:25:53'),
(151, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718083643731-69190704.png', 'Selesai', '2024-06-11', '05:27:23'),
(152, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718084231300-276850802.png', 'Selesai', '2024-06-11', '05:37:11'),
(153, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718084254236-152391602.png', 'Selesai', '2024-06-11', '05:37:34'),
(154, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718084267186-36513258.png', 'Selesai', '2024-06-11', '05:37:47'),
(155, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718094091465-963323751.png', 'Selesai', '2024-06-11', '08:21:31'),
(156, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718125364124-898834282.jpg', 'Selesai', '2024-06-12', '17:02:44'),
(157, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718125518724-89649081.png', 'Selesai', '2024-06-12', '17:05:18'),
(158, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718126344548-926140511.png', 'Proses', '2024-06-12', '17:19:04'),
(159, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718126488101-812172134.png', 'Proses', '2024-06-12', '17:21:28'),
(160, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718126659437-991826085.jpg', 'Proses', '2024-06-12', '17:24:19'),
(161, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718126753153-617248978.png', 'Proses', '2024-06-12', '17:25:53'),
(162, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718126809632-450930999.docx', 'Proses', '2024-06-12', '17:26:49'),
(163, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718126933333-480797860.jpeg', 'Proses', '2024-06-12', '17:28:53'),
(164, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718127198707-311562976.jpeg', 'Proses', '2024-06-12', '17:33:18'),
(165, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718202816000-514414322.png', 'Proses', '2024-06-12', '14:33:36'),
(166, 'Pribadi', 'Beasiswa', '2211523004', '', '', '', '', '', 'berkas-1718247316234-283153819.jpg', 'Proses', '2024-06-13', '02:55:16'),
(167, 'Pribadi', 'Beasiswa', '2211523004', '', '', '', '', '', 'berkas-1718247415635-918678816.jpg', 'Proses', '2024-06-13', '02:56:55'),
(168, 'Pribadi', 'Beasiswa', '2211523004', '', '', '', '', '', 'berkas-1718247466320-666997556.jpg', 'Proses', '2024-06-13', '02:57:46'),
(169, 'Pribadi', 'Beasiswa', '2211523004', '', '', '', '', '', 'berkas-1718250763792-729289291.jpg', 'Proses', '2024-06-13', '03:52:43'),
(170, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718251503615-648579444.jpg', 'Proses', '2024-06-13', '04:05:03'),
(171, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718251520597-873623820.jpg', 'Proses', '2024-06-13', '04:05:20'),
(172, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718251842013-64523150.jpg', 'Proses', '2024-06-13', '04:10:42'),
(173, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718253598846-242651594.jpg', 'Proses', '2024-06-13', '04:39:58'),
(174, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718253679647-357110561.jpg', 'Proses', '2024-06-13', '04:41:19'),
(175, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718254088609-46403340.jpg', 'Proses', '2024-06-13', '04:48:08'),
(176, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718525356076-7328794.pdf', 'Proses', '2024-06-16', '08:09:16'),
(177, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718527306968-145202259.pdf', 'Proses', '2024-06-16', '08:41:46'),
(178, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718527444219-234819312.pdf', 'Diajukan', '2024-06-16', '08:44:04'),
(179, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718527473055-900878310.pdf', 'Diajukan', '2024-06-16', '08:44:33'),
(180, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718527586736-479092196.pdf', 'Diajukan', '2024-06-16', '08:46:26'),
(181, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718528296742-766472001.pdf', 'Diajukan', '2024-06-16', '08:58:16'),
(182, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718528323638-395241181.pdf', 'Diajukan', '2024-06-16', '08:58:43'),
(183, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718528466133-682536254.pdf', 'Diajukan', '2024-06-16', '09:01:06'),
(184, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718528535211-572208149.pdf', 'Diajukan', '2024-06-16', '09:02:15'),
(185, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718529005273-874521605.pdf', 'Diajukan', '2024-06-16', '09:10:05'),
(186, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718529073414-567501514.pdf', 'Diajukan', '2024-06-16', '09:11:13'),
(187, 'Pribadi', 'Beasiswa', '2211522020', '', '', '', '', '', 'berkas-1718529127825-6847747.pdf', 'Proses', '2024-06-16', '09:12:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `report`
--

INSERT INTO `report` (`id`, `name`, `email`, `subject`, `details`, `createdAt`, `updatedAt`) VALUES
(1, 'jeje', '2211522020_naufal@student.unand.ac.id', 'oke', 'mantap', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'nisa', 'nisa@gmail.com', 'asd', 'asd', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('admin.cjs'),
('adminn.cjs'),
('adminnn.cjs'),
('mahasiswa.cjs'),
('statuss.cjs');

-- --------------------------------------------------------

--
-- Struktur dari tabel `statuspermintaan`
--

CREATE TABLE `statuspermintaan` (
  `idStatus` varchar(30) NOT NULL,
  `idPermintaan` int(30) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `statuspermintaan`
--

INSERT INTO `statuspermintaan` (`idStatus`, `idPermintaan`, `tanggal`, `status`) VALUES
('1', 152, '2024-06-11T05:37:11.366Z', 'Selesai'),
('1', 153, '2024-06-11T05:37:34.266Z', 'Selesai'),
('1', 154, '2024-06-11T05:37:47.235Z', 'Selesai'),
('1', 155, '2024-06-11T08:21:31.492Z', 'Selesai'),
('1', 156, '2024-06-11T17:02:44.143Z', 'Selesai'),
('1', 157, '2024-06-11T17:05:18.756Z', 'Selesai'),
('1', 158, '2024-06-11T17:19:04.590Z', 'Selesai'),
('1', 159, '2024-06-11T17:21:28.123Z', 'Selesai'),
('1', 160, '2024-06-11T17:24:19.456Z', 'Selesai'),
('1', 161, '2024-06-11T17:25:53.189Z', 'Selesai'),
('1', 162, '2024-06-11T17:26:49.656Z', 'Selesai'),
('1', 163, '2024-06-11T17:28:53.369Z', 'Selesai'),
('1', 164, '2024-06-11T17:33:18.716Z', 'Selesai'),
('1', 165, '2024-06-12T14:33:36.032Z', 'Selesai'),
('1', 166, '2024-06-13T02:55:16.276Z', 'Selesai'),
('1', 167, '2024-06-13T02:56:55.662Z', 'Selesai'),
('1', 168, '2024-06-13T02:57:46.342Z', 'Selesai'),
('1', 169, '2024-06-13T03:52:43.827Z', 'Selesai'),
('1', 170, '2024-06-13T04:05:03.639Z', 'Selesai'),
('1', 171, '2024-06-13T04:05:20.622Z', 'Selesai'),
('1', 172, '2024-06-13T04:10:42.047Z', 'Selesai'),
('1', 173, '2024-06-13T04:39:58.876Z', 'Selesai'),
('1', 174, '2024-06-13T04:41:19.669Z', 'Selesai'),
('1', 175, '2024-06-13T04:48:08.640Z', 'Selesai'),
('1', 176, '2024-06-16T08:09:16.106Z', 'Selesai'),
('1', 177, '2024-06-16T08:41:47.001Z', 'Selesai'),
('1', 178, '2024-06-16T08:44:04.241Z', 'Selesai'),
('1', 179, '2024-06-16T08:44:33.076Z', 'Selesai'),
('1', 180, '2024-06-16T08:46:26.745Z', 'Selesai'),
('1', 181, '2024-06-16T08:58:16.772Z', 'Selesai'),
('1', 182, '2024-06-16T08:58:43.682Z', 'Selesai'),
('1', 183, '2024-06-16T09:01:06.165Z', 'Selesai'),
('1', 184, '2024-06-16T09:02:15.256Z', 'Selesai'),
('1', 185, '2024-06-16T09:10:05.312Z', 'Selesai'),
('1', 186, '2024-06-16T09:11:13.426Z', 'Selesai'),
('1', 187, '2024-06-16T09:12:07.865Z', 'Selesai'),
('2', 152, '2024-06-11T16:39:58.085Z', 'Selesai'),
('2', 153, '2024-06-11T16:42:57.444Z', 'Selesai'),
('2', 154, '2024-06-11T16:59:44.334Z', 'Selesai'),
('2', 155, '2024-06-11T08:22:07.563Z', 'Selesai'),
('2', 156, '2024-06-11T17:03:01.685Z', 'Selesai'),
('2', 157, '2024-06-11T17:05:29.383Z', 'Selesai'),
('2', 158, '2024-06-11T17:19:15.669Z', 'Selesai'),
('2', 159, '2024-06-11T17:21:39.119Z', 'Selesai'),
('2', 160, '2024-06-11T17:24:26.555Z', 'Selesai'),
('2', 161, '2024-06-11T17:26:00.274Z', 'Selesai'),
('2', 162, '2024-06-11T17:26:59.903Z', 'Selesai'),
('2', 163, '2024-06-11T17:28:59.091Z', 'Selesai'),
('2', 164, '2024-06-11T17:33:27.779Z', 'Selesai'),
('2', 165, '2024-06-12T14:34:17.698Z', 'Selesai'),
('2', 166, '2024-06-13T02:56:06.796Z', 'Selesai'),
('2', 167, '2024-06-13T02:57:21.281Z', 'Selesai'),
('2', 168, '2024-06-13T02:57:58.288Z', 'Selesai'),
('2', 169, '2024-06-13T03:52:57.566Z', 'Selesai'),
('2', 170, '2024-06-13T04:38:06.056Z', 'Selesai'),
('2', 171, '2024-06-13T04:36:37.679Z', 'Selesai'),
('2', 172, '2024-06-13T04:11:32.932Z', 'Selesai'),
('2', 173, '2024-06-13T04:40:13.356Z', 'Selesai'),
('2', 174, '2024-06-13T04:42:10.555Z', 'Selesai'),
('2', 175, '2024-06-13T05:04:07.316Z', 'Selesai'),
('2', 176, '2024-06-16T08:35:04.561Z', 'Selesai'),
('2', 177, '2024-06-16T11:47:48.868Z', 'Selesai'),
('2', 178, '', 'Sedang Berlangsung'),
('2', 179, '', 'Sedang Berlangsung'),
('2', 180, '', 'Sedang Berlangsung'),
('2', 181, '', 'Sedang Berlangsung'),
('2', 182, '', 'Sedang Berlangsung'),
('2', 183, '', 'Sedang Berlangsung'),
('2', 184, '', 'Sedang Berlangsung'),
('2', 185, '', 'Sedang Berlangsung'),
('2', 186, '', 'Sedang Berlangsung'),
('2', 187, '2024-06-17T03:05:39.352Z', 'Selesai'),
('3', 152, '2024-06-17T03:56:51.324Z', 'Selesai'),
('3', 153, '2024-06-17T04:16:48.854Z', 'Selesai'),
('3', 154, '2024-06-17T04:22:53.016Z', 'Selesai'),
('3', 155, '2024-06-11T08:24:19.536Z', 'Selesai'),
('3', 156, '2024-06-17T04:47:58.539Z', 'Selesai'),
('3', 157, '2024-06-17T04:57:33.967Z', 'Selesai'),
('3', 158, '', 'Sedang Berlangsung'),
('3', 159, '', 'Sedang Berlangsung'),
('3', 160, '', 'Sedang Berlangsung'),
('3', 161, '', 'Sedang Berlangsung'),
('3', 162, '', 'Sedang Berlangsung'),
('3', 163, '', 'Sedang Berlangsung'),
('3', 164, '', 'Sedang Berlangsung'),
('3', 165, '', 'Sedang Berlangsung'),
('3', 166, '', 'Sedang Berlangsung'),
('3', 167, '', 'Sedang Berlangsung'),
('3', 168, '', 'Sedang Berlangsung'),
('3', 169, '', 'Sedang Berlangsung'),
('3', 170, '', 'Sedang Berlangsung'),
('3', 171, '', 'Sedang Berlangsung'),
('3', 172, '', 'Sedang Berlangsung'),
('3', 173, '', 'Sedang Berlangsung'),
('3', 174, '', 'Sedang Berlangsung'),
('3', 175, '', 'Sedang Berlangsung'),
('3', 176, '', 'Sedang Berlangsung'),
('3', 177, '', 'Sedang Berlangsung'),
('3', 178, '', 'Belum Diproses'),
('3', 179, '', 'Belum Diproses'),
('3', 180, '', 'Belum Diproses'),
('3', 181, '', 'Belum Diproses'),
('3', 182, '', 'Belum Diproses'),
('3', 183, '', 'Belum Diproses'),
('3', 184, '', 'Belum Diproses'),
('3', 185, '', 'Belum Diproses'),
('3', 186, '', 'Belum Diproses'),
('3', 187, '', 'Sedang Berlangsung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat`
--

CREATE TABLE `surat` (
  `nomorSurat` int(255) NOT NULL,
  `idPermintaan` int(11) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `qr` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `tanggal_terbit` date NOT NULL,
  `valid_until` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `surat`
--

INSERT INTO `surat` (`nomorSurat`, `idPermintaan`, `nip`, `qr`, `tanggal_terbit`, `valid_until`) VALUES
(1, 129, '1972020142000121001', '', '2024-06-10', '2025-06-10'),
(2, 155, '1972020142000121001', '', '2024-06-11', '2025-06-11'),
(3, 139, '1972020142000121001', '', '2024-06-16', '2025-06-16'),
(4, 145, '1972020142000121001', '', '2024-06-16', '2025-06-16'),
(5, 145, '1972020142000121001', '', '2024-06-16', '2025-06-16'),
(6, 145, '1972020142000121001', '', '2024-06-16', '2025-06-16'),
(7, 145, '1972020142000121001', '', '2024-06-16', '2025-06-16'),
(8, 145, '1972020142000121001', '', '2024-06-16', '2025-06-16'),
(9, 145, '1972020142000121001', '', '2024-06-16', '2025-06-16'),
(10, 145, '1972020142000121001', '', '2024-06-16', '2025-06-16'),
(11, 145, '1972020142000121001', '', '2024-06-16', '2025-06-16'),
(12, 145, '1972020142000121001', '', '2024-06-16', '2025-06-16'),
(13, 145, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(14, 145, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(15, 145, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(16, 138, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(17, 147, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(18, 148, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(19, 149, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(20, 150, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(21, 150, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(22, 151, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(23, 151, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(24, 151, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(25, 151, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(26, 151, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(27, 151, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(28, 151, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(29, 151, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(30, 151, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(31, 151, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(32, 151, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(33, 151, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(34, 151, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(35, 152, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(36, 153, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(37, 153, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(38, 153, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(39, 153, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(40, 153, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(41, 153, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(42, 153, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(43, 154, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(44, 156, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(45, 156, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(46, 156, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(47, 157, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(48, 157, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(49, 133, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(50, 133, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(51, 133, '1972020142000121001', '', '2024-06-17', '2025-06-17'),
(52, 133, '1972020142000121001', '', '2024-06-17', '2025-06-17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `refresh_token`, `createdAt`, `updatedAt`) VALUES
(1, '2211522020_naufal@student.unand.ac.id', '$2a$10$Ln//.Us385C48anWEm7AoemJvdzvqLmtcrcIaEMFGQ..ys1WH8mr6', 'mahasiswa', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImVtYWlsIjoiMjIxMTUyMjAyMF9uYXVmYWxAc3R1ZGVudC51bmFuZC5hYy5pZCIsInJvbGUiOiJtYWhhc2lzd2EiLCJpYXQiOjE3MzI5MzI5NTIsImV4cCI6MTczMzUzNzc1Mn0.ellbCTB44dLYYbPhZOI7IG3jFv3aJ6WY78wRgJGrUIg', '2024-05-11 08:19:38', '2024-11-30 02:15:52'),
(2, '2211523004_fajrin@student.unand.ac.id', '$2b$10$L2t9M/EENXA6U/c3gFZEWu/isMJfqI6QM.CLTQI8WoZSHgZ8gDDJa', 'mahasiswa', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsImVtYWlsIjoiMjIxMTUyMzAwNF9mYWpyaW5Ac3R1ZGVudC51bmFuZC5hYy5pZCIsInJvbGUiOiJtYWhhc2lzd2EiLCJpYXQiOjE3MTgyNDcyNzAsImV4cCI6MTcxODg1MjA3MH0.A0WSyI0pL1hJVh5rU-os3brSENcswcFX1anep7eKKfI', '2024-05-11 08:19:38', '2024-06-13 02:54:30'),
(3, '2211522026_alfa@student.unand.ac.id', '$2b$10$hcINNLHXxCtU7m6..lQZX.IIYpCBOJNyJ6YV6MoGpg/OiVpC7SN5C', 'mahasiswa', NULL, '2024-05-11 08:19:38', '2024-05-11 08:19:38'),
(4, 'admin@gmail.com', '$2a$10$rXtOzrul5MpBtnMq4IsCxebZXKw3AF8R9Q6itQBo1rRv2wq5ssQay', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQsImVtYWlsIjoiYWRtaW5AZ21haWwuY29tIiwicm9sZSI6ImFkbWluIiwiaWF0IjoxNzI0MzgwNTQ0LCJleHAiOjE3MjQ5ODUzNDR9.xd414fh-vnSwK3PDcoFCqVugnKtVoIHSnOX7ha2ar8A', '2024-05-11 08:19:38', '2024-08-23 02:35:44');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`nip`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indeks untuk tabel `permintaan`
--
ALTER TABLE `permintaan`
  ADD PRIMARY KEY (`idPermintaan`),
  ADD KEY `nim` (`nim`);

--
-- Indeks untuk tabel `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `statuspermintaan`
--
ALTER TABLE `statuspermintaan`
  ADD PRIMARY KEY (`idStatus`,`idPermintaan`),
  ADD KEY `idPermintaan` (`idPermintaan`);

--
-- Indeks untuk tabel `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`nomorSurat`),
  ADD KEY `id_permintaan` (`idPermintaan`),
  ADD KEY `nip` (`nip`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT untuk tabel `permintaan`
--
ALTER TABLE `permintaan`
  MODIFY `idPermintaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT untuk tabel `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `surat`
--
ALTER TABLE `surat`
  MODIFY `nomorSurat` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `permintaan`
--
ALTER TABLE `permintaan`
  ADD CONSTRAINT `permintaan_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`);

--
-- Ketidakleluasaan untuk tabel `statuspermintaan`
--
ALTER TABLE `statuspermintaan`
  ADD CONSTRAINT `statuspermintaan_ibfk_1` FOREIGN KEY (`idPermintaan`) REFERENCES `permintaan` (`idPermintaan`);

--
-- Ketidakleluasaan untuk tabel `surat`
--
ALTER TABLE `surat`
  ADD CONSTRAINT `surat_ibfk_1` FOREIGN KEY (`idPermintaan`) REFERENCES `permintaan` (`idPermintaan`),
  ADD CONSTRAINT `surat_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `admin` (`nip`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
