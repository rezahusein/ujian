-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2020 at 07:44 PM
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
-- Database: `ujian_baru`
--

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
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(12) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for table `master_jawaban_pg`
--
ALTER TABLE `master_jawaban_pg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_soal` (`id_soal`);

--
-- Indexes for table `master_periode`
--
ALTER TABLE `master_periode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_soal`
--
ALTER TABLE `master_soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_jawaban` (`id_jawaban`),
  ADD KEY `id_periode` (`id_periode`);

--
-- Indexes for table `peserta_jawaban`
--
ALTER TABLE `peserta_jawaban`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_soal` (`id_soal`),
  ADD KEY `id_jawaban_pg` (`id_jawaban_pg`),
  ADD KEY `id_peserta_periode` (`id_peserta_periode`),
  ADD KEY `id_periode` (`id_periode`);

--
-- Indexes for table `peserta_periode`
--
ALTER TABLE `peserta_periode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_peserta` (`id_peserta`),
  ADD KEY `id_periode` (`id_periode`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master_jawaban_pg`
--
ALTER TABLE `master_jawaban_pg`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_periode`
--
ALTER TABLE `master_periode`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_soal`
--
ALTER TABLE `master_soal`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `master_jawaban_pg`
--
ALTER TABLE `master_jawaban_pg`
  ADD CONSTRAINT `fk_master_jawaban_pg` FOREIGN KEY (`id_soal`) REFERENCES `master_soal` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `master_soal`
--
ALTER TABLE `master_soal`
  ADD CONSTRAINT `fk_master_soal_jawaban` FOREIGN KEY (`id_jawaban`) REFERENCES `master_jawaban_pg` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_master_soal_periode` FOREIGN KEY (`id_periode`) REFERENCES `master_periode` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `peserta_jawaban`
--
ALTER TABLE `peserta_jawaban`
  ADD CONSTRAINT `fk_peserta_jawaban_master_jawaban_pg` FOREIGN KEY (`id_jawaban_pg`) REFERENCES `master_jawaban_pg` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_peserta_jawaban_master_periode` FOREIGN KEY (`id_periode`) REFERENCES `master_periode` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_peserta_jawaban_peserta_periode` FOREIGN KEY (`id_peserta_periode`) REFERENCES `peserta_periode` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_peserta_jawaban_soal` FOREIGN KEY (`id_soal`) REFERENCES `master_soal` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `peserta_periode`
--
ALTER TABLE `peserta_periode`
  ADD CONSTRAINT `fk_peserta_periode_master_periode` FOREIGN KEY (`id_periode`) REFERENCES `master_periode` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_peserta_periode_user` FOREIGN KEY (`id_peserta`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
