-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 24, 2022 at 09:11 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `osrms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '243652', '2022-01-01 10:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

DROP TABLE IF EXISTS `tblclasses`;
CREATE TABLE IF NOT EXISTS `tblclasses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'BBA CA', 101, 'FY', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(2, 'BBA CA', 102, 'SY', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(4, 'BBA CA', 103, 'TY', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(5, 'BBA', 201, 'FY', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(6, 'BBA', 202, 'SY', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(7, 'BBA', 203, 'TY', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(8, 'BCOM', 301, 'FY', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(9, 'BCOM', 302, 'SY', '2022-01-01 15:17:32', NULL),
(10, 'BCOM', 303, 'TY', '2022-04-01 15:37:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

DROP TABLE IF EXISTS `tblnotice`;
CREATE TABLE IF NOT EXISTS `tblnotice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noticeTitle` varchar(255) DEFAULT NULL,
  `noticeDetails` mediumtext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`id`, `noticeTitle`, `noticeDetails`, `postingDate`) VALUES
(2, 'Notice regarding result Declaration', 'The schedule of declaration of remaining results will be intimated in \r\ndue course subject to the prevailing conditions and Government \r\nguidelines issued from time to time regarding handling of the Covid-19 \r\npandemic.The candidates are advised to visit the website of the Commission \r\nat regular intervals for further updates.\r\n', '2022-01-01 14:34:58'),
(3, 'Test Notice', 'Notice issued for informing about some Events\r\n\r\nName\r\nObjective/ Purpose/ Occasion\r\nDate\r\nTime/ Duration\r\nPlace/ Venue\r\nEssential qualifications/ Eligibility/ Conditions\r\nContact address\r\nSpecific instructions\r\nDepending upon the occasion, one can use suitable background images, logos or any graphic representing the event.', '2022-01-01 14:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

DROP TABLE IF EXISTS `tblresult`;
CREATE TABLE IF NOT EXISTS `tblresult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(32, 15, 1, 14, 90, '2022-04-02 04:44:24', NULL),
(33, 15, 1, 12, 95, '2022-04-02 04:44:24', NULL),
(34, 15, 1, 13, 91, '2022-04-02 04:44:24', NULL),
(35, 15, 1, 15, 94, '2022-04-02 04:44:24', NULL),
(36, 15, 1, 16, 93, '2022-04-02 04:44:24', NULL),
(37, 9, 1, 14, 85, '2022-04-02 04:44:39', NULL),
(38, 9, 1, 12, 84, '2022-04-02 04:44:39', NULL),
(39, 9, 1, 13, 87, '2022-04-02 04:44:39', NULL),
(40, 9, 1, 15, 89, '2022-04-02 04:44:39', NULL),
(41, 9, 1, 16, 86, '2022-04-02 04:44:39', NULL),
(42, 17, 1, 14, 78, '2022-04-02 04:44:55', NULL),
(43, 17, 1, 12, 77, '2022-04-02 04:44:55', NULL),
(44, 17, 1, 13, 76, '2022-04-02 04:44:55', NULL),
(45, 17, 1, 15, 75, '2022-04-02 04:44:55', NULL),
(46, 17, 1, 16, 74, '2022-04-02 04:44:55', NULL),
(47, 14, 1, 14, 89, '2022-04-02 04:45:17', NULL),
(48, 14, 1, 12, 88, '2022-04-02 04:45:17', NULL),
(49, 14, 1, 13, 87, '2022-04-02 04:45:17', NULL),
(50, 14, 1, 15, 85, '2022-04-02 04:45:17', NULL),
(51, 14, 1, 16, 86, '2022-04-02 04:45:17', NULL),
(52, 8, 1, 14, 68, '2022-04-02 04:45:36', NULL),
(53, 8, 1, 12, 69, '2022-04-02 04:45:36', NULL),
(54, 8, 1, 13, 67, '2022-04-02 04:45:36', NULL),
(55, 8, 1, 15, 65, '2022-04-02 04:45:36', NULL),
(56, 8, 1, 16, 64, '2022-04-02 04:45:36', NULL),
(57, 7, 1, 14, 85, '2022-04-02 04:45:50', NULL),
(58, 7, 1, 12, 75, '2022-04-02 04:45:50', NULL),
(59, 7, 1, 13, 96, '2022-04-02 04:45:50', NULL),
(60, 7, 1, 15, 84, '2022-04-02 04:45:50', NULL),
(61, 7, 1, 16, 75, '2022-04-02 04:45:50', NULL),
(62, 13, 1, 14, 57, '2022-04-02 04:46:08', NULL),
(63, 13, 1, 12, 85, '2022-04-02 04:46:08', NULL),
(64, 13, 1, 13, 74, '2022-04-02 04:46:08', NULL),
(65, 13, 1, 15, 65, '2022-04-02 04:46:09', NULL),
(66, 13, 1, 16, 79, '2022-04-02 04:46:09', NULL),
(67, 12, 1, 14, 57, '2022-04-02 04:46:38', NULL),
(68, 12, 1, 12, 56, '2022-04-02 04:46:38', NULL),
(69, 12, 1, 13, 54, '2022-04-02 04:46:38', NULL),
(70, 12, 1, 15, 52, '2022-04-02 04:46:38', NULL),
(71, 12, 1, 16, 53, '2022-04-02 04:46:38', NULL),
(72, 11, 1, 14, 47, '2022-04-02 04:47:16', NULL),
(73, 11, 1, 12, 48, '2022-04-02 04:47:16', NULL),
(74, 11, 1, 13, 45, '2022-04-02 04:47:16', NULL),
(75, 11, 1, 15, 46, '2022-04-02 04:47:16', NULL),
(76, 11, 1, 16, 44, '2022-04-02 04:47:16', NULL),
(77, 16, 1, 14, 85, '2022-04-02 04:47:27', NULL),
(78, 16, 1, 12, 75, '2022-04-02 04:47:28', NULL),
(79, 16, 1, 13, 68, '2022-04-02 04:47:28', NULL),
(80, 16, 1, 15, 69, '2022-04-02 04:47:28', NULL),
(81, 16, 1, 16, 78, '2022-04-02 04:47:28', NULL),
(82, 21, 2, 20, 87, '2022-04-02 04:53:56', NULL),
(83, 21, 2, 18, 88, '2022-04-02 04:53:56', NULL),
(84, 21, 2, 17, 85, '2022-04-02 04:53:56', NULL),
(85, 21, 2, 19, 84, '2022-04-02 04:53:56', NULL),
(86, 21, 2, 21, 88, '2022-04-02 04:53:56', NULL),
(87, 19, 2, 20, 75, '2022-04-02 04:54:19', NULL),
(88, 19, 2, 18, 74, '2022-04-02 04:54:19', NULL),
(89, 19, 2, 17, 76, '2022-04-02 04:54:19', NULL),
(90, 19, 2, 19, 75, '2022-04-02 04:54:19', NULL),
(91, 19, 2, 21, 72, '2022-04-02 04:54:19', NULL),
(92, 22, 2, 20, 65, '2022-04-02 04:54:31', NULL),
(93, 22, 2, 18, 67, '2022-04-02 04:54:31', NULL),
(94, 22, 2, 17, 64, '2022-04-02 04:54:31', NULL),
(95, 22, 2, 19, 62, '2022-04-02 04:54:31', NULL),
(96, 22, 2, 21, 60, '2022-04-02 04:54:31', NULL),
(97, 18, 2, 20, 75, '2022-04-02 04:54:46', NULL),
(98, 18, 2, 18, 61, '2022-04-02 04:54:46', NULL),
(99, 18, 2, 17, 76, '2022-04-02 04:54:46', NULL),
(100, 18, 2, 19, 65, '2022-04-02 04:54:46', NULL),
(101, 18, 2, 21, 70, '2022-04-02 04:54:46', NULL),
(102, 20, 2, 20, 74, '2022-04-02 04:55:25', NULL),
(103, 20, 2, 18, 70, '2022-04-02 04:55:25', NULL),
(104, 20, 2, 17, 60, '2022-04-02 04:55:25', NULL),
(105, 20, 2, 19, 66, '2022-04-02 04:55:25', NULL),
(106, 20, 2, 21, 68, '2022-04-02 04:55:25', NULL),
(107, 24, 4, 22, 80, '2022-04-02 05:01:08', NULL),
(108, 24, 4, 25, 85, '2022-04-02 05:01:08', NULL),
(109, 24, 4, 26, 87, '2022-04-02 05:01:08', NULL),
(110, 24, 4, 24, 82, '2022-04-02 05:01:09', NULL),
(111, 24, 4, 23, 80, '2022-04-02 05:01:09', NULL),
(112, 23, 4, 22, 78, '2022-04-02 05:01:30', NULL),
(113, 23, 4, 25, 70, '2022-04-02 05:01:30', NULL),
(114, 23, 4, 26, 75, '2022-04-02 05:01:30', NULL),
(115, 23, 4, 24, 77, '2022-04-02 05:01:30', NULL),
(116, 23, 4, 23, 72, '2022-04-02 05:01:31', NULL),
(117, 25, 4, 22, 65, '2022-04-02 05:01:46', NULL),
(118, 25, 4, 25, 66, '2022-04-02 05:01:46', NULL),
(119, 25, 4, 26, 60, '2022-04-02 05:01:46', NULL),
(120, 25, 4, 24, 62, '2022-04-02 05:01:46', NULL),
(121, 25, 4, 23, 63, '2022-04-02 05:01:46', NULL),
(122, 28, 5, 29, 88, '2022-04-02 08:16:15', NULL),
(123, 28, 5, 28, 75, '2022-04-02 08:16:15', NULL),
(124, 28, 5, 31, 65, '2022-04-02 08:16:15', NULL),
(125, 28, 5, 30, 78, '2022-04-02 08:16:15', NULL),
(126, 28, 5, 27, 72, '2022-04-02 08:16:15', NULL),
(127, 34, 5, 29, 85, '2022-04-02 08:17:07', NULL),
(128, 34, 5, 28, 87, '2022-04-02 08:17:07', NULL),
(129, 34, 5, 31, 84, '2022-04-02 08:17:07', NULL),
(130, 34, 5, 30, 86, '2022-04-02 08:17:07', NULL),
(131, 34, 5, 27, 80, '2022-04-02 08:17:07', NULL),
(132, 30, 5, 29, 78, '2022-04-02 08:17:22', NULL),
(133, 30, 5, 28, 75, '2022-04-02 08:17:22', NULL),
(134, 30, 5, 31, 70, '2022-04-02 08:17:22', NULL),
(135, 30, 5, 30, 72, '2022-04-02 08:17:22', NULL),
(136, 30, 5, 27, 79, '2022-04-02 08:17:22', NULL),
(137, 31, 5, 29, 75, '2022-04-02 08:17:38', NULL),
(138, 31, 5, 28, 60, '2022-04-02 08:17:38', NULL),
(139, 31, 5, 31, 45, '2022-04-02 08:17:38', NULL),
(140, 31, 5, 30, 70, '2022-04-02 08:17:38', NULL),
(141, 31, 5, 27, 85, '2022-04-02 08:17:38', NULL),
(142, 35, 5, 29, 65, '2022-04-02 08:17:54', NULL),
(143, 35, 5, 28, 57, '2022-04-02 08:17:54', NULL),
(144, 35, 5, 31, 78, '2022-04-02 08:17:54', NULL),
(145, 35, 5, 30, 47, '2022-04-02 08:17:55', NULL),
(146, 35, 5, 27, 66, '2022-04-02 08:17:55', NULL),
(147, 29, 5, 29, 85, '2022-04-02 08:18:14', NULL),
(148, 29, 5, 28, 77, '2022-04-02 08:18:14', NULL),
(149, 29, 5, 31, 66, '2022-04-02 08:18:14', NULL),
(150, 29, 5, 30, 55, '2022-04-02 08:18:14', NULL),
(151, 29, 5, 27, 44, '2022-04-02 08:18:14', NULL),
(152, 32, 5, 29, 85, '2022-04-02 08:18:28', NULL),
(153, 32, 5, 28, 64, '2022-04-02 08:18:28', NULL),
(154, 32, 5, 31, 58, '2022-04-02 08:18:28', NULL),
(155, 32, 5, 30, 55, '2022-04-02 08:18:28', NULL),
(156, 32, 5, 27, 64, '2022-04-02 08:18:28', NULL),
(157, 33, 5, 29, 90, '2022-04-02 08:18:45', NULL),
(158, 33, 5, 28, 80, '2022-04-02 08:18:45', NULL),
(159, 33, 5, 31, 75, '2022-04-02 08:18:45', NULL),
(160, 33, 5, 30, 85, '2022-04-02 08:18:45', NULL),
(161, 33, 5, 27, 95, '2022-04-02 08:18:45', NULL),
(162, 26, 5, 29, 50, '2022-04-02 08:19:06', NULL),
(163, 26, 5, 28, 55, '2022-04-02 08:19:06', NULL),
(164, 26, 5, 31, 64, '2022-04-02 08:19:06', NULL),
(165, 26, 5, 30, 48, '2022-04-02 08:19:06', NULL),
(166, 26, 5, 27, 70, '2022-04-02 08:19:06', NULL),
(167, 27, 5, 29, 85, '2022-04-02 08:19:26', NULL),
(168, 27, 5, 28, 70, '2022-04-02 08:19:26', NULL),
(169, 27, 5, 31, 90, '2022-04-02 08:19:26', NULL),
(170, 27, 5, 30, 77, '2022-04-02 08:19:26', NULL),
(171, 27, 5, 27, 68, '2022-04-02 08:19:26', NULL),
(172, 38, 6, 34, 82, '2022-04-02 08:22:20', NULL),
(173, 38, 6, 35, 75, '2022-04-02 08:22:20', NULL),
(174, 38, 6, 36, 78, '2022-04-02 08:22:20', NULL),
(175, 38, 6, 33, 65, '2022-04-02 08:22:20', NULL),
(176, 38, 6, 32, 80, '2022-04-02 08:22:20', NULL),
(177, 39, 6, 34, 85, '2022-04-02 08:37:51', NULL),
(178, 39, 6, 35, 70, '2022-04-02 08:37:51', NULL),
(179, 39, 6, 36, 80, '2022-04-02 08:37:51', NULL),
(180, 39, 6, 33, 80, '2022-04-02 08:37:51', NULL),
(181, 39, 6, 32, 66, '2022-04-02 08:37:51', NULL),
(182, 40, 6, 34, 76, '2022-04-02 08:38:13', NULL),
(183, 40, 6, 35, 64, '2022-04-02 08:38:13', NULL),
(184, 40, 6, 36, 55, '2022-04-02 08:38:13', NULL),
(185, 40, 6, 33, 66, '2022-04-02 08:38:13', NULL),
(186, 40, 6, 32, 70, '2022-04-02 08:38:13', NULL),
(187, 36, 6, 34, 80, '2022-04-02 08:38:29', NULL),
(188, 36, 6, 35, 75, '2022-04-02 08:38:29', NULL),
(189, 36, 6, 36, 70, '2022-04-02 08:38:29', NULL),
(190, 36, 6, 33, 80, '2022-04-02 08:38:29', NULL),
(191, 36, 6, 32, 50, '2022-04-02 08:38:29', NULL),
(192, 37, 6, 34, 76, '2022-04-02 08:38:46', NULL),
(193, 37, 6, 35, 64, '2022-04-02 08:38:46', NULL),
(194, 37, 6, 36, 53, '2022-04-02 08:38:46', NULL),
(195, 37, 6, 33, 80, '2022-04-02 08:38:46', NULL),
(196, 37, 6, 32, 74, '2022-04-02 08:38:46', NULL),
(197, 43, 7, 39, 85, '2022-04-02 08:41:05', NULL),
(198, 43, 7, 41, 70, '2022-04-02 08:41:05', NULL),
(199, 43, 7, 40, 78, '2022-04-02 08:41:05', NULL),
(200, 43, 7, 38, 82, '2022-04-02 08:41:05', NULL),
(201, 43, 7, 37, 90, '2022-04-02 08:41:05', NULL),
(202, 41, 7, 39, 60, '2022-04-02 08:41:18', NULL),
(203, 41, 7, 41, 66, '2022-04-02 08:41:18', NULL),
(204, 41, 7, 40, 55, '2022-04-02 08:41:18', NULL),
(205, 41, 7, 38, 52, '2022-04-02 08:41:18', NULL),
(206, 41, 7, 37, 53, '2022-04-02 08:41:18', NULL),
(207, 42, 7, 39, 80, '2022-04-02 08:41:31', NULL),
(208, 42, 7, 41, 70, '2022-04-02 08:41:31', NULL),
(209, 42, 7, 40, 60, '2022-04-02 08:41:31', NULL),
(210, 42, 7, 38, 50, '2022-04-02 08:41:31', NULL),
(211, 42, 7, 37, 77, '2022-04-02 08:41:31', NULL),
(212, 46, 8, 43, 90, '2022-04-02 08:51:38', NULL),
(213, 46, 8, 46, 80, '2022-04-02 08:51:38', NULL),
(214, 46, 8, 44, 70, '2022-04-02 08:51:38', NULL),
(215, 46, 8, 42, 60, '2022-04-02 08:51:38', NULL),
(216, 46, 8, 45, 50, '2022-04-02 08:51:38', NULL),
(217, 50, 8, 43, 80, '2022-04-02 08:51:58', NULL),
(218, 50, 8, 46, 70, '2022-04-02 08:51:58', NULL),
(219, 50, 8, 44, 60, '2022-04-02 08:51:58', NULL),
(220, 50, 8, 42, 50, '2022-04-02 08:51:58', NULL),
(221, 50, 8, 45, 85, '2022-04-02 08:51:58', NULL),
(222, 48, 8, 43, 80, '2022-04-02 08:52:11', NULL),
(223, 48, 8, 46, 85, '2022-04-02 08:52:11', NULL),
(224, 48, 8, 44, 70, '2022-04-02 08:52:11', NULL),
(225, 48, 8, 42, 75, '2022-04-02 08:52:11', NULL),
(226, 48, 8, 45, 60, '2022-04-02 08:52:11', NULL),
(227, 54, 8, 43, 90, '2022-04-02 08:52:25', NULL),
(228, 54, 8, 46, 95, '2022-04-02 08:52:26', NULL),
(229, 54, 8, 44, 80, '2022-04-02 08:52:26', NULL),
(230, 54, 8, 42, 85, '2022-04-02 08:52:26', NULL),
(231, 54, 8, 45, 70, '2022-04-02 08:52:26', NULL),
(232, 49, 8, 43, 96, '2022-04-02 08:52:40', NULL),
(233, 49, 8, 46, 90, '2022-04-02 08:52:40', NULL),
(234, 49, 8, 44, 80, '2022-04-02 08:52:40', NULL),
(235, 49, 8, 42, 76, '2022-04-02 08:52:40', NULL),
(236, 49, 8, 45, 66, '2022-04-02 08:52:40', NULL),
(237, 47, 8, 43, 80, '2022-04-02 08:52:57', NULL),
(238, 47, 8, 46, 45, '2022-04-02 08:52:57', NULL),
(239, 47, 8, 44, 90, '2022-04-02 08:52:57', NULL),
(240, 47, 8, 42, 50, '2022-04-02 08:52:57', NULL),
(241, 47, 8, 45, 71, '2022-04-02 08:52:57', NULL),
(242, 53, 8, 43, 75, '2022-04-02 08:53:16', NULL),
(243, 53, 8, 46, 85, '2022-04-02 08:53:16', NULL),
(244, 53, 8, 44, 65, '2022-04-02 08:53:16', NULL),
(245, 53, 8, 42, 50, '2022-04-02 08:53:17', NULL),
(246, 53, 8, 45, 45, '2022-04-02 08:53:17', NULL),
(247, 52, 8, 43, 78, '2022-04-02 08:53:38', NULL),
(248, 52, 8, 46, 85, '2022-04-02 08:53:38', NULL),
(249, 52, 8, 44, 98, '2022-04-02 08:53:38', NULL),
(250, 52, 8, 42, 65, '2022-04-02 08:53:39', NULL),
(251, 52, 8, 45, 70, '2022-04-02 08:53:39', NULL),
(252, 44, 8, 43, 80, '2022-04-02 08:53:52', NULL),
(253, 44, 8, 46, 70, '2022-04-02 08:53:52', NULL),
(254, 44, 8, 44, 55, '2022-04-02 08:53:52', NULL),
(255, 44, 8, 42, 98, '2022-04-02 08:53:52', NULL),
(256, 44, 8, 45, 66, '2022-04-02 08:53:52', NULL),
(257, 45, 8, 43, 50, '2022-04-02 08:54:10', NULL),
(258, 45, 8, 46, 66, '2022-04-02 08:54:10', NULL),
(259, 45, 8, 44, 58, '2022-04-02 08:54:10', NULL),
(260, 45, 8, 42, 95, '2022-04-02 08:54:10', NULL),
(261, 45, 8, 45, 66, '2022-04-02 08:54:10', NULL),
(262, 57, 9, 47, 65, '2022-04-02 08:56:54', NULL),
(263, 57, 9, 49, 45, '2022-04-02 08:56:55', NULL),
(264, 57, 9, 48, 75, '2022-04-02 08:56:55', NULL),
(265, 57, 9, 51, 55, '2022-04-02 08:56:55', NULL),
(266, 57, 9, 50, 85, '2022-04-02 08:56:55', NULL),
(267, 58, 9, 47, 91, '2022-04-02 08:58:38', NULL),
(268, 58, 9, 49, 61, '2022-04-02 08:58:38', NULL),
(269, 58, 9, 48, 81, '2022-04-02 08:58:38', NULL),
(270, 58, 9, 51, 71, '2022-04-02 08:58:38', NULL),
(271, 58, 9, 50, 51, '2022-04-02 08:58:38', NULL),
(272, 59, 9, 47, 85, '2022-04-02 08:58:53', NULL),
(273, 59, 9, 49, 58, '2022-04-02 08:58:53', NULL),
(274, 59, 9, 48, 98, '2022-04-02 08:58:53', NULL),
(275, 59, 9, 51, 89, '2022-04-02 08:58:53', NULL),
(276, 59, 9, 50, 60, '2022-04-02 08:58:53', NULL),
(277, 59, 9, 47, 85, '2022-04-02 09:00:09', NULL),
(278, 59, 9, 49, 58, '2022-04-02 09:00:09', NULL),
(279, 59, 9, 48, 98, '2022-04-02 09:00:09', NULL),
(280, 59, 9, 51, 89, '2022-04-02 09:00:09', NULL),
(281, 59, 9, 50, 60, '2022-04-02 09:00:09', NULL),
(282, 55, 9, 47, 80, '2022-04-02 09:00:28', NULL),
(283, 55, 9, 49, 70, '2022-04-02 09:00:28', NULL),
(284, 55, 9, 48, 85, '2022-04-02 09:00:28', NULL),
(285, 55, 9, 51, 75, '2022-04-02 09:00:28', NULL),
(286, 55, 9, 50, 65, '2022-04-02 09:00:28', NULL),
(287, 56, 9, 47, 80, '2022-04-02 09:00:40', NULL),
(288, 56, 9, 49, 70, '2022-04-02 09:00:40', NULL),
(289, 56, 9, 48, 50, '2022-04-02 09:00:40', NULL),
(290, 56, 9, 51, 45, '2022-04-02 09:00:40', NULL),
(291, 56, 9, 50, 78, '2022-04-02 09:00:40', NULL),
(292, 62, 10, 55, 90, '2022-04-02 09:02:50', NULL),
(293, 62, 10, 52, 85, '2022-04-02 09:02:50', NULL),
(294, 62, 10, 53, 80, '2022-04-02 09:02:50', NULL),
(295, 62, 10, 54, 95, '2022-04-02 09:02:50', NULL),
(296, 62, 10, 56, 75, '2022-04-02 09:02:51', NULL),
(297, 60, 10, 55, 80, '2022-04-02 09:03:01', NULL),
(298, 60, 10, 52, 85, '2022-04-02 09:03:02', NULL),
(299, 60, 10, 53, 70, '2022-04-02 09:03:02', NULL),
(300, 60, 10, 54, 75, '2022-04-02 09:03:02', NULL),
(301, 60, 10, 56, 50, '2022-04-02 09:03:02', NULL),
(302, 61, 10, 55, 80, '2022-04-02 09:03:13', NULL),
(303, 61, 10, 52, 70, '2022-04-02 09:03:13', NULL),
(304, 61, 10, 53, 50, '2022-04-02 09:03:13', NULL),
(305, 61, 10, 54, 60, '2022-04-02 09:03:13', NULL),
(306, 61, 10, 56, 45, '2022-04-02 09:03:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

DROP TABLE IF EXISTS `tblstudents`;
CREATE TABLE IF NOT EXISTS `tblstudents` (
  `StudentId` int(11) NOT NULL AUTO_INCREMENT,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  PRIMARY KEY (`StudentId`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(7, 'Inaya Patel', '1011', 'inayapatel@gmail.com', 'Female', '2000-01-01', 1, '2022-04-02 04:26:13', NULL, 1),
(8, 'Diya Singh', '1012', 'diyasingh@gmail.com', 'Female', '2000-02-02', 1, '2022-04-02 04:27:37', NULL, 1),
(9, 'Ananya Pandey', '1013', 'ananyapandey@gmail.com', 'Female', '2000-03-03', 1, '2022-04-02 04:28:23', NULL, 1),
(11, 'Nila Kumari', '1014', 'nilakumari@gmail.com', 'Female', '2000-04-04', 1, '2022-04-02 04:34:21', NULL, 1),
(12, 'Jaya Bacchan', '1015', 'jayabacchan@gmail.com', 'Female', '2000-05-05', 1, '2022-04-02 04:35:06', NULL, 1),
(13, 'Ishaan Patel', '1016', 'ishaanpatel@gmail.com', 'Male', '2000-06-06', 1, '2022-04-02 04:36:41', NULL, 1),
(14, 'Dhruv Rathee', '1017', 'dhruvrathee@gmail.com', 'Male', '2000-07-07', 1, '2022-04-02 04:37:18', NULL, 1),
(15, 'Ajay Devgan', '1018', 'ajaydevgan@gmail.com', 'Male', '2000-08-08', 1, '2022-04-02 04:38:14', NULL, 1),
(16, 'Sahil Khan', '1019', 'sahilkhan@gmail.com', 'Male', '2000-09-09', 1, '2022-04-02 04:39:08', NULL, 1),
(17, 'Ashwin Mishra', '10110', 'ashwinmishra@gmail.com', 'Male', '2000-10-10', 1, '2022-04-02 04:40:02', NULL, 1),
(18, 'Nila Kumari', '1021', 'nilakumari@gmail.com', 'Female', '1999-01-01', 2, '2022-04-02 04:50:06', NULL, 1),
(19, 'Ashwin Mishra', '1022', 'ashwinmishra@gmail.com', 'Male', '1999-02-02', 2, '2022-04-02 04:50:30', NULL, 1),
(20, 'Sahil Khan', '1023', 'sahilkhan@gmail.com', 'Male', '1999-03-03', 2, '2022-04-02 04:51:03', NULL, 1),
(21, 'Ajay Devgan', '1024', 'ajaydevgan@gmail.com', 'Male', '1999-04-04', 2, '2022-04-02 04:51:25', NULL, 1),
(22, 'Inaya Patel', '1025', 'inayapatel@gmail.com', 'Female', '1999-05-05', 2, '2022-04-02 04:51:46', NULL, 1),
(23, 'Nila Kumari', '1031', 'nilakumari@gmail.com', 'Female', '1998-07-07', 4, '2022-04-02 05:00:17', NULL, 1),
(24, 'Ajay Devgan', '1032', 'ajaydevgan@gmail.com', 'Male', '1998-09-09', 4, '2022-04-02 05:00:33', NULL, 1),
(25, 'Sahil Khan', '1033', 'sahilkhan@gmail.com', 'Male', '1998-08-08', 4, '2022-04-02 05:00:48', NULL, 1),
(26, 'Nila Kumari', '2011', 'nilakumari@gmail.com', 'Female', '2000-01-01', 5, '2022-04-02 08:10:56', NULL, 1),
(27, 'Sahil Khan', '2012', 'sahilkhan@gmail.com', 'Male', '2000-02-02', 5, '2022-04-02 08:12:21', NULL, 1),
(28, 'Ajay Devgan', '2013', 'ajaydevgan@gmail.com', 'Male', '2000-03-03', 5, '2022-04-02 08:12:39', NULL, 1),
(29, 'Inaya Patel', '2014', 'inayapatel@gmail.com', 'Female', '2000-04-04', 5, '2022-04-02 08:13:08', NULL, 1),
(30, 'Ashwin Mishra', '2015', 'ashwinmishra@gmail.com', 'Male', '2000-05-05', 5, '2022-04-02 08:13:25', NULL, 1),
(31, 'Dhruv Rathee', '2016', 'dhruvrathee@gmail.com', 'Male', '2000-06-06', 5, '2022-04-02 08:13:54', NULL, 1),
(32, 'Ishaan Patel', '2017', 'ishaanpatel@gmail.com', 'Male', '2000-07-07', 5, '2022-04-02 08:14:16', NULL, 1),
(33, 'Jaya Bacchan', '2018', 'jayabacchan@gmail.com', 'Female', '2000-08-08', 5, '2022-04-02 08:14:39', NULL, 1),
(34, 'Ananya Pandey', '2019', 'ananyapandey@gmail.com', 'Female', '2000-09-09', 5, '2022-04-02 08:15:03', NULL, 1),
(35, 'Diya Singh', '20110', 'diyasingh@gmail.com', 'Female', '2000-10-10', 5, '2022-04-02 08:15:27', NULL, 1),
(36, 'Nila Kumari', '2021', 'nilakumari@gmail.com', 'Female', '1999-06-05', 6, '2022-04-02 08:20:17', NULL, 1),
(37, 'Sahil Khan', '2022', 'sahilkhan@gmail.com', 'Male', '1999-08-16', 6, '2022-04-02 08:20:38', NULL, 1),
(38, 'Ajay Devgan', '2023', 'ajaydevgan@gmail.com', 'Male', '1999-02-06', 6, '2022-04-02 08:21:04', NULL, 1),
(39, 'Ashwin Mishra', '2024', 'ashwinmishra@gmail.com', 'Male', '1999-07-23', 6, '2022-04-02 08:21:27', NULL, 1),
(40, 'Inaya Patel', '2025', 'inayapatel@gmail.com', 'Female', '1999-05-12', 6, '2022-04-02 08:21:48', NULL, 1),
(41, 'Nila Kumari', '2031', 'nilakumari@gmail.com', 'Female', '1998-11-28', 7, '2022-04-02 08:39:41', NULL, 1),
(42, 'Sahil Khan', '2032', 'sahilkhan@gmail.com', 'Male', '1998-07-18', 7, '2022-04-02 08:40:05', NULL, 1),
(43, 'Ajay Devgan', '2033', 'ajaydevgan@gmail.com', 'Male', '1998-10-20', 7, '2022-04-02 08:40:32', NULL, 1),
(44, 'Nila Kumari', '3011', 'nilakumari@gmail.com', 'Female', '2000-01-01', 8, '2022-04-02 08:42:14', NULL, 1),
(45, 'Sahil Khan', '3012', 'sahilkhan@gmail.com', 'Male', '2000-02-02', 8, '2022-04-02 08:42:33', NULL, 1),
(46, 'Ajay Devgan', '3013', 'ajaydevgan@gmail.com', 'Male', '2000-03-03', 8, '2022-04-02 08:43:03', NULL, 1),
(47, 'Inaya Patel', '3014', 'inayapatel@gmail.com', 'Female', '2000-04-04', 8, '2022-04-02 08:43:23', NULL, 1),
(48, 'Ashwin Mishra', '3015', 'ashwinmishra@gmail.com', 'Male', '2000-05-05', 8, '2022-04-02 08:44:35', NULL, 1),
(49, 'Diya Singh', '3016', 'diyasingh@gmail.com', 'Female', '2000-06-06', 8, '2022-04-02 08:45:00', NULL, 1),
(50, 'Ananya Pandey', '3017', 'ananyapandey@gmail.com', 'Female', '2000-07-07', 8, '2022-04-02 08:45:24', NULL, 1),
(52, 'Jaya Bacchan', '3018', 'jayabacchan@gmail.com', 'Female', '2000-08-08', 8, '2022-04-02 08:50:00', NULL, 1),
(53, 'Ishaan Patel', '3019', 'ishaanpatel@gmail.com', 'Male', '2000-09-09', 8, '2022-04-02 08:50:49', NULL, 1),
(54, 'Dhruv Rathee', '30110', 'dhruvrathee@gmail.com', 'Male', '2000-10-10', 8, '2022-04-02 08:51:06', NULL, 1),
(55, 'Nila Kumari', '3021', 'nilakumari@gmail.com', 'Female', '1999-01-01', 9, '2022-04-02 08:55:02', NULL, 1),
(56, 'Sahil Khan', '3022', 'sahilkhan@gmail.com', 'Male', '1999-02-02', 9, '2022-04-02 08:55:18', NULL, 1),
(57, 'Ajay Devgan', '3023', 'ajaydevgan@gmail.com', 'Male', '1999-03-03', 9, '2022-04-02 08:55:36', NULL, 1),
(58, 'Ashwin Mishra', '3024', 'ashwinmishra@gmail.com', 'Male', '1999-04-04', 9, '2022-04-02 08:55:58', NULL, 1),
(59, 'Inaya Patel', '3025', 'inayapatel@gmail.com', 'Female', '1999-05-05', 9, '2022-04-02 08:56:14', NULL, 1),
(60, 'Nila Kumari', '3031', 'nilakumari@gmail.com', 'Female', '1998-03-29', 10, '2022-04-02 09:01:44', NULL, 1),
(61, 'Sahil Khan', '3032', 'sahilkhan@gmail.com', 'Male', '1998-06-13', 10, '2022-04-02 09:02:04', NULL, 1),
(62, 'Ajay Devgan', '3033', 'ajaydevgan@gmail.com', 'Male', '1998-02-28', 10, '2022-04-02 09:02:26', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

DROP TABLE IF EXISTS `tblsubjectcombination`;
CREATE TABLE IF NOT EXISTS `tblsubjectcombination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(37, 1, 12, 1, '2022-04-01 16:01:23', NULL),
(38, 1, 13, 1, '2022-04-01 16:01:29', NULL),
(39, 1, 14, 1, '2022-04-01 16:01:35', NULL),
(40, 1, 15, 1, '2022-04-01 16:01:41', NULL),
(41, 1, 16, 1, '2022-04-01 16:01:48', NULL),
(42, 2, 17, 1, '2022-04-01 16:05:08', NULL),
(43, 2, 18, 1, '2022-04-01 16:05:15', NULL),
(44, 2, 19, 1, '2022-04-01 16:05:21', NULL),
(46, 2, 21, 1, '2022-04-01 16:05:40', NULL),
(47, 4, 22, 1, '2022-04-01 16:07:24', NULL),
(48, 4, 23, 1, '2022-04-01 16:07:33', NULL),
(49, 4, 24, 1, '2022-04-01 16:07:44', NULL),
(50, 4, 25, 1, '2022-04-01 16:07:51', NULL),
(51, 4, 26, 1, '2022-04-01 16:08:00', NULL),
(53, 2, 20, 1, '2022-04-02 03:51:52', NULL),
(54, 5, 27, 1, '2022-04-02 03:52:34', NULL),
(55, 5, 28, 1, '2022-04-02 03:52:48', NULL),
(56, 5, 29, 1, '2022-04-02 03:52:57', NULL),
(57, 5, 30, 1, '2022-04-02 03:53:06', NULL),
(58, 5, 31, 1, '2022-04-02 03:53:20', NULL),
(59, 6, 32, 1, '2022-04-02 03:58:03', NULL),
(60, 6, 33, 1, '2022-04-02 03:58:14', NULL),
(61, 6, 34, 1, '2022-04-02 03:58:25', NULL),
(62, 6, 35, 1, '2022-04-02 03:58:33', NULL),
(63, 6, 36, 1, '2022-04-02 03:58:46', NULL),
(64, 7, 37, 1, '2022-04-02 04:04:20', NULL),
(65, 7, 38, 1, '2022-04-02 04:04:35', NULL),
(66, 7, 39, 1, '2022-04-02 04:05:19', NULL),
(67, 7, 40, 1, '2022-04-02 04:05:28', NULL),
(68, 7, 41, 1, '2022-04-02 04:05:38', NULL),
(69, 8, 42, 1, '2022-04-02 04:09:13', NULL),
(70, 8, 43, 1, '2022-04-02 04:09:28', NULL),
(71, 8, 44, 1, '2022-04-02 04:09:41', NULL),
(72, 8, 45, 1, '2022-04-02 04:09:59', NULL),
(73, 8, 46, 1, '2022-04-02 04:10:11', NULL),
(74, 9, 47, 1, '2022-04-02 04:13:16', NULL),
(75, 9, 48, 1, '2022-04-02 04:13:26', NULL),
(76, 9, 49, 1, '2022-04-02 04:13:38', NULL),
(77, 9, 50, 1, '2022-04-02 04:13:47', NULL),
(78, 9, 51, 1, '2022-04-02 04:13:57', NULL),
(79, 10, 52, 1, '2022-04-02 04:18:03', NULL),
(80, 10, 53, 1, '2022-04-02 04:18:14', NULL),
(81, 10, 54, 1, '2022-04-02 04:19:18', NULL),
(82, 10, 55, 1, '2022-04-02 04:19:27', NULL),
(83, 10, 56, 1, '2022-04-02 04:19:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

DROP TABLE IF EXISTS `tblsubjects`;
CREATE TABLE IF NOT EXISTS `tblsubjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(12, 'C', 'C101', '2022-04-01 15:59:37', NULL),
(13, 'DBMS', 'D101', '2022-04-01 15:59:52', NULL),
(14, 'Business Communication', 'B101', '2022-04-01 16:00:24', NULL),
(15, 'Principles Of Management', 'P101', '2022-04-01 16:00:43', NULL),
(16, 'Web Tech', 'W101', '2022-04-01 16:01:03', NULL),
(17, 'Digital Marketing', 'D102', '2022-04-01 16:02:11', NULL),
(18, 'Data Structure', 'DS102', '2022-04-01 16:02:22', NULL),
(19, 'PHP', 'P102', '2022-04-01 16:02:29', NULL),
(20, 'Blockchain', 'B102', '2022-04-01 16:02:37', NULL),
(21, 'Software Engineering', 'S102', '2022-04-01 16:04:38', NULL),
(22, 'Advance PHP', 'A103', '2022-04-01 16:06:10', NULL),
(23, 'Operating System', 'O103', '2022-04-01 16:06:25', NULL),
(24, 'Networking', 'N103', '2022-04-01 16:06:35', NULL),
(25, 'C++', 'C103', '2022-04-01 16:06:46', NULL),
(26, 'JQuery', 'J103', '2022-04-01 16:06:57', NULL),
(27, 'Principles Of Management', 'P201', '2022-04-02 03:37:59', NULL),
(28, 'Business Mathematics and Statistics', 'B201', '2022-04-02 03:38:30', NULL),
(29, 'Business Economics', 'BE201', '2022-04-02 03:38:55', NULL),
(30, 'Operations Research', 'O201', '2022-04-02 03:39:15', NULL),
(31, 'Financial and Management Accounting', 'F201', '2022-04-02 03:39:41', NULL),
(32, 'Production and Materials Management', 'P202', '2022-04-02 03:54:34', NULL),
(33, 'Personnel Management and Industrial Relations', 'PI202', '2022-04-02 03:55:13', NULL),
(34, 'Business Data Processing', 'B202', '2022-04-02 03:55:55', NULL),
(35, 'Business Laws', 'BL202', '2022-04-02 03:56:10', NULL),
(36, 'Marketing Management', 'M202', '2022-04-02 03:57:31', NULL),
(37, 'Microeconomics', 'M203', '2022-04-02 04:00:59', NULL),
(38, 'Macroeconomics', 'ME203', '2022-04-02 04:01:17', NULL),
(39, 'Cost Accounting', 'C203', '2022-04-02 04:01:51', NULL),
(40, 'Environmental Management', 'E203', '2022-04-02 04:02:16', NULL),
(41, 'Entrepreneurship and Business Plan', 'EB203', '2022-04-02 04:02:59', NULL),
(42, 'Business Organization and Management', 'B301', '2022-04-02 04:06:33', NULL),
(43, 'Business and Industrial Laws', 'BI301', '2022-04-02 04:06:59', NULL),
(44, 'Business Mathematics and Statistics', 'BM301', '2022-04-02 04:07:18', NULL),
(45, 'Computer Applications in Business', 'C301', '2022-04-02 04:07:40', NULL),
(46, 'Business Environment', 'BE301', '2022-04-02 04:08:02', NULL),
(47, 'Accountancy', 'A302', '2022-04-02 04:11:19', NULL),
(48, 'Financial Management', 'F302', '2022-04-02 04:11:37', NULL),
(49, 'Company Law', 'C302', '2022-04-02 04:11:51', NULL),
(50, 'Taxation', 'T302', '2022-04-02 04:12:05', NULL),
(51, 'Marketing Management', 'M302', '2022-04-02 04:12:19', NULL),
(52, 'Financial Market and Services', 'F303', '2022-04-02 04:15:59', NULL),
(53, 'Income Tax Law', 'I303', '2022-04-02 04:16:18', NULL),
(54, 'Production and Operation Management', 'P303', '2022-04-02 04:16:55', NULL),
(55, 'Direct Tax Laws', 'D303', '2022-04-02 04:17:13', NULL),
(56, 'Social and Business Ethics', 'S303', '2022-04-02 04:17:32', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
