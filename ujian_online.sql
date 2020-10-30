-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2020 at 11:46 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujian_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `file_temporary`
--

CREATE TABLE `file_temporary` (
  `id` int(12) NOT NULL,
  `dokumen` varchar(200) DEFAULT NULL,
  `created_at` varchar(200) DEFAULT NULL,
  `created_by` int(12) DEFAULT NULL,
  `is_active` int(12) DEFAULT 0,
  `created_by_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file_temporary`
--

INSERT INTO `file_temporary` (`id`, `dokumen`, `created_at`, `created_by`, `is_active`, `created_by_name`) VALUES
(1, 'webfile/b6c54637d6035e7d59d29e8691c0e2fd88538.png', '2020-10-23 00:28:37', 1, 1, 'Admin'),
(3, 'webfile/b6c54637d6035e7d59d29e8691c0e2fd48348.webm', '2020-10-23 23:34:00', 79, 0, 'SMILE'),
(5, 'webfile/b6c54637d6035e7d59d29e8691c0e2fd75341.jpg', '2020-10-24 00:12:19', 1, 0, 'Admin'),
(8, 'webfile/b6c54637d6035e7d59d29e8691c0e2fd53845.mp3', '2020-10-28 02:31:55', 1, 0, 'Admin'),
(9, 'webfile/b6c54637d6035e7d59d29e8691c0e2fd57466.jpg', '2020-10-28 02:32:42', 1, 1, 'Admin'),
(10, 'webfile/b6c54637d6035e7d59d29e8691c0e2fd43070.jpg', '2020-10-28 03:42:33', 1, 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `log_aktivitas`
--

CREATE TABLE `log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_created_at` datetime NOT NULL,
  `log_created_by` int(11) NOT NULL,
  `log_action` varchar(500) NOT NULL,
  `log_tablename` varchar(500) NOT NULL,
  `log_jsondata` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `log_aktivitas`
--

INSERT INTO `log_aktivitas` (`log_id`, `log_created_at`, `log_created_by`, `log_action`, `log_tablename`, `log_jsondata`) VALUES
(1, '2020-10-22 14:27:17', 79, 'updateData', 'master_periode', '{\"id\":\"1\",\"periode_dari\":\"2020-11-18\",\"periode_sampai\":\"2020-11-19\",\"lama_waktu_ujian\":\"90\",\"persentase_pg\":\"70\",\"persentase_essay\":\"30\",\"standar_nilai\":null,\"created_at\":\"2020-10-20 23:59:22\",\"updated_at\":null,\"created_by\":\"1573\",\"status\":\"ENABLE\"}'),
(2, '2020-10-23 00:07:56', 1, 'insertData', 'file_temporary', '{\"dokumen\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd55565.png\",\"created_at\":\"2020-10-23 00:07:56\",\"created_by\":\"1\",\"is_active\":\"0\",\"created_by_name\":\"Admin\"}'),
(3, '2020-10-23 00:14:07', 1, 'insertData', 'file_temporary', '{\"dokumen\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd76211.png\",\"created_at\":\"2020-10-23 00:14:07\",\"created_by\":\"1\",\"is_active\":\"0\",\"created_by_name\":\"Admin\"}'),
(4, '2020-10-23 00:15:01', 1, 'insertData', 'master_jawaban_pg', 'null'),
(5, '2020-10-23 00:18:56', 1, 'insertData', 'file_temporary', '{\"dokumen\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd75058.png\",\"created_at\":\"2020-10-23 00:18:56\",\"created_by\":\"1\",\"is_active\":\"0\",\"created_by_name\":\"Admin\"}'),
(6, '2020-10-23 00:19:24', 1, 'updateData', 'master_soal', '{\"id\":\"2\",\"image\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd75058.png\",\"deskripsi\":\"<p>Gambar<\\/p>\",\"jenis_soal\":\"pg\",\"id_jawaban\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-23 00:19:24\",\"updated_at\":null,\"id_periode\":\"1\",\"urutan_soal\":\"1\"}'),
(7, '2020-10-23 00:21:29', 1, 'insertData', 'file_temporary', '{\"dokumen\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd11156.png\",\"created_at\":\"2020-10-23 00:21:29\",\"created_by\":\"1\",\"is_active\":\"0\",\"created_by_name\":\"Admin\"}'),
(8, '2020-10-23 00:21:48', 1, 'insertData', 'file_temporary', '{\"dokumen\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd3701.png\",\"created_at\":\"2020-10-23 00:21:48\",\"created_by\":\"1\",\"is_active\":\"0\",\"created_by_name\":\"Admin\"}'),
(9, '2020-10-23 00:22:15', 1, 'updateData', 'master_soal', '{\"id\":\"3\",\"image\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd3701.png\",\"deskripsi\":\"<p>kascjasncksac<\\/p>\",\"jenis_soal\":\"pg\",\"id_jawaban\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-23 00:22:15\",\"updated_at\":null,\"id_periode\":\"1\",\"urutan_soal\":\"1\"}'),
(10, '2020-10-23 00:24:00', 1, 'insertData', 'file_temporary', '{\"dokumen\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd17609.png\",\"created_at\":\"2020-10-23 00:24:00\",\"created_by\":\"1\",\"is_active\":\"0\",\"created_by_name\":\"Admin\"}'),
(11, '2020-10-23 00:24:29', 1, 'insertData', 'master_jawaban_pg', 'null'),
(12, '2020-10-23 00:25:54', 1, 'insertData', 'file_temporary', '{\"dokumen\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd60968.png\",\"created_at\":\"2020-10-23 00:25:54\",\"created_by\":\"1\",\"is_active\":\"0\",\"created_by_name\":\"Admin\"}'),
(13, '2020-10-23 00:26:58', 1, 'insertData', 'file_temporary', '{\"dokumen\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd34488.png\",\"created_at\":\"2020-10-23 00:26:58\",\"created_by\":\"1\",\"is_active\":\"0\",\"created_by_name\":\"Admin\"}'),
(14, '2020-10-23 00:27:25', 1, 'insertData', 'master_jawaban_pg', '{\"id_soal\":1,\"keyword\":\"A\",\"image\":\"\",\"deskripsi\":\"ascasc\",\"jenis_soal\":\"deskripsi\",\"status\":\"ENABLE\",\"created_at\":\"2020-10-23 00:27:25\"}'),
(15, '2020-10-23 00:27:33', 1, 'insertData', 'master_jawaban_pg', '{\"id_soal\":2,\"keyword\":\"A\",\"image\":\"\",\"deskripsi\":\"ascasc\",\"jenis_soal\":\"deskripsi\",\"status\":\"ENABLE\",\"created_at\":\"2020-10-23 00:27:33\"}'),
(16, '2020-10-23 00:28:37', 1, 'insertData', 'file_temporary', '{\"dokumen\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd88538.png\",\"created_at\":\"2020-10-23 00:28:37\",\"created_by\":\"1\",\"is_active\":\"0\",\"created_by_name\":\"Admin\"}'),
(17, '2020-10-23 00:28:52', 1, 'insertData', 'master_jawaban_pg', '{\"id_soal\":1,\"keyword\":\"A\",\"image\":\"\",\"deskripsi\":\"asc\",\"jenis_jawaban\":\"deskripsi\",\"status\":\"ENABLE\",\"created_at\":\"2020-10-23 00:28:52\"}'),
(18, '2020-10-23 00:28:53', 1, 'insertData', 'master_jawaban_pg', '{\"id_soal\":1,\"keyword\":\"B\",\"image\":\"\",\"deskripsi\":\"asc\",\"jenis_jawaban\":\"deskripsi\",\"status\":\"ENABLE\",\"created_at\":\"2020-10-23 00:28:53\"}'),
(19, '2020-10-23 00:28:53', 1, 'insertData', 'master_jawaban_pg', '{\"id_soal\":1,\"keyword\":\"C\",\"image\":\"\",\"deskripsi\":\"asc\",\"jenis_jawaban\":\"deskripsi\",\"status\":\"ENABLE\",\"created_at\":\"2020-10-23 00:28:53\"}'),
(20, '2020-10-23 00:28:53', 1, 'insertData', 'master_jawaban_pg', '{\"id_soal\":1,\"keyword\":\"D\",\"image\":\"\",\"deskripsi\":\"asc\",\"jenis_jawaban\":\"deskripsi\",\"status\":\"ENABLE\",\"created_at\":\"2020-10-23 00:28:53\"}'),
(21, '2020-10-23 00:28:53', 1, 'updateData', 'master_soal', '{\"id\":\"1\",\"image\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd88538.png\",\"deskripsi\":\"<p>ascascasva<\\/p>\",\"jenis_soal\":\"pg\",\"id_jawaban\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-23 00:28:52\",\"updated_at\":null,\"id_periode\":\"1\",\"urutan_soal\":\"1\"}'),
(22, '2020-10-23 12:30:59', 79, 'insertData', 'file_temporary', '{\"dokumen\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd28193.jpg\",\"created_at\":\"2020-10-23 12:30:59\",\"created_by\":\"79\",\"is_active\":\"0\",\"created_by_name\":\"SMILE\"}'),
(23, '2020-10-23 12:31:05', 79, 'deleteData', 'file_temporary', '{\"id\":\"2\",\"dokumen\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd28193.jpg\",\"created_at\":\"2020-10-23 12:30:59\",\"created_by\":\"79\",\"is_active\":\"0\",\"created_by_name\":\"SMILE\"}'),
(24, '2020-10-23 23:34:00', 79, 'insertData', 'file_temporary', '{\"dokumen\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd48348.webm\",\"created_at\":\"2020-10-23 23:34:00\",\"created_by\":\"79\",\"is_active\":\"0\",\"created_by_name\":\"SMILE\"}'),
(25, '2020-10-24 00:11:57', 1, 'insertData', 'file_temporary', '{\"dokumen\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd18803.jpg\",\"created_at\":\"2020-10-24 00:11:57\",\"created_by\":\"1\",\"is_active\":\"0\",\"created_by_name\":\"Admin\"}'),
(26, '2020-10-24 00:12:03', 1, 'deleteData', 'file_temporary', '{\"id\":\"4\",\"dokumen\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd18803.jpg\",\"created_at\":\"2020-10-24 00:11:57\",\"created_by\":\"1\",\"is_active\":\"0\",\"created_by_name\":\"Admin\"}'),
(27, '2020-10-24 00:12:19', 1, 'insertData', 'file_temporary', '{\"dokumen\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd75341.jpg\",\"created_at\":\"2020-10-24 00:12:19\",\"created_by\":\"1\",\"is_active\":\"0\",\"created_by_name\":\"Admin\"}'),
(28, '2020-10-24 00:13:44', 1, 'insertData', 'file_temporary', '{\"dokumen\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd98597.jpg\",\"created_at\":\"2020-10-24 00:13:44\",\"created_by\":\"1\",\"is_active\":\"0\",\"created_by_name\":\"Admin\"}'),
(29, '2020-10-24 00:13:50', 1, 'deleteData', 'file_temporary', '{\"id\":\"6\",\"dokumen\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd98597.jpg\",\"created_at\":\"2020-10-24 00:13:44\",\"created_by\":\"1\",\"is_active\":\"0\",\"created_by_name\":\"Admin\"}'),
(30, '2020-10-24 00:18:08', 1, 'insertData', 'file_temporary', '{\"dokumen\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd40153.mp3\",\"created_at\":\"2020-10-24 00:18:08\",\"created_by\":\"1\",\"is_active\":\"0\",\"created_by_name\":\"Admin\"}'),
(31, '2020-10-24 00:18:59', 1, 'deleteData', 'file_temporary', '{\"id\":\"7\",\"dokumen\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd40153.mp3\",\"created_at\":\"2020-10-24 00:18:08\",\"created_by\":\"1\",\"is_active\":\"0\",\"created_by_name\":\"Admin\"}'),
(32, '2020-10-24 14:43:44', 1, 'updateData', 'master_soal', '{\"id\":\"1\",\"image\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd88538.png\",\"voice\":null,\"deskripsi\":\"<p>ascascasva<\\/p>\",\"jenis_soal\":\"pg\",\"id_jawaban\":\"1\",\"status\":\"ENABLE\",\"created_at\":\"2020-10-23 00:28:52\",\"updated_at\":null,\"id_periode\":\"1\",\"urutan_soal\":\"1\"}'),
(33, '2020-10-24 14:44:04', 1, 'updateData', 'master_soal', '{\"id\":\"1\",\"image\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd88538.png\",\"voice\":null,\"deskripsi\":\"<p>ascascasva<\\/p>\",\"jenis_soal\":\"pg\",\"id_jawaban\":\"1\",\"status\":\"DISABLE\",\"created_at\":\"2020-10-23 00:28:52\",\"updated_at\":null,\"id_periode\":\"1\",\"urutan_soal\":\"1\"}'),
(34, '2020-10-26 23:32:51', 1573, 'updateData', 'peserta_periode', '{\"id\":\"2\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"0818231273129\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"G26PCRX9C2\",\"id_periode\":\"1\",\"id_soal_terakhir\":null,\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:30:01\",\"updated_at\":null,\"kelulusan\":null}'),
(35, '2020-10-26 23:33:45', 1573, 'updateData', 'peserta_periode', '{\"id\":\"3\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"Y614SVVPF6\",\"id_periode\":\"1\",\"id_soal_terakhir\":null,\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:33:13\",\"updated_at\":null,\"kelulusan\":null}'),
(36, '2020-10-26 23:38:52', 1573, 'updateData', 'peserta_periode', '{\"id\":\"4\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"0818231273129\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"UQWG7LFE2G\",\"id_periode\":\"1\",\"id_soal_terakhir\":null,\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:35:57\",\"updated_at\":null,\"kelulusan\":null}'),
(37, '2020-10-26 23:47:15', 1573, 'updateData', 'peserta_periode', '{\"id\":\"5\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"AK580QDRJO\",\"id_periode\":\"1\",\"id_soal_terakhir\":null,\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:45:48\",\"updated_at\":null,\"kelulusan\":null}'),
(38, '2020-10-27 20:26:22', 2659, 'insertData', 'peserta_periode', '{\"id_soal\":\"1\",\"jenis_soal\":\"pg\",\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"id_jawaban_pg\":\"2\"}'),
(39, '2020-10-27 20:26:23', 2659, 'insertData', 'peserta_periode', '{\"id_soal\":\"1\",\"jenis_soal\":\"pg\",\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"id_jawaban_pg\":\"2\"}'),
(40, '2020-10-27 20:26:24', 2659, 'insertData', 'peserta_periode', '{\"id_soal\":\"1\",\"jenis_soal\":\"pg\",\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"id_jawaban_pg\":\"2\"}'),
(41, '2020-10-27 20:26:24', 2659, 'insertData', 'peserta_periode', '{\"id_soal\":\"1\",\"jenis_soal\":\"pg\",\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"id_jawaban_pg\":\"2\"}'),
(42, '2020-10-27 20:26:56', 2659, 'insertData', 'peserta_jawaban', '{\"id_soal\":\"1\",\"jenis_soal\":\"pg\",\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"id_jawaban_pg\":\"2\"}'),
(43, '2020-10-27 20:27:04', 2659, 'insertData', 'peserta_jawaban', '{\"id_soal\":\"1\",\"jenis_soal\":\"pg\",\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"id_jawaban_pg\":\"1\"}'),
(44, '2020-10-27 20:27:05', 2659, 'insertData', 'peserta_jawaban', '{\"id_soal\":\"1\",\"jenis_soal\":\"pg\",\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"id_jawaban_pg\":\"2\"}'),
(45, '2020-10-27 20:27:06', 2659, 'insertData', 'peserta_jawaban', '{\"id_soal\":\"1\",\"jenis_soal\":\"pg\",\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"id_jawaban_pg\":\"3\"}'),
(46, '2020-10-27 20:27:22', 2659, 'insertData', 'peserta_jawaban', '{\"id_soal\":\"1\",\"jenis_soal\":\"pg\",\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"id_jawaban_pg\":\"3\"}'),
(47, '2020-10-27 20:27:29', 2659, 'insertData', 'peserta_jawaban', '{\"id_soal\":\"1\",\"jenis_soal\":\"pg\",\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"id_jawaban_pg\":\"1\"}'),
(48, '2020-10-27 20:30:22', 2659, 'updateData', 'peserta_jawaban', '{\"id\":\"1\",\"id_soal\":\"1\",\"jenis_soal\":\"pg\",\"id_jawaban_pg\":\"2\",\"jawaban_essay\":null,\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"is_true\":\"0\"}'),
(49, '2020-10-28 02:31:55', 1, 'insertData', 'file_temporary', '{\"dokumen\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd53845.mp3\",\"created_at\":\"2020-10-28 02:31:55\",\"created_by\":\"1\",\"is_active\":\"0\",\"created_by_name\":\"Admin\"}'),
(50, '2020-10-28 02:32:42', 1, 'insertData', 'file_temporary', '{\"dokumen\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd57466.jpg\",\"created_at\":\"2020-10-28 02:32:42\",\"created_by\":\"1\",\"is_active\":\"0\",\"created_by_name\":\"Admin\"}'),
(51, '2020-10-28 02:33:46', 1, 'insertData', 'master_jawaban_pg', '{\"id_soal\":2,\"keyword\":\"A\",\"image\":\"\",\"deskripsi\":\"Lany\",\"jenis_jawaban\":\"deskripsi\",\"status\":\"ENABLE\",\"created_at\":\"2020-10-28 02:33:46\"}'),
(52, '2020-10-28 02:33:46', 1, 'insertData', 'master_jawaban_pg', '{\"id_soal\":2,\"keyword\":\"B\",\"image\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd57466.jpg\",\"deskripsi\":\"\",\"jenis_jawaban\":\"gambar\",\"status\":\"ENABLE\",\"created_at\":\"2020-10-28 02:33:46\"}'),
(53, '2020-10-28 02:33:46', 1, 'updateData', 'file_temporary', '{\"id\":\"9\",\"dokumen\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd57466.jpg\",\"created_at\":\"2020-10-28 02:32:42\",\"created_by\":\"1\",\"is_active\":\"0\",\"created_by_name\":\"Admin\"}'),
(54, '2020-10-28 02:33:46', 1, 'insertData', 'master_jawaban_pg', '{\"id_soal\":2,\"keyword\":\"C\",\"image\":\"\",\"deskripsi\":\"Marshmello\",\"jenis_jawaban\":\"deskripsi\",\"status\":\"ENABLE\",\"created_at\":\"2020-10-28 02:33:46\"}'),
(55, '2020-10-28 02:33:46', 1, 'insertData', 'master_jawaban_pg', '{\"id_soal\":2,\"keyword\":\"D\",\"image\":\"\",\"deskripsi\":\"Khalid\",\"jenis_jawaban\":\"deskripsi\",\"status\":\"ENABLE\",\"created_at\":\"2020-10-28 02:33:46\"}'),
(56, '2020-10-28 02:33:46', 1, 'updateData', 'master_soal', '{\"id\":\"2\",\"image\":\"\",\"voice\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd53845.mp3\",\"deskripsi\":\"<p>Tebak Suara Ini ?<\\/p>\",\"jenis_soal\":\"pg\",\"id_jawaban\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-28 02:33:46\",\"updated_at\":null,\"id_periode\":\"1\",\"urutan_soal\":\"2\"}'),
(57, '2020-10-27 21:36:03', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":null,\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(58, '2020-10-27 21:36:11', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"1\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(59, '2020-10-27 21:36:46', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"1\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(60, '2020-10-27 21:37:19', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"1\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(61, '2020-10-27 21:38:03', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"1\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(62, '2020-10-27 21:38:05', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"1\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(63, '2020-10-27 21:38:16', 2659, 'insertData', 'peserta_jawaban', '{\"id_soal\":\"2\",\"jenis_soal\":\"pg\",\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"id_jawaban_pg\":\"5\"}'),
(64, '2020-10-27 21:38:18', 2659, 'updateData', 'peserta_jawaban', '{\"id\":\"7\",\"id_soal\":\"2\",\"jenis_soal\":\"pg\",\"id_jawaban_pg\":\"5\",\"jawaban_essay\":null,\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"is_true\":\"0\"}'),
(65, '2020-10-27 21:38:29', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(66, '2020-10-27 21:39:14', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(67, '2020-10-27 21:39:16', 2659, 'updateData', 'peserta_jawaban', '{\"id\":\"7\",\"id_soal\":\"2\",\"jenis_soal\":\"pg\",\"id_jawaban_pg\":\"7\",\"jawaban_essay\":null,\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"is_true\":\"0\"}'),
(68, '2020-10-27 21:39:19', 2659, 'updateData', 'peserta_jawaban', '{\"id\":\"7\",\"id_soal\":\"2\",\"jenis_soal\":\"pg\",\"id_jawaban_pg\":\"6\",\"jawaban_essay\":null,\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"is_true\":\"0\"}'),
(69, '2020-10-27 21:39:21', 2659, 'updateData', 'peserta_jawaban', '{\"id\":\"7\",\"id_soal\":\"2\",\"jenis_soal\":\"pg\",\"id_jawaban_pg\":\"5\",\"jawaban_essay\":null,\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"is_true\":\"0\"}'),
(70, '2020-10-27 21:39:52', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(71, '2020-10-27 21:39:57', 2659, 'updateData', 'peserta_jawaban', '{\"id\":\"7\",\"id_soal\":\"2\",\"jenis_soal\":\"pg\",\"id_jawaban_pg\":\"7\",\"jawaban_essay\":null,\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"is_true\":\"0\"}'),
(72, '2020-10-27 21:40:00', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(73, '2020-10-27 21:40:01', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"1\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(74, '2020-10-27 21:40:03', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(75, '2020-10-27 21:40:05', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"1\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(76, '2020-10-27 21:40:07', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(77, '2020-10-27 21:40:11', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"1\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(78, '2020-10-27 21:40:14', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(79, '2020-10-27 21:40:19', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"1\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(80, '2020-10-27 21:40:21', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(81, '2020-10-27 21:41:58', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"1\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(82, '2020-10-27 21:42:04', 2659, 'updateData', 'peserta_jawaban', '{\"id\":\"7\",\"id_soal\":\"2\",\"jenis_soal\":\"pg\",\"id_jawaban_pg\":\"5\",\"jawaban_essay\":null,\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"is_true\":\"0\"}'),
(83, '2020-10-27 21:42:06', 2659, 'updateData', 'peserta_jawaban', '{\"id\":\"7\",\"id_soal\":\"2\",\"jenis_soal\":\"pg\",\"id_jawaban_pg\":\"7\",\"jawaban_essay\":null,\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"is_true\":\"0\"}'),
(84, '2020-10-28 03:42:33', 1, 'insertData', 'file_temporary', '{\"dokumen\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd43070.jpg\",\"created_at\":\"2020-10-28 03:42:33\",\"created_by\":\"1\",\"is_active\":\"0\",\"created_by_name\":\"Admin\"}'),
(85, '2020-10-28 03:42:49', 1, 'updateData', 'file_temporary', '{\"id\":\"10\",\"dokumen\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd43070.jpg\",\"created_at\":\"2020-10-28 03:42:33\",\"created_by\":\"1\",\"is_active\":\"0\",\"created_by_name\":\"Admin\"}'),
(86, '2020-10-27 21:43:09', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(87, '2020-10-27 21:43:18', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(88, '2020-10-27 21:44:20', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(89, '2020-10-27 21:45:02', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(90, '2020-10-27 21:45:49', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(91, '2020-10-27 21:46:01', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(92, '2020-10-27 21:47:15', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(93, '2020-10-27 21:47:41', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(94, '2020-10-27 21:48:11', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(95, '2020-10-27 21:48:25', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(96, '2020-10-27 21:48:45', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(97, '2020-10-27 21:48:59', 2659, 'updateData', 'peserta_jawaban', '{\"id\":\"7\",\"id_soal\":\"2\",\"jenis_soal\":\"pg\",\"id_jawaban_pg\":\"6\",\"jawaban_essay\":null,\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"is_true\":\"0\"}'),
(98, '2020-10-27 21:49:06', 2659, 'updateData', 'peserta_jawaban', '{\"id\":\"7\",\"id_soal\":\"2\",\"jenis_soal\":\"pg\",\"id_jawaban_pg\":\"5\",\"jawaban_essay\":null,\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"is_true\":\"0\"}'),
(99, '2020-10-27 21:49:08', 2659, 'updateData', 'peserta_jawaban', '{\"id\":\"7\",\"id_soal\":\"2\",\"jenis_soal\":\"pg\",\"id_jawaban_pg\":\"7\",\"jawaban_essay\":null,\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"is_true\":\"0\"}'),
(100, '2020-10-27 21:49:12', 2659, 'updateData', 'peserta_jawaban', '{\"id\":\"7\",\"id_soal\":\"2\",\"jenis_soal\":\"pg\",\"id_jawaban_pg\":\"6\",\"jawaban_essay\":null,\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"is_true\":\"0\"}'),
(101, '2020-10-27 21:49:15', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(102, '2020-10-27 21:49:16', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"1\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(103, '2020-10-27 21:49:18', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(104, '2020-10-27 21:49:30', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"1\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(105, '2020-10-27 21:49:33', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"1\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(106, '2020-10-27 21:49:37', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(107, '2020-10-27 21:50:07', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(108, '2020-10-27 21:50:16', 2659, 'insertData', 'peserta_jawaban', '{\"id_soal\":\"3\",\"jenis_soal\":\"essay\",\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"jawaban_essay\":\"Gambar adalah\"}'),
(109, '2020-10-27 21:50:20', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"3\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(110, '2020-10-27 21:50:24', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(111, '2020-10-27 21:50:30', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"3\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(112, '2020-10-27 21:52:29', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(113, '2020-10-27 21:52:51', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"1\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(114, '2020-10-27 21:52:58', 2659, 'insertData', 'peserta_jawaban', '{\"id_soal\":\"1\",\"jenis_soal\":\"pg\",\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"id_jawaban_pg\":\"1\"}'),
(115, '2020-10-27 21:58:19', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"1\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(116, '2020-10-27 21:58:21', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"1\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(117, '2020-10-27 22:09:41', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(118, '2020-10-27 22:09:43', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(119, '2020-10-27 22:10:52', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"1\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(120, '2020-10-27 22:11:28', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"1\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(121, '2020-10-27 22:11:30', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"1\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(122, '2020-10-27 22:11:31', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(123, '2020-10-27 22:11:33', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"3\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(124, '2020-10-27 22:11:34', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(125, '2020-10-27 22:12:03', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"1\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}');
INSERT INTO `log_aktivitas` (`log_id`, `log_created_at`, `log_created_by`, `log_action`, `log_tablename`, `log_jsondata`) VALUES
(126, '2020-10-27 22:12:35', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(127, '2020-10-27 22:12:36', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"1\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(128, '2020-10-27 22:12:39', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(129, '2020-10-27 22:25:07', 2659, 'insertData', 'peserta_jawaban', '{\"id_soal\":\"2\",\"jenis_soal\":\"pg\",\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"id_jawaban_pg\":\"5\"}'),
(130, '2020-10-27 22:25:10', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(131, '2020-10-27 22:25:15', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"3\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(132, '2020-10-27 22:25:21', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(133, '2020-10-27 22:25:23', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"1\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(134, '2020-10-27 22:25:27', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(135, '2020-10-27 22:25:30', 2659, 'insertData', 'peserta_jawaban', '{\"id_soal\":\"3\",\"jenis_soal\":\"essay\",\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"jawaban_essay\":\"cdcsdcsdc\"}'),
(136, '2020-10-27 22:25:35', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"3\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(137, '2020-10-27 22:25:39', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(138, '2020-10-27 22:25:50', 2659, 'updateData', 'peserta_jawaban', '{\"id\":\"11\",\"id_soal\":\"3\",\"jenis_soal\":\"essay\",\"id_jawaban_pg\":null,\"jawaban_essay\":\"cdcsdcsdc\",\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"is_true\":\"0\"}'),
(139, '2020-10-27 22:25:55', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"3\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(140, '2020-10-27 22:26:00', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(141, '2020-10-27 22:26:05', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(142, '2020-10-27 22:26:09', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(143, '2020-10-27 22:26:12', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"3\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(144, '2020-10-27 22:26:34', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(145, '2020-10-27 22:26:38', 2659, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(146, '2020-10-28 09:40:38', 79, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"3\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(147, '2020-10-28 09:40:41', 79, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"3\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(148, '2020-10-28 09:40:42', 79, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(149, '2020-10-28 09:40:43', 79, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"1\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(150, '2020-10-28 09:40:44', 79, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(151, '2020-10-28 09:40:46', 79, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"3\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(152, '2020-10-28 09:40:47', 79, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(153, '2020-10-28 09:40:52', 79, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"1\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(154, '2020-10-28 09:40:54', 79, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"2\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(155, '2020-10-28 09:41:45', 79, 'updateData', 'peserta_periode', '{\"id\":\"6\",\"id_peserta\":null,\"nama_peserta\":\"Afreza Zul Husein\",\"email_peserta\":\"ligasatu24@gmail.com\",\"no_telp_peserta\":\"081237917391\",\"alamat_peserta\":\"Jl.Almunir\",\"kode_peserta\":\"WVWS0YA5CO\",\"id_periode\":\"1\",\"id_soal_terakhir\":\"3\",\"status_ujian\":\"belum ujian\",\"waktu_mulai_ujian\":null,\"total_nilai\":null,\"nilai_pg\":null,\"nilai_essay\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-26 23:47:47\",\"updated_at\":null,\"kelulusan\":null,\"selesai_ujian\":\"0\"}'),
(156, '2020-10-28 09:41:51', 79, 'updateData', 'peserta_jawaban', '{\"id\":\"10\",\"id_soal\":\"2\",\"jenis_soal\":\"pg\",\"id_jawaban_pg\":\"5\",\"jawaban_essay\":null,\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"is_true\":\"0\"}'),
(157, '2020-10-28 09:42:07', 79, 'updateData', 'peserta_jawaban', '{\"id\":\"10\",\"id_soal\":\"2\",\"jenis_soal\":\"pg\",\"id_jawaban_pg\":\"6\",\"jawaban_essay\":null,\"id_peserta_periode\":\"6\",\"id_periode\":\"1\",\"is_true\":\"0\"}'),
(158, '2020-10-29 14:30:57', 1, 'updateData', 'master_periode', '{\"id\":\"1\",\"periode_dari\":\"2020-11-18\",\"periode_sampai\":\"2020-11-19\",\"lama_waktu_ujian\":\"90\",\"persentase_pg\":\"70\",\"persentase_essay\":\"30\",\"standar_nilai\":\"80\",\"created_at\":\"2020-10-20 23:59:22\",\"updated_at\":\"2020-10-22 14:27:17\",\"created_by\":\"79\",\"status\":\"ENABLE\"}'),
(159, '2020-10-29 14:31:10', 1, 'updateData', 'master_periode', '{\"id\":\"1\",\"periode_dari\":\"2020-10-29\",\"periode_sampai\":\"2020-11-30\",\"lama_waktu_ujian\":\"90\",\"persentase_pg\":\"70\",\"persentase_essay\":\"30\",\"standar_nilai\":\"\",\"created_at\":\"2020-10-20 23:59:22\",\"updated_at\":\"2020-10-29 14:30:57\",\"created_by\":\"1\",\"status\":\"ENABLE\"}');

-- --------------------------------------------------------

--
-- Table structure for table `master_jawaban_pg`
--

CREATE TABLE `master_jawaban_pg` (
  `id` int(12) NOT NULL,
  `id_soal` int(12) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `image` varchar(300) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `jenis_jawaban` varchar(100) DEFAULT NULL COMMENT '1.deskripsi 2.gambar'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_jawaban_pg`
--

INSERT INTO `master_jawaban_pg` (`id`, `id_soal`, `keyword`, `image`, `deskripsi`, `status`, `created_at`, `updated_at`, `jenis_jawaban`) VALUES
(1, 1, 'A', '', 'asc', 'ENABLE', '2020-10-23 00:28:52', NULL, 'deskripsi'),
(2, 1, 'B', '', 'asc', 'ENABLE', '2020-10-23 00:28:53', NULL, 'deskripsi'),
(3, 1, 'C', '', 'asc', 'ENABLE', '2020-10-23 00:28:53', NULL, 'deskripsi'),
(4, 1, 'D', '', 'asc', 'ENABLE', '2020-10-23 00:28:53', NULL, 'deskripsi'),
(5, 2, 'A', '', 'Lany', 'ENABLE', '2020-10-28 02:33:46', NULL, 'deskripsi'),
(6, 2, 'B', 'webfile/b6c54637d6035e7d59d29e8691c0e2fd57466.jpg', '', 'ENABLE', '2020-10-28 02:33:46', NULL, 'gambar'),
(7, 2, 'C', '', 'Marshmello', 'ENABLE', '2020-10-28 02:33:46', NULL, 'deskripsi'),
(8, 2, 'D', '', 'Khalid', 'ENABLE', '2020-10-28 02:33:46', NULL, 'deskripsi');

-- --------------------------------------------------------

--
-- Table structure for table `master_periode`
--

CREATE TABLE `master_periode` (
  `id` int(12) NOT NULL,
  `periode_dari` varchar(100) DEFAULT NULL,
  `periode_sampai` varchar(100) DEFAULT NULL,
  `lama_waktu_ujian` varchar(100) DEFAULT NULL,
  `persentase_pg` varchar(100) DEFAULT NULL,
  `persentase_essay` varchar(100) DEFAULT NULL,
  `standar_nilai` varchar(100) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(12) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_periode`
--

INSERT INTO `master_periode` (`id`, `periode_dari`, `periode_sampai`, `lama_waktu_ujian`, `persentase_pg`, `persentase_essay`, `standar_nilai`, `created_at`, `updated_at`, `created_by`, `status`) VALUES
(1, '2020-10-29', '2020-11-30', '90', '70', '30', '70', '2020-10-20 23:59:22', '2020-10-29 14:31:10', 1, 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `master_soal`
--

CREATE TABLE `master_soal` (
  `id` int(12) NOT NULL,
  `image` varchar(300) DEFAULT NULL,
  `voice` varchar(100) DEFAULT NULL,
  `deskripsi` longtext DEFAULT NULL,
  `jenis_soal` varchar(100) DEFAULT NULL COMMENT '1.essay 2.pg',
  `id_jawaban` int(12) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id_periode` int(12) DEFAULT NULL,
  `urutan_soal` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_soal`
--

INSERT INTO `master_soal` (`id`, `image`, `voice`, `deskripsi`, `jenis_soal`, `id_jawaban`, `status`, `created_at`, `updated_at`, `id_periode`, `urutan_soal`) VALUES
(1, 'webfile/b6c54637d6035e7d59d29e8691c0e2fd88538.png', NULL, '<p>ascascasva</p>', 'pg', 1, 'ENABLE', '2020-10-23 00:28:52', NULL, 1, 1),
(2, '', 'webfile/b6c54637d6035e7d59d29e8691c0e2fd53845.mp3', '<p>Tebak Suara Ini ?</p>', 'pg', 5, 'ENABLE', '2020-10-28 02:33:46', NULL, 1, 2),
(3, 'webfile/b6c54637d6035e7d59d29e8691c0e2fd43070.jpg', '', '<p>Gambar Apakah Ini ?&nbsp;</p>', 'essay', NULL, 'ENABLE', '2020-10-28 03:42:49', NULL, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `peserta_jawaban`
--

CREATE TABLE `peserta_jawaban` (
  `id` int(12) NOT NULL,
  `id_soal` int(12) DEFAULT NULL,
  `jenis_soal` varchar(100) DEFAULT NULL,
  `id_jawaban_pg` int(12) DEFAULT NULL,
  `jawaban_essay` text DEFAULT NULL,
  `id_peserta_periode` int(12) DEFAULT NULL,
  `id_periode` int(12) DEFAULT NULL,
  `is_true` int(12) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peserta_jawaban`
--

INSERT INTO `peserta_jawaban` (`id`, `id_soal`, `jenis_soal`, `id_jawaban_pg`, `jawaban_essay`, `id_peserta_periode`, `id_periode`, `is_true`) VALUES
(9, 1, 'pg', 2, NULL, 6, 1, 1),
(10, 2, 'pg', 7, NULL, 6, 1, 1),
(11, 3, 'essay', NULL, '', 6, 1, 0),
(12, 3, 'essay', NULL, 'kntl', 7, 1, 0),
(13, 1, 'pg', 4, NULL, 8, 1, 0),
(14, 3, 'essay', NULL, 'Ddscgg', 8, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `peserta_periode`
--

CREATE TABLE `peserta_periode` (
  `id` int(12) NOT NULL,
  `id_peserta` int(12) DEFAULT NULL,
  `nama_peserta` varchar(200) DEFAULT NULL,
  `email_peserta` varchar(200) DEFAULT NULL,
  `no_telp_peserta` varchar(200) DEFAULT NULL,
  `alamat_peserta` text DEFAULT NULL,
  `kode_peserta` varchar(200) DEFAULT NULL,
  `id_periode` int(12) DEFAULT NULL,
  `id_soal_terakhir` int(12) DEFAULT NULL,
  `status_ujian` varchar(100) NOT NULL DEFAULT 'belum ujian' COMMENT '1.belum ujian\r\n2.sedang ujian\r\n3.menunggu hasil\r\n4.selesai ujian',
  `waktu_mulai_ujian` varchar(100) DEFAULT NULL,
  `waktu_selesai_ujian` varchar(100) DEFAULT NULL,
  `total_nilai` varchar(100) DEFAULT NULL,
  `nilai_pg` varchar(100) DEFAULT NULL,
  `nilai_essay` varchar(100) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `kelulusan` varchar(40) DEFAULT NULL,
  `selesai_ujian` int(12) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peserta_periode`
--

INSERT INTO `peserta_periode` (`id`, `id_peserta`, `nama_peserta`, `email_peserta`, `no_telp_peserta`, `alamat_peserta`, `kode_peserta`, `id_periode`, `id_soal_terakhir`, `status_ujian`, `waktu_mulai_ujian`, `waktu_selesai_ujian`, `total_nilai`, `nilai_pg`, `nilai_essay`, `status`, `created_at`, `updated_at`, `kelulusan`, `selesai_ujian`) VALUES
(1, NULL, 'Cahyo Fajar Pamungkas', 'cahyo@gmail.com', '081237917391', 'Jl.Almunir', 'NGGWXD7DPZ', 1, NULL, 'belum ujian', NULL, NULL, NULL, NULL, NULL, 'ENABLE', '2020-10-26 23:18:48', NULL, NULL, 0),
(2, NULL, 'Afreza Zul Husein', 'ligasatu24@gmail.com', '0818231273129', 'Jl.Almunir', 'G26PCRX9C2', 1, NULL, 'belum ujian', NULL, NULL, NULL, NULL, NULL, 'DISABLE', '2020-10-26 23:30:01', NULL, NULL, 0),
(3, NULL, 'Afreza Zul Husein', 'ligasatu24@gmail.com', '081237917391', 'Jl.Almunir', 'Y614SVVPF6', 1, NULL, 'belum ujian', NULL, NULL, NULL, NULL, NULL, 'DISABLE', '2020-10-26 23:33:13', NULL, NULL, 0),
(4, NULL, 'Afreza Zul Husein', 'ligasatu24@gmail.com', '0818231273129', 'Jl.Almunir', 'UQWG7LFE2G', 1, NULL, 'belum ujian', NULL, NULL, NULL, NULL, NULL, 'DISABLE', '2020-10-26 23:35:57', NULL, NULL, 0),
(5, NULL, 'Afreza Zul Husein', 'ligasatu24@gmail.com', '081237917391', 'Jl.Almunir', 'AK580QDRJO', 1, NULL, 'belum ujian', NULL, NULL, NULL, NULL, NULL, 'DISABLE', '2020-10-26 23:45:48', NULL, NULL, 0),
(6, NULL, 'Afreza Zul Husein', 'ligasatu24@gmail.com', '081237917391', 'Jl.Almunir', 'WVWS0YA5CO', 1, 2, 'menunggu hasil', '2020-10-29 01:00:29', '', '70', '100', NULL, 'ENABLE', '2020-10-26 23:47:47', NULL, NULL, 0),
(7, NULL, 'Fajar Goblok', 'afreza150@gmail.com', '08182379218731', 'Jl.Almunir', 'A75XDF62PI', 1, 3, 'menunggu hasil', '2020-10-29 14:32:21', '2020-10-29 14:33:49', NULL, NULL, NULL, 'ENABLE', '2020-10-29 14:30:13', NULL, NULL, 1),
(8, NULL, 'Ardi Muhammad Husein', 'cahyofajar28@gmail.com', '0812837192739213', 'Jl.Almunir', '4DEAJS9T42', 1, 3, 'menunggu hasil', '2020-10-29 14:42:07', '2020-10-29 14:43:32', '0', '0', NULL, 'ENABLE', '2020-10-29 14:38:47', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `status` enum('DISABLE','ENABLE') DEFAULT NULL,
  `menu` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`, `slug`, `status`, `menu`, `created_at`, `updated_at`) VALUES
(17, 'Admin', 'admin', 'ENABLE', '[\"32\",\"29\",\"1\",\"13\",\"25\",\"27\",\"28\",\"21\",\"22\",\"23\",\"24\",\"20\",\"26\",\"18\",\"34\",\"33\"]', '2018-10-12 17:03:59', '2020-06-22 09:52:19'),
(20, 'Karyawan', 'karyawan', 'ENABLE', NULL, '2020-09-04 21:44:18', NULL),
(21, 'Peserta', 'peserta', 'ENABLE', NULL, '2019-11-27 00:00:00', '2019-02-19 11:02:53');

--
-- Triggers `role`
--
DELIMITER $$
CREATE TRIGGER `before_delete_role` BEFORE DELETE ON `role` FOR EACH ROW BEGIN
                        
                        SET @record_content = (SELECT JSON_OBJECT('id', OLD.id,'role', OLD.role,'status', OLD.status,'menu', OLD.menu,'created_at', OLD.created_at,'updated_at', OLD.updated_at) FROM role WHERE id= OLD.id);
                        INSERT INTO archive_log(`operation`, `from_table`, `content`)
                        VALUES('DELETE','role', @record_content);
                    END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_role` BEFORE UPDATE ON `role` FOR EACH ROW BEGIN
                        
                        SET @record_content = (SELECT JSON_OBJECT('id', OLD.id,'role', OLD.role,'status', OLD.status,'menu', OLD.menu,'created_at', OLD.created_at,'updated_at', OLD.updated_at) FROM role WHERE id= OLD.id);
                        INSERT INTO archive_log(`operation`, `from_table`, `content`)
                        VALUES('UPDATE','role', @record_content);
                    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nip` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `no_telp` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_id` int(255) DEFAULT NULL,
  `role_slug` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nip`, `name`, `email`, `alamat`, `no_telp`, `password`, `role_id`, `role_slug`, `role_name`, `desc`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'rezahusein24@gmail.com', NULL, NULL, '21232f297a57a5a743894a0e4a801fc3', 17, 'admin', 'Admin', 'dddf', '0', '2018-02-23 16:09:49', '2020-01-22 11:19:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `file_temporary`
--
ALTER TABLE `file_temporary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  ADD PRIMARY KEY (`log_id`) USING BTREE;

--
-- Indexes for table `master_jawaban_pg`
--
ALTER TABLE `master_jawaban_pg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_periode`
--
ALTER TABLE `master_periode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_soal`
--
ALTER TABLE `master_soal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peserta_jawaban`
--
ALTER TABLE `peserta_jawaban`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peserta_periode`
--
ALTER TABLE `peserta_periode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `file_temporary`
--
ALTER TABLE `file_temporary`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `master_jawaban_pg`
--
ALTER TABLE `master_jawaban_pg`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `master_periode`
--
ALTER TABLE `master_periode`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_soal`
--
ALTER TABLE `master_soal`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `peserta_jawaban`
--
ALTER TABLE `peserta_jawaban`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `peserta_periode`
--
ALTER TABLE `peserta_periode`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
