-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2020 at 07:45 PM
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
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `id` int(11) NOT NULL,
  `access_control_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `access`
--

INSERT INTO `access` (`id`, `access_control_id`, `role_id`, `status`) VALUES
(13, 106, 17, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `access_block`
--

CREATE TABLE `access_block` (
  `ab_id` int(11) NOT NULL,
  `ab_role_id` int(11) DEFAULT NULL,
  `ab_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `access_block`
--

INSERT INTO `access_block` (`ab_id`, `ab_role_id`, `ab_link`) VALUES
(117, 18, 'master/m_assets_kendaraan/index'),
(118, 19, 'master/m_assets_kendaraan/index');

-- --------------------------------------------------------

--
-- Table structure for table `access_control`
--

CREATE TABLE `access_control` (
  `id` int(11) NOT NULL,
  `folder` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `val` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `access_control`
--

INSERT INTO `access_control` (`id`, `folder`, `class`, `method`, `val`) VALUES
(1, '', 'Access', '__construct', 'access/__construct'),
(2, '', 'Access', 'index', 'access/index'),
(3, '', 'Access', 'json', 'access/json'),
(4, '', 'Access', 'control', 'access/control'),
(5, '', 'Access', 'store', 'access/store'),
(6, '', 'Access', 'konfig', 'access/konfig'),
(7, '', 'Access', 'upload_file', 'access/upload_file'),
(8, '', 'Access', 'upload_file_dir', 'access/upload_file_dir'),
(9, '', 'Access', 'get_uri', 'access/get_uri'),
(10, '', 'Access', 'log_activity', 'access/log_activity'),
(11, '', 'Access', 'sendmails', 'access/sendmails'),
(12, '', 'Access', 'get_instance', 'access/get_instance'),
(13, '', 'Backupdb', '__construct', 'backupdb/__construct'),
(14, '', 'Backupdb', 'index', 'backupdb/index'),
(15, '', 'Backupdb', 'getbackupdb', 'backupdb/getbackupdb'),
(16, '', 'Backupdb', 'json', 'backupdb/json'),
(17, '', 'Backupdb', 'downloaddb', 'backupdb/downloaddb'),
(18, '', 'Backupdb', 'konfig', 'backupdb/konfig'),
(19, '', 'Backupdb', 'upload_file', 'backupdb/upload_file'),
(20, '', 'Backupdb', 'upload_file_dir', 'backupdb/upload_file_dir'),
(21, '', 'Backupdb', 'get_uri', 'backupdb/get_uri'),
(22, '', 'Backupdb', 'log_activity', 'backupdb/log_activity'),
(23, '', 'Backupdb', 'sendmails', 'backupdb/sendmails'),
(24, '', 'Backupdb', 'get_instance', 'backupdb/get_instance'),
(25, '', 'Crud', '__construct', 'crud/__construct'),
(26, '', 'Crud', 'index', 'crud/index'),
(27, '', 'Crud', 'viewcode', 'crud/viewcode'),
(28, '', 'Crud', 'generate', 'crud/generate'),
(29, '', 'Crud', 'get_kolom', 'crud/get_kolom'),
(30, '', 'Crud', 'save_generate', 'crud/save_generate'),
(31, '', 'Crud', 'api', 'crud/api'),
(32, '', 'Crud', 'api_generate', 'crud/api_generate'),
(33, '', 'Crud', 'services', 'crud/services'),
(34, '', 'Crud', 'konfig', 'crud/konfig'),
(35, '', 'Crud', 'upload_file', 'crud/upload_file'),
(36, '', 'Crud', 'upload_file_dir', 'crud/upload_file_dir'),
(37, '', 'Crud', 'get_uri', 'crud/get_uri'),
(38, '', 'Crud', 'log_activity', 'crud/log_activity'),
(39, '', 'Crud', 'sendmails', 'crud/sendmails'),
(40, '', 'Crud', 'get_instance', 'crud/get_instance'),
(41, '', 'Crud_ajax', '__construct', 'crud_ajax/__construct'),
(42, '', 'Crud_ajax', 'index', 'crud_ajax/index'),
(43, '', 'Crud_ajax', 'ajaxGetTableCustomer', 'crud_ajax/ajaxgettablecustomer'),
(44, '', 'Crud_ajax', 'validate', 'crud_ajax/validate'),
(45, '', 'Crud_ajax', 'tambah', 'crud_ajax/tambah'),
(46, '', 'Crud_ajax', 'hapus', 'crud_ajax/hapus'),
(47, '', 'Crud_ajax', 'ajaxGetModalCustomer', 'crud_ajax/ajaxgetmodalcustomer'),
(48, '', 'Crud_ajax', 'edit', 'crud_ajax/edit'),
(49, '', 'Crud_ajax', 'konfig', 'crud_ajax/konfig'),
(50, '', 'Crud_ajax', 'upload_file', 'crud_ajax/upload_file'),
(51, '', 'Crud_ajax', 'upload_file_dir', 'crud_ajax/upload_file_dir'),
(52, '', 'Crud_ajax', 'get_uri', 'crud_ajax/get_uri'),
(53, '', 'Crud_ajax', 'log_activity', 'crud_ajax/log_activity'),
(54, '', 'Crud_ajax', 'sendmails', 'crud_ajax/sendmails'),
(55, '', 'Crud_ajax', 'get_instance', 'crud_ajax/get_instance'),
(56, '', 'Debug', '__construct', 'debug/__construct'),
(57, '', 'Debug', 'index', 'debug/index'),
(58, '', 'Debug', 'exportexcell', 'debug/exportexcell'),
(59, '', 'Debug', 'ecryprdecrypt', 'debug/ecryprdecrypt'),
(60, '', 'Debug', 'validation_form', 'debug/validation_form'),
(61, '', 'Debug', 'konfig', 'debug/konfig'),
(62, '', 'Debug', 'upload_file', 'debug/upload_file'),
(63, '', 'Debug', 'upload_file_dir', 'debug/upload_file_dir'),
(64, '', 'Debug', 'get_uri', 'debug/get_uri'),
(65, '', 'Debug', 'log_activity', 'debug/log_activity'),
(66, '', 'Debug', 'sendmails', 'debug/sendmails'),
(67, '', 'Debug', 'get_instance', 'debug/get_instance'),
(68, '', 'Dropdown', '__construct', 'dropdown/__construct'),
(69, '', 'Dropdown', 'index', 'dropdown/index'),
(70, '', 'Dropdown', 'generate', 'dropdown/generate'),
(71, '', 'Dropdown', 'konfig', 'dropdown/konfig'),
(72, '', 'Dropdown', 'upload_file', 'dropdown/upload_file'),
(73, '', 'Dropdown', 'upload_file_dir', 'dropdown/upload_file_dir'),
(74, '', 'Dropdown', 'get_uri', 'dropdown/get_uri'),
(75, '', 'Dropdown', 'log_activity', 'dropdown/log_activity'),
(76, '', 'Dropdown', 'sendmails', 'dropdown/sendmails'),
(77, '', 'Dropdown', 'get_instance', 'dropdown/get_instance'),
(78, '', 'Fitur', '__construct', 'fitur/__construct'),
(79, '', 'Fitur', 'ekspor', 'fitur/ekspor'),
(80, '', 'Fitur', 'impor', 'fitur/impor'),
(81, '', 'Fitur', 'importdata', 'fitur/importdata'),
(82, '', 'Fitur', 'access', 'fitur/access'),
(83, '', 'Fitur', 'exportreport', 'fitur/exportreport'),
(84, '', 'Fitur', 'toPdf', 'fitur/topdf'),
(85, '', 'Fitur', 'mpdf', 'fitur/mpdf'),
(86, '', 'Fitur', 'konfig', 'fitur/konfig'),
(87, '', 'Fitur', 'upload_file', 'fitur/upload_file'),
(88, '', 'Fitur', 'upload_file_dir', 'fitur/upload_file_dir'),
(89, '', 'Fitur', 'get_uri', 'fitur/get_uri'),
(90, '', 'Fitur', 'log_activity', 'fitur/log_activity'),
(91, '', 'Fitur', 'sendmails', 'fitur/sendmails'),
(92, '', 'Fitur', 'get_instance', 'fitur/get_instance'),
(93, '', 'Form_input', '__construct', 'form_input/__construct'),
(94, '', 'Form_input', 'index', 'form_input/index'),
(95, '', 'Form_input', 'ajaxGetAutocompleteCustomer', 'form_input/ajaxgetautocompletecustomer'),
(96, '', 'Form_input', 'ajaxGetSelectCustomer', 'form_input/ajaxgetselectcustomer'),
(97, '', 'Form_input', 'ajaxTambahCustomer', 'form_input/ajaxtambahcustomer'),
(98, '', 'Form_input', 'konfig', 'form_input/konfig'),
(99, '', 'Form_input', 'upload_file', 'form_input/upload_file'),
(100, '', 'Form_input', 'upload_file_dir', 'form_input/upload_file_dir'),
(101, '', 'Form_input', 'get_uri', 'form_input/get_uri'),
(102, '', 'Form_input', 'log_activity', 'form_input/log_activity'),
(103, '', 'Form_input', 'sendmails', 'form_input/sendmails'),
(104, '', 'Form_input', 'get_instance', 'form_input/get_instance'),
(105, '', 'Home', '__construct', 'home/__construct'),
(106, '', 'Home', 'index', 'home/index'),
(107, '', 'Home', 'chart', 'home/chart'),
(108, '', 'Home', 'get_autocomplete', 'home/get_autocomplete'),
(109, '', 'Home', 'tes', 'home/tes'),
(110, '', 'Home', 'konfig', 'home/konfig'),
(111, '', 'Home', 'upload_file', 'home/upload_file'),
(112, '', 'Home', 'upload_file_dir', 'home/upload_file_dir'),
(113, '', 'Home', 'get_uri', 'home/get_uri'),
(114, '', 'Home', 'log_activity', 'home/log_activity'),
(115, '', 'Home', 'sendmails', 'home/sendmails'),
(116, '', 'Home', 'get_instance', 'home/get_instance'),
(117, '', 'ImportImageExcel', '__construct', 'importimageexcel/__construct'),
(118, '', 'ImportImageExcel', 'index', 'importimageexcel/index'),
(119, '', 'ImportImageExcel', 'importFile', 'importimageexcel/importfile'),
(120, '', 'ImportImageExcel', 'importdata', 'importimageexcel/importdata'),
(121, '', 'ImportImageExcel', 'viewcode', 'importimageexcel/viewcode'),
(122, '', 'ImportImageExcel', 'generate', 'importimageexcel/generate'),
(123, '', 'ImportImageExcel', 'get_kolom', 'importimageexcel/get_kolom'),
(124, '', 'ImportImageExcel', 'save_generate', 'importimageexcel/save_generate'),
(125, '', 'ImportImageExcel', 'api', 'importimageexcel/api'),
(126, '', 'ImportImageExcel', 'api_generate', 'importimageexcel/api_generate'),
(127, '', 'ImportImageExcel', 'services', 'importimageexcel/services'),
(128, '', 'ImportImageExcel', 'konfig', 'importimageexcel/konfig'),
(129, '', 'ImportImageExcel', 'upload_file', 'importimageexcel/upload_file'),
(130, '', 'ImportImageExcel', 'upload_file_dir', 'importimageexcel/upload_file_dir'),
(131, '', 'ImportImageExcel', 'get_uri', 'importimageexcel/get_uri'),
(132, '', 'ImportImageExcel', 'log_activity', 'importimageexcel/log_activity'),
(133, '', 'ImportImageExcel', 'sendmails', 'importimageexcel/sendmails'),
(134, '', 'ImportImageExcel', 'get_instance', 'importimageexcel/get_instance'),
(135, '', 'Log_aktivitas', '__construct', 'log_aktivitas/__construct'),
(136, '', 'Log_aktivitas', 'index', 'log_aktivitas/index'),
(137, '', 'Log_aktivitas', 'json', 'log_aktivitas/json'),
(138, '', 'Log_aktivitas', 'konfig', 'log_aktivitas/konfig'),
(139, '', 'Log_aktivitas', 'upload_file', 'log_aktivitas/upload_file'),
(140, '', 'Log_aktivitas', 'upload_file_dir', 'log_aktivitas/upload_file_dir'),
(141, '', 'Log_aktivitas', 'get_uri', 'log_aktivitas/get_uri'),
(142, '', 'Log_aktivitas', 'log_activity', 'log_aktivitas/log_activity'),
(143, '', 'Log_aktivitas', 'sendmails', 'log_aktivitas/sendmails'),
(144, '', 'Log_aktivitas', 'get_instance', 'log_aktivitas/get_instance'),
(145, '', 'Login', '__construct', 'login/__construct'),
(146, '', 'Login', 'index', 'login/index'),
(147, '', 'Login', 'logout', 'login/logout'),
(148, '', 'Login', 'act_login', 'login/act_login'),
(149, '', 'Login', 'lockscreen', 'login/lockscreen'),
(150, '', 'Login', 'konfig', 'login/konfig'),
(151, '', 'Login', 'upload_file', 'login/upload_file'),
(152, '', 'Login', 'upload_file_dir', 'login/upload_file_dir'),
(153, '', 'Login', 'get_uri', 'login/get_uri'),
(154, '', 'Login', 'log_activity', 'login/log_activity'),
(155, '', 'Login', 'sendmails', 'login/sendmails'),
(156, '', 'Login', 'get_instance', 'login/get_instance'),
(157, '', 'Page', '__construct', 'page/__construct'),
(158, '', 'Page', 'portrait', 'page/portrait'),
(159, '', 'Page', 'landscape', 'page/landscape'),
(160, '', 'Page', 'konfig', 'page/konfig'),
(161, '', 'Page', 'upload_file', 'page/upload_file'),
(162, '', 'Page', 'upload_file_dir', 'page/upload_file_dir'),
(163, '', 'Page', 'get_uri', 'page/get_uri'),
(164, '', 'Page', 'log_activity', 'page/log_activity'),
(165, '', 'Page', 'sendmails', 'page/sendmails'),
(166, '', 'Page', 'get_instance', 'page/get_instance'),
(167, '', 'Rest_server', 'index', 'rest_server/index'),
(168, '', 'Rest_server', '__construct', 'rest_server/__construct'),
(169, '', 'Rest_server', 'get_instance', 'rest_server/get_instance'),
(170, '', 'Sendemail', '__construct', 'sendemail/__construct'),
(171, '', 'Sendemail', 'index', 'sendemail/index'),
(172, '', 'Sendemail', 'send', 'sendemail/send'),
(173, '', 'Sendemail', 'update', 'sendemail/update'),
(174, '', 'Sendemail', 'template', 'sendemail/template'),
(175, '', 'Sendemail', 'konfig', 'sendemail/konfig'),
(176, '', 'Sendemail', 'upload_file', 'sendemail/upload_file'),
(177, '', 'Sendemail', 'upload_file_dir', 'sendemail/upload_file_dir'),
(178, '', 'Sendemail', 'get_uri', 'sendemail/get_uri'),
(179, '', 'Sendemail', 'log_activity', 'sendemail/log_activity'),
(180, '', 'Sendemail', 'sendmails', 'sendemail/sendmails'),
(181, '', 'Sendemail', 'get_instance', 'sendemail/get_instance'),
(182, '', 'Tablednd', '__construct', 'tablednd/__construct'),
(183, '', 'Tablednd', 'index', 'tablednd/index'),
(184, '', 'Tablednd', 'simpan', 'tablednd/simpan'),
(185, '', 'Tablednd', 'konfig', 'tablednd/konfig'),
(186, '', 'Tablednd', 'upload_file', 'tablednd/upload_file'),
(187, '', 'Tablednd', 'upload_file_dir', 'tablednd/upload_file_dir'),
(188, '', 'Tablednd', 'get_uri', 'tablednd/get_uri'),
(189, '', 'Tablednd', 'log_activity', 'tablednd/log_activity'),
(190, '', 'Tablednd', 'sendmails', 'tablednd/sendmails'),
(191, '', 'Tablednd', 'get_instance', 'tablednd/get_instance'),
(192, '', 'Tes', '__construct', 'tes/__construct'),
(193, '', 'Tes', 'index', 'tes/index'),
(194, '', 'Tes', 'tesMpdf', 'tes/tesmpdf'),
(195, '', 'Tes', 'tesHpdf', 'tes/teshpdf'),
(196, '', 'Tes', 'tesFpdf', 'tes/tesfpdf'),
(197, '', 'Tes', 'konfig', 'tes/konfig'),
(198, '', 'Tes', 'upload_file', 'tes/upload_file'),
(199, '', 'Tes', 'upload_file_dir', 'tes/upload_file_dir'),
(200, '', 'Tes', 'get_uri', 'tes/get_uri'),
(201, '', 'Tes', 'log_activity', 'tes/log_activity'),
(202, '', 'Tes', 'sendmails', 'tes/sendmails'),
(203, '', 'Tes', 'get_instance', 'tes/get_instance'),
(204, '', 'Tinymce', '__construct', 'tinymce/__construct'),
(205, '', 'Tinymce', 'index', 'tinymce/index'),
(206, '', 'Tinymce', 'konfig', 'tinymce/konfig'),
(207, '', 'Tinymce', 'upload_file', 'tinymce/upload_file'),
(208, '', 'Tinymce', 'upload_file_dir', 'tinymce/upload_file_dir'),
(209, '', 'Tinymce', 'get_uri', 'tinymce/get_uri'),
(210, '', 'Tinymce', 'log_activity', 'tinymce/log_activity'),
(211, '', 'Tinymce', 'sendmails', 'tinymce/sendmails'),
(212, '', 'Tinymce', 'get_instance', 'tinymce/get_instance'),
(213, '', 'UploadImage', '__construct', 'uploadimage/__construct'),
(214, '', 'UploadImage', 'index', 'uploadimage/index'),
(215, '', 'UploadImage', 'uploadAjax', 'uploadimage/uploadajax'),
(216, '', 'UploadImage', 'ajaxImageUnlink', 'uploadimage/ajaximageunlink'),
(217, '', 'UploadImage', 'konfig', 'uploadimage/konfig'),
(218, '', 'UploadImage', 'upload_file', 'uploadimage/upload_file'),
(219, '', 'UploadImage', 'upload_file_dir', 'uploadimage/upload_file_dir'),
(220, '', 'UploadImage', 'get_uri', 'uploadimage/get_uri'),
(221, '', 'UploadImage', 'log_activity', 'uploadimage/log_activity'),
(222, '', 'UploadImage', 'sendmails', 'uploadimage/sendmails'),
(223, '', 'UploadImage', 'get_instance', 'uploadimage/get_instance'),
(224, '', 'Uploader', '__construct', 'uploader/__construct'),
(225, '', 'Uploader', 'index', 'uploader/index'),
(226, '', 'Uploader', 'prosesuploadAjax', 'uploader/prosesuploadajax'),
(227, '', 'Uploader', 'konfig', 'uploader/konfig'),
(228, '', 'Uploader', 'upload_file', 'uploader/upload_file'),
(229, '', 'Uploader', 'upload_file_dir', 'uploader/upload_file_dir'),
(230, '', 'Uploader', 'get_uri', 'uploader/get_uri'),
(231, '', 'Uploader', 'log_activity', 'uploader/log_activity'),
(232, '', 'Uploader', 'sendmails', 'uploader/sendmails'),
(233, '', 'Uploader', 'get_instance', 'uploader/get_instance'),
(234, 'master', 'Contohmaster', '__construct', 'master/contohmaster/__construct'),
(235, 'master', 'Contohmaster', 'index', 'master/contohmaster/index'),
(236, 'master', 'Contohmaster', 'create', 'master/contohmaster/create'),
(237, 'master', 'Contohmaster', 'validate', 'master/contohmaster/validate'),
(238, 'master', 'Contohmaster', 'store', 'master/contohmaster/store'),
(239, 'master', 'Contohmaster', 'json', 'master/contohmaster/json'),
(240, 'master', 'Contohmaster', 'edit', 'master/contohmaster/edit'),
(241, 'master', 'Contohmaster', 'update', 'master/contohmaster/update'),
(242, 'master', 'Contohmaster', 'delete', 'master/contohmaster/delete'),
(243, 'master', 'Contohmaster', 'status', 'master/contohmaster/status'),
(244, 'master', 'Contohmaster', 'konfig', 'master/contohmaster/konfig'),
(245, 'master', 'Contohmaster', 'upload_file', 'master/contohmaster/upload_file'),
(246, 'master', 'Contohmaster', 'upload_file_dir', 'master/contohmaster/upload_file_dir'),
(247, 'master', 'Contohmaster', 'get_uri', 'master/contohmaster/get_uri'),
(248, 'master', 'Contohmaster', 'log_activity', 'master/contohmaster/log_activity'),
(249, 'master', 'Contohmaster', 'sendmails', 'master/contohmaster/sendmails'),
(250, 'master', 'Contohmaster', 'get_instance', 'master/contohmaster/get_instance'),
(251, 'master', 'Customer', '__construct', 'master/customer/__construct'),
(252, 'master', 'Customer', 'index', 'master/customer/index'),
(253, 'master', 'Customer', 'create', 'master/customer/create'),
(254, 'master', 'Customer', 'validate', 'master/customer/validate'),
(255, 'master', 'Customer', 'store', 'master/customer/store'),
(256, 'master', 'Customer', 'json', 'master/customer/json'),
(257, 'master', 'Customer', 'edit', 'master/customer/edit'),
(258, 'master', 'Customer', 'update', 'master/customer/update'),
(259, 'master', 'Customer', 'delete', 'master/customer/delete'),
(260, 'master', 'Customer', 'status', 'master/customer/status'),
(261, 'master', 'Customer', 'konfig', 'master/customer/konfig'),
(262, 'master', 'Customer', 'upload_file', 'master/customer/upload_file'),
(263, 'master', 'Customer', 'upload_file_dir', 'master/customer/upload_file_dir'),
(264, 'master', 'Customer', 'get_uri', 'master/customer/get_uri'),
(265, 'master', 'Customer', 'log_activity', 'master/customer/log_activity'),
(266, 'master', 'Customer', 'sendmails', 'master/customer/sendmails'),
(267, 'master', 'Customer', 'get_instance', 'master/customer/get_instance'),
(268, 'master', 'Grafik', '__construct', 'master/grafik/__construct'),
(269, 'master', 'Grafik', 'index', 'master/grafik/index'),
(270, 'master', 'Grafik', 'create', 'master/grafik/create'),
(271, 'master', 'Grafik', 'validate', 'master/grafik/validate'),
(272, 'master', 'Grafik', 'store', 'master/grafik/store'),
(273, 'master', 'Grafik', 'json', 'master/grafik/json'),
(274, 'master', 'Grafik', 'edit', 'master/grafik/edit'),
(275, 'master', 'Grafik', 'update', 'master/grafik/update'),
(276, 'master', 'Grafik', 'delete', 'master/grafik/delete'),
(277, 'master', 'Grafik', 'status', 'master/grafik/status'),
(278, 'master', 'Grafik', 'konfig', 'master/grafik/konfig'),
(279, 'master', 'Grafik', 'upload_file', 'master/grafik/upload_file'),
(280, 'master', 'Grafik', 'upload_file_dir', 'master/grafik/upload_file_dir'),
(281, 'master', 'Grafik', 'get_uri', 'master/grafik/get_uri'),
(282, 'master', 'Grafik', 'log_activity', 'master/grafik/log_activity'),
(283, 'master', 'Grafik', 'sendmails', 'master/grafik/sendmails'),
(284, 'master', 'Grafik', 'get_instance', 'master/grafik/get_instance'),
(285, 'master', 'Image', '__construct', 'master/image/__construct'),
(286, 'master', 'Image', 'index', 'master/image/index'),
(287, 'master', 'Image', 'create', 'master/image/create'),
(288, 'master', 'Image', 'validate', 'master/image/validate'),
(289, 'master', 'Image', 'store', 'master/image/store'),
(290, 'master', 'Image', 'json', 'master/image/json'),
(291, 'master', 'Image', 'edit', 'master/image/edit'),
(292, 'master', 'Image', 'update', 'master/image/update'),
(293, 'master', 'Image', 'delete', 'master/image/delete'),
(294, 'master', 'Image', 'status', 'master/image/status'),
(295, 'master', 'Image', 'konfig', 'master/image/konfig'),
(296, 'master', 'Image', 'upload_file', 'master/image/upload_file'),
(297, 'master', 'Image', 'upload_file_dir', 'master/image/upload_file_dir'),
(298, 'master', 'Image', 'get_uri', 'master/image/get_uri'),
(299, 'master', 'Image', 'log_activity', 'master/image/log_activity'),
(300, 'master', 'Image', 'sendmails', 'master/image/sendmails'),
(301, 'master', 'Image', 'get_instance', 'master/image/get_instance'),
(302, 'master', 'Jadwal', '__construct', 'master/jadwal/__construct'),
(303, 'master', 'Jadwal', 'index', 'master/jadwal/index'),
(304, 'master', 'Jadwal', 'create', 'master/jadwal/create'),
(305, 'master', 'Jadwal', 'validate', 'master/jadwal/validate'),
(306, 'master', 'Jadwal', 'store', 'master/jadwal/store'),
(307, 'master', 'Jadwal', 'json', 'master/jadwal/json'),
(308, 'master', 'Jadwal', 'edit', 'master/jadwal/edit'),
(309, 'master', 'Jadwal', 'update', 'master/jadwal/update'),
(310, 'master', 'Jadwal', 'delete', 'master/jadwal/delete'),
(311, 'master', 'Jadwal', 'status', 'master/jadwal/status'),
(312, 'master', 'Jadwal', 'konfig', 'master/jadwal/konfig'),
(313, 'master', 'Jadwal', 'upload_file', 'master/jadwal/upload_file'),
(314, 'master', 'Jadwal', 'upload_file_dir', 'master/jadwal/upload_file_dir'),
(315, 'master', 'Jadwal', 'get_uri', 'master/jadwal/get_uri'),
(316, 'master', 'Jadwal', 'log_activity', 'master/jadwal/log_activity'),
(317, 'master', 'Jadwal', 'sendmails', 'master/jadwal/sendmails'),
(318, 'master', 'Jadwal', 'get_instance', 'master/jadwal/get_instance'),
(319, 'master', 'Keys', '__construct', 'master/keys/__construct'),
(320, 'master', 'Keys', 'index', 'master/keys/index'),
(321, 'master', 'Keys', 'create', 'master/keys/create'),
(322, 'master', 'Keys', 'validate', 'master/keys/validate'),
(323, 'master', 'Keys', 'store', 'master/keys/store'),
(324, 'master', 'Keys', 'json', 'master/keys/json'),
(325, 'master', 'Keys', 'edit', 'master/keys/edit'),
(326, 'master', 'Keys', 'update', 'master/keys/update'),
(327, 'master', 'Keys', 'delete', 'master/keys/delete'),
(328, 'master', 'Keys', 'status', 'master/keys/status'),
(329, 'master', 'Keys', 'konfig', 'master/keys/konfig'),
(330, 'master', 'Keys', 'upload_file', 'master/keys/upload_file'),
(331, 'master', 'Keys', 'upload_file_dir', 'master/keys/upload_file_dir'),
(332, 'master', 'Keys', 'get_uri', 'master/keys/get_uri'),
(333, 'master', 'Keys', 'log_activity', 'master/keys/log_activity'),
(334, 'master', 'Keys', 'sendmails', 'master/keys/sendmails'),
(335, 'master', 'Keys', 'get_instance', 'master/keys/get_instance'),
(336, 'master', 'Konfig', '__construct', 'master/konfig/__construct'),
(337, 'master', 'Konfig', 'index', 'master/konfig/index'),
(338, 'master', 'Konfig', 'create', 'master/konfig/create'),
(339, 'master', 'Konfig', 'validate', 'master/konfig/validate'),
(340, 'master', 'Konfig', 'store', 'master/konfig/store'),
(341, 'master', 'Konfig', 'json', 'master/konfig/json'),
(342, 'master', 'Konfig', 'edit', 'master/konfig/edit'),
(343, 'master', 'Konfig', 'update', 'master/konfig/update'),
(344, 'master', 'Konfig', 'delete', 'master/konfig/delete'),
(345, 'master', 'Konfig', 'status', 'master/konfig/status'),
(346, 'master', 'Konfig', 'konfig', 'master/konfig/konfig'),
(347, 'master', 'Konfig', 'upload_file', 'master/konfig/upload_file'),
(348, 'master', 'Konfig', 'upload_file_dir', 'master/konfig/upload_file_dir'),
(349, 'master', 'Konfig', 'get_uri', 'master/konfig/get_uri'),
(350, 'master', 'Konfig', 'log_activity', 'master/konfig/log_activity'),
(351, 'master', 'Konfig', 'sendmails', 'master/konfig/sendmails'),
(352, 'master', 'Konfig', 'get_instance', 'master/konfig/get_instance'),
(353, 'master', 'Menu_master', '__construct', 'master/menu_master/__construct'),
(354, 'master', 'Menu_master', 'index', 'master/menu_master/index'),
(355, 'master', 'Menu_master', 'create', 'master/menu_master/create'),
(356, 'master', 'Menu_master', 'validate', 'master/menu_master/validate'),
(357, 'master', 'Menu_master', 'store', 'master/menu_master/store'),
(358, 'master', 'Menu_master', 'json', 'master/menu_master/json'),
(359, 'master', 'Menu_master', 'edit', 'master/menu_master/edit'),
(360, 'master', 'Menu_master', 'update', 'master/menu_master/update'),
(361, 'master', 'Menu_master', 'delete', 'master/menu_master/delete'),
(362, 'master', 'Menu_master', 'status', 'master/menu_master/status'),
(363, 'master', 'Menu_master', 'konfig', 'master/menu_master/konfig'),
(364, 'master', 'Menu_master', 'upload_file', 'master/menu_master/upload_file'),
(365, 'master', 'Menu_master', 'upload_file_dir', 'master/menu_master/upload_file_dir'),
(366, 'master', 'Menu_master', 'get_uri', 'master/menu_master/get_uri'),
(367, 'master', 'Menu_master', 'log_activity', 'master/menu_master/log_activity'),
(368, 'master', 'Menu_master', 'sendmails', 'master/menu_master/sendmails'),
(369, 'master', 'Menu_master', 'get_instance', 'master/menu_master/get_instance'),
(370, 'master', 'Neraca_saldo', '__construct', 'master/neraca_saldo/__construct'),
(371, 'master', 'Neraca_saldo', 'index', 'master/neraca_saldo/index'),
(372, 'master', 'Neraca_saldo', 'create', 'master/neraca_saldo/create'),
(373, 'master', 'Neraca_saldo', 'validate', 'master/neraca_saldo/validate'),
(374, 'master', 'Neraca_saldo', 'store', 'master/neraca_saldo/store'),
(375, 'master', 'Neraca_saldo', 'json', 'master/neraca_saldo/json'),
(376, 'master', 'Neraca_saldo', 'edit', 'master/neraca_saldo/edit'),
(377, 'master', 'Neraca_saldo', 'update', 'master/neraca_saldo/update'),
(378, 'master', 'Neraca_saldo', 'delete', 'master/neraca_saldo/delete'),
(379, 'master', 'Neraca_saldo', 'status', 'master/neraca_saldo/status'),
(380, 'master', 'Neraca_saldo', 'konfig', 'master/neraca_saldo/konfig'),
(381, 'master', 'Neraca_saldo', 'upload_file', 'master/neraca_saldo/upload_file'),
(382, 'master', 'Neraca_saldo', 'upload_file_dir', 'master/neraca_saldo/upload_file_dir'),
(383, 'master', 'Neraca_saldo', 'get_uri', 'master/neraca_saldo/get_uri'),
(384, 'master', 'Neraca_saldo', 'log_activity', 'master/neraca_saldo/log_activity'),
(385, 'master', 'Neraca_saldo', 'sendmails', 'master/neraca_saldo/sendmails'),
(386, 'master', 'Neraca_saldo', 'get_instance', 'master/neraca_saldo/get_instance'),
(387, 'master', 'Penduduk', '__construct', 'master/penduduk/__construct'),
(388, 'master', 'Penduduk', 'index', 'master/penduduk/index'),
(389, 'master', 'Penduduk', 'create', 'master/penduduk/create'),
(390, 'master', 'Penduduk', 'validate', 'master/penduduk/validate'),
(391, 'master', 'Penduduk', 'store', 'master/penduduk/store'),
(392, 'master', 'Penduduk', 'json', 'master/penduduk/json'),
(393, 'master', 'Penduduk', 'edit', 'master/penduduk/edit'),
(394, 'master', 'Penduduk', 'update', 'master/penduduk/update'),
(395, 'master', 'Penduduk', 'delete', 'master/penduduk/delete'),
(396, 'master', 'Penduduk', 'status', 'master/penduduk/status'),
(397, 'master', 'Penduduk', 'konfig', 'master/penduduk/konfig'),
(398, 'master', 'Penduduk', 'upload_file', 'master/penduduk/upload_file'),
(399, 'master', 'Penduduk', 'upload_file_dir', 'master/penduduk/upload_file_dir'),
(400, 'master', 'Penduduk', 'get_uri', 'master/penduduk/get_uri'),
(401, 'master', 'Penduduk', 'log_activity', 'master/penduduk/log_activity'),
(402, 'master', 'Penduduk', 'sendmails', 'master/penduduk/sendmails'),
(403, 'master', 'Penduduk', 'get_instance', 'master/penduduk/get_instance'),
(404, 'master', 'Report', '__construct', 'master/report/__construct'),
(405, 'master', 'Report', 'index', 'master/report/index'),
(406, 'master', 'Report', 'create', 'master/report/create'),
(407, 'master', 'Report', 'validate', 'master/report/validate'),
(408, 'master', 'Report', 'store', 'master/report/store'),
(409, 'master', 'Report', 'json', 'master/report/json'),
(410, 'master', 'Report', 'edit', 'master/report/edit'),
(411, 'master', 'Report', 'update', 'master/report/update'),
(412, 'master', 'Report', 'delete', 'master/report/delete'),
(413, 'master', 'Report', 'status', 'master/report/status'),
(414, 'master', 'Report', 'generate', 'master/report/generate'),
(415, 'master', 'Report', 'konfig', 'master/report/konfig'),
(416, 'master', 'Report', 'upload_file', 'master/report/upload_file'),
(417, 'master', 'Report', 'upload_file_dir', 'master/report/upload_file_dir'),
(418, 'master', 'Report', 'get_uri', 'master/report/get_uri'),
(419, 'master', 'Report', 'log_activity', 'master/report/log_activity'),
(420, 'master', 'Report', 'sendmails', 'master/report/sendmails'),
(421, 'master', 'Report', 'get_instance', 'master/report/get_instance'),
(422, 'master', 'Role', '__construct', 'master/role/__construct'),
(423, 'master', 'Role', 'index', 'master/role/index'),
(424, 'master', 'Role', 'create', 'master/role/create'),
(425, 'master', 'Role', 'validate', 'master/role/validate'),
(426, 'master', 'Role', 'store', 'master/role/store'),
(427, 'master', 'Role', 'json', 'master/role/json'),
(428, 'master', 'Role', 'edit', 'master/role/edit'),
(429, 'master', 'Role', 'update', 'master/role/update'),
(430, 'master', 'Role', 'delete', 'master/role/delete'),
(431, 'master', 'Role', 'status', 'master/role/status'),
(432, 'master', 'Role', 'konfig', 'master/role/konfig'),
(433, 'master', 'Role', 'upload_file', 'master/role/upload_file'),
(434, 'master', 'Role', 'upload_file_dir', 'master/role/upload_file_dir'),
(435, 'master', 'Role', 'get_uri', 'master/role/get_uri'),
(436, 'master', 'Role', 'log_activity', 'master/role/log_activity'),
(437, 'master', 'Role', 'sendmails', 'master/role/sendmails'),
(438, 'master', 'Role', 'get_instance', 'master/role/get_instance'),
(439, 'master', 'Site', '__construct', 'master/site/__construct'),
(440, 'master', 'Site', 'index', 'master/site/index'),
(441, 'master', 'Site', 'site_json', 'master/site/site_json'),
(442, 'master', 'Site', 'site_default', 'master/site/site_default'),
(443, 'master', 'Site', 'site_custom', 'master/site/site_custom'),
(444, 'master', 'Site', 'site_data', 'master/site/site_data'),
(445, 'master', 'Site', 'site_store', 'master/site/site_store'),
(446, 'master', 'Site', 'site_edit', 'master/site/site_edit'),
(447, 'master', 'Site', 'site_update', 'master/site/site_update'),
(448, 'master', 'Site', 'site_hidden', 'master/site/site_hidden'),
(449, 'master', 'Site', 'konfig', 'master/site/konfig'),
(450, 'master', 'Site', 'upload_file', 'master/site/upload_file'),
(451, 'master', 'Site', 'upload_file_dir', 'master/site/upload_file_dir'),
(452, 'master', 'Site', 'get_uri', 'master/site/get_uri'),
(453, 'master', 'Site', 'log_activity', 'master/site/log_activity'),
(454, 'master', 'Site', 'sendmails', 'master/site/sendmails'),
(455, 'master', 'Site', 'get_instance', 'master/site/get_instance'),
(456, 'master', 'Tiket', '__construct', 'master/tiket/__construct'),
(457, 'master', 'Tiket', 'index', 'master/tiket/index'),
(458, 'master', 'Tiket', 'create', 'master/tiket/create'),
(459, 'master', 'Tiket', 'validate', 'master/tiket/validate'),
(460, 'master', 'Tiket', 'store', 'master/tiket/store'),
(461, 'master', 'Tiket', 'json', 'master/tiket/json'),
(462, 'master', 'Tiket', 'edit', 'master/tiket/edit'),
(463, 'master', 'Tiket', 'update', 'master/tiket/update'),
(464, 'master', 'Tiket', 'delete', 'master/tiket/delete'),
(465, 'master', 'Tiket', 'status', 'master/tiket/status'),
(466, 'master', 'Tiket', 'konfig', 'master/tiket/konfig'),
(467, 'master', 'Tiket', 'upload_file', 'master/tiket/upload_file'),
(468, 'master', 'Tiket', 'upload_file_dir', 'master/tiket/upload_file_dir'),
(469, 'master', 'Tiket', 'get_uri', 'master/tiket/get_uri'),
(470, 'master', 'Tiket', 'log_activity', 'master/tiket/log_activity'),
(471, 'master', 'Tiket', 'sendmails', 'master/tiket/sendmails'),
(472, 'master', 'Tiket', 'get_instance', 'master/tiket/get_instance'),
(473, 'master', 'User', 'index', 'master/user/index'),
(474, 'master', 'User', 'json', 'master/user/json'),
(475, 'master', 'User', 'json_activity', 'master/user/json_activity'),
(476, 'master', 'User', 'store', 'master/user/store'),
(477, 'master', 'User', 'edit', 'master/user/edit'),
(478, 'master', 'User', 'editUser', 'master/user/edituser'),
(479, 'master', 'User', 'updateUser', 'master/user/updateuser'),
(480, 'master', 'User', 'update', 'master/user/update'),
(481, 'master', 'User', 'delete', 'master/user/delete'),
(482, 'master', 'User', 'password_check', 'master/user/password_check'),
(483, 'master', 'User', 'editUser_redirect', 'master/user/edituser_redirect'),
(484, 'master', 'User', '__construct', 'master/user/__construct'),
(485, 'master', 'User', 'konfig', 'master/user/konfig'),
(486, 'master', 'User', 'upload_file', 'master/user/upload_file'),
(487, 'master', 'User', 'upload_file_dir', 'master/user/upload_file_dir'),
(488, 'master', 'User', 'get_uri', 'master/user/get_uri'),
(489, 'master', 'User', 'log_activity', 'master/user/log_activity'),
(490, 'master', 'User', 'sendmails', 'master/user/sendmails'),
(491, 'master', 'User', 'get_instance', 'master/user/get_instance');

--
-- Triggers `access_control`
--
DELIMITER $$
CREATE TRIGGER `after_insert_access_control` AFTER INSERT ON `access_control` FOR EACH ROW BEGIN
                        SET @record_content = (SELECT JSON_OBJECT('id', NEW.id,'folder', NEW.folder,'class', NEW.class,'method', NEW.method,'val', NEW.val) FROM access_control WHERE id= NEW.id);
                        INSERT INTO archive_log(`operation`, `from_table`, `content`)
                        VALUES('INSERT','access_control', @record_content);
                    END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_delete_access_control` BEFORE DELETE ON `access_control` FOR EACH ROW BEGIN
                        SET @record_content = (SELECT JSON_OBJECT('id', OLD.id,'folder', OLD.folder,'class', OLD.class,'method', OLD.method,'val', OLD.val) FROM access_control WHERE id= OLD.id);
                        INSERT INTO archive_log(`operation`, `from_table`, `content`)
                        VALUES('DELETE','access_control', @record_content);
                    END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_access_control` BEFORE UPDATE ON `access_control` FOR EACH ROW BEGIN
                        SET @record_content = (SELECT JSON_OBJECT('id', OLD.id,'folder', OLD.folder,'class', OLD.class,'method', OLD.method,'val', OLD.val) FROM access_control WHERE id= OLD.id);
                        INSERT INTO archive_log(`operation`, `from_table`, `content`)
                        VALUES('UPDATE','access_control', @record_content);
                    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `archive_log`
--

CREATE TABLE `archive_log` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `operation` enum('UPDATE','DELETE') NOT NULL,
  `from_table` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `archive_log`
--

INSERT INTO `archive_log` (`id`, `created_at`, `operation`, `from_table`, `content`) VALUES
(28, '2020-01-21 21:46:36', 'UPDATE', 'role', '{\"id\": 17, \"role\": \"Admin\", \"status\": \"ENABLE\", \"menu\": \"[\\\"1\\\",\\\"17\\\",\\\"18\\\"]\", \"created_at\": \"2018-10-12 17:03:59\", \"updated_at\": \"2019-12-02 07:54:37\"}'),
(29, '2020-01-21 22:07:55', 'UPDATE', 'role', '{\"id\": 17, \"role\": \"Admin\", \"status\": \"ENABLE\", \"menu\": \"[\\\"1\\\",\\\"18\\\",\\\"20\\\"]\", \"created_at\": \"2018-10-12 17:03:59\", \"updated_at\": \"2020-01-22 11:46:36\"}'),
(30, '2020-01-23 04:08:54', 'UPDATE', 'role', '{\"id\": 17, \"role\": \"Admin\", \"status\": \"ENABLE\", \"menu\": \"[\\\"1\\\",\\\"18\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\"]\", \"created_at\": \"2018-10-12 17:03:59\", \"updated_at\": \"2020-01-22 12:07:55\"}'),
(31, '2020-02-05 03:48:03', 'UPDATE', 'role', '{\"id\": 17, \"role\": \"Admin\", \"status\": \"ENABLE\", \"menu\": \"[\\\"1\\\",\\\"18\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"24\\\",\\\"20\\\"]\", \"created_at\": \"2018-10-12 17:03:59\", \"updated_at\": \"2020-01-23 18:08:54\"}'),
(32, '2020-02-05 19:14:56', 'UPDATE', 'role', '{\"id\": 17, \"role\": \"Admin\", \"status\": \"ENABLE\", \"menu\": \"[\\\"1\\\",\\\"18\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"24\\\",\\\"20\\\",\\\"16\\\"]\", \"created_at\": \"2018-10-12 17:03:59\", \"updated_at\": \"2020-02-05 17:48:03\"}'),
(33, '2020-04-20 19:45:53', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"1\\\",\\\"18\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"24\\\",\\\"20\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-02-06 09:14:56.000000\"}'),
(34, '2020-05-14 01:27:42', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"1\\\",\\\"18\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"24\\\",\\\"20\\\",\\\"25\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-04-21 09:45:53.000000\"}'),
(35, '2020-05-14 01:27:43', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"1\\\",\\\"13\\\",\\\"14\\\",\\\"15\\\",\\\"16\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(36, '2020-05-14 01:29:15', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"{\\\"0\\\":\\\"1\\\",\\\"2\\\":\\\"21\\\",\\\"3\\\":\\\"22\\\",\\\"4\\\":\\\"23\\\",\\\"5\\\":\\\"24\\\",\\\"6\\\":\\\"20\\\",\\\"7\\\":\\\"25\\\",\\\"8\\\":\\\"1\\\"}\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-04-21 09:45:53.000000\"}'),
(37, '2020-05-14 01:29:23', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"{\\\"0\\\":\\\"1\\\",\\\"2\\\":\\\"14\\\",\\\"3\\\":\\\"15\\\",\\\"4\\\":\\\"16\\\"}\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(38, '2020-05-14 01:43:17', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"1\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"24\\\",\\\"20\\\",\\\"25\\\",\\\"1\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-04-21 09:45:53.000000\"}'),
(39, '2020-05-14 01:52:21', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"1\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"24\\\",\\\"20\\\",\\\"25\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-04-21 09:45:53.000000\"}'),
(40, '2020-05-14 01:52:21', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"1\\\",\\\"21\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(41, '2020-05-14 01:55:54', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"24\\\",\\\"20\\\",\\\"25\\\",\\\"1\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-04-21 09:45:53.000000\"}'),
(42, '2020-05-14 01:55:54', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"21\\\",\\\"1\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(43, '2020-05-14 20:57:17', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"24\\\",\\\"20\\\",\\\"1\\\",\\\"25\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-04-21 09:45:53.000000\"}'),
(44, '2020-05-14 20:57:17', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"21\\\",\\\"1\\\",\\\"25\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(45, '2020-05-14 22:53:17', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"24\\\",\\\"20\\\",\\\"1\\\",\\\"25\\\",\\\"26\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-04-21 09:45:53.000000\"}'),
(46, '2020-05-14 22:53:17', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"21\\\",\\\"1\\\",\\\"25\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(47, '2020-05-17 19:30:51', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"22\\\",\\\"23\\\",\\\"24\\\",\\\"20\\\",\\\"1\\\",\\\"25\\\",\\\"26\\\",\\\"21\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-04-21 09:45:53.000000\"}'),
(48, '2020-05-17 19:30:51', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"1\\\",\\\"25\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(49, '2020-05-17 19:31:31', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"1\\\",\\\"25\\\",\\\"26\\\",\\\"21\\\",\\\"24\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-04-21 09:45:53.000000\"}'),
(50, '2020-05-17 19:31:31', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"1\\\",\\\"25\\\",\\\"24\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(51, '2020-05-17 19:36:25', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"1\\\",\\\"25\\\",\\\"26\\\",\\\"21\\\",\\\"24\\\",\\\"13\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-04-21 09:45:53.000000\"}'),
(52, '2020-05-17 19:36:25', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"1\\\",\\\"25\\\",\\\"24\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(53, '2020-05-17 21:22:53', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"1\\\",\\\"25\\\",\\\"26\\\",\\\"21\\\",\\\"24\\\",\\\"13\\\",\\\"27\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-04-21 09:45:53.000000\"}'),
(54, '2020-05-17 21:22:53', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"1\\\",\\\"25\\\",\\\"24\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(55, '2020-05-17 21:29:13', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"1\\\",\\\"25\\\",\\\"26\\\",\\\"21\\\",\\\"24\\\",\\\"13\\\",\\\"27\\\",\\\"29\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-04-21 09:45:53.000000\"}'),
(56, '2020-05-17 21:29:13', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"1\\\",\\\"25\\\",\\\"24\\\",\\\"29\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(57, '2020-05-17 21:30:04', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"1\\\",\\\"25\\\",\\\"26\\\",\\\"21\\\",\\\"24\\\",\\\"13\\\",\\\"27\\\",\\\"29\\\",\\\"28\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-04-21 09:45:53.000000\"}'),
(58, '2020-05-17 21:30:04', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"1\\\",\\\"25\\\",\\\"24\\\",\\\"29\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(59, '2020-05-17 22:06:30', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"1\\\",\\\"25\\\",\\\"26\\\",\\\"21\\\",\\\"24\\\",\\\"13\\\",\\\"27\\\",\\\"29\\\",\\\"28\\\",\\\"18\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-04-21 09:45:53.000000\"}'),
(60, '2020-05-17 22:06:32', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"1\\\",\\\"25\\\",\\\"24\\\",\\\"29\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(61, '2020-05-17 22:06:36', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"1\\\",\\\"25\\\",\\\"24\\\",\\\"29\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(62, '2020-05-27 19:37:25', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"1\\\",\\\"25\\\",\\\"26\\\",\\\"21\\\",\\\"24\\\",\\\"13\\\",\\\"27\\\",\\\"29\\\",\\\"28\\\",\\\"18\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-04-21 09:45:53.000000\"}'),
(63, '2020-05-27 19:37:25', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"1\\\",\\\"25\\\",\\\"24\\\",\\\"29\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(64, '2020-05-27 19:37:25', 'UPDATE', 'role', '{\"id\": 19, \"menu\": \"[\\\"1\\\",\\\"25\\\",\\\"24\\\",\\\"29\\\"]\", \"role\": \"Finance\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(65, '2020-05-27 19:37:51', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"1\\\",\\\"25\\\",\\\"26\\\",\\\"21\\\",\\\"24\\\",\\\"13\\\",\\\"27\\\",\\\"29\\\",\\\"28\\\",\\\"18\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-04-21 09:45:53.000000\"}'),
(66, '2020-05-27 19:37:51', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"1\\\",\\\"25\\\",\\\"24\\\",\\\"29\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(67, '2020-05-27 19:37:51', 'UPDATE', 'role', '{\"id\": 19, \"menu\": \"[\\\"1\\\",\\\"25\\\",\\\"24\\\",\\\"29\\\"]\", \"role\": \"Finance\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(68, '2020-05-27 19:38:09', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"1\\\",\\\"25\\\",\\\"26\\\",\\\"21\\\",\\\"24\\\",\\\"13\\\",\\\"27\\\",\\\"29\\\",\\\"28\\\",\\\"18\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-04-21 09:45:53.000000\"}'),
(69, '2020-05-27 19:38:09', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"1\\\",\\\"25\\\",\\\"24\\\",\\\"29\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(70, '2020-05-27 19:38:09', 'UPDATE', 'role', '{\"id\": 19, \"menu\": \"[\\\"1\\\",\\\"25\\\",\\\"24\\\",\\\"29\\\"]\", \"role\": \"Finance\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(71, '2020-05-27 19:38:32', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"1\\\",\\\"25\\\",\\\"26\\\",\\\"21\\\",\\\"24\\\",\\\"13\\\",\\\"27\\\",\\\"29\\\",\\\"28\\\",\\\"18\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-04-21 09:45:53.000000\"}'),
(72, '2020-05-27 19:38:32', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"1\\\",\\\"25\\\",\\\"24\\\",\\\"29\\\",\\\"18\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(73, '2020-05-27 19:38:32', 'UPDATE', 'role', '{\"id\": 19, \"menu\": \"[\\\"1\\\",\\\"25\\\",\\\"24\\\",\\\"29\\\"]\", \"role\": \"Finance\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(74, '2020-05-27 19:54:35', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"22\\\",\\\"23\\\",\\\"20\\\",\\\"1\\\",\\\"25\\\",\\\"26\\\",\\\"21\\\",\\\"24\\\",\\\"13\\\",\\\"27\\\",\\\"29\\\",\\\"28\\\",\\\"18\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-04-21 09:45:53.000000\"}'),
(75, '2020-05-27 19:54:35', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"1\\\",\\\"25\\\",\\\"24\\\",\\\"29\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(76, '2020-05-27 19:54:36', 'UPDATE', 'role', '{\"id\": 19, \"menu\": \"[\\\"1\\\",\\\"25\\\",\\\"24\\\",\\\"29\\\"]\", \"role\": \"Finance\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(77, '2020-05-27 19:55:05', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"22\\\",\\\"20\\\",\\\"1\\\",\\\"25\\\",\\\"26\\\",\\\"21\\\",\\\"24\\\",\\\"13\\\",\\\"27\\\",\\\"29\\\",\\\"28\\\",\\\"18\\\",\\\"23\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-04-21 09:45:53.000000\"}'),
(78, '2020-05-27 19:55:06', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"1\\\",\\\"25\\\",\\\"24\\\",\\\"29\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(79, '2020-05-27 19:55:06', 'UPDATE', 'role', '{\"id\": 19, \"menu\": \"[\\\"1\\\",\\\"25\\\",\\\"24\\\",\\\"29\\\"]\", \"role\": \"Finance\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(80, '2020-05-27 19:55:23', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"22\\\",\\\"20\\\",\\\"1\\\",\\\"25\\\",\\\"26\\\",\\\"21\\\",\\\"24\\\",\\\"13\\\",\\\"27\\\",\\\"29\\\",\\\"28\\\",\\\"18\\\",\\\"23\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-04-21 09:45:53.000000\"}'),
(81, '2020-05-27 19:55:23', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"1\\\",\\\"25\\\",\\\"24\\\",\\\"29\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(82, '2020-05-27 19:55:24', 'UPDATE', 'role', '{\"id\": 19, \"menu\": \"[\\\"1\\\",\\\"25\\\",\\\"24\\\",\\\"29\\\"]\", \"role\": \"Finance\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(83, '2020-05-27 19:55:42', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"22\\\",\\\"20\\\",\\\"1\\\",\\\"25\\\",\\\"26\\\",\\\"21\\\",\\\"24\\\",\\\"13\\\",\\\"27\\\",\\\"29\\\",\\\"28\\\",\\\"18\\\",\\\"23\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-04-21 09:45:53.000000\"}'),
(84, '2020-05-27 19:55:42', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"1\\\",\\\"25\\\",\\\"24\\\",\\\"29\\\",\\\"23\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(85, '2020-05-27 19:55:42', 'UPDATE', 'role', '{\"id\": 19, \"menu\": \"[\\\"1\\\",\\\"25\\\",\\\"24\\\",\\\"29\\\"]\", \"role\": \"Finance\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(86, '2020-05-27 19:57:56', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"1\\\",\\\"25\\\",\\\"24\\\",\\\"29\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(87, '2020-05-27 19:58:48', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"29\\\",\\\"1\\\",\\\"25\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2020-05-28 09:57:56.000000\"}'),
(88, '2020-05-27 19:59:08', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"29\\\",\\\"1\\\",\\\"25\\\",\\\"21\\\",\\\"24\\\",\\\"20\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2020-05-28 09:58:48.000000\"}'),
(89, '2020-05-27 20:00:00', 'UPDATE', 'role', '{\"id\": 19, \"menu\": \"[\\\"1\\\",\\\"25\\\",\\\"24\\\",\\\"29\\\"]\", \"role\": \"Finance\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2019-12-02 09:24:35.000000\"}'),
(90, '2020-06-01 04:16:11', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"22\\\",\\\"20\\\",\\\"1\\\",\\\"25\\\",\\\"26\\\",\\\"21\\\",\\\"24\\\",\\\"13\\\",\\\"27\\\",\\\"29\\\",\\\"28\\\",\\\"18\\\",\\\"23\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-04-21 09:45:53.000000\"}'),
(91, '2020-06-01 04:22:26', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"22\\\",\\\"20\\\",\\\"1\\\",\\\"25\\\",\\\"26\\\",\\\"21\\\",\\\"24\\\",\\\"13\\\",\\\"27\\\",\\\"29\\\",\\\"28\\\",\\\"18\\\",\\\"23\\\",\\\"32\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-04-21 09:45:53.000000\"}'),
(92, '2020-06-01 04:22:36', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"22\\\",\\\"20\\\",\\\"1\\\",\\\"25\\\",\\\"26\\\",\\\"21\\\",\\\"24\\\",\\\"13\\\",\\\"27\\\",\\\"29\\\",\\\"28\\\",\\\"18\\\",\\\"23\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-04-21 09:45:53.000000\"}'),
(93, '2020-06-21 19:52:20', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"22\\\",\\\"20\\\",\\\"1\\\",\\\"25\\\",\\\"26\\\",\\\"21\\\",\\\"24\\\",\\\"13\\\",\\\"27\\\",\\\"29\\\",\\\"28\\\",\\\"18\\\",\\\"23\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-04-21 09:45:53.000000\"}'),
(94, '2020-06-21 20:10:08', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"32\\\",\\\"29\\\",\\\"1\\\",\\\"13\\\",\\\"25\\\",\\\"27\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"24\\\",\\\"20\\\",\\\"26\\\",\\\"18\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-06-22 09:52:19.000000\"}'),
(95, '2020-06-21 20:10:08', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"29\\\",\\\"1\\\",\\\"25\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2020-05-28 09:59:08.000000\"}'),
(96, '2020-06-21 20:10:08', 'UPDATE', 'role', '{\"id\": 19, \"menu\": \"[\\\"29\\\",\\\"1\\\"]\", \"role\": \"Finance\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2020-05-28 10:00:00.000000\"}'),
(97, '2020-06-21 20:10:33', 'UPDATE', 'role', '{\"id\": 17, \"menu\": \"[\\\"32\\\",\\\"29\\\",\\\"1\\\",\\\"13\\\",\\\"25\\\",\\\"27\\\",\\\"28\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"24\\\",\\\"20\\\",\\\"26\\\",\\\"18\\\",\\\"34\\\"]\", \"role\": \"Admin\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-12 17:03:59.000000\", \"updated_at\": \"2020-06-22 09:52:19.000000\"}'),
(98, '2020-06-21 20:10:33', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"29\\\",\\\"1\\\",\\\"25\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2020-05-28 09:59:08.000000\"}'),
(99, '2020-06-21 20:10:34', 'UPDATE', 'role', '{\"id\": 19, \"menu\": \"[\\\"29\\\",\\\"1\\\"]\", \"role\": \"Finance\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2020-05-28 10:00:00.000000\"}'),
(100, '2020-07-16 08:40:08', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"29\\\",\\\"1\\\",\\\"25\\\"]\", \"role\": \"Peserta\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2020-05-28 09:59:08.000000\"}'),
(101, '2020-07-16 08:40:19', 'UPDATE', 'role', '{\"id\": 19, \"menu\": \"[\\\"29\\\",\\\"1\\\"]\", \"role\": \"Finance\", \"status\": \"ENABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2020-05-28 10:00:00.000000\"}'),
(102, '2020-07-16 08:42:50', 'UPDATE', 'role', '{\"id\": 19, \"menu\": \"[\\\"29\\\",\\\"1\\\"]\", \"role\": \"Finance\", \"status\": \"DISABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2020-05-28 10:00:00.000000\"}'),
(103, '2020-07-16 08:42:53', 'UPDATE', 'role', '{\"id\": 18, \"menu\": \"[\\\"29\\\",\\\"1\\\",\\\"25\\\"]\", \"role\": \"Peserta\", \"status\": \"DISABLE\", \"created_at\": \"2018-10-24 10:29:54.000000\", \"updated_at\": \"2020-05-28 09:59:08.000000\"}'),
(104, '2020-09-04 14:44:58', 'DELETE', 'role', '{\"id\": 19, \"role\": \"Finance\", \"status\": \"ENABLE\", \"menu\": \"[\\\"29\\\",\\\"1\\\"]\", \"created_at\": \"2018-10-24 10:29:54\", \"updated_at\": \"2020-05-28 10:00:00\"}'),
(105, '2020-09-04 14:45:01', 'DELETE', 'role', '{\"id\": 18, \"role\": \"Peserta\", \"status\": \"ENABLE\", \"menu\": \"[\\\"29\\\",\\\"1\\\",\\\"25\\\"]\", \"created_at\": \"2018-10-24 10:29:54\", \"updated_at\": \"2020-05-28 09:59:08\"}');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `dir` varchar(255) DEFAULT NULL,
  `table` varchar(255) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `name`, `mime`, `dir`, `table`, `table_id`, `status`, `created_at`, `updated_at`) VALUES
(6, NULL, NULL, NULL, 'site', 7, 'ENABLE', '2018-02-05 13:48:31', NULL),
(7, NULL, NULL, NULL, 'site', 8, 'ENABLE', '2018-02-05 13:50:04', '2018-02-05 14:30:11'),
(8, NULL, NULL, NULL, 'site', 1, 'ENABLE', '2018-02-05 15:23:50', NULL),
(9, NULL, NULL, NULL, 'site', 9, 'ENABLE', '2018-02-13 17:59:15', NULL),
(10, NULL, NULL, NULL, 'site', 10, 'ENABLE', '2018-02-27 04:51:48', NULL),
(11, NULL, NULL, NULL, 'site', 11, 'ENABLE', '2018-02-27 04:52:11', NULL),
(12, NULL, NULL, NULL, 'site', 12, 'ENABLE', '2018-03-20 06:48:21', NULL),
(13, NULL, NULL, NULL, 'site', 13, 'ENABLE', '2018-03-20 06:48:44', NULL),
(14, NULL, NULL, NULL, 'site', 14, 'ENABLE', '2018-03-20 06:49:06', NULL),
(15, NULL, NULL, NULL, 'site', 15, 'ENABLE', '2018-03-20 06:49:25', NULL),
(16, NULL, NULL, NULL, 'site', 16, 'ENABLE', '2018-03-20 06:49:47', NULL),
(17, NULL, NULL, NULL, 'site', 17, 'ENABLE', '2018-03-20 06:50:02', '2018-04-05 08:09:52'),
(18, NULL, NULL, NULL, 'site', 18, 'ENABLE', '2018-03-20 06:50:26', NULL),
(19, NULL, NULL, NULL, 'site', 19, 'ENABLE', '2018-03-20 06:50:56', NULL),
(20, NULL, NULL, NULL, 'site', 20, 'ENABLE', '2018-03-20 06:51:11', NULL),
(21, NULL, NULL, NULL, 'site', 21, '0', '2018-08-07 13:58:09', NULL),
(22, NULL, NULL, NULL, 'site', 22, '0', '2018-08-11 02:56:50', NULL),
(23, NULL, NULL, NULL, 'site', 23, '0', '2018-08-11 02:59:09', NULL),
(24, NULL, NULL, NULL, 'site', 24, '0', '2018-09-24 06:55:24', NULL),
(25, NULL, NULL, NULL, 'site', 25, '0', '2018-10-12 03:20:28', NULL),
(28, '6950c16c9bcc6995f376b297f163175934330.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f163175934330.jpg', 'role', 8, 'ENABLE', '2018-10-12 15:12:17', NULL),
(32, '6950c16c9bcc6995f376b297f16317593996.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'webfile/6950c16c9bcc6995f376b297f16317593996.xlsx', 'role', 17, 'ENABLE', '2018-10-12 17:03:59', '2018-10-12 17:04:07'),
(35, '6950c16c9bcc6995f376b297f163175953822.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f163175953822.jpg', 'post', 1, 'ENABLE', '2018-10-13 13:01:23', NULL),
(36, '6950c16c9bcc6995f376b297f163175990676.pdf', 'application/pdf', 'webfile/6950c16c9bcc6995f376b297f163175990676.pdf', 'post', 2, 'ENABLE', '2018-10-13 13:03:02', '2018-10-13 13:03:46'),
(38, '6950c16c9bcc6995f376b297f16317598786.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f16317598786.jpg', 'siswa', 4, 'ENABLE', '2018-10-13 17:56:43', NULL),
(40, '6950c16c9bcc6995f376b297f163175928426.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f163175928426.jpg', 'user', 1, NULL, NULL, '2020-01-22 11:19:27'),
(46, '', '', '', 'user', 24, 'ENABLE', '2019-01-22 13:51:27', NULL),
(47, '', '', '', 'user', 25, 'ENABLE', '2019-02-18 16:14:44', NULL),
(49, '6950c16c9bcc6995f376b297f163175960546.doc', 'application/msword', 'webfile/6950c16c9bcc6995f376b297f163175960546.doc', 'persyaratan', 1, 'ENABLE', '2019-05-08 10:21:04', '2019-05-08 10:32:44'),
(50, '6950c16c9bcc6995f376b297f163175962451.png', 'image/png', 'webfile/6950c16c9bcc6995f376b297f163175962451.png', 'master_sub_izin_usaha', 17, 'ENABLE', '2019-05-25 12:16:47', NULL),
(51, '6950c16c9bcc6995f376b297f163175959021.png', 'image/png', 'webfile/6950c16c9bcc6995f376b297f163175959021.png', 'master_sub_izin_usaha', 18, 'ENABLE', '2019-05-25 12:17:12', NULL),
(52, '6950c16c9bcc6995f376b297f163175945413.pptx', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 'webfile/6950c16c9bcc6995f376b297f163175945413.pptx', 'master_sub_izin_usaha', 19, 'ENABLE', '2019-05-25 12:18:38', NULL),
(53, '6950c16c9bcc6995f376b297f163175979501.pptx', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 'webfile/6950c16c9bcc6995f376b297f163175979501.pptx', 'master_sub_izin_usaha', 20, 'ENABLE', '2019-05-25 12:18:57', NULL),
(54, '', '', '', 'master_sub_izin_usaha', 21, 'ENABLE', '2019-05-25 12:19:12', NULL),
(55, '', '', '', 'master_sub_izin_usaha', 22, 'ENABLE', '2019-05-25 12:20:38', NULL),
(56, '', '', '', 'master_sub_izin_usaha', 23, 'ENABLE', '2019-05-25 12:20:50', NULL),
(57, '', '', '', 'master_sub_izin_usaha', 24, 'ENABLE', '2019-05-25 12:21:01', NULL),
(58, '', '', '', 'master_sub_izin_usaha', 25, 'ENABLE', '2019-05-25 12:21:10', NULL),
(59, '', '', '', 'master_sub_izin_usaha', 26, 'ENABLE', '2019-05-25 12:21:22', NULL),
(60, '', '', '', 'master_sub_izin_usaha', 27, 'ENABLE', '2019-05-25 12:21:30', NULL),
(61, '', '', '', 'master_sub_izin_usaha', 28, 'ENABLE', '2019-05-25 12:21:39', NULL),
(62, '', '', '', 'master_sub_izin_usaha', 29, 'ENABLE', '2019-05-25 12:21:52', NULL),
(63, '', '', '', 'master_sub_izin_usaha', 30, 'ENABLE', '2019-05-25 12:22:00', NULL),
(64, '', '', '', 'master_sub_izin_usaha', 31, 'ENABLE', '2019-05-25 12:22:08', NULL),
(65, '', '', '', 'master_sub_izin_usaha', 32, 'ENABLE', '2019-05-25 12:22:27', NULL),
(66, '', '', '', 'master_sub_izin_usaha', 33, 'ENABLE', '2019-05-25 12:22:35', NULL),
(67, '', '', '', 'master_sub_izin_usaha', 34, 'ENABLE', '2019-05-25 12:22:45', NULL),
(68, '', '', '', 'master_sub_izin_usaha', 35, 'ENABLE', '2019-05-25 12:22:56', NULL),
(69, '', '', '', 'master_sub_izin_usaha', 36, 'ENABLE', '2019-05-25 12:23:04', NULL),
(70, '', '', '', 'master_sub_izin_usaha', 37, 'ENABLE', '2019-05-25 12:23:15', NULL),
(71, '', '', '', 'master_sub_izin_usaha', 38, 'ENABLE', '2019-05-25 12:23:23', NULL),
(72, '', '', '', 'master_sub_izin_usaha', 39, 'ENABLE', '2019-05-25 12:23:31', NULL),
(73, '6950c16c9bcc6995f376b297f163175984727.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175984727.docx', 'master_sub_izin_usaha', 40, 'ENABLE', '2019-05-25 12:24:09', NULL),
(74, '6950c16c9bcc6995f376b297f163175972055.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175972055.rtf', 'master_sub_izin_usaha', 41, 'ENABLE', '2019-05-25 12:24:22', NULL),
(75, '6950c16c9bcc6995f376b297f163175989166.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175989166.rtf', 'master_sub_izin_usaha', 42, 'ENABLE', '2019-05-25 12:24:53', NULL),
(76, '6950c16c9bcc6995f376b297f163175930523.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175930523.rtf', 'master_sub_izin_usaha', 43, 'ENABLE', '2019-05-25 12:25:11', NULL),
(77, '6950c16c9bcc6995f376b297f163175974506.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175974506.rtf', 'master_sub_izin_usaha', 44, 'ENABLE', '2019-05-25 12:25:46', NULL),
(78, '6950c16c9bcc6995f376b297f163175963577.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175963577.rtf', 'master_sub_izin_usaha', 45, 'ENABLE', '2019-05-25 12:26:04', NULL),
(79, '6950c16c9bcc6995f376b297f163175992147.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175992147.rtf', 'master_sub_izin_usaha', 46, 'ENABLE', '2019-05-25 12:26:27', NULL),
(80, '6950c16c9bcc6995f376b297f163175932300.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175932300.rtf', 'master_sub_izin_usaha', 47, 'ENABLE', '2019-05-25 12:26:42', NULL),
(81, '6950c16c9bcc6995f376b297f163175965075.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175965075.rtf', 'master_sub_izin_usaha', 48, 'ENABLE', '2019-05-25 12:27:10', NULL),
(82, '6950c16c9bcc6995f376b297f163175993136.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175993136.rtf', 'master_sub_izin_usaha', 49, 'ENABLE', '2019-05-25 12:27:34', NULL),
(83, '6950c16c9bcc6995f376b297f16317598894.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f16317598894.rtf', 'master_sub_izin_usaha', 50, 'ENABLE', '2019-05-25 12:27:57', NULL),
(84, '6950c16c9bcc6995f376b297f16317597861.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f16317597861.rtf', 'master_sub_izin_usaha', 51, 'ENABLE', '2019-05-25 12:28:09', NULL),
(85, '', '', '', 'master_sub_izin_usaha', 52, 'ENABLE', '2019-05-25 12:28:35', NULL),
(86, '', '', '', 'master_sub_izin_usaha', 53, 'ENABLE', '2019-05-25 12:28:47', NULL),
(87, '', '', '', 'master_sub_izin_usaha', 54, 'ENABLE', '2019-05-25 12:28:57', NULL),
(88, '', '', '', 'master_sub_izin_usaha', 55, 'ENABLE', '2019-05-25 12:29:06', NULL),
(89, '', '', '', 'master_sub_izin_usaha', 56, 'ENABLE', '2019-05-25 12:29:17', NULL),
(90, '', '', '', 'master_sub_izin_usaha', 57, 'ENABLE', '2019-05-25 12:29:25', NULL),
(91, '', '', '', 'master_sub_izin_usaha', 58, 'ENABLE', '2019-05-25 12:29:32', NULL),
(92, '', '', '', 'master_sub_izin_usaha', 59, 'ENABLE', '2019-05-25 12:29:42', NULL),
(93, '', '', '', 'master_sub_izin_usaha', 60, 'ENABLE', '2019-05-25 12:29:52', NULL),
(94, '', '', '', 'master_sub_izin_usaha', 61, 'ENABLE', '2019-05-25 12:30:00', NULL),
(95, '', '', '', 'master_sub_izin_usaha', 62, 'ENABLE', '2019-05-25 12:30:08', NULL),
(96, '', '', '', 'master_sub_izin_usaha', 63, 'ENABLE', '2019-05-25 12:30:20', NULL),
(97, '', '', '', 'master_sub_izin_usaha', 64, 'ENABLE', '2019-05-25 12:30:28', NULL),
(98, '', '', '', 'master_sub_izin_usaha', 65, 'ENABLE', '2019-05-25 12:30:36', NULL),
(99, '', '', '', 'master_sub_izin_usaha', 66, 'ENABLE', '2019-05-25 12:30:45', NULL),
(100, '', '', '', 'master_sub_izin_usaha', 67, 'ENABLE', '2019-05-25 12:30:53', NULL),
(101, '', '', '', 'master_sub_izin_usaha', 68, 'ENABLE', '2019-05-25 12:31:05', NULL),
(102, '', '', '', 'master_sub_izin_usaha', 69, 'ENABLE', '2019-05-25 12:31:17', NULL),
(103, '', '', '', 'master_sub_izin_usaha', 70, 'ENABLE', '2019-05-25 12:31:27', NULL),
(104, '', '', '', 'master_sub_izin_usaha', 71, 'ENABLE', '2019-05-25 12:31:35', NULL),
(105, '', '', '', 'master_sub_izin_usaha', 72, 'ENABLE', '2019-05-25 12:31:44', NULL),
(106, '', '', '', 'master_sub_izin_usaha', 73, 'ENABLE', '2019-05-25 12:31:55', NULL),
(107, '', '', '', 'master_sub_izin_usaha', 74, 'ENABLE', '2019-05-25 12:32:03', NULL),
(108, '', '', '', 'master_sub_izin_usaha', 75, 'ENABLE', '2019-05-25 12:32:10', NULL),
(109, '', '', '', 'master_sub_izin_usaha', 76, 'ENABLE', '2019-05-25 12:32:21', NULL),
(110, '6950c16c9bcc6995f376b297f16317593262.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f16317593262.docx', 'master_sub_izin_usaha', 77, 'ENABLE', '2019-05-25 12:33:40', NULL),
(111, '6950c16c9bcc6995f376b297f163175986381.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175986381.docx', 'master_sub_izin_usaha', 78, 'ENABLE', '2019-05-25 12:33:52', NULL),
(112, '6950c16c9bcc6995f376b297f163175950793.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175950793.rtf', 'master_sub_izin_usaha', 79, 'ENABLE', '2019-05-25 12:34:06', NULL),
(113, '6950c16c9bcc6995f376b297f163175916003.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175916003.rtf', 'master_sub_izin_usaha', 80, 'ENABLE', '2019-05-25 12:34:17', NULL),
(114, '6950c16c9bcc6995f376b297f163175976957.doc', 'application/msword', 'webfile/6950c16c9bcc6995f376b297f163175976957.doc', 'master_sub_izin_usaha', 81, 'ENABLE', '2019-05-25 12:34:32', NULL),
(115, '6950c16c9bcc6995f376b297f163175945850.doc', 'application/msword', 'webfile/6950c16c9bcc6995f376b297f163175945850.doc', 'master_sub_izin_usaha', 82, 'ENABLE', '2019-05-25 12:34:42', NULL),
(116, '6950c16c9bcc6995f376b297f163175948447.doc', 'application/msword', 'webfile/6950c16c9bcc6995f376b297f163175948447.doc', 'master_sub_izin_usaha', 83, 'ENABLE', '2019-05-25 12:34:57', NULL),
(117, '6950c16c9bcc6995f376b297f16317591150.doc', 'application/msword', 'webfile/6950c16c9bcc6995f376b297f16317591150.doc', 'master_sub_izin_usaha', 84, 'ENABLE', '2019-05-25 12:35:25', NULL),
(118, '6950c16c9bcc6995f376b297f163175995692.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175995692.rtf', 'master_sub_izin_usaha', 85, 'ENABLE', '2019-05-25 12:35:42', NULL),
(119, '6950c16c9bcc6995f376b297f163175917567.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175917567.rtf', 'master_sub_izin_usaha', 86, 'ENABLE', '2019-05-25 12:35:53', NULL),
(120, '6950c16c9bcc6995f376b297f163175952651.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175952651.rtf', 'master_sub_izin_usaha', 87, 'ENABLE', '2019-05-25 12:36:14', NULL),
(121, '6950c16c9bcc6995f376b297f163175986507.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175986507.rtf', 'master_sub_izin_usaha', 88, 'ENABLE', '2019-05-25 12:36:32', NULL),
(122, '6950c16c9bcc6995f376b297f163175919745.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175919745.rtf', 'master_sub_izin_usaha', 89, 'ENABLE', '2019-05-25 12:36:52', NULL),
(123, '6950c16c9bcc6995f376b297f163175958135.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175958135.rtf', 'master_sub_izin_usaha', 90, 'ENABLE', '2019-05-25 12:37:08', NULL),
(124, '6950c16c9bcc6995f376b297f163175923826.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175923826.rtf', 'master_sub_izin_usaha', 91, 'ENABLE', '2019-05-25 12:37:32', NULL),
(125, '6950c16c9bcc6995f376b297f163175994422.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175994422.rtf', 'master_sub_izin_usaha', 92, 'ENABLE', '2019-05-25 12:37:47', NULL),
(126, '6950c16c9bcc6995f376b297f163175994220.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175994220.rtf', 'master_sub_izin_usaha', 93, 'ENABLE', '2019-05-25 12:38:05', NULL),
(127, '6950c16c9bcc6995f376b297f163175944614.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175944614.rtf', 'master_sub_izin_usaha', 94, 'ENABLE', '2019-05-25 12:38:18', NULL),
(128, '6950c16c9bcc6995f376b297f163175936697.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175936697.docx', 'master_sub_izin_usaha', 95, 'ENABLE', '2019-05-25 12:39:04', NULL),
(129, '6950c16c9bcc6995f376b297f163175993697.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175993697.docx', 'master_sub_izin_usaha', 96, 'ENABLE', '2019-05-25 12:39:27', NULL),
(130, '6950c16c9bcc6995f376b297f163175916601.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175916601.rtf', 'master_sub_izin_usaha', 97, 'ENABLE', '2019-05-25 12:39:38', NULL),
(131, '6950c16c9bcc6995f376b297f163175986146.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175986146.docx', 'master_sub_izin_usaha', 98, 'ENABLE', '2019-05-25 12:39:57', NULL),
(132, '6950c16c9bcc6995f376b297f163175992935.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175992935.docx', 'master_sub_izin_usaha', 99, 'ENABLE', '2019-05-25 12:40:11', NULL),
(133, '6950c16c9bcc6995f376b297f16317599364.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f16317599364.rtf', 'master_sub_izin_usaha', 100, 'ENABLE', '2019-05-25 12:40:24', NULL),
(134, '6950c16c9bcc6995f376b297f163175969761.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175969761.docx', 'master_sub_izin_usaha', 101, 'ENABLE', '2019-05-25 12:40:45', NULL),
(135, '6950c16c9bcc6995f376b297f163175923046.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175923046.docx', 'master_sub_izin_usaha', 102, 'ENABLE', '2019-05-25 12:40:58', NULL),
(136, '6950c16c9bcc6995f376b297f163175993429.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175993429.rtf', 'master_sub_izin_usaha', 103, 'ENABLE', '2019-05-25 12:42:38', NULL),
(137, '6950c16c9bcc6995f376b297f163175992123.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175992123.docx', 'master_sub_izin_usaha', 104, 'ENABLE', '2019-05-25 12:42:57', NULL),
(138, '6950c16c9bcc6995f376b297f163175912233.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175912233.docx', 'master_sub_izin_usaha', 105, 'ENABLE', '2019-05-25 12:43:14', NULL),
(139, '6950c16c9bcc6995f376b297f163175990037.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175990037.rtf', 'master_sub_izin_usaha', 106, 'ENABLE', '2019-05-25 12:43:30', NULL),
(140, '6950c16c9bcc6995f376b297f163175965975.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175965975.docx', 'master_sub_izin_usaha', 107, 'ENABLE', '2019-05-25 12:43:48', NULL),
(141, '6950c16c9bcc6995f376b297f163175986352.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175986352.docx', 'master_sub_izin_usaha', 108, 'ENABLE', '2019-05-25 12:44:04', NULL),
(142, '6950c16c9bcc6995f376b297f163175949318.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175949318.rtf', 'master_sub_izin_usaha', 109, 'ENABLE', '2019-05-25 12:44:19', NULL),
(143, '6950c16c9bcc6995f376b297f163175976073.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175976073.docx', 'master_sub_izin_usaha', 110, 'ENABLE', '2019-05-25 12:44:40', NULL),
(144, '6950c16c9bcc6995f376b297f163175945825.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175945825.docx', 'master_sub_izin_usaha', 111, 'ENABLE', '2019-05-25 12:44:54', NULL),
(145, '6950c16c9bcc6995f376b297f163175958202.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175958202.rtf', 'master_sub_izin_usaha', 112, 'ENABLE', '2019-05-25 12:45:08', NULL),
(146, '6950c16c9bcc6995f376b297f163175956139.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175956139.docx', 'master_sub_izin_usaha', 113, 'ENABLE', '2019-05-25 12:45:38', NULL),
(147, '6950c16c9bcc6995f376b297f163175987475.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175987475.docx', 'master_sub_izin_usaha', 114, 'ENABLE', '2019-05-25 12:45:58', NULL),
(148, '6950c16c9bcc6995f376b297f163175946873.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175946873.rtf', 'master_sub_izin_usaha', 115, 'ENABLE', '2019-05-25 12:46:11', NULL),
(149, '6950c16c9bcc6995f376b297f163175967616.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175967616.docx', 'master_sub_izin_usaha', 116, 'ENABLE', '2019-05-25 12:46:53', NULL),
(150, '6950c16c9bcc6995f376b297f163175978218.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175978218.docx', 'master_sub_izin_usaha', 117, 'ENABLE', '2019-05-25 12:47:06', NULL),
(151, '6950c16c9bcc6995f376b297f163175979931.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175979931.docx', 'master_sub_izin_usaha', 118, 'ENABLE', '2019-05-25 12:47:27', NULL),
(152, '6950c16c9bcc6995f376b297f163175917704.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175917704.rtf', 'master_sub_izin_usaha', 119, 'ENABLE', '2019-05-25 12:48:05', NULL),
(153, '6950c16c9bcc6995f376b297f163175934353.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175934353.docx', 'master_sub_izin_usaha', 120, 'ENABLE', '2019-05-25 12:48:27', NULL),
(154, '6950c16c9bcc6995f376b297f163175942925.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175942925.rtf', 'master_sub_izin_usaha', 121, 'ENABLE', '2019-05-25 12:48:44', NULL),
(155, '6950c16c9bcc6995f376b297f163175927853.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175927853.docx', 'master_sub_izin_usaha', 122, 'ENABLE', '2019-05-25 12:49:03', NULL),
(156, '6950c16c9bcc6995f376b297f163175916993.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175916993.rtf', 'master_sub_izin_usaha', 123, 'ENABLE', '2019-05-25 12:49:17', NULL),
(157, '6950c16c9bcc6995f376b297f16317595423.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f16317595423.docx', 'master_sub_izin_usaha', 124, 'ENABLE', '2019-05-25 12:49:37', NULL),
(158, '6950c16c9bcc6995f376b297f16317591396.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f16317591396.rtf', 'master_sub_izin_usaha', 125, 'ENABLE', '2019-05-25 12:49:55', NULL),
(159, '6950c16c9bcc6995f376b297f163175917779.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175917779.docx', 'master_sub_izin_usaha', 126, 'ENABLE', '2019-05-25 12:50:13', NULL),
(160, '6950c16c9bcc6995f376b297f16317597435.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f16317597435.rtf', 'master_sub_izin_usaha', 127, 'ENABLE', '2019-05-25 12:50:26', NULL),
(161, '6950c16c9bcc6995f376b297f16317595012.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f16317595012.docx', 'master_sub_izin_usaha', 128, 'ENABLE', '2019-05-25 12:50:52', NULL),
(162, '6950c16c9bcc6995f376b297f16317599893.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f16317599893.docx', 'master_sub_izin_usaha', 129, 'ENABLE', '2019-05-25 12:51:06', NULL),
(163, '6950c16c9bcc6995f376b297f163175991392.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175991392.docx', 'master_sub_izin_usaha', 130, 'ENABLE', '2019-05-25 12:51:24', NULL),
(164, '6950c16c9bcc6995f376b297f163175982433.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175982433.rtf', 'master_sub_izin_usaha', 131, 'ENABLE', '2019-05-25 12:51:50', NULL),
(165, '6950c16c9bcc6995f376b297f163175970268.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175970268.docx', 'master_sub_izin_usaha', 132, 'ENABLE', '2019-05-25 12:52:14', NULL),
(166, '6950c16c9bcc6995f376b297f163175911983.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175911983.rtf', 'master_sub_izin_usaha', 133, 'ENABLE', '2019-05-25 12:52:28', NULL),
(167, '6950c16c9bcc6995f376b297f163175959217.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175959217.docx', 'master_sub_izin_usaha', 134, 'ENABLE', '2019-05-25 12:52:54', NULL),
(168, '6950c16c9bcc6995f376b297f163175940020.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175940020.rtf', 'master_sub_izin_usaha', 135, 'ENABLE', '2019-05-25 12:53:07', NULL),
(169, '6950c16c9bcc6995f376b297f163175947343.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'webfile/6950c16c9bcc6995f376b297f163175947343.docx', 'master_sub_izin_usaha', 136, 'ENABLE', '2019-05-25 12:53:26', NULL),
(170, '6950c16c9bcc6995f376b297f163175996437.rtf', 'text/rtf', 'webfile/6950c16c9bcc6995f376b297f163175996437.rtf', 'master_sub_izin_usaha', 137, 'ENABLE', '2019-05-25 12:53:41', NULL),
(171, '6950c16c9bcc6995f376b297f163175932381.xls', 'application/vnd.ms-office', 'webfile/6950c16c9bcc6995f376b297f163175932381.xls', 'bahan_baku', 0, 'ENABLE', '2019-06-26 13:38:46', NULL),
(172, '6950c16c9bcc6995f376b297f163175962421.xls', 'application/vnd.ms-office', 'webfile/6950c16c9bcc6995f376b297f163175962421.xls', 'bahan_baku', 0, 'ENABLE', '2019-06-26 13:49:14', NULL),
(173, '6950c16c9bcc6995f376b297f163175975813.PNG', 'image/png', 'webfile/6950c16c9bcc6995f376b297f163175975813.PNG', 'customer', 1, NULL, NULL, '2019-07-01 08:59:08'),
(174, '', '', '', 'customer', 4, 'ENABLE', '2019-07-15 10:55:21', NULL),
(175, '', '', '', 'customer', 5, 'ENABLE', '2019-08-15 07:44:50', NULL),
(176, '', '', '', 'customer', 6, 'ENABLE', '2019-08-15 07:54:51', NULL),
(186, '', '', '', 'customer', 16, 'ENABLE', '2019-10-15 09:58:06', NULL),
(187, '', '', '', 'tiket', 1, 'ENABLE', '2019-11-20 13:34:18', NULL),
(188, '', '', '', 'tiket', 2, 'ENABLE', '2019-11-20 14:58:31', NULL),
(189, '', '', '', 'customer', 20, 'ENABLE', '2019-12-02 08:36:46', NULL),
(190, '', '', '', 'jadwal', 19, 'ENABLE', '2019-12-02 12:07:29', NULL),
(191, '', '', '', 'neraca_saldo', 1, 'ENABLE', '2020-01-07 17:24:34', NULL),
(192, '', '', '', 'customer', 21, 'ENABLE', '2020-01-08 15:38:51', NULL),
(193, '6950c16c9bcc6995f376b297f163175941868.sql', 'text/plain', 'webfile/6950c16c9bcc6995f376b297f163175941868.sql', 'konfig', 26, 'ENABLE', '2020-01-14 10:04:14', NULL),
(194, '6950c16c9bcc6995f376b297f163175994031.jpg', 'image/jpeg', 'webfile/6950c16c9bcc6995f376b297f163175994031.jpg', 'user', 13, 'ENABLE', '2020-01-22 11:21:47', NULL),
(195, '', '', '', 'master_jawaban', 0, 'ENABLE', '2020-09-06 14:49:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_peserta`
--

CREATE TABLE `jawaban_peserta` (
  `id` int(12) NOT NULL,
  `id_soal` int(12) DEFAULT NULL,
  `id_jawaban` int(12) DEFAULT NULL,
  `id_user` int(12) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `konfig`
--

CREATE TABLE `konfig` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `konfig`
--

INSERT INTO `konfig` (`id`, `slug`, `value`, `status`, `created_at`, `updated_at`) VALUES
(6, 'APPLICATION', 'UJIAN ONLINE', 'ENABLE', '2019-02-18 15:28:44', '2020-09-04 21:53:23'),
(7, 'LOGO', 'http://smartsoftstudio.com/wp-content/themes/sistemmikir-o/assets/images/logo-smartsoftstudio.png', 'ENABLE', '2019-02-18 15:29:32', '2019-10-22 11:47:44'),
(8, 'LOGIN_BACKGROUND', 'background-image: url(\'https://coloredbrain.com/wp-content/uploads/2016/07/login-background.jpg\');background-size: cover;background-position: center;', 'ENABLE', '2019-02-18 15:29:52', '2019-04-29 10:57:19'),
(9, 'COLOR_HEADER', 'background: linear-gradient(to right,#0052D4,#65C7F7);', 'DISABLE', '2019-02-18 15:30:24', '2019-02-18 15:31:08'),
(10, 'VERSION', '1.0.0', 'ENABLE', '2019-02-18 15:30:39', NULL),
(11, 'COPYRIGHT', 'RDS. All rights reserved', 'ENABLE', '2019-02-18 15:32:01', '2020-09-04 21:45:42'),
(12, 'SKIN', 'skin-blue', 'ENABLE', '2019-02-18 15:34:01', '2020-07-16 22:42:34'),
(13, 'TITLE_APPLICATION', 'SOP', 'ENABLE', '2019-02-18 15:39:54', '2020-01-13 14:49:04'),
(14, 'APPLICATION_SMALL', 'UON', 'ENABLE', '2019-02-18 15:42:41', '2020-09-04 21:55:04'),
(15, 'LOGIN_BOX', 'background : #fff !important ; ', 'ENABLE', '2019-02-18 15:45:53', '2019-02-18 15:58:53'),
(16, 'TITLE_LOGIN_APPLICATION', 'SOP', 'ENABLE', '2019-02-18 15:47:41', '2020-01-13 14:49:15'),
(17, 'LOGIN_TITLE', 'UJIAN ONLINE', 'ENABLE', '2019-02-18 15:48:55', '2020-09-04 21:55:48'),
(24, 'LOGIN', 'login-1', 'ENABLE', '2019-02-21 14:12:14', '2019-12-02 13:18:52'),
(25, 'email-template', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n    <meta name=\"viewport\" content=\"width=device-width\" />\r\n\r\n\r\n    <style type=\"text/css\">\r\n        /* Your custom styles go here */\r\n        * {\r\n            margin: 0;\r\n            padding: 0;\r\n            font-size: 100%;\r\n            font-family: \'Avenir Next\', \"Helvetica Neue\", \"Helvetica\", Helvetica, Arial, sans-serif;\r\n            line-height: 1.65;\r\n        }\r\n\r\n        img {\r\n            max-width: 100%;\r\n            margin: 0 auto;\r\n            display: block;\r\n        }\r\n\r\n        body,\r\n        .body-wrap {\r\n            width: 100% !important;\r\n            height: 100%;\r\n            background: #f8f8f8;\r\n        }\r\n\r\n        a {\r\n            color: #71bc37;\r\n            text-decoration: none;\r\n        }\r\n\r\n        a:hover {\r\n            text-decoration: underline;\r\n        }\r\n\r\n        .text-center {\r\n            text-align: center;\r\n        }\r\n\r\n        .text-right {\r\n            text-align: right;\r\n        }\r\n\r\n        .text-left {\r\n            text-align: left;\r\n        }\r\n\r\n        .button {\r\n            display: inline-block;\r\n            color: white;\r\n            background: #71bc37;\r\n            border: solid #71bc37;\r\n            border-width: 10px 20px 8px;\r\n            font-weight: bold;\r\n            border-radius: 4px;\r\n        }\r\n\r\n        .button:hover {\r\n            text-decoration: none;\r\n        }\r\n\r\n        h1,\r\n        h2,\r\n        h3,\r\n        h4,\r\n        h5,\r\n        h6 {\r\n            margin-bottom: 20px;\r\n            line-height: 1.25;\r\n        }\r\n\r\n        h1 {\r\n            font-size: 32px;\r\n        }\r\n\r\n        h2 {\r\n            font-size: 28px;\r\n        }\r\n\r\n        h3 {\r\n            font-size: 24px;\r\n        }\r\n\r\n        h4 {\r\n            font-size: 20px;\r\n        }\r\n\r\n        h5 {\r\n            font-size: 16px;\r\n        }\r\n\r\n        p,\r\n        ul,\r\n        ol {\r\n            font-size: 16px;\r\n            font-weight: normal;\r\n            margin-bottom: 20px;\r\n        }\r\n\r\n        .container {\r\n            display: block !important;\r\n            clear: both !important;\r\n            margin: 0 auto !important;\r\n            max-width: 580px !important;\r\n        }\r\n\r\n        .container table {\r\n            width: 100% !important;\r\n            border-collapse: collapse;\r\n        }\r\n\r\n        .container .masthead {\r\n            padding: 80px 0;\r\n            background: #71bc37;\r\n            color: white;\r\n        }\r\n\r\n        .container .masthead h1 {\r\n            margin: 0 auto !important;\r\n            max-width: 90%;\r\n            text-transform: uppercase;\r\n        }\r\n\r\n        .container .content {\r\n            background: white;\r\n            padding: 30px 35px;\r\n        }\r\n\r\n        .container .content.footer {\r\n            background: none;\r\n        }\r\n\r\n        .container .content.footer p {\r\n            margin-bottom: 0;\r\n            color: #888;\r\n            text-align: center;\r\n            font-size: 14px;\r\n        }\r\n\r\n        .container .content.footer a {\r\n            color: #888;\r\n            text-decoration: none;\r\n            font-weight: bold;\r\n        }\r\n\r\n        .container .content.footer a:hover {\r\n            text-decoration: underline;\r\n        }\r\n\r\n    </style>\r\n</head>\r\n\r\n<body>\r\n    <table class=\"body-wrap\">\r\n        <tr>\r\n            <td class=\"container\">\r\n\r\n                <!-- Message start -->\r\n                <table>\r\n                    <tr>\r\n                        <td align=\"center\" class=\"masthead\">\r\n\r\n                            <h1>Something Big...</h1>\r\n\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\"content\">\r\n\r\n                            <h2>Hi Stranger,</h2>\r\n\r\n                            <p>Kielbasa venison ball tip shankle. Boudin prosciutto landjaeger, pancetta jowl turkey tri-tip porchetta beef pork loin drumstick. Frankfurter short ribs kevin pig ribeye drumstick bacon kielbasa. Pork loin brisket biltong, pork belly filet mignon ribeye pig ground round porchetta turducken turkey. Pork belly beef ribs sausage ham hock, ham doner frankfurter pork chop tail meatball beef pig meatloaf short ribs shoulder. Filet mignon ham hock kielbasa beef ribs shank. Venison swine beef ribs sausage pastrami shoulder.</p>\r\n\r\n                            <table>\r\n                                <tr>\r\n                                    <td align=\"center\">\r\n                                        <p>\r\n                                            <a href=\"#\" class=\"button\">Share the Awesomeness</a>\r\n                                        </p>\r\n                                    </td>\r\n                                </tr>\r\n                            </table>\r\n\r\n                            <p>By the way, if you\'re wondering where you can find more of this fine meaty filler, visit <a href=\"http://baconipsum.com\">Bacon Ipsum</a>.</p>\r\n\r\n                            <p><em>– Mr. Pen</em></p>\r\n\r\n                        </td>\r\n                    </tr>\r\n                </table>\r\n\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"container\">\r\n\r\n                <!-- Message start -->\r\n                <table>\r\n                    <tr>\r\n                        <td class=\"content footer\" align=\"center\">\r\n                            <p>Sent by <a href=\"#\">Company Name</a>, 1234 Yellow Brick Road, OZ, 99999</p>\r\n                            <p><a href=\"mailto:\">hello@company.com</a> | <a href=\"#\">Unsubscribe</a></p>\r\n                        </td>\r\n                    </tr>\r\n                </table>\r\n\r\n            </td>\r\n        </tr>\r\n    </table>\r\n</body>\r\n\r\n</html>\r\n', 'ENABLE', NULL, NULL),
(26, 'trigger_backup_record_before_update_delete', 'DELIMITER $$  CREATE TRIGGER before_delete_customer BEFORE DELETE ON customer FOR EACH ROW BEGIN 	     SET @record_content = (SELECT JSON_OBJECT(\'id\', OLD.id, \'nama\', OLD.nama, \'email\', OLD.email, \'telp\', OLD.telp, \'alamat\', OLD.alamat, \'status\', OLD.status, \'created_at\', OLD.created_at, \'updated_at\', OLD.updated_at) FROM customer WHERE id = OLD.id); 	INSERT INTO archive_log(`operation`, `from_table`, `content`)     VALUES(\'DELETE\',\'customer\', @record_content); END$$  DELIMITER ;', 'ENABLE', '2020-01-14 10:04:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `konfig_email`
--

CREATE TABLE `konfig_email` (
  `ke_id` int(11) NOT NULL,
  `ke_slug` varchar(500) NOT NULL,
  `ke_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `konfig_email`
--

INSERT INTO `konfig_email` (`ke_id`, `ke_slug`, `ke_content`) VALUES
(1, 'logo', 'http://smartsoftstudio.com/wp-content/themes/sistemmikir-o/assets/images/logo-smartsoftstudio.png'),
(2, 'perusahaan', 'SMARTSOFT STUDIO'),
(3, 'body', 'Terima Kasih sudah mendaftar silahkan klik tombol dibawah ini untuk memverikasi'),
(4, 'footer', 'sd'),
(5, 'warna', '#96e9d2');

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
(1, '2019-09-30 16:36:09', 1, 'deleteData', 'contohmaster', '{\"cm_id\":\"3\",\"cm_nama\":\"ddfdf\",\"cm_data\":\"dfdfdf\",\"status\":\"DISABLE\",\"created_at\":\"2019-09-30 16:25:21\",\"updated_at\":null}'),
(2, '2019-10-01 10:22:47', 1, 'deleteData', 'contohmaster', '{\"conn_id\":{\"affected_rows\":null,\"client_info\":null,\"client_version\":null,\"connect_errno\":null,\"connect_error\":null,\"errno\":null,\"error\":null,\"error_list\":null,\"field_count\":null,\"host_info\":null,\"info\":null,\"insert_id\":null,\"server_info\":null,\"server_version\":null,\"stat\":null,\"sqlstate\":null,\"protocol_version\":null,\"thread_id\":null,\"warning_count\":null},\"result_id\":{\"current_field\":null,\"field_count\":null,\"lengths\":null,\"num_rows\":null,\"type\":null},\"result_array\":[],\"result_object\":[],\"custom_result_object\":[],\"current_row\":0,\"num_rows\":null,\"row_data\":null}'),
(3, '2019-10-01 10:29:38', 1, 'deleteData', 'contohmaster', '{\"cm_id\":\"6\",\"cm_nama\":\"tes\",\"cm_data\":\"asdsd\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:27:04\",\"updated_at\":null}{\"cm_id\":\"7\",\"cm_nama\":\"dssd\",\"cm_data\":\"ddssd\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:27:10\",\"updated_at\":null}'),
(4, '2019-10-01 10:35:34', 1, 'deleteData', 'contohmaster', '{\"cm_id\":\"8\",\"cm_nama\":\"sddssd\",\"cm_data\":\"ssd\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:33:35\",\"updated_at\":null}'),
(5, '2019-10-01 10:43:29', 1, 'updateData', 'contohmaster', '{\"cm_id\":\"8\",\"cm_nama\":\"sddssd\",\"cm_data\":\"ssd\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:33:35\",\"updated_at\":\"2019-10-01 10:35:34\"}'),
(6, '2019-10-01 10:43:35', 1, 'updateData', 'contohmaster', '{\"cm_id\":\"8\",\"cm_nama\":\"sddssd\",\"cm_data\":\"ssd\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:33:35\",\"updated_at\":\"2019-10-01 10:43:29\"}'),
(7, '2019-10-01 10:56:08', 1, 'updateData', 'contohmaster', '{\"cm_id\":\"8\",\"cm_nama\":\"sdsd\",\"cm_data\":\"ssd\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:33:35\",\"updated_at\":\"2019-10-01 10:43:35\"}'),
(8, '2019-10-01 10:56:51', 1, 'updateData', 'contohmaster', '{\"cm_id\":\"8\",\"cm_nama\":\"sdsd\",\"cm_data\":\"ssd\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:33:35\",\"updated_at\":\"2019-10-01 10:56:08\"}'),
(9, '2019-10-01 10:56:54', 1, 'updateData', 'contohmaster', '{\"cm_id\":\"8\",\"cm_nama\":\"sdsd\",\"cm_data\":\"ssdssa\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:33:35\",\"updated_at\":\"2019-10-01 10:56:51\"}'),
(10, '2019-10-01 10:57:18', 1, 'deleteData', 'contohmaster', '{\"cm_id\":\"8\",\"cm_nama\":\"sdsd\",\"cm_data\":\"ssdssa\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 10:33:35\",\"updated_at\":\"2019-10-01 10:56:51\"}'),
(11, '2019-10-01 10:58:10', 1, 'updateData', 'contohmaster', '{\"cm_id\":\"9\",\"cm_nama\":\"tes\",\"cm_data\":\"sdsd\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:33:41\",\"updated_at\":null}'),
(12, '2019-10-01 10:58:15', 1, 'deleteData', 'contohmaster', '{\"cm_id\":\"9\",\"cm_nama\":\"tes\",\"cm_data\":\"sdsd\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 10:33:41\",\"updated_at\":null}'),
(13, '2019-10-01 11:18:04', 1, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"SMARTSOFT SOP\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2019-06-26 13:56:36\"}'),
(14, '2019-10-01 14:21:22', 1, 'updateData', 'user', '{\"id\":\"11\",\"nip\":\"oplos\",\"name\":\"Oplos\",\"email\":\"oplos@oplos.com\",\"password\":\"0192023a7bbd73250516f069df18b500\",\"role_id\":\"18\",\"desc\":\"-\\r\\n\",\"status\":\"0\",\"created_at\":\"2018-11-15 16:47:11\",\"updated_at\":\"2019-06-26 11:36:03\"}'),
(15, '2019-10-01 14:23:04', 1, 'updateData', 'customer', '{\"id\":\"5\",\"nama\":\"Bayu Briyan El Roy\",\"email\":\"bayubriyanelroy@gmail.com\",\"telp\":\"08123000801\",\"alamat\":\"address\",\"status\":\"ENABLE\",\"created_at\":\"2019-08-15 07:44:50\",\"updated_at\":\"2019-08-15 07:48:37\"}'),
(16, '2019-10-01 14:27:47', 1, 'updateData', 'customer', '{\"id\":\"6\",\"nama\":\"kjs\",\"email\":\"a@gmial.com\",\"telp\":\"898\",\"alamat\":\"jdf\",\"status\":\"ENABLE\",\"created_at\":\"2019-08-15 07:54:51\",\"updated_at\":\"2019-08-15 09:46:19\"}'),
(17, '2019-10-01 15:17:03', 1, 'updateData', 'customer', '{\"id\":\"7\",\"nama\":\"Rahmat\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:15:09\",\"updated_at\":null}'),
(18, '2019-10-01 15:17:09', 1, 'deleteData', 'file', '{\"id\":\"177\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"7\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:15:09\",\"updated_at\":null}'),
(19, '2019-10-01 15:17:09', 1, 'deleteData', 'customer', '{\"id\":\"7\",\"nama\":\"Rahmat\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 15:15:09\",\"updated_at\":null}'),
(20, '2019-10-01 15:19:31', 1, 'updateData', 'customer', '{\"id\":\"8\",\"nama\":\"Rahmat\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:19:10\",\"updated_at\":null}'),
(21, '2019-10-01 15:19:37', 1, 'deleteData', 'file', '{\"id\":\"178\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"8\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:19:10\",\"updated_at\":null}'),
(22, '2019-10-01 15:19:37', 1, 'deleteData', 'customer', '{\"id\":\"8\",\"nama\":\"Rahmat\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 15:19:10\",\"updated_at\":null}'),
(23, '2019-10-01 15:21:15', 1, 'insertData', 'customer', '{\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"created_at\":\"2019-10-01 15:21:15\",\"status\":\"ENABLE\"}'),
(24, '2019-10-01 15:21:15', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":9,\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:15\"}'),
(25, '2019-10-01 15:21:27', 1, 'insertData', 'customer', '{\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"created_at\":\"2019-10-01 15:21:27\",\"status\":\"ENABLE\"}'),
(26, '2019-10-01 15:21:27', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":10,\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:27\"}'),
(27, '2019-10-01 15:21:59', 1, 'insertData', 'customer', '{\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"created_at\":\"2019-10-01 15:21:59\",\"status\":\"ENABLE\"}'),
(28, '2019-10-01 15:21:59', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":11,\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:59\"}'),
(29, '2019-10-01 15:22:01', 1, 'insertData', 'customer', '{\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"created_at\":\"2019-10-01 15:22:01\",\"status\":\"ENABLE\"}'),
(30, '2019-10-01 15:22:01', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":12,\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:22:01\"}'),
(31, '2019-10-01 15:22:20', 1, 'insertData', 'customer', '{\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"created_at\":\"2019-10-01 15:22:20\",\"status\":\"ENABLE\"}'),
(32, '2019-10-01 15:22:21', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":13,\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:22:21\"}'),
(33, '2019-10-01 15:23:02', 1, 'updateData', 'customer', '{\"id\":\"13\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:22:20\",\"updated_at\":null}'),
(34, '2019-10-01 15:23:04', 1, 'updateData', 'customer', '{\"id\":\"12\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:22:01\",\"updated_at\":null}'),
(35, '2019-10-01 15:23:05', 1, 'updateData', 'customer', '{\"id\":\"11\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:59\",\"updated_at\":null}'),
(36, '2019-10-01 15:23:06', 1, 'updateData', 'customer', '{\"id\":\"10\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:27\",\"updated_at\":null}'),
(37, '2019-10-01 15:23:08', 1, 'updateData', 'customer', '{\"id\":\"9\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:15\",\"updated_at\":null}'),
(38, '2019-10-01 15:23:12', 1, 'deleteData', 'file', '{\"id\":\"179\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"9\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:15\",\"updated_at\":null}'),
(39, '2019-10-01 15:23:12', 1, 'deleteData', 'customer', '{\"id\":\"9\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 15:21:15\",\"updated_at\":null}'),
(40, '2019-10-01 15:24:27', 1, 'deleteData', 'file', '{\"id\":\"183\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"13\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:22:21\",\"updated_at\":null}'),
(41, '2019-10-01 15:24:27', 1, 'deleteData', 'customer', '{\"id\":\"13\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 15:22:20\",\"updated_at\":null}'),
(42, '2019-10-01 15:25:05', 1, 'deleteData', 'file', '{\"id\":\"182\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"12\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:22:01\",\"updated_at\":null}'),
(43, '2019-10-01 15:25:05', 1, 'deleteData', 'customer', '{\"id\":\"12\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 15:22:01\",\"updated_at\":null}'),
(44, '2019-10-01 15:25:32', 1, 'deleteData', 'file', '{\"id\":\"180\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"10\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:27\",\"updated_at\":null}'),
(45, '2019-10-01 15:25:32', 1, 'deleteData', 'customer', '{\"id\":\"10\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 15:21:27\",\"updated_at\":null}'),
(46, '2019-10-01 15:25:36', 1, 'deleteData', 'file', '{\"id\":\"181\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"11\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:59\",\"updated_at\":null}'),
(47, '2019-10-01 15:25:36', 1, 'deleteData', 'customer', '{\"id\":\"11\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 15:21:59\",\"updated_at\":null}'),
(48, '2019-10-01 15:28:17', 1, 'insertData', 'customer', '{\"nama\":\"Rahmat\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"created_at\":\"2019-10-01 15:28:17\",\"status\":\"ENABLE\"}'),
(49, '2019-10-01 15:28:17', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":14,\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:28:17\"}'),
(50, '2019-10-01 15:30:39', 1, 'updateData', 'customer', '{\"id\":\"14\",\"nama\":\"Rahmat\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:28:17\",\"updated_at\":null}'),
(51, '2019-10-01 15:31:05', 1, 'deleteData', 'file', '{\"id\":\"184\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"14\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:28:17\",\"updated_at\":null}'),
(52, '2019-10-01 15:31:05', 1, 'deleteData', 'customer', '{\"id\":\"14\",\"nama\":\"Rahmat\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 15:28:17\",\"updated_at\":null}'),
(53, '2019-10-01 17:09:44', 1, 'insertData', 'customer', '{\"nama\":\"tes tamba\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"created_at\":\"2019-10-01 17:09:44\",\"status\":\"ENABLE\"}'),
(54, '2019-10-01 17:09:44', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":15,\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 17:09:44\"}'),
(55, '2019-10-01 17:09:50', 1, 'updateData', 'customer', '{\"id\":\"15\",\"nama\":\"tes tamba\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 17:09:44\",\"updated_at\":null}'),
(56, '2019-10-01 17:09:55', 1, 'deleteData', 'file', '{\"id\":\"185\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"15\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 17:09:44\",\"updated_at\":null}'),
(57, '2019-10-01 17:09:55', 1, 'deleteData', 'customer', '{\"id\":\"15\",\"nama\":\"tes tamba\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 17:09:44\",\"updated_at\":null}'),
(58, '2019-10-15 09:53:06', 1, 'deleteData', 'customer', '{\"id\":\"5\",\"nama\":\"Bayu Briyan El Roy\",\"email\":\"bayubriyanelroy@gmail.com\",\"telp\":\"08123000801\",\"alamat\":\"address\",\"status\":\"ENABLE\",\"created_at\":\"2019-08-15 07:44:50\",\"updated_at\":\"2019-10-01 14:23:04\"}'),
(59, '2019-10-15 09:58:06', 1, 'insertData', 'customer', '{\"nama\":\"Iqbal luthfi\",\"email\":\"sistem.mikir@gmail.com\",\"telp\":\"2342\",\"alamat\":\"asdfadsf\",\"created_at\":\"2019-10-15 09:58:06\",\"status\":\"ENABLE\"}'),
(60, '2019-10-15 09:58:06', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":16,\"status\":\"ENABLE\",\"created_at\":\"2019-10-15 09:58:06\"}'),
(61, '2019-10-22 11:47:44', 1, 'updateData', 'konfig', '{\"id\":\"7\",\"slug\":\"LOGO\",\"value\":\"http:\\/\\/www.pertanian.go.id\\/img\\/logo.png\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:32\",\"updated_at\":\"2019-04-29 10:56:09\"}'),
(62, '2019-10-22 13:14:57', 1, 'insertData', 'customer_dnd', '{\"nama\":\"Solihun\",\"email\":\"solihun@gmail.com\",\"telp\":\"089182491928\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":0}'),
(63, '2019-10-22 13:14:57', 1, 'insertData', 'customer_dnd', '{\"nama\":\"Gatot\",\"email\":\"gatot@gmail.com\",\"telp\":\"089128498129\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":1}'),
(64, '2019-10-22 13:14:57', 1, 'insertData', 'customer_dnd', '{\"nama\":\"\",\"email\":\"\",\"telp\":\"\",\"alamat\":\"\",\"status\":\"ENABLE\",\"urutan\":2}'),
(65, '2019-10-22 13:14:57', 1, 'insertData', 'customer_dnd', '{\"nama\":\"Soleh\",\"email\":\"soleh@gmail.com\",\"telp\":\"081249812947\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":3}'),
(66, '2019-10-22 13:15:02', 1, 'insertData', 'customer_dnd', '{\"nama\":\"Soleh\",\"email\":\"soleh@gmail.com\",\"telp\":\"081249812947\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":0}'),
(67, '2019-10-22 13:15:02', 1, 'insertData', 'customer_dnd', '{\"nama\":\"Solihun\",\"email\":\"solihun@gmail.com\",\"telp\":\"089182491928\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":1}'),
(68, '2019-10-22 13:15:02', 1, 'insertData', 'customer_dnd', '{\"nama\":\"Gatot\",\"email\":\"gatot@gmail.com\",\"telp\":\"089128498129\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":2}'),
(69, '2019-10-22 13:15:02', 1, 'insertData', 'customer_dnd', '{\"nama\":\"\",\"email\":\"\",\"telp\":\"\",\"alamat\":\"\",\"status\":\"ENABLE\",\"urutan\":3}'),
(70, '2019-10-22 13:26:52', 1, 'updateData', 'customer', '{\"id\":\"6\",\"nama\":\"kjs\",\"email\":\"a@gmial.com\",\"telp\":\"898\",\"alamat\":\"jdf\",\"status\":\"ENABLE\",\"created_at\":\"2019-08-15 07:54:51\",\"updated_at\":\"2019-10-01 14:27:47\"}'),
(71, '2019-10-22 13:27:06', 1, 'updateData', 'customer', '{\"id\":\"3\",\"nama\":\"Gatot\",\"email\":\"gatot@gmail.com\",\"telp\":\"238137\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":\"2019-08-15 07:42:48\"}'),
(72, '2019-10-22 13:35:26', 1, 'deleteData', 'customer', '{\"id\":\"6\",\"nama\":\"kjs\",\"email\":\"a@gmial.com\",\"telp\":\"898\",\"alamat\":\"18\",\"status\":\"ENABLE\",\"created_at\":\"2019-08-15 07:54:51\",\"updated_at\":\"2019-10-22 13:26:52\"}'),
(73, '2019-10-22 13:35:47', 1, 'updateData', 'customer', '{\"id\":\"16\",\"nama\":\"Iqbal luthfi\",\"email\":\"sistem.mikir@gmail.com\",\"telp\":\"2342\",\"alamat\":\"asdfadsf\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-15 09:58:06\",\"updated_at\":null}'),
(74, '2019-10-22 13:35:57', 1, 'updateData', 'customer', '{\"id\":\"16\",\"nama\":\"Iqbal luthfi\",\"email\":\"sistem.mikir@gmail.com\",\"telp\":\"2342\",\"alamat\":\"asdfadsf\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-15 09:58:06\",\"updated_at\":\"2019-10-22 13:35:47\"}'),
(75, '2019-10-22 13:36:30', 1, 'updateData', 'customer', '{\"id\":\"16\",\"nama\":\"Iqbal luthfi\",\"email\":\"sistem.mikir@gmail.com\",\"telp\":\"2342\",\"alamat\":\"asem\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-15 09:58:06\",\"updated_at\":\"2019-10-22 13:35:57\"}'),
(76, '2019-11-02 15:49:56', 1, 'deleteData', 'access', '{\"id\":\"2\",\"access_control_id\":\"94\",\"role_id\":\"17\",\"status\":\"active\"}'),
(77, '2019-11-02 15:50:26', 1, 'deleteData', 'access', '{\"id\":\"3\",\"access_control_id\":\"94\",\"role_id\":\"17\",\"status\":\"active\"}{\"id\":\"4\",\"access_control_id\":\"293\",\"role_id\":\"17\",\"status\":\"active\"}{\"id\":\"5\",\"access_control_id\":\"294\",\"role_id\":\"17\",\"status\":\"active\"}'),
(78, '2019-11-02 15:50:43', 1, 'insertData', 'customer', '{\"nama\":\"1\",\"email\":\"2\",\"telp\":\"3\",\"alamat\":\"17\",\"created_at\":\"2019-11-02 15:50:43\",\"status\":\"ENABLE\"}'),
(79, '2019-11-02 15:51:31', 1, 'deleteData', 'access', '{\"id\":\"8\",\"access_control_id\":\"149\",\"role_id\":\"17\",\"status\":\"active\"}{\"id\":\"7\",\"access_control_id\":\"147\",\"role_id\":\"17\",\"status\":\"active\"}{\"id\":\"6\",\"access_control_id\":\"94\",\"role_id\":\"17\",\"status\":\"active\"}'),
(80, '2019-11-02 15:51:48', 1, 'deleteData', 'access', '{\"id\":\"11\",\"access_control_id\":\"147\",\"role_id\":\"17\",\"status\":\"active\"}{\"id\":\"10\",\"access_control_id\":\"146\",\"role_id\":\"17\",\"status\":\"active\"}{\"id\":\"9\",\"access_control_id\":\"94\",\"role_id\":\"17\",\"status\":\"active\"}{\"id\":\"12\",\"access_control_id\":\"149\",\"role_id\":\"17\",\"status\":\"active\"}'),
(81, '2019-11-08 09:48:39', 1, 'insertData', 'customer', '{\"nama\":\"Tesing\",\"email\":\"testing@gmail.com\",\"telp\":\"1\",\"alamat\":\"1\",\"created_at\":\"2019-11-08 09:48:39\",\"status\":\"ENABLE\"}'),
(82, '2019-11-20 13:34:18', 1, 'insertData', 'tiket', '{\"kronologis\":\"oasndsa\",\"fitur\":\"1\",\"link\":\"master\\/diklat\",\"username\":\"rezahusein\",\"password\":\"1234\",\"tanggal\":\"2019-08-07\",\"created_by\":\"12\",\"created_at\":\"2019-11-20 13:34:18\",\"status\":\"ENABLE\"}'),
(83, '2019-11-20 13:34:18', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"tiket\",\"table_id\":1,\"status\":\"ENABLE\",\"created_at\":\"2019-11-20 13:34:18\"}'),
(84, '2019-11-20 14:58:31', 1, 'insertData', 'tiket', '{\"kronologis\":\"oasndsa\",\"fitur\":\"gajah\",\"link\":\"master\\/Grade_jabatan\",\"username\":\"rezahusein\",\"password\":\"1234\",\"tanggal\":\"2019-08-07\",\"created_by\":\"12\",\"created_at\":\"2019-11-20 14:58:31\",\"status\":\"ENABLE\"}'),
(85, '2019-11-20 14:58:31', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"tiket\",\"table_id\":2,\"status\":\"ENABLE\",\"created_at\":\"2019-11-20 14:58:31\"}'),
(86, '2019-11-20 14:58:52', 1, 'updateData', 'tiket', '{\"id\":\"2\",\"kronologis\":\"oasndsa\",\"fitur\":\"gajah\",\"link\":\"master\\/Grade_jabatan\",\"username\":\"rezahusein\",\"password\":\"1234\",\"tanggal\":\"2019-08-07\",\"created_at\":\"2019-11-20 14:58:31\",\"updated_at\":null,\"created_by\":\"12\",\"status\":\"ENABLE\"}'),
(87, '2019-11-20 14:58:55', 1, 'updateData', 'tiket', '{\"id\":\"2\",\"kronologis\":\"oasndsa\",\"fitur\":\"gajah\",\"link\":\"master\\/Grade_jabatan\",\"username\":\"rezahusein\",\"password\":\"1234\",\"tanggal\":\"2019-08-07\",\"created_at\":\"2019-11-20 14:58:31\",\"updated_at\":null,\"created_by\":\"12\",\"status\":\"DISABLE\"}'),
(88, '2019-11-20 15:00:07', 1, 'updateData', 'tiket', '{\"id\":\"2\",\"kronologis\":\"oasndsa\",\"fitur\":\"gajah\",\"link\":\"master\\/Grade_jabatan\",\"username\":\"rezahusein\",\"password\":\"1234\",\"tanggal\":\"2019-08-07\",\"created_at\":\"2019-11-20 14:58:31\",\"updated_at\":null,\"created_by\":\"12\",\"status\":\"ENABLE\"}'),
(89, '2019-11-22 11:45:33', 12, 'insertData', 'customer_dnd', '{\"nama\":\"Soleh\",\"email\":\"soleh@gmail.com\",\"telp\":\"081249812947\",\"alamat\":\"Jalan Mawar\",\"status\":\"ENABLE\",\"urutan\":0}'),
(90, '2019-11-22 11:45:33', 12, 'insertData', 'customer_dnd', '{\"nama\":\"Solihun\",\"email\":\"solihun@gmail.com\",\"telp\":\"089182491928\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":1}'),
(91, '2019-11-22 11:45:33', 12, 'insertData', 'customer_dnd', '{\"nama\":\"Gatot\",\"email\":\"gatot@gmail.com\",\"telp\":\"089128498129\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":2}'),
(92, '2019-11-22 11:45:33', 12, 'insertData', 'customer_dnd', '{\"nama\":\"\",\"email\":\"\",\"telp\":\"\",\"alamat\":\"\",\"status\":\"ENABLE\",\"urutan\":3}'),
(93, '2019-11-22 11:46:49', 12, 'insertData', 'customer', '{\"nama\":\"Arvin\",\"email\":\"asasa@sasas.cdd\",\"telp\":\"2091838109\",\"alamat\":\"KJASKLasa\",\"created_at\":\"2019-11-22 11:46:49\",\"status\":\"ENABLE\"}'),
(94, '2019-11-22 11:49:13', 12, 'updateData', 'report', '{\"id\":\"2\",\"name\":\"Customer\",\"query\":\"SELECT customer.*,file.dir FROM customer LEFT JOIN file ON file.table_id = customer.id and file.table= \'customer\'\",\"header\":\"[\\\"nama\\\",\\\"email\\\",\\\"telp\\\",\\\"alamat\\\",\\\"status\\\",\\\"dir\\\"]\",\"status\":\"ENABLE\",\"created_at\":\"2019-03-25 10:47:39\",\"updated_at\":\"2019-07-01 09:01:19\"}'),
(95, '2019-11-22 15:17:16', 1, 'updateData', 'report', '{\"id\":\"3\",\"name\":\"Data Penduduk\",\"query\":\"SELECT * FROM penduduk\",\"header\":null,\"status\":\"ENABLE\",\"created_at\":\"2019-11-22 15:17:07\",\"updated_at\":null}'),
(96, '2019-12-02 07:52:48', 1, 'updateData', 'report', '{\"id\":\"2\",\"name\":\"Customer\",\"query\":\"SELECT customer.*,file.dir FROM customer LEFT JOIN file ON file.table_id = customer.id and file.table= \'customer\'\",\"header\":\"[\\\"nama\\\",\\\"email\\\",\\\"telp\\\",\\\"status\\\",\\\"dir\\\"]\",\"status\":\"ENABLE\",\"created_at\":\"2019-03-25 10:47:39\",\"updated_at\":\"2019-11-22 11:49:13\"}'),
(97, '2019-12-02 07:54:07', 1, 'updateData', 'menu_master', '{\"id\":\"13\",\"name\":\"Customer\",\"icon\":\"fa fa-user\",\"link\":\"master\\/customer\",\"urutan\":\"2\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-07-01 09:02:50\",\"updated_at\":null}'),
(98, '2019-12-02 07:54:37', 1, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"1\\\",\\\"13\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2019-07-01 09:03:03\"}'),
(99, '2019-12-02 07:56:54', 1, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-black\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2019-05-01 09:53:50\"}'),
(100, '2019-12-02 08:39:21', 1, 'updateData', 'customer', '{\"id\":\"17\",\"nama\":\"1\",\"email\":\"2\",\"telp\":\"3\",\"alamat\":\"17\",\"status\":\"ENABLE\",\"created_at\":\"2019-11-02 15:50:43\",\"updated_at\":null}'),
(101, '2019-12-02 09:23:39', 1, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"SMARTSOFT SOP\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2019-10-01 11:18:04\"}'),
(102, '2019-12-02 09:23:52', 1, 'updateData', 'konfig', '{\"id\":\"13\",\"slug\":\"TITLE_APPLICATION\",\"value\":\"Smartsoft | Standard operation system\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:39:54\",\"updated_at\":null}'),
(103, '2019-12-02 09:24:01', 1, 'updateData', 'konfig', '{\"id\":\"16\",\"slug\":\"TITLE_LOGIN_APPLICATION\",\"value\":\"Smartsoft | Login\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:47:41\",\"updated_at\":null}'),
(104, '2019-12-02 09:24:35', 1, 'updateData', 'role', '{\"id\":\"18\",\"role\":\"Operation\",\"status\":\"ENABLE\",\"menu\":null,\"created_at\":\"2018-10-24 10:29:54\",\"updated_at\":null}'),
(105, '2019-12-02 09:48:19', 1, 'deleteData', 'user', '{\"id\":\"11\",\"nip\":\"oplos\",\"name\":\"Oplos\",\"email\":\"oplos@oplos.com\",\"password\":\"0192023a7bbd73250516f069df18b500\",\"role_id\":\"18\",\"desc\":\"-\\r\\n\",\"status\":\"0\",\"created_at\":\"2018-11-15 16:47:11\",\"updated_at\":\"2019-10-01 14:21:22\"}'),
(106, '2019-12-02 09:48:19', 1, 'deleteData', 'file', '{\"id\":\"45\",\"name\":\"6950c16c9bcc6995f376b297f163175988920.png\",\"mime\":\"image\\/png\",\"dir\":\"webfile\\/6950c16c9bcc6995f376b297f163175988920.png\",\"table\":\"user\",\"table_id\":\"11\",\"status\":\"ENABLE\",\"created_at\":\"2018-11-15 16:47:11\",\"updated_at\":\"2019-02-18 16:18:34\"}'),
(107, '2019-12-02 09:48:23', 1, 'deleteData', 'user', '{\"id\":\"12\",\"nip\":\"arvin\",\"name\":\"arvin\",\"email\":\"arvin\",\"password\":\"89f6432af2e2bcea9489ad02cd27a134\",\"role_id\":\"17\",\"desc\":null,\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":null}'),
(108, '2019-12-02 09:48:23', 1, 'deleteData', 'file', '{\"id\":\"43\",\"name\":\"6950c16c9bcc6995f376b297f163175921106.jpg\",\"mime\":\"image\\/jpeg\",\"dir\":\"webfile\\/6950c16c9bcc6995f376b297f163175921106.jpg\",\"table\":\"user\",\"table_id\":\"12\",\"status\":\"ENABLE\",\"created_at\":\"2018-11-05 11:15:57\",\"updated_at\":null}'),
(109, '2019-12-02 09:49:09', 1, 'updateData', 'user', '{\"id\":\"9\",\"nip\":\"operator\",\"name\":\"Operator\",\"email\":\"\",\"password\":\"4b583376b2767b923c3e1da60d10de59\",\"role_id\":\"18\",\"desc\":\"0\",\"status\":\"0\",\"created_at\":\"2018-10-24 10:53:02\",\"updated_at\":\"2019-02-18 16:18:41\"}'),
(110, '2019-12-02 10:34:26', 9, 'updateData', 'report', '{\"id\":\"4\",\"name\":\"List Jadwal\",\"query\":\"SELECT a.id, \'angkatan\', \'tanggal_mulai\', \'tanggal_selesai\', \'jenjang_jabatan\', \'pic\', \'unit_pelaksanaan\'\\r\\nFROM user a\\r\\nLIMIT 3\",\"header\":null,\"status\":\"ENABLE\",\"created_at\":\"2019-12-02 10:34:08\",\"updated_at\":null}'),
(111, '2019-12-02 10:36:06', 9, 'updateData', 'report', '{\"id\":\"5\",\"name\":\"List Ujian\",\"query\":\"SELECT a.id, \'angkatan\', \'tanggal_ujian\', \'jam_ujian\', \'pembimbing\', \'penguji\'\\r\\nFROM user a\\r\\nLIMIT 3\",\"header\":null,\"status\":\"ENABLE\",\"created_at\":\"2019-12-02 10:35:55\",\"updated_at\":null}'),
(112, '2019-12-02 10:37:12', 9, 'updateData', 'report', '{\"id\":\"6\",\"name\":\"Hasil Penilaian\",\"query\":\"SELECT a.id, \'angkatan\', \'tanggal_mulai\', \'tanggal_selesai\', \'tanggal_ujian\' FROM user a LIMIT 3\",\"header\":null,\"status\":\"ENABLE\",\"created_at\":\"2019-12-02 10:36:50\",\"updated_at\":null}'),
(113, '2019-12-02 11:05:41', 9, 'updateData', 'report', '{\"id\":\"7\",\"name\":\"Profile\",\"query\":\"SELECT * FROM user\",\"header\":null,\"status\":\"ENABLE\",\"created_at\":\"2019-12-02 11:05:22\",\"updated_at\":null}'),
(114, '2019-12-02 12:05:41', 1, 'insertData', 'jadwal', '{\"tanggal_mulai\":\"2019-12-04\",\"tanggal_selesai\":\"2019-12-19\",\"lokasi\":\"Kantor Jakarta Timur\",\"angkatan\":\"2019\",\"jenjang_jabatan\":\"Jabatan 1\",\"pic\":\"Rudi\",\"unit_pelaksanaan\":\"Unit 1\",\"nama\":[\"Tahap 1\",\"Tahap 2\",\"Tahap 3\",\"Tahap 4\",\"155150200111031\",\"155150200111032\",\"155150200111033\",\"155150200111034\"],\"email\":[\"02-12-2019\",\"02-12-2019\",\"02-12-2019\",\"02-12-2019\",\"Hafidz\",\"Hafidz\",\"Hafidz\",\"Hafidz\"],\"telp\":[\"02-12-2019\",\"02-12-2019\",\"02-12-2019\",\"02-12-2019\",\"Jabatan 1\",\"Jabatan 2\",\"Jabatan 3\",\"Jabatan 4\"],\"created_at\":\"2019-12-02 12:05:41\",\"status\":\"ENABLE\"}'),
(115, '2019-12-02 12:06:06', 1, 'insertData', 'jadwal', '{\"tanggal_mulai\":\"2019-12-04\",\"tanggal_selesai\":\"2019-12-19\",\"lokasi\":\"Kantor Jakarta Timur\",\"angkatan\":\"2019\",\"jenjang_jabatan\":\"Jabatan 1\",\"pic\":\"Rudi\",\"unit_pelaksanaan\":\"Unit 1\",\"nama\":[\"Tahap 1\",\"Tahap 2\",\"Tahap 3\",\"Tahap 4\",\"155150200111031\",\"155150200111032\",\"155150200111033\",\"155150200111034\"],\"email\":[\"02-12-2019\",\"02-12-2019\",\"02-12-2019\",\"02-12-2019\",\"Hafidz\",\"Hafidz\",\"Hafidz\",\"Hafidz\"],\"telp\":[\"02-12-2019\",\"02-12-2019\",\"02-12-2019\",\"02-12-2019\",\"Jabatan 1\",\"Jabatan 2\",\"Jabatan 3\",\"Jabatan 4\"],\"created_at\":\"2019-12-02 12:06:06\",\"status\":\"ENABLE\"}'),
(116, '2019-12-02 12:06:58', 1, 'insertData', 'jadwal', '{\"tanggal_mulai\":\"2019-12-04\",\"tanggal_selesai\":\"2019-12-19\",\"lokasi\":\"Kantor Jakarta Timur\",\"angkatan\":\"2019\",\"jenjang_jabatan\":\"Jabatan 1\",\"pic\":\"Rudi\",\"unit_pelaksanaan\":\"Unit 1\",\"nama\":[\"Tahap 1\",\"Tahap 2\",\"Tahap 3\",\"Tahap 4\",\"155150200111031\",\"155150200111032\",\"155150200111033\",\"155150200111034\"],\"email\":[\"02-12-2019\",\"02-12-2019\",\"02-12-2019\",\"02-12-2019\",\"Hafidz\",\"Hafidz\",\"Hafidz\",\"Hafidz\"],\"telp\":[\"02-12-2019\",\"02-12-2019\",\"02-12-2019\",\"02-12-2019\",\"Jabatan 1\",\"Jabatan 2\",\"Jabatan 3\",\"Jabatan 4\"],\"created_at\":\"2019-12-02 12:06:58\",\"status\":\"ENABLE\"}'),
(117, '2019-12-02 12:07:28', 1, 'insertData', 'jadwal', '{\"tanggal_mulai\":\"2019-12-04\",\"tanggal_selesai\":\"2019-12-05\",\"lokasi\":\"Jakarta\",\"angkatan\":\"2019\",\"jenjang_jabatan\":\"Jabatan 1\",\"pic\":\"Rudi\",\"unit_pelaksanaan\":\"Unit 1\",\"created_at\":\"2019-12-02 12:07:28\",\"status\":\"ENABLE\"}'),
(118, '2019-12-02 12:07:29', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"jadwal\",\"table_id\":19,\"status\":\"ENABLE\",\"created_at\":\"2019-12-02 12:07:29\"}'),
(119, '2019-12-02 13:17:49', 1, 'updateData', 'konfig', '{\"id\":\"24\",\"slug\":\"LOGIN\",\"value\":\"0\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-21 14:12:14\",\"updated_at\":\"2019-02-21 16:33:07\"}'),
(120, '2019-12-02 13:18:36', 1, 'updateData', 'konfig', '{\"id\":\"17\",\"slug\":\"LOGIN_TITLE\",\"value\":\"LOGIN ADMIN\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:48:55\",\"updated_at\":null}'),
(121, '2019-12-02 13:18:52', 1, 'updateData', 'konfig', '{\"id\":\"24\",\"slug\":\"LOGIN\",\"value\":\"1\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-21 14:12:14\",\"updated_at\":\"2019-12-02 13:17:49\"}'),
(122, '2019-12-03 06:30:07', 1, 'updateData', 'menu_master', '{\"id\":\"1\",\"name\":\"Dashboard\",\"icon\":\"mdi mdi-monitor-dashboard\",\"link\":\"\",\"urutan\":\"1\",\"parent\":\"0\",\"notif\":null,\"status\":\"ENABLE\",\"created_at\":\"2019-01-17 14:33:33\",\"updated_at\":null}'),
(123, '2019-12-03 06:30:26', 1, 'updateData', 'menu_master', '{\"id\":\"17\",\"name\":\"Data Jadwal\",\"icon\":\"mdi mdi-book\",\"link\":\"master\\/jadwal\",\"urutan\":\"3\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-12-02 07:53:51\",\"updated_at\":null}'),
(124, '2019-12-06 11:08:28', 1, 'updateData', 'site', '{\"id\":\"13\",\"code\":\"71605054\",\"site\":\"BINUNGAN\",\"name\":\"BUMA BINUNGAN\",\"status\":\"ENABLE\",\"created_at\":\"2018-03-20 06:48:44\",\"updated_at\":\"2018-05-03 09:09:58\"}'),
(125, '2019-12-06 11:08:55', 1, 'updateData', 'customer', '{\"id\":\"17\",\"nama\":\"ahmadfaiz\",\"email\":\"faiz3d@gmail.com\",\"telp\":\"098088098080\",\"alamat\":\"kedungrejo\\r\\n\",\"status\":\"ENABLE\",\"created_at\":\"2019-11-02 15:50:43\",\"updated_at\":\"2019-12-02 08:39:21\"}'),
(126, '2019-12-06 11:09:35', 1, 'updateData', 'customer', '{\"id\":\"16\",\"nama\":\"Iqbal luthfi\",\"email\":\"sistem.mikir@gmail.com\",\"telp\":\"2342\",\"alamat\":\"asem\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-15 09:58:06\",\"updated_at\":\"2019-10-22 13:36:30\"}'),
(127, '2019-12-06 11:10:06', 1, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"SIOMA SIOPA\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2019-12-02 09:23:39\"}'),
(128, '2019-12-20 08:41:47', 1, 'updateData', 'user', '{\"id\":\"1\",\"nip\":\"smartsoft\",\"name\":\"Smartsoft Studio\",\"email\":\"smartsoftstudio1@mail.com\",\"password\":\"21232f297a57a5a743894a0e4a801fc3\",\"role_id\":\"17\",\"desc\":\"asda\",\"status\":\"0\",\"created_at\":\"2018-02-23 16:09:49\",\"updated_at\":\"2019-02-19 11:02:53\"}'),
(129, '2020-01-07 17:24:34', 1, 'insertData', 'neraca_saldo', '{\"akun\":\"1\",\"deskripsi\":\"asdasdas\",\"debit\":\"123123\",\"credit\":\"dasdas\",\"created_by\":\"12\",\"tipe_neraca\":\"12e21\",\"created_at\":\"2020-01-07 17:24:34\",\"status\":\"ENABLE\"}'),
(130, '2020-01-07 17:24:34', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"neraca_saldo\",\"table_id\":1,\"status\":\"ENABLE\",\"created_at\":\"2020-01-07 17:24:34\"}'),
(131, '2020-01-08 15:27:05', 1, 'deleteData', 'customer', '{\"id\":\"18\",\"nama\":\"Tesing\",\"email\":\"testing@gmail.com\",\"telp\":\"1\",\"alamat\":\"1\",\"status\":\"ENABLE\",\"created_at\":\"2019-11-08 09:48:39\",\"updated_at\":null}'),
(132, '2020-01-08 15:27:07', 1, 'deleteData', 'customer', '{\"id\":\"20\",\"nama\":\"faiz\",\"email\":\"asalasalan@gmail.com\",\"telp\":\"098765434567\",\"alamat\":\"jember\",\"status\":\"ENABLE\",\"created_at\":\"2019-12-02 08:36:46\",\"updated_at\":null}'),
(133, '2020-01-08 15:34:20', 1, 'deleteData', 'user', '{\"id\":\"9\",\"nip\":\"hafidz\",\"name\":\"Hafidz\",\"email\":\"hafidz@gmail.com\",\"password\":\"21232f297a57a5a743894a0e4a801fc3\",\"role_id\":\"18\",\"desc\":\"-\",\"status\":\"0\",\"created_at\":\"2018-10-24 10:53:02\",\"updated_at\":\"2019-12-02 09:49:09\"}'),
(134, '2020-01-08 15:34:20', 1, 'deleteData', 'file', '{\"id\":\"48\",\"name\":\"6950c16c9bcc6995f376b297f163175955554.png\",\"mime\":\"image\\/png\",\"dir\":\"webfile\\/6950c16c9bcc6995f376b297f163175955554.png\",\"table\":\"user\",\"table_id\":\"9\",\"status\":null,\"created_at\":null,\"updated_at\":\"2019-02-18 16:18:41\"}'),
(135, '2020-01-08 15:37:57', 1, 'insertData', 'customer_dnd', '{\"nama\":\"Soleh\",\"email\":\"soleh@gmail.com\",\"telp\":\"081249812947\",\"alamat\":\"Jalan Mawar\",\"status\":\"ENABLE\",\"urutan\":0}'),
(136, '2020-01-08 15:37:57', 1, 'insertData', 'customer_dnd', '{\"nama\":\"Solihun\",\"email\":\"solihun@gmail.com\",\"telp\":\"089182491928\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":1}'),
(137, '2020-01-08 15:37:57', 1, 'insertData', 'customer_dnd', '{\"nama\":\"Gatot\",\"email\":\"gatot@gmail.com\",\"telp\":\"089128498129\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":2}'),
(138, '2020-01-08 15:37:57', 1, 'insertData', 'customer_dnd', '{\"nama\":\"\",\"email\":\"\",\"telp\":\"\",\"alamat\":\"\",\"status\":\"ENABLE\",\"urutan\":3}'),
(139, '2020-01-08 15:38:01', 1, 'insertData', 'customer_dnd', '{\"nama\":\"Soleh\",\"email\":\"soleh@gmail.com\",\"telp\":\"081249812947\",\"alamat\":\"Jalan Mawar\",\"status\":\"ENABLE\",\"urutan\":0}'),
(140, '2020-01-08 15:38:01', 1, 'insertData', 'customer_dnd', '{\"nama\":\"Solihun\",\"email\":\"solihun@gmail.com\",\"telp\":\"089182491928\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":1}'),
(141, '2020-01-08 15:38:01', 1, 'insertData', 'customer_dnd', '{\"nama\":\"Gatot\",\"email\":\"gatot@gmail.com\",\"telp\":\"089128498129\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":2}'),
(142, '2020-01-08 15:38:01', 1, 'insertData', 'customer_dnd', '{\"nama\":\"test\",\"email\":\"\",\"telp\":\"\",\"alamat\":\"\",\"status\":\"ENABLE\",\"urutan\":3}'),
(143, '2020-01-08 15:38:51', 1, 'insertData', 'customer', '{\"nama\":\"Iqbal luthfi\",\"email\":\"sistem.mikir@gmail.com\",\"telp\":\"2342\",\"alamat\":\"ere\",\"created_at\":\"2020-01-08 15:38:51\",\"status\":\"ENABLE\"}'),
(144, '2020-01-08 15:38:51', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":21,\"status\":\"ENABLE\",\"created_at\":\"2020-01-08 15:38:51\"}'),
(145, '2020-01-09 08:45:01', 1, 'updateData', 'user', '{\"id\":\"1\",\"nip\":\"smartsoft\",\"name\":\"Smartsoft Studio\",\"email\":\"smartsoftstudio1@mail.com\",\"password\":\"21232f297a57a5a743894a0e4a801fc3\",\"role_id\":\"17\",\"desc\":\"asda\",\"status\":\"0\",\"created_at\":\"2018-02-23 16:09:49\",\"updated_at\":\"2019-12-20 08:41:47\"}'),
(146, '2020-01-09 08:45:25', 1, 'updateData', 'customer', '{\"id\":\"16\",\"nama\":\"Iqbal luthfi\",\"email\":\"sistem.mikir@gmail.com\",\"telp\":\"2342\",\"alamat\":\"asem\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-15 09:58:06\",\"updated_at\":\"2019-12-06 11:09:35\"}'),
(147, '2020-01-09 08:47:22', 1, 'updateData', 'customer', '{\"id\":\"19\",\"nama\":\"Arvin\",\"email\":\"asasa@sasas.cdd\",\"telp\":\"2091838109\",\"alamat\":\"KJASKLasa\",\"status\":\"ENABLE\",\"created_at\":\"2019-11-22 11:46:49\",\"updated_at\":null}'),
(148, '2020-01-09 08:47:29', 1, 'updateData', 'customer', '{\"id\":\"19\",\"nama\":\"Arvin\",\"email\":\"asasa@sasas.cdd\",\"telp\":\"2091838109\",\"alamat\":\"KJASKLasa\",\"status\":\"ENABLE\",\"created_at\":\"2019-11-22 11:46:49\",\"updated_at\":\"2020-01-09 08:47:22\"}'),
(149, '2020-01-09 08:49:13', 1, 'updateData', 'customer', '{\"id\":\"19\",\"nama\":\"Arvin\",\"email\":\"asasa@sasas.cdd\",\"telp\":\"2091838109\",\"alamat\":\"KJASKLasa\",\"status\":\"ENABLE\",\"created_at\":\"2019-11-22 11:46:49\",\"updated_at\":\"2020-01-09 08:47:29\"}'),
(150, '2020-01-09 08:51:17', 1, 'updateData', 'customer', '{\"id\":\"19\",\"nama\":\"Arvin\",\"email\":\"asasa@sasas.cdd\",\"telp\":\"2091838109\",\"alamat\":\"KJASKLasa\",\"status\":\"ENABLE\",\"created_at\":\"2019-11-22 11:46:49\",\"updated_at\":\"2020-01-09 08:49:13\"}'),
(151, '2020-01-09 11:33:20', 1, 'updateData', 'customer', '{\"id\":\"19\",\"nama\":\"Arvin\",\"email\":\"asasa@sasas.cdd\",\"telp\":\"2091838109\",\"alamat\":\"KJASKLasa\",\"status\":\"ENABLE\",\"created_at\":\"2019-11-22 11:46:49\",\"updated_at\":\"2020-01-09 08:51:17\"}'),
(152, '2020-01-09 11:34:18', 1, 'updateData', 'customer', '{\"id\":\"19\",\"nama\":\"Arvin\",\"email\":\"asasa@sasas.cdd\",\"telp\":\"2091838109\",\"alamat\":\"asu\",\"status\":\"ENABLE\",\"created_at\":\"2019-11-22 11:46:49\",\"updated_at\":\"2020-01-09 11:33:20\"}'),
(153, '2020-01-09 11:42:09', 1, 'updateData', 'report', '{\"id\":\"7\",\"name\":\"Profile\",\"query\":\"SELECT * FROM user\",\"header\":\"[\\\"id\\\"]\",\"status\":\"ENABLE\",\"created_at\":\"2019-12-02 11:05:22\",\"updated_at\":\"2019-12-02 11:05:41\"}'),
(154, '2020-01-13 14:48:52', 1, 'updateData', 'konfig', '{\"id\":\"17\",\"slug\":\"LOGIN_TITLE\",\"value\":\"SIOMA SIOPA\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:48:55\",\"updated_at\":\"2019-12-02 13:18:36\"}'),
(155, '2020-01-13 14:49:04', 1, 'updateData', 'konfig', '{\"id\":\"13\",\"slug\":\"TITLE_APPLICATION\",\"value\":\"SIOMA SIOPA\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:39:54\",\"updated_at\":\"2019-12-02 09:23:52\"}'),
(156, '2020-01-13 14:49:15', 1, 'updateData', 'konfig', '{\"id\":\"16\",\"slug\":\"TITLE_LOGIN_APPLICATION\",\"value\":\"SIOMA SIOPA\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:47:41\",\"updated_at\":\"2019-12-02 09:24:01\"}'),
(157, '2020-01-13 17:15:19', 1, 'updateData', 'user', '{\"id\":\"1\",\"nip\":\"smartsoft\",\"name\":\"Smartsoft Studio\",\"email\":\"smartsoftstudio1@mail.com\",\"password\":\"21232f297a57a5a743894a0e4a801fc3\",\"role_id\":\"17\",\"desc\":\"asda\",\"status\":\"0\",\"created_at\":\"2018-02-23 16:09:49\",\"updated_at\":\"2020-01-09 08:45:01\"}'),
(158, '2020-01-16 08:12:45', 1, 'updateData', 'report', '{\"id\":\"2\",\"name\":\"Customer\",\"query\":\"SELECT customer.*,file.dir FROM customer LEFT JOIN file ON file.table_id = customer.id and file.table= \'customer\'\",\"header\":\"[\\\"nama\\\",\\\"email\\\",\\\"telp\\\",\\\"alamat\\\",\\\"status\\\",\\\"dir\\\"]\",\"status\":\"ENABLE\",\"created_at\":\"2019-03-25 10:47:39\",\"updated_at\":\"2019-12-02 07:52:48\"}'),
(159, '2020-01-16 08:12:53', 1, 'updateData', 'report', '{\"id\":\"2\",\"name\":\"Customer\",\"query\":\"SELECT customer.*,file.dir FROM customer LEFT JOIN file ON file.table_id = customer.id and file.table= \'customer\'\",\"header\":\"[\\\"nama\\\",\\\"email\\\",\\\"telp\\\",\\\"alamat\\\",\\\"dir\\\"]\",\"status\":\"ENABLE\",\"created_at\":\"2019-03-25 10:47:39\",\"updated_at\":\"2020-01-16 08:12:45\"}'),
(160, '2020-01-21 12:53:18', 1, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-black\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2019-12-02 07:56:54\"}'),
(161, '2020-01-21 12:58:17', 1, 'updateData', 'menu_master', '{\"id\":\"18\",\"name\":\"Buat Jadwal\",\"icon\":\"mdi mdi-book-multiple-plus\",\"link\":\"master\\/jadwal\\/create\",\"urutan\":\"2\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-12-02 07:53:51\",\"updated_at\":null}'),
(162, '2020-01-22 11:18:02', 1, 'updateData', 'user', '{\"id\":\"1\",\"nip\":\"smartsoft\",\"name\":\"Smartsoft Studio\",\"email\":\"smartsoftstudio1@mail.com\",\"password\":\"21232f297a57a5a743894a0e4a801fc3\",\"role_id\":\"17\",\"desc\":\"asda\",\"status\":\"0\",\"created_at\":\"2018-02-23 16:09:49\",\"updated_at\":\"2020-01-13 17:15:19\"}'),
(163, '2020-01-22 11:19:27', 1, 'updateData', 'file', '{\"id\":\"40\",\"name\":\"6950c16c9bcc6995f376b297f16317593930.png\",\"mime\":\"image\\/png\",\"dir\":\"webfile\\/6950c16c9bcc6995f376b297f16317593930.png\",\"table\":\"user\",\"table_id\":\"1\",\"status\":null,\"created_at\":null,\"updated_at\":\"2019-02-18 16:07:47\"}'),
(164, '2020-01-22 11:19:27', 1, 'updateData', 'user', '{\"id\":\"1\",\"nip\":\"smartsoft\",\"name\":\"Smartsoft Studio\",\"email\":\"smartsoftstudio1@mail.com\",\"password\":\"21232f297a57a5a743894a0e4a801fc3\",\"role_id\":\"17\",\"desc\":\"dddf\",\"status\":\"0\",\"created_at\":\"2018-02-23 16:09:49\",\"updated_at\":\"2020-01-22 11:18:02\"}'),
(165, '2020-01-22 11:24:44', 1, 'updateData', 'menu_master', '{\"id\":\"17\",\"name\":\"Data Jadwal\",\"icon\":\"mdi mdi-book\",\"link\":\"penjadwalan\",\"urutan\":\"2\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-12-02 07:53:51\",\"updated_at\":\"2019-12-03 06:30:26\"}'),
(166, '2020-01-22 11:35:45', 1, 'updateData', 'menu_master', '{\"id\":\"14\",\"name\":\"List Ujian\",\"icon\":\"fa fa-list\",\"link\":\"report\\/list-ujian\",\"urutan\":\"3\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-12-02 07:53:51\",\"updated_at\":null}'),
(167, '2020-01-22 11:39:05', 1, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"1\\\",\\\"17\\\",\\\"18\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2019-12-02 07:54:37\"}'),
(168, '2020-01-22 11:39:08', 1, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"1\\\",\\\"17\\\",\\\"18\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2019-12-02 07:54:37\"}'),
(169, '2020-01-22 11:39:08', 1, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"1\\\",\\\"17\\\",\\\"18\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2019-12-02 07:54:37\"}'),
(170, '2020-01-22 11:39:08', 1, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"1\\\",\\\"17\\\",\\\"18\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2019-12-02 07:54:37\"}'),
(171, '2020-01-22 11:39:08', 1, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"1\\\",\\\"17\\\",\\\"18\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2019-12-02 07:54:37\"}'),
(172, '2020-01-22 11:39:17', 1, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"1\\\",\\\"17\\\",\\\"18\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2019-12-02 07:54:37\"}'),
(173, '2020-01-22 11:42:52', 1, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"1\\\",\\\"17\\\",\\\"18\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2019-12-02 07:54:37\"}'),
(174, '2020-01-22 11:46:36', 1, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"1\\\",\\\"17\\\",\\\"18\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2019-12-02 07:54:37\"}'),
(175, '2020-01-22 11:47:56', 1, 'updateData', 'menu_master', '{\"id\":\"20\",\"name\":\"Konfigurasi\",\"icon\":\"fa fa-gears\",\"link\":\"master\\/konfig\",\"urutan\":\"3\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2020-01-22 11:35:29\",\"updated_at\":null}'),
(176, '2020-01-22 12:07:55', 1, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"1\\\",\\\"18\\\",\\\"20\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2020-01-22 11:46:36\"}'),
(177, '2020-01-23 17:58:42', 1, 'deleteData', 'access_block', '{\"ab_id\":\"1\",\"ab_role_id\":\"17\",\"ab_link\":\"master\\/user\\/index\"}{\"ab_id\":\"2\",\"ab_role_id\":\"17\",\"ab_link\":\"master\\/konfig\\/update\"}'),
(178, '2020-01-23 17:59:46', 1, 'deleteData', 'access_block', '{\"ab_id\":\"5\",\"ab_role_id\":\"17\",\"ab_link\":\"master\\/user\\/json\"}{\"ab_id\":\"6\",\"ab_role_id\":\"17\",\"ab_link\":\"master\\/user\\/edit\"}'),
(179, '2020-01-23 18:04:38', 1, 'deleteData', 'access_block', '{\"ab_id\":\"7\",\"ab_role_id\":\"17\",\"ab_link\":\"master\\/user\\/edit\"}'),
(180, '2020-01-23 18:08:00', 1, 'deleteData', 'access_block', '{\"ab_id\":\"8\",\"ab_role_id\":\"17\",\"ab_link\":\"master\\/konfig\\/index\"}{\"ab_id\":\"9\",\"ab_role_id\":\"17\",\"ab_link\":\"master\\/user\\/edit\"}'),
(181, '2020-01-23 18:08:54', 1, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"1\\\",\\\"18\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"20\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2020-01-22 12:07:55\"}'),
(182, '2020-01-23 18:23:50', 1, 'deleteData', 'access_block', '{\"ab_id\":\"10\",\"ab_role_id\":\"17\",\"ab_link\":\"master\\/user\\/edit\"}'),
(183, '2020-02-05 17:48:03', 1, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"1\\\",\\\"18\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"24\\\",\\\"20\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2020-01-23 18:08:54\"}'),
(184, '2020-02-06 09:14:56', 1, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"1\\\",\\\"18\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"24\\\",\\\"20\\\",\\\"16\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2020-02-05 17:48:03\"}'),
(185, '2020-04-21 09:45:53', 1, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"1\\\",\\\"18\\\",\\\"21\\\",\\\"22\\\",\\\"23\\\",\\\"24\\\",\\\"20\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2020-02-06 09:14:56\"}'),
(186, '2020-05-15 11:12:12', 1, 'updateData', 'menu_master', '{\"id\":\"25\",\"name\":\"Google Drive\",\"icon\":\"fa fa-circle-o\",\"link\":\"Gdrive\",\"urutan\":\"10\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2020-04-21 09:45:40\",\"updated_at\":null}'),
(187, '2020-05-15 11:17:56', 1, 'insertData', 'notification', '{\"counting\":\"0\",\"slug\":\"lbl-google\",\"user_id\":\"1\",\"role_id\":\"17\",\"created_at\":\"2020-05-15 11:17:56\",\"status\":\"ENABLE\"}'),
(188, '2020-05-15 11:21:38', 1, 'updateData', 'notification', '{\"id\":\"1\",\"counting\":\"0\",\"slug\":\"lbl-google\",\"user_id\":\"1\",\"role_id\":\"17\",\"status\":\"ENABLE\",\"created_at\":\"2020-05-15 11:17:56\",\"updated_at\":null}'),
(189, '2020-05-15 11:22:28', 1, 'updateData', 'notification', '{\"id\":\"1\",\"counting\":\"0\",\"slug\":\"lbl-google\",\"user_id\":\"0\",\"role_id\":\"17\",\"status\":\"ENABLE\",\"created_at\":\"2020-05-15 11:17:56\",\"updated_at\":\"2020-05-15 11:21:38\"}'),
(190, '2020-05-15 11:33:01', 1, 'updateData', 'notification', '{\"id\":\"1\",\"counting\":\"0\",\"slug\":\"lbl-google\",\"user_id\":\"0\",\"user_name\":null,\"role_id\":\"17\",\"role_name\":null,\"status\":\"ENABLE\",\"created_at\":\"2020-05-15 11:17:56\",\"updated_at\":\"2020-05-15 11:22:28\"}'),
(191, '2020-05-15 11:33:51', 1, 'updateData', 'notification', '{\"id\":\"1\",\"counting\":\"0\",\"slug\":\"lbl-google\",\"user_id\":\"0\",\"user_name\":null,\"role_id\":\"17\",\"role_name\":\"Admin\",\"status\":\"ENABLE\",\"created_at\":\"2020-05-15 11:17:56\",\"updated_at\":\"2020-05-15 11:33:01\"}');
INSERT INTO `log_aktivitas` (`log_id`, `log_created_at`, `log_created_by`, `log_action`, `log_tablename`, `log_jsondata`) VALUES
(192, '2020-05-15 11:34:17', 1, 'updateData', 'notification', '{\"id\":\"1\",\"counting\":\"0\",\"slug\":\"lbl-google\",\"user_id\":\"0\",\"user_name\":null,\"role_id\":\"17\",\"role_name\":\"Admin\",\"status\":\"ENABLE\",\"created_at\":\"2020-05-15 11:17:56\",\"updated_at\":\"2020-05-15 11:33:51\"}'),
(193, '2020-05-15 11:35:53', 1, 'updateData', 'notification', '{\"id\":\"1\",\"counting\":\"0\",\"slug\":\"lbl-google\",\"user_id\":\"0\",\"user_name\":null,\"role_id\":\"17\",\"role_name\":\"Admin\",\"status\":\"ENABLE\",\"created_at\":\"2020-05-15 11:17:56\",\"updated_at\":\"2020-05-15 11:34:17\"}'),
(194, '2020-05-15 12:59:40', 1, 'updateData', 'menu_master', '{\"id\":\"25\",\"name\":\"Google Drive\",\"icon\":\"fa fa-circle-o\",\"link\":\"Gdrive\",\"urutan\":\"10\",\"parent\":\"0\",\"notif\":\"lbl-google\",\"status\":\"ENABLE\",\"created_at\":\"2020-04-21 09:45:40\",\"updated_at\":\"2020-05-15 11:12:12\"}'),
(195, '2020-05-15 12:59:53', 1, 'updateData', 'notification', '{\"id\":\"1\",\"counting\":\"10\",\"slug\":\"lbl-google\",\"user_id\":\"0\",\"user_name\":null,\"role_id\":\"17\",\"role_name\":\"Admin\",\"status\":\"ENABLE\",\"created_at\":\"2020-05-15 11:17:56\",\"updated_at\":\"2020-05-15 11:35:53\"}'),
(196, '2020-05-15 13:58:07', 1, 'insertData', 'notification', '{\"counting\":\"0\",\"slug\":\"google-drive\",\"role_id\":\"allrole\",\"role_name\":null}'),
(197, '2020-05-15 13:58:07', 1, 'insertData', 'notification', '{\"counting\":\"0\",\"slug\":\"google-drive\",\"role_id\":\"allrole\",\"role_name\":null}'),
(198, '2020-05-15 13:58:25', 1, 'deleteData', 'notification', '{\"id\":\"2\",\"counting\":\"0\",\"slug\":\"google-drive\",\"user_id\":null,\"user_name\":null,\"role_id\":\"0\",\"role_name\":null}'),
(199, '2020-05-15 13:58:28', 1, 'deleteData', 'notification', '{\"id\":\"3\",\"counting\":\"0\",\"slug\":\"google-drive\",\"user_id\":null,\"user_name\":null,\"role_id\":\"0\",\"role_name\":null}'),
(200, '2020-05-15 13:59:39', 1, 'insertData', 'notification', '{\"counting\":\"0\",\"slug\":\"google-drive\",\"role_id\":\"allrole\",\"role_name\":\"Admin\"}'),
(201, '2020-05-15 13:59:39', 1, 'insertData', 'notification', '{\"counting\":\"0\",\"slug\":\"google-drive\",\"role_id\":\"allrole\",\"role_name\":\"Peserta\"}'),
(202, '2020-05-15 13:59:53', 1, 'deleteData', 'notification', '{\"id\":\"4\",\"counting\":\"0\",\"slug\":\"google-drive\",\"user_id\":null,\"user_name\":null,\"role_id\":\"0\",\"role_name\":\"Admin\"}'),
(203, '2020-05-15 13:59:56', 1, 'deleteData', 'notification', '{\"id\":\"5\",\"counting\":\"0\",\"slug\":\"google-drive\",\"user_id\":null,\"user_name\":null,\"role_id\":\"0\",\"role_name\":\"Peserta\"}'),
(204, '2020-05-18 17:11:41', 1, 'updateData', 'menu_master', '{\"id\":\"26\",\"name\":\"Konfigurasi Notifikasi\",\"type\":\"menu\",\"icon\":\"fa fa-bell\",\"link\":\"master\\/notification\",\"function\":\"master\\/notification\\/index\",\"urutan\":\"12\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2020-05-15 10:55:49\",\"updated_at\":null}'),
(205, '2020-05-18 17:12:59', 1, 'updateData', 'menu_master', '{\"id\":\"26\",\"name\":\"Konfigurasi Notifikasi\",\"type\":\"menu\",\"icon\":\"fa fa-bell\",\"link\":\"master\\/user\",\"function\":\"master\\/notification\\/index\",\"urutan\":\"12\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2020-05-15 10:55:49\",\"updated_at\":\"2020-05-18 17:11:40\"}'),
(206, '2020-05-18 17:13:41', 1, 'updateData', 'menu_master', '{\"id\":\"26\",\"name\":\"Konfigurasi Notifikasi\",\"type\":\"menu\",\"icon\":\"fa fa-bell\",\"link\":\"master\\/user\",\"function\":\"master\\/user\\/index\",\"urutan\":\"12\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2020-05-15 10:55:49\",\"updated_at\":\"2020-05-18 17:12:59\"}'),
(207, '2020-05-28 08:56:05', 1, 'updateData', 'menu_master', '{\"id\":\"20\",\"name\":\"Konfigurasi\",\"type\":\"menu\",\"icon\":\"fa fa-gears\",\"link\":\"master\\/konfig\",\"function\":null,\"urutan\":\"10\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2020-01-22 11:35:29\",\"updated_at\":\"2020-01-22 11:47:56\"}'),
(208, '2020-05-28 08:56:45', 1, 'updateData', 'menu_master', '{\"id\":\"24\",\"name\":\"Access Restriction\",\"type\":\"menu\",\"icon\":\"fa fa-info\",\"link\":\"access\",\"function\":null,\"urutan\":\"3\",\"parent\":\"21\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2020-01-23 18:08:42\",\"updated_at\":null}'),
(209, '2020-05-28 08:56:58', 1, 'updateData', 'menu_master', '{\"id\":\"1\",\"name\":\"Beranda\",\"type\":\"menu\",\"icon\":\"mdi mdi-monitor-dashboard\",\"link\":\"home\",\"function\":null,\"urutan\":\"2\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-01-17 14:33:33\",\"updated_at\":\"2019-12-03 06:30:07\"}'),
(210, '2020-05-28 08:58:32', 1, 'updateData', 'menu_master', '{\"id\":\"22\",\"name\":\"Master Menu\",\"type\":\"menu\",\"icon\":\"mdi mdi-folder-network\",\"link\":\"master\\/menu_master\",\"function\":null,\"urutan\":\"1\",\"parent\":\"21\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2020-01-22 11:49:09\",\"updated_at\":null}'),
(211, '2020-05-28 08:59:11', 1, 'updateData', 'menu_master', '{\"id\":\"23\",\"name\":\"Role\",\"type\":\"menu\",\"icon\":\"fa fa-info\",\"link\":\"master\\/role\",\"function\":null,\"urutan\":\"2\",\"parent\":\"21\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2020-01-22 12:07:17\",\"updated_at\":null}'),
(212, '2020-05-28 08:59:29', 1, 'updateData', 'menu_master', '{\"id\":\"18\",\"name\":\"User\",\"type\":\"menu\",\"icon\":\"mdi mdi-account-group\",\"link\":\"master\\/user\",\"function\":null,\"urutan\":\"12\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-12-02 07:53:51\",\"updated_at\":\"2020-01-21 12:58:17\"}'),
(213, '2020-05-28 09:57:56', 1, 'updateData', 'role', '{\"id\":\"18\",\"role\":\"Peserta\",\"slug\":\"peserta\",\"status\":\"ENABLE\",\"menu\":\"[\\\"1\\\",\\\"25\\\",\\\"24\\\",\\\"29\\\"]\",\"created_at\":\"2018-10-24 10:29:54\",\"updated_at\":\"2019-12-02 09:24:35\"}'),
(214, '2020-05-28 09:58:48', 1, 'updateData', 'role', '{\"id\":\"18\",\"role\":\"Peserta\",\"slug\":\"peserta\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"1\\\",\\\"25\\\"]\",\"created_at\":\"2018-10-24 10:29:54\",\"updated_at\":\"2020-05-28 09:57:56\"}'),
(215, '2020-05-28 09:59:08', 1, 'updateData', 'role', '{\"id\":\"18\",\"role\":\"Peserta\",\"slug\":\"peserta\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"1\\\",\\\"25\\\",\\\"21\\\",\\\"24\\\",\\\"20\\\"]\",\"created_at\":\"2018-10-24 10:29:54\",\"updated_at\":\"2020-05-28 09:58:48\"}'),
(216, '2020-05-28 10:00:00', 1, 'updateData', 'role', '{\"id\":\"19\",\"role\":\"Finance\",\"slug\":\"finance\",\"status\":\"ENABLE\",\"menu\":\"[\\\"1\\\",\\\"25\\\",\\\"24\\\",\\\"29\\\"]\",\"created_at\":\"2018-10-24 10:29:54\",\"updated_at\":\"2019-12-02 09:24:35\"}'),
(217, '2020-05-28 13:29:36', 1, 'updateData', 'menu_master', '{\"id\":\"1\",\"name\":\"Beranda\",\"type\":\"menu\",\"icon\":\"fa fa-500px\",\"link\":\"home\",\"function\":\"home\\/index\",\"urutan\":\"2\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-01-17 14:33:33\",\"updated_at\":\"2020-05-28 08:56:58\"}'),
(218, '2020-05-28 13:30:00', 1, 'updateData', 'menu_master', '{\"id\":\"22\",\"name\":\"Master Menu\",\"type\":\"menu\",\"icon\":\"fa fa-500px\",\"link\":\"master\\/menu_master\",\"function\":\"master\\/menu_master\\/index\",\"urutan\":\"1\",\"parent\":\"21\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2020-01-22 11:49:09\",\"updated_at\":\"2020-05-28 08:58:32\"}'),
(219, '2020-05-28 13:30:19', 1, 'updateData', 'menu_master', '{\"id\":\"18\",\"name\":\"User\",\"type\":\"menu\",\"icon\":\"fa fa-500px\",\"link\":\"master\\/user\",\"function\":\"master\\/user\\/index\",\"urutan\":\"12\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-12-02 07:53:51\",\"updated_at\":\"2020-05-28 08:59:29\"}'),
(220, '2020-05-28 14:58:49', 1, 'updateData', 'user', '{\"id\":\"13\",\"nip\":\"smartsoft2\",\"name\":\"Smartsoft Studio\",\"email\":\"marcell.veraya@gmail.com\",\"password\":\"21232f297a57a5a743894a0e4a801fc3\",\"role_id\":\"18\",\"role_slug\":\"peserta\",\"role_name\":\"Peserta\",\"desc\":\"-\",\"status\":\"0\",\"token\":\"\",\"created_at\":\"2020-01-22 11:21:47\",\"updated_at\":\"2020-01-22 14:13:03\"}'),
(221, '2020-05-28 14:59:02', 1, 'updateData', 'user', '{\"id\":\"13\",\"nip\":\"smartsoft2\",\"name\":\"Smartsoft Studio\",\"email\":\"marcell.veraya@gmail.com\",\"password\":\"21232f297a57a5a743894a0e4a801fc3\",\"role_id\":\"19\",\"role_slug\":\"finance\",\"role_name\":\"Finance\",\"desc\":\"-\",\"status\":\"0\",\"token\":\"\",\"created_at\":\"2020-01-22 11:21:47\",\"updated_at\":\"2020-05-28 14:58:49\"}'),
(222, '2020-06-22 09:52:19', 1441, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"Admin\",\"slug\":\"admin\",\"status\":\"ENABLE\",\"menu\":\"[\\\"22\\\",\\\"20\\\",\\\"1\\\",\\\"25\\\",\\\"26\\\",\\\"21\\\",\\\"24\\\",\\\"13\\\",\\\"27\\\",\\\"29\\\",\\\"28\\\",\\\"18\\\",\\\"23\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2020-04-21 09:45:53\"}'),
(223, '2020-06-22 10:04:55', 1441, 'updateData', 'menu_master', '{\"id\":\"32\",\"name\":\"Master Data Asset\",\"type\":\"menu\",\"icon\":\"fa fa-align-justify\",\"link\":\"master\\/m_assets\",\"function\":\"master\\/m_assets\\/index\",\"urutan\":\"3\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2020-06-22 09:51:50\",\"updated_at\":null}'),
(224, '2020-06-22 10:05:05', 1441, 'deleteData', 'menu_master', '{\"id\":\"32\",\"name\":\"Master Data Asset\",\"type\":\"menu\",\"icon\":\"fa fa-align-justify\",\"link\":\"master\\/m_assets\",\"function\":\"master\\/m_assets\\/index\",\"urutan\":\"3\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2020-06-22 09:51:50\",\"updated_at\":null}'),
(225, '2020-06-22 10:12:23', 1441, 'updateData', 'menu_master', '{\"id\":\"34\",\"name\":\"Asset Kendaraan\",\"type\":\"menu\",\"icon\":\"fa fa-car\",\"link\":\"master\\/m_assets\",\"function\":\"master\\/m_assets\\/index\",\"urutan\":\"1\",\"parent\":\"33\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2020-06-22 10:06:31\",\"updated_at\":null}'),
(226, '2020-07-16 22:38:10', 1, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-blue\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2020-01-21 12:53:18\"}'),
(227, '2020-07-16 22:38:29', 1, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-black-light\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2020-07-16 22:38:10\"}'),
(228, '2020-07-16 22:39:00', 1, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"SOP\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2019-12-06 11:10:06\"}'),
(229, '2020-07-16 22:39:42', 1, 'updateData', 'role', '{\"id\":\"18\",\"role\":\"Peserta\",\"slug\":\"peserta\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"1\\\",\\\"25\\\"]\",\"created_at\":\"2018-10-24 10:29:54\",\"updated_at\":\"2020-05-28 09:59:08\"}'),
(230, '2020-07-16 22:39:52', 1, 'updateData', 'role', '{\"id\":\"19\",\"role\":\"Finance\",\"slug\":\"finance\",\"status\":\"ENABLE\",\"menu\":\"[\\\"29\\\",\\\"1\\\"]\",\"created_at\":\"2018-10-24 10:29:54\",\"updated_at\":\"2020-05-28 10:00:00\"}'),
(231, '2020-07-16 22:42:17', 1, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"PESTISIDA\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2020-07-16 22:39:00\"}'),
(232, '2020-07-16 22:42:34', 1, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-black\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2020-07-16 22:38:29\"}'),
(233, '2020-07-16 22:42:50', 1, 'updateData', 'role', '{\"id\":\"19\",\"role\":\"Finance\",\"slug\":\"finance\",\"status\":\"DISABLE\",\"menu\":\"[\\\"29\\\",\\\"1\\\"]\",\"created_at\":\"2018-10-24 10:29:54\",\"updated_at\":\"2020-05-28 10:00:00\"}'),
(234, '2020-07-16 22:42:53', 1, 'updateData', 'role', '{\"id\":\"18\",\"role\":\"Peserta\",\"slug\":\"peserta\",\"status\":\"DISABLE\",\"menu\":\"[\\\"29\\\",\\\"1\\\",\\\"25\\\"]\",\"created_at\":\"2018-10-24 10:29:54\",\"updated_at\":\"2020-05-28 09:59:08\"}'),
(235, '2020-09-04 21:45:42', 1, 'updateData', 'konfig', '{\"id\":\"11\",\"slug\":\"COPYRIGHT\",\"value\":\"\\u00a9 2019 <a href=\\\"http:\\/\\/smartsoftstudio.com\\/\\\" target=\\\"_blank\\\">SmartSoft Studio<\\/a>.<\\/strong> All rights     reserved.\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:32:01\",\"updated_at\":\"2019-02-19 10:27:32\"}'),
(236, '2020-09-04 21:53:23', 1, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"SOP\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2020-07-16 22:42:17\"}'),
(237, '2020-09-04 21:55:04', 1, 'updateData', 'konfig', '{\"id\":\"14\",\"slug\":\"APPLICATION_SMALL\",\"value\":\"SM\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:42:41\",\"updated_at\":\"2019-02-18 15:43:24\"}'),
(238, '2020-09-04 21:55:48', 1, 'updateData', 'konfig', '{\"id\":\"17\",\"slug\":\"LOGIN_TITLE\",\"value\":\"SOP\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:48:55\",\"updated_at\":\"2020-01-13 14:48:52\"}'),
(239, '2020-09-06 14:49:47', 1, 'insertData', 'master_jawaban', '{\"id\":\"dsvsdsdv \",\"id_soal\":\"sdvsdvsdv\",\"keyword\":\"asdasda\",\"deskripsi\":\"asdasdasda\",\"created_at\":\"2020-09-06 14:49:47\",\"status\":\"ENABLE\"}'),
(240, '2020-09-06 14:49:47', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"master_jawaban\",\"table_id\":0,\"status\":\"ENABLE\",\"created_at\":\"2020-09-06 14:49:47\"}');

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

--
-- Dumping data for table `master_jawaban_pg`
--

INSERT INTO `master_jawaban_pg` (`id`, `id_soal`, `keyword`, `image`, `deskripsi`, `status`, `created_at`, `updated_at`) VALUES
(1, 12, 'ascas', '', 'asca', 'ENABLE', '2019-11-27 00:00:00', '2019-02-19 11:02:53');

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
  `id_periode` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `menu_master`
--

CREATE TABLE `menu_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `function` varchar(255) DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL,
  `parent` varchar(255) DEFAULT NULL,
  `notif` varchar(255) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menu_master`
--

INSERT INTO `menu_master` (`id`, `name`, `type`, `icon`, `link`, `function`, `urutan`, `parent`, `notif`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Beranda', 'menu', 'fa fa-dashboard', 'home', 'home/index', 2, '0', '', 'ENABLE', '2019-01-17 14:33:33', '2020-05-28 13:29:36'),
(13, 'List Jadwal', 'menu', 'fa fa-user', 'report/list-jadwal', NULL, 6, '0', '', 'ENABLE', '2019-07-01 09:02:50', '2019-12-02 07:54:07'),
(21, 'Role Permission', 'menu', 'fa fa-info', '#', NULL, 10, '0', '', 'ENABLE', '2020-01-22 11:47:49', NULL),
(15, 'Hasil Penilaian', 'menu', 'mdi mdi-book-open', 'report/hasil-penilaian', NULL, 1, '19', '', 'ENABLE', '2019-12-02 07:53:51', NULL),
(16, 'Data Profile', 'menu', 'fa fa-list', 'report/profile', NULL, 5, '0', '', 'ENABLE', '2019-12-02 07:53:51', NULL),
(17, 'Data Jadwal', 'menu', 'mdi mdi-book', 'penjadwalan', NULL, 2, '0', '', 'DISABLE', '2019-12-02 07:53:51', '2019-12-03 06:30:26'),
(18, 'User', 'menu', 'fa fa-users', 'master/user', 'master/user/index', 13, '0', '', 'ENABLE', '2019-12-02 07:53:51', '2020-05-28 13:30:19'),
(19, 'Mockup Generator', 'menu', 'fa fa-cog', 'form/', NULL, 4, '0', '', 'ENABLE', '2020-01-10 09:24:54', NULL),
(20, 'Konfigurasi', 'menu', 'fa fa-gears', 'master/konfig', 'master/konfig/index', 11, '0', '', 'ENABLE', '2020-01-22 11:35:29', '2020-05-28 08:56:05'),
(22, 'Master Menu', 'menu', 'fa fa-circle', 'master/menu_master', 'master/menu_master/index', 1, '21', '', 'ENABLE', '2020-01-22 11:49:09', '2020-05-28 13:30:00'),
(23, 'Role', 'menu', 'fa fa-info', 'master/role', 'master/role/index', 2, '21', '', 'ENABLE', '2020-01-22 12:07:17', '2020-05-28 08:59:11'),
(24, 'Access Restriction', 'menu', 'fa fa-info', 'access', 'access/index', 3, '21', '', 'ENABLE', '2020-01-23 18:08:42', '2020-05-28 08:56:45'),
(25, 'Google Drive', 'menu', 'fa fa-circle-o', 'Gdrive', NULL, 7, '0', 'google-drive', 'ENABLE', '2020-04-21 09:45:40', '2020-05-15 12:59:40'),
(26, 'Konfigurasi Notifikasi', 'menu', 'fa fa-bell', 'master/notification', 'master/notification/index', 12, '0', '', 'ENABLE', '2020-05-15 10:55:49', '2020-05-18 17:13:41'),
(27, 'Notifikasi', 'menu', 'fa fa-bell-o', '#', NULL, 8, '0', 'tes-notif', 'ENABLE', '2020-05-18 09:36:10', NULL),
(28, 'KONFIGURASI', 'label', '', '', NULL, 9, '0', '', 'ENABLE', '2020-05-18 10:45:34', NULL),
(29, 'MENU BUILD', 'label', '', '', NULL, 1, '0', '', 'ENABLE', '2020-05-18 10:46:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `counting` int(11) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `role_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `counting`, `slug`, `user_id`, `user_name`, `role_id`, `role_name`) VALUES
(1, 6, 'google-drive', 0, NULL, 17, 'Admin');

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
-- Table structure for table `test_masterfile`
--

CREATE TABLE `test_masterfile` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

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
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `access_block`
--
ALTER TABLE `access_block`
  ADD PRIMARY KEY (`ab_id`) USING BTREE;

--
-- Indexes for table `access_control`
--
ALTER TABLE `access_control`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `archive_log`
--
ALTER TABLE `archive_log`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `jawaban_peserta`
--
ALTER TABLE `jawaban_peserta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konfig`
--
ALTER TABLE `konfig`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `konfig_email`
--
ALTER TABLE `konfig_email`
  ADD PRIMARY KEY (`ke_id`) USING BTREE;

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
-- Indexes for table `menu_master`
--
ALTER TABLE `menu_master`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`) USING BTREE;

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
-- Indexes for table `test_masterfile`
--
ALTER TABLE `test_masterfile`
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
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `access_block`
--
ALTER TABLE `access_block`
  MODIFY `ab_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `access_control`
--
ALTER TABLE `access_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=492;

--
-- AUTO_INCREMENT for table `archive_log`
--
ALTER TABLE `archive_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `jawaban_peserta`
--
ALTER TABLE `jawaban_peserta`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `konfig`
--
ALTER TABLE `konfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `konfig_email`
--
ALTER TABLE `konfig_email`
  MODIFY `ke_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `master_jawaban_pg`
--
ALTER TABLE `master_jawaban_pg`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `menu_master`
--
ALTER TABLE `menu_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `test_masterfile`
--
ALTER TABLE `test_masterfile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
