-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2020 at 08:11 PM
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
(1, 'webfile/b6c54637d6035e7d59d29e8691c0e2fd88538.png', '2020-10-23 00:28:37', 1, 1, 'Admin');

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
(21, '2020-10-23 00:28:53', 1, 'updateData', 'master_soal', '{\"id\":\"1\",\"image\":\"webfile\\/b6c54637d6035e7d59d29e8691c0e2fd88538.png\",\"deskripsi\":\"<p>ascascasva<\\/p>\",\"jenis_soal\":\"pg\",\"id_jawaban\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-10-23 00:28:52\",\"updated_at\":null,\"id_periode\":\"1\",\"urutan_soal\":\"1\"}');

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
(4, 1, 'D', '', 'asc', 'ENABLE', '2020-10-23 00:28:53', NULL, 'deskripsi');

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
(1, '2020-11-18', '2020-11-19', '90', '70', '30', '80', '2020-10-20 23:59:22', '2020-10-22 14:27:17', 79, 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `master_soal`
--

CREATE TABLE `master_soal` (
  `id` int(12) NOT NULL,
  `image` varchar(300) DEFAULT NULL,
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

INSERT INTO `master_soal` (`id`, `image`, `deskripsi`, `jenis_soal`, `id_jawaban`, `status`, `created_at`, `updated_at`, `id_periode`, `urutan_soal`) VALUES
(1, 'webfile/b6c54637d6035e7d59d29e8691c0e2fd88538.png', '<p>ascascasva</p>', 'pg', 1, 'ENABLE', '2020-10-23 00:28:52', NULL, 1, 1);

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
  `status_ujian` varchar(100) NOT NULL DEFAULT 'belum ujian' COMMENT '1.belum ujian\r\n2.sedang ujian\r\n3.menunggu hasil\r\n4.selesai ujian',
  `waktu_mulai_ujian` varchar(100) DEFAULT NULL,
  `total_nilai` varchar(100) DEFAULT NULL,
  `nilai_pg` varchar(100) DEFAULT NULL,
  `nilai_essay` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `master_jawaban_pg`
--
ALTER TABLE `master_jawaban_pg`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `master_periode`
--
ALTER TABLE `master_periode`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_soal`
--
ALTER TABLE `master_soal`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `peserta_jawaban`
--
ALTER TABLE `peserta_jawaban`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peserta_periode`
--
ALTER TABLE `peserta_periode`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

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
