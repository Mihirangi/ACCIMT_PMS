-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 23, 2016 at 05:23 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `procurement_db`
--
CREATE DATABASE IF NOT EXISTS `procurement_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `procurement_db`;

-- --------------------------------------------------------

--
-- Table structure for table `act_dte_tbl`
--

CREATE TABLE IF NOT EXISTS `act_dte_tbl` (
  `act_dte_id` int(11) NOT NULL AUTO_INCREMENT,
  `pr_dtls_code` int(11) NOT NULL,
  `sh_no` int(11) NOT NULL,
  `act_dte` varchar(11) NOT NULL,
  `shdl_dte` varchar(11) NOT NULL,
  `EmpNo` int(10) NOT NULL,
  PRIMARY KEY (`pr_dtls_code`,`sh_no`),
  UNIQUE KEY `act_dte_id` (`act_dte_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=193 ;

--
-- Dumping data for table `act_dte_tbl`
--

INSERT INTO `act_dte_tbl` (`act_dte_id`, `pr_dtls_code`, `sh_no`, `act_dte`, `shdl_dte`, `EmpNo`) VALUES
(131, 1, 0, '', '', 0),
(1, 1, 1, '05-12-31', '2016-09-23', 107),
(2, 1, 2, '05-12-31', '2016-09-26', 107),
(3, 1, 3, '16-10-04', '2016-09-29', 0),
(4, 1, 4, '16-10-04', '2016-10-02', 0),
(5, 1, 5, '', '2016-10-04', 0),
(6, 1, 6, '', '2016-10-06', 0),
(7, 1, 7, '', '2016-10-16', 0),
(8, 1, 8, '', '2016-10-19', 0),
(9, 1, 9, '', '2016-11-09', 0),
(10, 1, 10, '', '2016-11-23', 0),
(11, 1, 11, '', '2016-11-30', 0),
(12, 1, 12, '', '2016-12-02', 0),
(13, 1, 13, '', '2017-01-01', 0),
(132, 2, 0, '', '', 0),
(27, 2, 1, '', '2016-09-24', 0),
(28, 2, 2, '', '2016-09-27', 0),
(29, 2, 3, '', '2016-09-30', 0),
(30, 2, 4, '', '2016-10-03', 0),
(31, 2, 5, '', '2016-10-05', 0),
(32, 2, 6, '', '2016-10-07', 0),
(33, 2, 7, '', '2016-10-17', 0),
(34, 2, 8, '', '2016-10-20', 0),
(35, 2, 9, '', '2016-11-10', 0),
(36, 2, 10, '', '2016-11-24', 0),
(37, 2, 11, '', '2016-12-01', 0),
(38, 2, 12, '', '2016-12-03', 0),
(39, 2, 13, '', '2017-01-02', 0),
(133, 3, 0, '', '', 0),
(14, 3, 1, '', '2016-10-06', 0),
(15, 3, 2, '', '2016-10-09', 0),
(16, 3, 3, '', '2016-10-12', 0),
(17, 3, 4, '', '2016-10-15', 0),
(18, 3, 5, '', '2016-10-17', 0),
(19, 3, 6, '', '2016-10-19', 0),
(20, 3, 7, '', '2016-10-29', 0),
(21, 3, 8, '', '2016-11-01', 0),
(22, 3, 9, '', '2016-11-22', 0),
(23, 3, 10, '', '2016-12-06', 0),
(24, 3, 11, '', '2016-12-13', 0),
(25, 3, 12, '', '2016-12-15', 0),
(26, 3, 13, '', '2017-01-14', 0),
(134, 4, 0, '', '', 0),
(40, 4, 1, '', '-0001-12-03', 0),
(41, 4, 2, '', '-0001-12-06', 0),
(42, 4, 3, '', '-0001-12-09', 0),
(43, 4, 4, '', '-0001-12-12', 0),
(44, 4, 5, '', '-0001-12-14', 0),
(45, 4, 6, '', '-0001-12-16', 0),
(46, 4, 7, '', '-0001-12-26', 0),
(47, 4, 8, '', '-0001-12-29', 0),
(48, 4, 9, '', '0000-01-19', 0),
(49, 4, 10, '', '0000-02-02', 0),
(50, 4, 11, '', '0000-02-09', 0),
(51, 4, 12, '', '0000-02-11', 0),
(52, 4, 13, '', '0000-03-12', 0),
(135, 5, 0, '', '', 0),
(53, 5, 1, '', '2016-10-08', 0),
(54, 5, 2, '', '2016-10-11', 0),
(55, 5, 3, '', '2016-10-14', 0),
(56, 5, 4, '', '2016-10-17', 0),
(57, 5, 5, '', '2016-10-19', 0),
(58, 5, 6, '', '2016-10-21', 0),
(59, 5, 7, '', '2016-10-31', 0),
(60, 5, 8, '', '2016-11-03', 0),
(61, 5, 9, '', '2016-11-24', 0),
(62, 5, 10, '', '2016-12-08', 0),
(63, 5, 11, '', '2016-12-15', 0),
(64, 5, 12, '', '2016-12-17', 0),
(65, 5, 13, '', '2017-01-16', 0),
(136, 6, 0, '', '', 0),
(66, 6, 1, '', '2016-10-08', 0),
(67, 6, 2, '', '2016-10-11', 0),
(68, 6, 3, '', '2016-10-14', 0),
(69, 6, 4, '', '2016-10-17', 0),
(70, 6, 5, '', '2016-10-19', 0),
(71, 6, 6, '', '2016-10-21', 0),
(72, 6, 7, '', '2016-10-31', 0),
(73, 6, 8, '', '2016-11-03', 0),
(74, 6, 9, '', '2016-11-24', 0),
(75, 6, 10, '', '2016-12-08', 0),
(76, 6, 11, '', '2016-12-15', 0),
(77, 6, 12, '', '2016-12-17', 0),
(78, 6, 13, '', '2017-01-16', 0),
(137, 7, 0, '', '', 0),
(79, 7, 1, '', '2016-10-08', 0),
(80, 7, 2, '', '2016-10-11', 0),
(81, 7, 3, '', '2016-10-14', 0),
(82, 7, 4, '', '2016-10-17', 0),
(83, 7, 5, '', '2016-10-19', 0),
(84, 7, 6, '', '2016-10-21', 0),
(85, 7, 7, '', '2016-10-31', 0),
(86, 7, 8, '', '2016-11-03', 0),
(87, 7, 9, '', '2016-11-24', 0),
(88, 7, 10, '', '2016-12-08', 0),
(89, 7, 11, '', '2016-12-15', 0),
(90, 7, 12, '', '2016-12-17', 0),
(91, 7, 13, '', '2017-01-16', 0),
(138, 8, 0, '', '', 0),
(92, 8, 1, '', '2016-10-07', 0),
(93, 8, 2, '', '2016-10-10', 0),
(94, 8, 3, '', '2016-10-13', 0),
(95, 8, 4, '', '2016-10-16', 0),
(96, 8, 5, '', '2016-10-18', 0),
(97, 8, 6, '', '2016-10-20', 0),
(98, 8, 7, '', '2016-10-30', 0),
(99, 8, 8, '', '2016-11-02', 0),
(100, 8, 9, '', '2016-11-23', 0),
(101, 8, 10, '', '2016-12-07', 0),
(102, 8, 11, '', '2016-12-14', 0),
(103, 8, 12, '', '2016-12-16', 0),
(104, 8, 13, '', '2017-01-15', 0),
(139, 9, 0, '', '', 0),
(105, 9, 1, '', '2016-10-09', 0),
(106, 9, 2, '', '2016-10-12', 0),
(107, 9, 3, '', '2016-10-15', 0),
(108, 9, 4, '', '2016-10-18', 0),
(109, 9, 5, '', '2016-10-20', 0),
(110, 9, 6, '', '2016-10-22', 0),
(111, 9, 7, '', '2016-11-01', 0),
(112, 9, 8, '', '2016-11-04', 0),
(113, 9, 9, '', '2016-11-25', 0),
(114, 9, 10, '', '2016-12-09', 0),
(115, 9, 11, '', '2016-12-16', 0),
(116, 9, 12, '', '2016-12-18', 0),
(117, 9, 13, '', '2017-01-17', 0),
(140, 10, 0, '', '', 0),
(118, 10, 1, '', '2016-10-09', 0),
(119, 10, 2, '', '2016-10-12', 0),
(120, 10, 3, '', '2016-10-15', 0),
(121, 10, 4, '', '2016-10-18', 0),
(122, 10, 5, '', '2016-10-20', 0),
(123, 10, 6, '', '2016-10-22', 0),
(124, 10, 7, '', '2016-11-01', 0),
(125, 10, 8, '', '2016-11-04', 0),
(126, 10, 9, '', '2016-11-25', 0),
(127, 10, 10, '', '2016-12-09', 0),
(128, 10, 11, '', '2016-12-16', 0),
(129, 10, 12, '', '2016-12-18', 0),
(130, 10, 13, '', '2017-01-17', 0),
(141, 11, 1, '', '-0001-12-03', 0),
(142, 11, 2, '', '-0001-12-06', 0),
(143, 11, 3, '', '-0001-12-09', 0),
(144, 11, 4, '', '-0001-12-12', 0),
(145, 11, 5, '', '-0001-12-14', 0),
(146, 11, 6, '', '-0001-12-16', 0),
(147, 11, 7, '', '-0001-12-26', 0),
(148, 11, 8, '', '-0001-12-29', 0),
(149, 11, 9, '', '0000-01-19', 0),
(150, 11, 10, '', '0000-02-02', 0),
(151, 11, 11, '', '0000-02-09', 0),
(152, 11, 12, '', '0000-02-11', 0),
(153, 11, 13, '', '0000-03-12', 0),
(154, 13, 1, '', '2016-11-11', 0),
(155, 13, 2, '', '2016-11-14', 0),
(156, 13, 3, '', '2016-11-17', 0),
(157, 13, 4, '', '2016-11-20', 0),
(158, 13, 5, '', '2016-11-22', 0),
(159, 13, 6, '', '2016-11-24', 0),
(160, 13, 7, '', '2016-12-04', 0),
(161, 13, 8, '', '2016-12-07', 0),
(162, 13, 9, '', '2016-12-28', 0),
(163, 13, 10, '', '2017-01-11', 0),
(164, 13, 11, '', '2017-01-18', 0),
(165, 13, 12, '', '2017-01-20', 0),
(166, 13, 13, '', '2017-02-19', 0),
(167, 14, 1, '', '-0001-12-03', 0),
(168, 14, 2, '', '-0001-12-06', 0),
(169, 14, 3, '', '-0001-12-09', 0),
(170, 14, 4, '', '-0001-12-12', 0),
(171, 14, 5, '', '-0001-12-14', 0),
(172, 14, 6, '', '-0001-12-16', 0),
(173, 14, 7, '', '-0001-12-26', 0),
(174, 14, 8, '', '-0001-12-29', 0),
(175, 14, 9, '', '0000-01-19', 0),
(176, 14, 10, '', '0000-02-02', 0),
(177, 14, 11, '', '0000-02-09', 0),
(178, 14, 12, '', '0000-02-11', 0),
(179, 14, 13, '', '0000-03-12', 0),
(180, 15, 1, '', '2016-11-12', 0),
(181, 15, 2, '', '2016-11-15', 0),
(182, 15, 3, '', '2016-11-18', 0),
(183, 15, 4, '', '2016-11-21', 0),
(184, 15, 5, '', '2016-11-23', 0),
(185, 15, 6, '', '2016-11-25', 0),
(186, 15, 7, '', '2016-12-05', 0),
(187, 15, 8, '', '2016-12-08', 0),
(188, 15, 9, '', '2016-12-29', 0),
(189, 15, 10, '', '2017-01-12', 0),
(190, 15, 11, '', '2017-01-19', 0),
(191, 15, 12, '', '2017-01-21', 0),
(192, 15, 13, '', '2017-02-20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `appoint_tec`
--

CREATE TABLE IF NOT EXISTS `appoint_tec` (
  `File_no` varchar(25) NOT NULL,
  `EmpNo` int(10) NOT NULL,
  `type_id` int(1) NOT NULL,
  `Approve` varchar(1) NOT NULL,
  PRIMARY KEY (`File_no`),
  UNIQUE KEY `File_no` (`File_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appoint_tec`
--

INSERT INTO `appoint_tec` (`File_no`, `EmpNo`, `type_id`, `Approve`) VALUES
('ACC/FN/01', 188, 2, 'Y'),
('ACC/FN/02', 217, 1, ''),
('Acc/FN/03', 72, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `appoint_tec_type`
--

CREATE TABLE IF NOT EXISTS `appoint_tec_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_des` varchar(25) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `appoint_tec_type`
--

INSERT INTO `appoint_tec_type` (`type_id`, `type_des`) VALUES
(1, 'Chairman'),
(2, 'employee');

-- --------------------------------------------------------

--
-- Table structure for table `attend_dts_tbl`
--

CREATE TABLE IF NOT EXISTS `attend_dts_tbl` (
  `AttDtId` int(10) NOT NULL AUTO_INCREMENT,
  `AttDt` date NOT NULL,
  `ProsDt` date NOT NULL,
  `DayTypeID` int(1) NOT NULL,
  `User` varchar(20) NOT NULL,
  PRIMARY KEY (`AttDtId`),
  UNIQUE KEY `AttDt` (`AttDt`),
  KEY `DayTypeID` (`DayTypeID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `attend_dts_tbl`
--

INSERT INTO `attend_dts_tbl` (`AttDtId`, `AttDt`, `ProsDt`, `DayTypeID`, `User`) VALUES
(1, '2015-01-01', '2015-03-18', 1, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `budget_tbl`
--

CREATE TABLE IF NOT EXISTS `budget_tbl` (
  `budg_no` int(11) NOT NULL AUTO_INCREMENT,
  `Budg_descrip` varchar(50) NOT NULL,
  `budg_code` varchar(20) NOT NULL,
  `short_descrip` varchar(10) NOT NULL,
  PRIMARY KEY (`budg_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `budget_tbl`
--

INSERT INTO `budget_tbl` (`budg_no`, `Budg_descrip`, `budg_code`, `short_descrip`) VALUES
(5, 'Computers', 'BU/CO', 'CO'),
(6, 'Office Equipment', 'BU/OE', 'OE'),
(7, 'Building', 'BU/BD', 'BD'),
(8, 'Furniture', 'BU/FF', 'FF'),
(9, 'Library Books', 'BU/LB', 'LB'),
(10, 'Infra Structure Improvement', 'BU/II', 'II'),
(11, 'Lab Equipment', 'BU/LE', 'LE'),
(12, 'Activities and programmes', 'BU/AP', 'AP'),
(13, 'ddd', 'dd/ddd', 'dd'),
(14, 'Building', 'BU/BD', 'BD');

-- --------------------------------------------------------

--
-- Table structure for table `bud_req_user`
--

CREATE TABLE IF NOT EXISTS `bud_req_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pr_no` int(10) NOT NULL,
  `user` int(11) NOT NULL,
  `equ_detail` text NOT NULL,
  `purpose` text NOT NULL,
  `similar_equ` text NOT NULL,
  `reason` text NOT NULL,
  `value` double NOT NULL,
  `target_month` text NOT NULL,
  `req_date` date NOT NULL,
  `bud_year` int(4) NOT NULL,
  `bud_code` text NOT NULL,
  `approved` char(1) NOT NULL,
  `Recommend` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `bud_req_user`
--

INSERT INTO `bud_req_user` (`id`, `pr_no`, `user`, `equ_detail`, `purpose`, `similar_equ`, `reason`, `value`, `target_month`, `req_date`, `bud_year`, `bud_code`, `approved`, `Recommend`) VALUES
(22, 6, 5, 'ww', 'ffaadd22', '77', 'bhh', 0, '0', '2016-11-09', 0, '0', '', ''),
(20, 4, 93, 'ww', 'ffaadd22', '77', 'bhh', 0, '0', '2016-11-09', 2016, '20', 'Y', 'Y'),
(17, 1, 5, 'ww', 'ffaadd22', '77', 'bhh', 0, '0', '2016-11-09', 0, '0', 'Y', 'Y'),
(18, 1, 5, 'ww', 'ffaadd22', '77', 'bhh', 0, '0', '0000-00-00', 0, '0', 'Y', 'N'),
(19, 3, 93, 'ww', 'ffaadd22', '77', 'bhh', 0, '0', '2016-11-09', 0, '0', '', ''),
(24, 7, 5, 'ww', 'ffaadd22', '77', 'bhh', 0, '0', '2016-11-09', 0, '0', '', ''),
(34, 0, 93, 'ww', 'ffaadd22', '77', 'bhh', 0, '0', '2016-11-10', 2019, 'BU/CO', '', ''),
(33, 0, 93, 'ww', 'ffaadd22', '77', 'bhh', 0, '0', '2016-11-10', 2018, 'BU/II', '', ''),
(31, 0, 93, 'ww', 'ffaadd22', '77', 'bhh', 0, '0', '2016-11-10', 0, 'BU/FF', '', ''),
(32, 0, 93, 'ww', 'ffaadd22', '77', 'bhh', 0, '0', '2016-11-10', 2018, 'BU/CO', '', ''),
(35, 0, 93, 'ww', 'ffaadd22', '77', 'bhh', 0, '0', '2016-11-10', 2020, 'BU/II', 'Y', ''),
(36, 0, 93, 'ww', 'ffaadd22', '77', 'bhh', 0, '0', '2016-11-10', 0, '', 'Y', 'Y'),
(37, 0, 93, 'ww', 'ffaadd22', '77', 'bhh', 0, '0', '2016-11-11', 2017, 'BU/CO', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bud_req_user_old`
--

CREATE TABLE IF NOT EXISTS `bud_req_user_old` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pr_no` int(10) NOT NULL,
  `user` int(11) NOT NULL,
  `equ_detail` text NOT NULL,
  `purpose` text NOT NULL,
  `similar_equ` text NOT NULL,
  `reason` text NOT NULL,
  `value` double NOT NULL,
  `target_month` text NOT NULL,
  `req_date` date NOT NULL,
  `bud_year` int(4) NOT NULL,
  `bud_code` text NOT NULL,
  `approved` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `bud_req_user_old`
--

INSERT INTO `bud_req_user_old` (`id`, `pr_no`, `user`, `equ_detail`, `purpose`, `similar_equ`, `reason`, `value`, `target_month`, `req_date`, `bud_year`, `bud_code`, `approved`) VALUES
(40, 4, 93, 'ww', '   jjj ', '77', 'bhh', 0, '0', '2016-11-09', 2016, '20', 'N'),
(41, 4, 93, 'ww', '   ffaadd', '77', 'bhh', 0, '0', '2016-11-09', 2016, '20', 'N'),
(42, 4, 93, 'ww', '   ffaadd22', '77', 'bhh', 0, '0', '2016-11-09', 2016, '20', 'N'),
(43, 4, 93, 'ww', '   ffaadd22', '77', 'bhh', 0, '0', '2016-11-09', 2016, '20', 'N'),
(44, 4, 93, 'ww', '   ffaadd22', '77', 'bhh', 0, '0', '2016-11-09', 2016, '20', 'N'),
(45, 4, 93, 'ww', '   ffaadd22', '77', 'bhh', 0, '0', '2016-11-09', 2016, '20', 'N'),
(46, 4, 93, 'ww', '   ffaadd22', '77', 'bhh', 0, '0', '2016-11-09', 2016, '20', 'N'),
(47, 4, 93, 'ww', '   ffaadd22', '77', 'bhh', 0, '0', '2016-11-09', 2016, '20', 'N'),
(48, 4, 93, 'ww', '   ffaadd22', '77', 'bhh', 0, '0', '2016-11-09', 2016, '20', 'N'),
(49, 4, 93, 'ww', '   ffaadd22', '77', 'bhh', 0, '0', '2016-11-09', 2016, '20', 'N'),
(50, 4, 93, 'ww', '   ffaadd22', '77', 'bhh', 0, '0', '2016-11-09', 2016, '20', 'N'),
(51, 4, 93, 'ww', '   ffaadd22', '77', 'bhh', 0, '0', '2016-11-09', 2016, '20', 'Y'),
(52, 4, 93, 'ww', '   ffaadd22', '77', 'bhh', 0, '0', '2016-11-09', 2016, '20', 'Y'),
(53, 4, 93, 'ww', '   ffaadd22', '77', 'bhh', 0, '0', '2016-11-09', 2016, '20', 'Y'),
(54, 4, 93, 'ww', '   ffaadd22', '77', 'bhh', 0, '0', '2016-11-09', 2016, '20', 'Y'),
(55, 4, 93, 'ww', '   ffaadd22', '77', 'bhh', 0, '0', '2016-11-09', 2016, '20', 'Y'),
(56, 1, 5, 'ww', '   ffaadd22', '77', 'bhh', 0, '0', '0000-00-00', 0, '0', 'Y'),
(57, 1, 5, 'ww', 'ffaadd22', '77', 'bhh', 0, '0', '0000-00-00', 0, '0', 'Y'),
(58, 1, 5, 'ww', 'ffaadd22', '77', 'bhh', 0, '0', '0000-00-00', 0, '0', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `cancled_lv_tbl`
--

CREATE TABLE IF NOT EXISTS `cancled_lv_tbl` (
  `Leave_ID` int(11) NOT NULL,
  `Emp_No` int(11) NOT NULL,
  `Leave_Type_ID` int(1) NOT NULL,
  `From_Date` date NOT NULL,
  `To_Date` date NOT NULL,
  `No_of_Days` double(4,1) NOT NULL,
  `Leave_Reason` varchar(100) NOT NULL,
  `Leave_Address_L1` varchar(100) DEFAULT NULL,
  `Leave_Address_L2` varchar(100) DEFAULT NULL,
  `Leave_Address_L3` varchar(100) DEFAULT NULL,
  `App_Date` date NOT NULL,
  `Act_Emp_No` int(11) NOT NULL,
  `Act_Approved` varchar(2) NOT NULL,
  `Hod_Emp_No` int(11) NOT NULL,
  `Hod_Approved` varchar(2) NOT NULL,
  `Cle_Printed` varchar(2) NOT NULL,
  KEY `Emp_No` (`Emp_No`),
  KEY `Leave_Type_ID` (`Leave_Type_ID`),
  KEY `Hod_Emp_No` (`Hod_Emp_No`),
  KEY `Act_Emp_No` (`Act_Emp_No`),
  KEY `Leave_ID` (`Leave_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cancled_lv_tbl`
--

INSERT INTO `cancled_lv_tbl` (`Leave_ID`, `Emp_No`, `Leave_Type_ID`, `From_Date`, `To_Date`, `No_of_Days`, `Leave_Reason`, `Leave_Address_L1`, `Leave_Address_L2`, `Leave_Address_L3`, `App_Date`, `Act_Emp_No`, `Act_Approved`, `Hod_Emp_No`, `Hod_Approved`, `Cle_Printed`) VALUES
(3, 237, 4, '2014-04-02', '2014-04-16', 14.0, 'Personal', 'L1', 'L2', 'L3', '2014-04-01', 216, 'N', 70, 'N', 'N'),
(16, 149, 3, '2015-03-13', '2015-04-13', 20.0, 'DR', 'afd', 'adf', 'SDVG', '2015-03-13', 70, 'N', 256, 'N', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `category_tbl`
--

CREATE TABLE IF NOT EXISTS `category_tbl` (
  `CategoryCode` int(3) NOT NULL AUTO_INCREMENT,
  `Category` varchar(100) NOT NULL,
  `InTime` time NOT NULL,
  `OutTimeH` int(2) NOT NULL,
  `OutTimeM` int(2) NOT NULL,
  `AdjestTime` time NOT NULL,
  `LateTime` time NOT NULL,
  PRIMARY KEY (`CategoryCode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `category_tbl`
--

INSERT INTO `category_tbl` (`CategoryCode`, `Category`, `InTime`, `OutTimeH`, `OutTimeM`, `AdjestTime`, `LateTime`) VALUES
(0, 'Unset', '00:00:00', 0, 0, '00:00:00', '00:00:00'),
(1, 'Staff', '08:30:00', 7, 45, '08:45:00', '09:30:00'),
(2, 'Middle', '08:30:00', 7, 45, '08:45:00', '09:00:00'),
(3, 'Minor', '08:00:00', 8, 45, '08:15:00', '08:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `day_type_tbl`
--

CREATE TABLE IF NOT EXISTS `day_type_tbl` (
  `DayTypeID` int(1) NOT NULL AUTO_INCREMENT,
  `DayType` varchar(20) NOT NULL,
  PRIMARY KEY (`DayTypeID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `day_type_tbl`
--

INSERT INTO `day_type_tbl` (`DayTypeID`, `DayType`) VALUES
(1, 'Normal Working Day'),
(2, 'Holiday');

-- --------------------------------------------------------

--
-- Table structure for table `designation_tbl`
--

CREATE TABLE IF NOT EXISTS `designation_tbl` (
  `DesigCode` int(5) NOT NULL AUTO_INCREMENT,
  `Designation` varchar(150) NOT NULL,
  PRIMARY KEY (`DesigCode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1002 ;

--
-- Dumping data for table `designation_tbl`
--

INSERT INTO `designation_tbl` (`DesigCode`, `Designation`) VALUES
(1, 'System Administrator'),
(2, 'Senior Professor'),
(3, 'Deputy Director General (Technical Operation)'),
(4, 'Additional Director (Planning  & Development)'),
(5, 'Additional Director (Space Technology)'),
(6, 'Deputy Director General (Admin '),
(7, 'Professor/ Senior Fellow'),
(8, 'Principal Research Engineer'),
(9, 'Principal Electronic Engineer'),
(10, 'Principal System/Software Engineer'),
(11, 'Principal Research Scientist'),
(12, 'Senior Deputy Director Industrial Services'),
(13, 'Senior Deputy Director Communication'),
(14, 'Senior Deputy Director Electronics'),
(15, 'Senior Deputy Director Information Technology'),
(16, 'Senoir Deputy Director Robotics'),
(17, 'Senoir Deputy Director Astronomy'),
(18, 'Senoir Deputy Director Space Technology'),
(19, 'Senoir Deputy Director Space Technology Applications'),
(20, 'Senior Deputy Director (Industrialization)'),
(21, 'Senior Deputy Director Finance'),
(22, 'Senoir Deputy Director (Admin / HR)'),
(23, 'Senior Research Engineer'),
(25, 'Senior System/ Software Engineer'),
(26, 'Senior Research Scientist'),
(27, 'Senior Systems Analyst'),
(28, 'Fellow'),
(29, 'Research Engineer'),
(30, 'Electronic Engineer '),
(31, 'System / Software Engineer'),
(32, 'Research Scientist'),
(33, 'System Analyst'),
(34, 'Research Engineer - Grade I'),
(35, 'Electronic Engineer'),
(36, 'System / Software Engineer - Grade I'),
(37, 'Research Scientist - Grade I'),
(38, 'System Analyst - Grade I'),
(39, 'Assistant Director (Administration)'),
(40, 'Assistant Director / Deputy Director Human Resources'),
(41, ' Deputy Director (Media)'),
(42, 'Assistant Director (Industrializatin)'),
(43, 'Accountant '),
(44, 'Internal Auditor'),
(45, 'Librarian'),
(46, 'Administrative Officer'),
(48, 'Training Officer'),
(49, 'Engineering Assistant'),
(50, 'Accounts Officer '),
(51, 'Confidential Secretary'),
(52, 'Technical Assistants'),
(55, 'Principal Systems Engineer'),
(58, 'Senior Electronic Engineer'),
(59, 'Senior Systems Engineer'),
(60, 'Senior Software Engineer'),
(67, 'Prof./Senior Fellow'),
(74, 'Director & CEO'),
(76, 'Driver - Grade I'),
(77, 'System Analyst - Grade II'),
(78, 'Research Engineer - Grade II'),
(80, 'Research Scientist - Grade II'),
(81, 'System / Software Engineer - Grade II'),
(92, 'Director'),
(93, 'Programmer'),
(94, 'Assistant Maintenance Engineer'),
(95, 'Engineering Assistant'),
(96, 'Book keeper'),
(97, 'Work Superintendent'),
(98, 'Management Assistant (Secretary) - Grade I'),
(99, 'Office Aide - Grade III'),
(100, 'Plumber/Electrician'),
(101, 'Lab Attendent - Grade I'),
(102, 'Research Scientist - Grade III'),
(103, 'Principle Research Engineer'),
(104, 'Lab Attendent - Grade III'),
(105, 'Management Assistant (Computer Application Asstant) - Grade II'),
(106, 'Driver - Grade II'),
(107, 'Management Assistant (Library Assistant) - Grade I'),
(108, 'Driver - Grade III'),
(109, 'Management Assistant (Secretary) - Grade III'),
(110, 'Plumber/Electrician - Grade III'),
(111, 'Technical Officer - Grade II'),
(112, 'Receptionist / Telephone Operator '),
(113, 'Management Assistant (Store Keeper) - Grdae III'),
(115, 'Office Aide - Grade III'),
(116, 'Electronic Engineer - Grade II'),
(117, 'Technical Assistant - Grade III'),
(118, 'Software Engineer - Grade II'),
(119, 'Administrator'),
(999, 'Trainee'),
(1000, 'Deputy Director (Human Resources)'),
(1001, 'Management Assistant');

-- --------------------------------------------------------

--
-- Table structure for table `division_tbl`
--

CREATE TABLE IF NOT EXISTS `division_tbl` (
  `DivisionCode` int(5) NOT NULL AUTO_INCREMENT,
  `Division` varchar(150) DEFAULT NULL,
  `sh_code` varchar(5) NOT NULL,
  PRIMARY KEY (`DivisionCode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `division_tbl`
--

INSERT INTO `division_tbl` (`DivisionCode`, `Division`, `sh_code`) VALUES
(1, 'Chairman Division', 'CHA'),
(2, 'Director Division', 'DIR'),
(3, 'Admin Division', 'ADM'),
(4, 'Finance Division', 'FIN'),
(5, 'Communication Division', 'COMM'),
(6, 'Electronic Division', 'ELE'),
(7, 'Space Application Division', 'SPA'),
(8, 'Industrial Service Division', 'IND'),
(9, 'Information Technology Division', 'IT'),
(10, 'Library', 'LIB'),
(50, 'Administration-HR', 'ADH'),
(51, 'Administration-Purchasing', 'ADP'),
(52, 'Administration-Finance', 'ADF'),
(53, 'Media Division', 'MD'),
(54, 'Manager,Industry Relation Division', 'MIRD'),
(55, 'Internal Auditor Division ', 'IAD'),
(56, 'Lab Store', 'LS'),
(57, 'Administrator', 'AD'),
(100, 'System Administration', 'SAD');

-- --------------------------------------------------------

--
-- Table structure for table `div_budg_tbl`
--

CREATE TABLE IF NOT EXISTS `div_budg_tbl` (
  `divb_code` int(10) NOT NULL AUTO_INCREMENT,
  `div_code` int(5) NOT NULL,
  `budg_code` varchar(20) NOT NULL,
  `budg_year` year(4) NOT NULL,
  `user_descrip` varchar(100) NOT NULL,
  `req_amount` double NOT NULL,
  `appr_amount` double NOT NULL,
  `req_confirm` varchar(1) NOT NULL,
  `app_confirm` varchar(1) NOT NULL,
  `the_amount` double NOT NULL,
  PRIMARY KEY (`divb_code`),
  UNIQUE KEY `budg_code` (`budg_code`),
  KEY `div_code` (`div_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `div_budg_tbl`
--

INSERT INTO `div_budg_tbl` (`divb_code`, `div_code`, `budg_code`, `budg_year`, `user_descrip`, `req_amount`, `appr_amount`, `req_confirm`, `app_confirm`, `the_amount`) VALUES
(30, 9, 'BU/CO/IT/16', 2016, 'Computers and accessories', 1050000, 0, 'Y', 'N', 1050000),
(31, 6, 'BU/CO/ELE/16', 2016, 'Computers and accessories', 550000, 0, 'Y', 'N', 550000),
(32, 6, 'BU/OE/ELE/16', 2016, 'office Equipment', 500000, 0, 'Y', 'N', 500000),
(33, 6, 'BU/LE/ELE/16', 2016, 'Lab  Equipment', 2450000, 0, 'Y', 'N', 2450000),
(34, 7, 'BU/LE/SPA/16', 2016, ' Lab Equipment', 21900000, 21900000, 'Y', 'Y', 21900000),
(35, 7, 'BU/CO/SPA/16', 2016, 'Computers and accessories', 4500000, 4500000, 'Y', 'Y', 4500000),
(36, 5, 'BU/CO/COMM/16', 2016, 'Computers and accessories', 500000, 0, 'Y', 'N', 500000),
(37, 5, 'BU/LE/COMM/16', 2016, 'Lab  Equipment', 11000000, 0, 'Y', 'N', 11000000),
(38, 10, 'BU/CO/LIB/16', 2016, 'Computers and accessories', 250000, 0, 'Y', 'N', 250000),
(39, 10, 'BU/FF/LIB/16', 2016, 'Furniture and fitting', 100000, 0, 'Y', 'N', 100000),
(40, 10, 'BU/LB/LIB/16', 2016, 'Library books', 500000, 0, 'Y', 'N', 500000),
(41, 8, 'BU/LE/IND/16', 2016, 'Lab  Equipment', 1350000, 0, 'Y', 'N', 1350000),
(42, 8, 'BU/CO/IND/16', 2016, 'Computers and accessories', 600000, 0, 'Y', 'N', 600000),
(43, 8, 'BU/OE/IND/16', 2016, 'office equipment', 209410, 0, 'Y', 'N', 209410),
(44, 8, 'BU/FF/IND/16', 2016, 'Furniture', 320590, 0, 'Y', 'N', 320590),
(45, 5, 'BU/AP/COMM/16', 2016, 'Activities and programmes', 2500000, 0, 'Y', 'N', 2500000),
(46, 7, 'BU/AP/SPA/16', 2016, 'Activities and programmes', 5800000, 700000, 'Y', 'Y', 700000),
(48, 50, 'BU/CO/ADH/16', 2016, 'Computers and accessories', 100000, 0, 'Y', 'N', 100000),
(49, 50, 'BU/LE/ADH/16', 2016, 'Lab  Equipment', 100000, 0, 'Y', 'N', 100000),
(50, 50, 'BU/OE/ADH/16', 2016, 'office equipment', 100000, 0, 'Y', 'N', 100000),
(51, 3, 'BU/CO/ADM/16', 2016, 'Computers and accessories', 150000, 0, 'Y', 'N', 150000),
(54, 7, 'BU/OE/SPA/16', 2016, 'office equipment', 500000, 500000, 'Y', 'Y', 500000),
(55, 8, 'BU/AP/IND/16', 2016, 'Activities and programmes', 6480000, 0, 'Y', 'N', 6480000),
(56, 51, 'BU/BD/ADP/16', 2016, 'Building and structures', 12300000, 0, 'Y', 'N', 12300000),
(57, 54, 'BU/FF/MIRD/16', 2016, 'Furniture and fittings', 25000, 0, 'Y', 'N', 25000),
(58, 51, 'BU/LE/ADP/16', 2016, 'Lab Equipment', 4865000, 0, 'Y', 'N', 4865000),
(59, 51, 'BU/OE/ADP/16', 2016, 'Office equipment', 900000, 0, 'Y', 'N', 900000),
(60, 2, 'BU/CO/DIR/16', 2016, 'Computers and accessories', 100000, 0, 'Y', 'N', 100000),
(61, 54, 'BU/CO/MIRD/16', 2016, 'Computer and accessories', 75000, 0, 'Y', 'N', 75000),
(62, 55, 'BU/CO/IAD/16', 2016, 'Computers and accessories', 100000, 0, 'Y', 'N', 100000),
(63, 2, 'BU/LE/DIR/16', 2016, 'Lab  Equipment', 100000, 0, 'Y', 'N', 100000),
(64, 2, 'BU/OE/DIR/16', 2016, 'office equipment', 100000, 0, 'Y', 'N', 100000),
(65, 4, 'BU/CO/FIN/16', 2016, 'Computers and accessories', 275000, 275000, 'Y', 'Y', 275000),
(66, 4, 'BU/FF/FIN/16', 2016, 'Furniture and fittings', 50000, 50000, 'Y', 'Y', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `emp_details_tbl`
--

CREATE TABLE IF NOT EXISTS `emp_details_tbl` (
  `EmpNo` int(10) NOT NULL,
  `Title` varchar(10) DEFAULT NULL,
  `Fullname` varchar(200) DEFAULT NULL,
  `NICNum` varchar(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `MobileNo` varchar(15) DEFAULT NULL,
  `DateofAppoinment` date DEFAULT NULL,
  `DivisionCode` int(5) DEFAULT NULL,
  `DesigCode` int(5) DEFAULT NULL,
  `EmpTypeCode` int(2) DEFAULT NULL,
  `CategoryCode` int(3) DEFAULT NULL,
  `RetirementDT` date DEFAULT NULL,
  PRIMARY KEY (`EmpNo`),
  KEY `DivisionCode` (`DivisionCode`),
  KEY `DesigCode` (`DesigCode`),
  KEY `EmpTypeCode` (`EmpTypeCode`),
  KEY `CategoryCode` (`CategoryCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emp_details_tbl`
--

INSERT INTO `emp_details_tbl` (`EmpNo`, `Title`, `Fullname`, `NICNum`, `DOB`, `Gender`, `Email`, `MobileNo`, `DateofAppoinment`, `DivisionCode`, `DesigCode`, `EmpTypeCode`, `CategoryCode`, `RetirementDT`) VALUES
(1, 'Adm.', 'System Administrator', '', '0000-00-00', 'Female', '', '', '0000-00-00', 100, 1, 0, 0, '1976-12-01'),
(5, 'Mrs', 'P. D. C.  Janashanthi', '616810847V', '1961-06-29', 'Female', '', '', '1987-04-01', 8, 14, 2, 1, '2021-06-28'),
(7, 'Mr', 'N. B.  Michael', '573031970V', '1957-10-29', 'Male', '', '', '1985-02-18', 10, 99, 2, 3, '2017-10-28'),
(8, 'Mr', 'P. Thilakasiri', '590053660V', '1959-01-05', 'Male', '', '', '1987-01-01', 3, 76, 2, 3, '2019-01-04'),
(24, 'Mr', 'S.N. Pasqual', '670330325V', '1967-02-02', 'Male', '', '', '1987-03-16', 56, 101, 2, 3, '2027-02-01'),
(36, 'Mrs', 'D. R. D. De Silva', '596380522V', '1959-05-17', 'Female', 'dilkusha@accmt.ac.lk', '', '1988-05-10', 3, 51, 2, 1, '2019-05-16'),
(45, 'Mr.', 'M.P.L. Chandrasiri', '601271303V', '1960-05-06', 'Male', '', '', '1980-01-01', 51, 97, 2, 2, '2014-02-28'),
(53, 'Mrs', 'W. B. A. Weerawarnasuriya', '548330696V', '1954-11-28', 'Female', '', '', '1991-02-21', 50, 48, 2, 1, '2014-11-27'),
(59, 'Mrs.', 'G. H. C. Jayarani', '675020450V', '1967-03-03', 'Female', '', '', '1991-11-06', 50, 1000, 2, 1, '2027-03-02'),
(65, 'Mr', 'J. A. K.  Jayakody', '670981037V', '1967-04-07', 'Male', 'jayakodi@accmt.ac.lk', '', '1991-11-18', 51, 46, 2, 1, '2027-04-06'),
(67, 'Mr', 'H. M. Sunil', '670262715V', '1967-01-26', 'Male', '', '', '1991-12-05', 8, 99, 2, 3, '2027-01-25'),
(68, 'Mr', 'N, D. N. Kumara', '672380588V', '1967-08-25', 'Male', '', '', '1991-12-05', 6, 101, 2, 3, '2027-08-24'),
(70, 'Mrs', 'K  Ediriweera', '656531568V', '1965-06-01', 'Female', 'kamani@accmt.ac.lk', '', '1996-04-01', 2, 3, 2, 1, '2025-05-31'),
(75, 'Mrs', 'M. A. D. C. Medagama', '627040091V', '1962-07-22', 'Female', 'dumudu@accmt.ac.lk', '', '1993-04-15', 4, 43, 2, 1, '2022-07-21'),
(93, 'Mr', 'R. A. S. S Gunasekara ', '663530500V', '1966-12-18', 'Male', 'saraj@accmt.ac.lk', '', '1995-10-15', 7, 26, 2, 1, '2026-12-17'),
(100, 'Mrs', 'H. C, Weerasekara', '655841725V', '1965-03-24', 'Female', 'chandrika@accmt.ac.lk', '', '1996-04-08', 2, 51, 2, 1, '2025-03-23'),
(107, 'Mrs', 'L. R. N. Somathilake', '686710114V', '1968-06-19', 'Female', 'rasika@accmt.ac.lk', '', '1996-07-16', 9, 27, 2, 1, '2028-06-18'),
(108, 'Mrs', 'T. M. S. S.  P.  Cooray', '628442754V', '1962-12-09', 'Female', 'stella@accmt.ac.lk', '', '1996-08-01', 51, 98, 2, 2, '2022-12-08'),
(112, 'Mr', 'B. A. Jayasinghe', '721062406V', '1972-04-15', 'Male', '', '', '1997-04-01', 9, 25, 2, 1, '2032-04-14'),
(116, 'Mr', 'T. C.  Peiris', '703611842V', '1970-12-26', 'Male', '', '', '1997-08-01', 7, 102, 2, 1, '2030-12-25'),
(120, 'Mr', 'J. K.  Jayawardena', '710710813V', '1971-03-11', 'Male', 'kavindra@accmt.ac.lk', '', '1998-01-26', 5, 103, 2, 1, '2031-03-10'),
(125, 'Mr', 'C. K. Wijayawardena', '692983017V', '1969-10-24', 'Male', '', '', '1998-07-20', 3, 41, 2, 1, '2029-10-23'),
(126, 'Mr.', 'D.V. N. Silva', '752611491V', '1975-09-17', 'Male', '', '', '1998-12-17', 5, 104, 2, 3, '2035-09-16'),
(127, 'Mr', 'G. K. S. Perera', '792152597V', '1979-08-02', 'Male', '', '', '1998-08-14', 5, 104, 2, 3, '2039-08-01'),
(128, 'Mr', 'E. B. D. P.  Jayadewa', '641312746V', '1964-05-10', 'Male', '', '', '1998-08-10', 5, 49, 2, 1, '2024-05-09'),
(130, 'Mr', 'S. A. A.  Siriwardhana', '710631670V', '1971-03-03', 'Male', '', '', '1998-08-17', 3, 49, 2, 1, '2031-03-02'),
(132, 'Mr', 'S. P.  Athuluwage', '721680207V', '1972-06-16', 'Male', '', '', '1999-12-10', 9, 105, 2, 2, '2032-06-15'),
(138, 'Ms', 'P. M. K. A. Bandara', '778353032V', '1977-11-30', 'Male', '', '', '2001-12-18', 9, 105, 2, 2, '2037-11-29'),
(139, 'Mr', 'N I  Medagangoda', '701972350V', '1970-07-15', 'Female', 'indika@accmt.ac.lk', '', '2000-06-28', 7, 32, 2, 1, '2030-07-14'),
(142, 'Mrs', 'N. M.  Kandamby', '745380867V', '1974-02-07', 'Female', 'nadeeka@accmt.ac.lk', '', '1999-11-24', 5, 98, 2, 2, '2034-02-06'),
(143, 'Mrs.', 'N P Ketipearachchi', '695731400 ', '1969-03-13', 'Female', 'nilmini@accmt.ac.lk', '', '1999-10-01', 50, 98, 2, 2, '2029-03-12'),
(146, 'Mrs', 'R. M. L. N.  Rathnayake', '727150153V', '1972-08-02', 'Female', '', '', '2000-05-08', 6, 23, 2, 1, '2032-08-01'),
(147, 'Mrs', 'M. L. A. N.  Pushparani', '695972466V', '1969-04-06', 'Female', '', '', '2000-06-20', 4, 50, 2, 1, '2029-04-05'),
(149, 'Mrs', 'J. P. D. S Athuraliya', '686920291V', '1969-07-10', 'Female', '', '', '2000-06-20', 6, 8, 2, 1, '2029-07-09'),
(161, 'Mr', 'P.P.K. Rodrigo', '683130974V', '1968-11-08', 'Male', '', '', '2001-04-02', 3, 106, 2, 3, '2028-11-07'),
(162, 'Mr', 'P. K. P. Anuruddha', '751420510V', '1975-05-21', 'Male', '', '', '2001-07-09', 8, 49, 2, 1, '2035-07-20'),
(168, 'Mr', 'P. D. S.  Pushpakumara', '753232184V', '1975-11-18', 'Male', '', '', '2002-01-15', 5, 102, 2, 1, '2035-11-17'),
(169, 'Mr', 'G. D. N.  De Silva', '7521828332', '1975-08-05', 'Male', '', '', '2002-01-15', 5, 49, 2, 1, '2035-08-04'),
(180, 'Mr', 'S. A.  Welikala', '703371426V', '1970-12-02', 'Male', 'shiran@accmt.ac.lk', '', '2003-09-01', 54, 20, 2, 1, '2030-12-01'),
(188, 'Mr', 'M. A. K.  Dharmalal', '640822228V', '1964-03-01', 'Male', '', '', '0000-00-00', 3, 108, 2, 3, '2024-02-29'),
(190, 'Mr', 'R. P.  Dasanayaka', '701130839V', '1970-04-22', 'Male', '', '', '2004-08-02', 9, 38, 2, 1, '2030-04-21'),
(191, 'Mr', 'J Adassuriya', '751502176V', '1975-05-29', 'Male', 'adassuriya@accmt.ac.lk', '', '2004-11-01', 7, 80, 2, 1, '2035-05-28'),
(192, 'Mr', 'S.P.K.K.A Liyanage', '620283797V', '1962-01-28', 'Male', 'preethi@accmt.ac.lk', '', '2006-04-01', 10, 45, 2, 1, '2022-01-27'),
(193, 'Mrs', 'V. K. Aluthge', '67641143V', '1967-05-20', 'Female', '', '', '2006-03-01', 1, 51, 2, 1, '0000-00-00'),
(199, 'Mr', 'S. R. S. Rupasinghe', '850224056V', '1985-01-22', 'Male', 'sudarshana@accmt.ac.lk', '', '2005-08-29', 3, 1001, 2, 2, '2045-01-21'),
(200, 'Mr', 'P. L. S.  Kumara', '760420840V', '1976-02-11', 'Male', '', '', '2006-04-30', 3, 110, 2, 3, '2036-02-10'),
(202, 'Mr', 'K. A. K.  Gunasekara', '640220031V', '1964-01-22', 'Male', '', '', '2005-09-11', 8, 111, 2, 2, '2024-01-21'),
(207, 'Mr', 'J. R. T. N. Jayakody', '810561505V', '1981-02-25', 'Male', '', '', '2009-08-17', 6, 111, 2, 2, '2041-02-24'),
(209, 'Mr', 'W. C. B.  De Silva', '740480413V', '1974-02-17', 'Male', 'chamika@accmt.ac.lk', '', '2006-02-03', 50, 1001, 2, 2, '2034-02-16'),
(212, 'Mr', 'E. P. P Fernando', '691632466V', '1969-06-11', 'Male', '', '', '2007-02-05', 56, 113, 2, 2, '2029-06-10'),
(213, 'Mr', 'W. A. P.  Silva', '551892212V', '1955-07-07', 'Male', 'panduka@accmt.ac.lk', '', '2007-10-01', 3, 6, 2, 1, '2015-07-06'),
(215, 'Mr', 'J. S. B.  Rathnayake', '740132490V', '1974-01-13', 'Male', 'janaka @accmt.ac.lk', '', '2008-03-07', 55, 44, 2, 1, '2034-01-12'),
(216, 'Mr', 'N. K. L. T. M. S.  Dias', '712410337V', '1971-08-28', 'Male', 'tmsdias@yahoo.com', '', '2008-04-21', 6, 111, 2, 2, '2031-08-27'),
(217, 'Eng', 'P. S. Panawennage', '662142409V', '1966-08-01', 'Male', '', '', '2013-06-03', 2, 74, 2, 1, '2026-07-31'),
(218, 'Mr', 'N. K. J. K.  De Silva', '853001759V', '1985-10-26', 'Male', '', '', '2009-11-01', 3, 99, 2, 3, '2045-10-25'),
(225, 'Mr', 'R. A. C. A. K.  Ranawaka', '770573564V', '1997-02-26', 'Male', '', '', '2009-08-16', 5, 111, 2, 2, '2057-02-25'),
(226, 'Mr', 'J. S.  Koruwage', '801340040V', '1980-05-13', 'Male', '', '', '2009-09-01', 6, 111, 2, 2, '2040-05-12'),
(236, 'Mr', 'N. T. M.  Sajith', '851430342V', '1985-05-22', 'Male', '', '', '2011-12-01', 5, 78, 2, 1, '2045-05-21'),
(237, 'Ms', 'T. V.  Jayasinghe Arachchi', '855990091V', '1985-04-08', 'Female', '', '', '2011-12-01', 6, 78, 2, 1, '2045-04-07'),
(238, 'Mr', 'C. M.  Karunarathna', '862360273V', '1986-08-23', 'Male', '', '', '2011-12-01', 6, 78, 2, 1, '2046-08-22'),
(239, 'Ms.', 'M. L. Karunarathne', '858513278V', '1985-12-16', 'Female', '', '', '2011-12-15', 9, 77, 2, 1, '2045-12-15'),
(244, 'Mr.', 'A. R. M. Rila', '761852078V', '1976-07-03', 'Female', '', '', '2012-06-01', 7, 80, 2, 1, '2036-07-02'),
(246, 'Mr', 'W. R. S. C.  Ranathunga', '872660259V', '1987-09-22', 'Male', '', '', '2012-06-01', 5, 78, 2, 1, '2047-09-21'),
(249, 'Mr', 'U.D Niriella.', '682858779V', '1968-10-11', 'Male', '', '', '2012-07-02', 8, 78, 2, 1, '2028-10-10'),
(250, 'Ms', 'K.G. Lakmali', '857684516V', '1985-09-24', 'Female', '', '', '2012-07-02', 6, 78, 2, 1, '2045-09-23'),
(251, 'Mr', 'W. R. W. M. Y. S. B. Bulumulla', '84082170V', '1984-03-22', 'Female', '', '', '2015-08-15', 9, 78, 2, 1, '2044-03-21'),
(252, 'Mr', 'L. H.  Malindu Tilan', '883090500V', '1988-11-04', 'Male', '', '', '2013-02-13', 4, 1001, 2, 2, '2048-11-03'),
(253, 'Ms', 'W. A. K. Madumali', '896010719V', '1989-04-10', 'Female', 'Kaushalya@accmt.ac.lk', '', '2013-02-01', 5, 1001, 2, 2, '2049-04-09'),
(254, 'Mr', 'C. R. Ranasinghe', '751310307V', '1975-05-10', 'Male', '', '', '2013-05-15', 6, 78, 2, 1, '2035-05-09'),
(255, 'Ms', 'N. A. A. Nadeesha Dilrukshi', '865450222V', '1986-02-14', 'Female', '', '', '2013-05-15', 6, 78, 2, 1, '2046-02-13'),
(256, 'Ms', 'Vijayasothy Vijayagopal', '878300432V', '1987-11-25', 'Female', '', '', '2013-05-15', 8, 78, 2, 1, '2047-11-24'),
(257, 'Mr.', 'R. A. Gamini', '830224351V', '1983-01-22', 'Male', '', '', '2013-06-17', 51, 39, 2, 1, '2043-01-21'),
(258, 'Mr', 'S. R. J. S. Bandara', '8311920319', '1983-07-10', 'Male', '', '', '2013-07-10', 3, 117, 2, 2, '2043-07-09'),
(259, 'Mrs ', 'K. C. I. Silva', '738411439V', '1973-12-06', 'Male', '', '', '2013-10-01', 3, 1001, 2, 2, '2033-12-05'),
(260, 'Ms.', 'H. D. N. Fernando', '895850128V', '1989-03-25', 'Female', '', '', '2013-10-01', 3, 1001, 2, 2, '2049-03-24'),
(261, 'Ms.', 'P. D. T. De Silva', '906460513V', '1990-05-25', 'Female', '', '', '2013-10-01', 3, 1001, 2, 2, '2050-05-24'),
(262, 'Ms.', 'K. T. C. K. Alwis', '936882196V', '1993-07-06', 'Female', '', '', '2013-10-01', 3, 1001, 2, 2, '2053-07-05'),
(263, 'Ms.', 'M. B. A. M. Dissanayake', '897772710V', '1989-10-03', 'Female', '', '', '2013-10-01', 7, 1001, 2, 2, '2049-10-02'),
(264, 'Mr.', 'P. Buddhika Warnakula', '813222248V', '1981-11-17', 'Male', '', '', '2013-10-01', 3, 108, 2, 3, '2041-11-16'),
(265, 'Mr.', 'P. Chandima Ramanayake', '880931890V', '1988-04-02', 'Male', '', '', '2013-10-03', 50, 99, 2, 3, '2048-04-01'),
(266, 'Mr.', 'G. M. Rodrigo', '741220431V', '1974-05-01', 'Male', '', '', '2013-10-09', 3, 99, 2, 3, '2034-04-30'),
(267, 'Mr.', 'Saman Keerthi ', '672980739V', '1967-10-24', 'Male', '', '', '2013-12-06', 2, 21, 2, 1, '2027-10-23'),
(268, 'Ms.', 'K. A. Sumudu L. Perera', '826390522V', '1982-05-18', 'Female', '', '', '2014-01-08', 8, 1001, 2, 2, '2042-05-17'),
(269, 'Mr.', 'K. D. S. Awantha', '910181920V', '1991-01-18', 'Male', '', '', '2014-01-13', 3, 99, 2, 3, '2051-01-17'),
(270, 'Mr. ', 'U. A. D Upul Priyashantha', '821440955V', '1982-05-23', 'Male', '', '', '2014-01-13', 3, 108, 2, 3, '2042-05-22'),
(271, 'Miss.', 'V. K. O. N. Thalpawila', '876660997V', '1987-06-14', 'Female', '', '', '2014-01-13', 3, 78, 2, 1, '2047-06-13'),
(272, 'Mr.', 'J. P. Rajitha Prasanna', '891933452V', '1989-07-11', 'Male', '', '', '2014-01-13', 5, 78, 2, 1, '2049-07-10'),
(273, 'Mr.', 'Lavanan Vengadasalam', '87250831V', '1987-09-12', 'Male', '', '', '2014-01-01', 7, 78, 2, 1, '2047-09-11'),
(274, 'Mr.', 'B. S. Marasinghe', '7926901066', '1979-09-25', 'Male', '', '', '2014-01-27', 7, 80, 2, 1, '2039-09-24'),
(275, 'Ms.', 'M. H. C. Kumarasinghe', '875930737V', '1987-04-02', 'Female', '', '', '2014-01-27', 7, 80, 2, 1, '2047-04-01'),
(276, 'Mr.', 'K. S. Roshan', '882301893V', '1988-08-17', 'Male', '', '', '2014-01-27', 8, 117, 2, 2, '2048-08-16'),
(277, 'Mr.', 'M. P. R. Perera', '722821688V', '1972-10-08', 'Male', '', '', '2014-02-03', 54, 42, 2, 1, '2032-10-07'),
(278, 'Mr.', 'M.B. Thilakarathne', '852583088V', '1985-09-14', 'Male', '', '', '2014-02-03', 5, 78, 2, 1, '2045-09-13'),
(279, 'Ms.', 'L. A. C. P. Ranasinghe', '857190220V', '1985-08-06', 'Female', '', '', '2014-02-05', 9, 118, 2, 1, '2045-08-05'),
(280, 'Ms.', 'S. D. Shiromi Lakmali ', '876752360V', '1987-06-23', 'Female', '', '', '2014-02-05', 9, 118, 2, 1, '2047-06-22'),
(281, 'Ms.', 'R. M. T. M. Danapala', '', '0000-00-00', 'Female', '', '', '2014-02-02', 8, 78, 2, 1, '0000-00-00'),
(282, 'Mr.', 'R. A. D. K. Sampath', '802740611V', '1980-09-30', 'Male', '', '', '2014-02-17', 5, 116, 2, 1, '2040-09-29'),
(283, 'Mr.', 'U. D.A. Fernando', '770733073V', '1977-03-13', 'Male', '', '', '1977-03-25', 5, 52, 2, 2, '2037-03-12'),
(285, 'Mr.', 'A.S. Weerapperuma', '680952981V', '1968-04-04', 'Male', '', '', '2014-06-02', 4, 21, 2, 1, '2028-04-03'),
(286, 'Ms.', 'Dineshi Pathirana', '935880203V', '1993-03-28', 'Female', '', '', '2014-10-20', 4, 1001, 2, 2, '2053-03-27'),
(287, 'Ms.', 'P.W.M.M. Kulathunga', '886281609V', '1988-05-07', 'Male', '', '', '2014-10-20', 6, 1001, 2, 2, '2048-05-06'),
(290, 'Ms.', 'R.M.S.D. Madumala', '907701085V', '1990-09-26', 'Male', '', '', '2014-11-03', 50, 1001, 2, 2, '2050-09-25'),
(291, 'Ms.', 'W.A. Pavithra Madushani', '918440925V', '1991-12-09', 'Male', '', '', '2014-11-03', 50, 1001, 2, 2, '2051-12-08'),
(292, 'Mr.', 'W.K.M. Mahindapala', '723032415V', '1972-10-29', 'Male', '', '', '2014-12-05', 7, 29, 2, 1, '2032-10-28'),
(295, 'Mr.', 'I.A.D. Anushka Nadeeshan', '882070760V', '1988-07-25', 'Male', '', '', '2014-12-01', 5, 52, 2, 2, '2048-07-24'),
(298, 'Mr.', 'M. Dilan Prasanga Peiris', '870330065V', '1987-02-02', 'Male', '', '', '2014-12-29', 5, 52, 2, 2, '2047-02-01'),
(90155, 'Ms.', 'W M S N K WIJETATHNE', '', '2014-11-01', 'Male', '', '', '2015-01-23', 4, 999, 3, 2, NULL),
(90180, 'Mr.', 'A C LAKSHITHA AMBEPITIYA', '', '2015-01-01', 'Male', '', '', '2013-12-03', 6, 999, 3, 2, NULL),
(90198, 'Ms.', ' K A S MUDUSHANI', '', '2015-01-01', 'Female', '', '', '2014-02-05', 56, 999, 3, 2, NULL),
(90206, 'Ms.', 'K D S T PRIYANGI', '', '2015-01-01', 'Female', '', '', '2014-02-20', 55, 999, 3, 2, NULL),
(90207, 'Ms.', 'K D D R GUNATHILAKA', '', '2015-01-01', 'Female', '', '', '2014-03-03', 50, 999, 3, 2, NULL),
(90211, 'Mr.', 'K. G. H. Arjuna', '872893369V', '0000-00-00', 'Male', 'hearkg@hotmail.com', '0712200220', '2015-03-10', 9, 999, 3, 2, '2015-03-03'),
(90216, 'Mr.', 'M H D SASHIKA GANGANI', '872893369V', '0000-00-00', 'Female', ' ', ' ', '2014-04-01', 53, 999, 3, 2, '2015-03-30'),
(90221, 'Mr.', 'U D JAYARATHNE', '', '2015-01-01', 'Male', '', '', '2014-05-05', 6, 999, 3, 2, NULL),
(90223, 'Mr.', 'M H A MOHAMED MIFRAZ', '', '2015-01-01', 'Male', '', '', '2014-05-12', 5, 999, 3, 2, NULL),
(90227, '', 'A A D C ABEYSUNDARA', '', '2015-01-01', 'Male', '', '', '2014-06-11', 6, 999, 3, 2, NULL),
(90234, '', 'T THEEBAVATHANI', '', '2015-01-01', 'Male', '', '', '2014-08-04', 9, 999, 3, 2, NULL),
(90236, '', 'H A D D D JAYASEKARA', '', '2015-01-01', 'Female', '', '', '2014-09-02', 51, 999, 3, 2, NULL),
(90239, 'Ms.', 'P G C JAYAMINI', '', '2015-01-01', 'Female', '', '', '2014-09-03', 6, 999, 3, 2, NULL),
(90240, 'Ms.', 'T G A KAUSHALYA', '', '2015-01-01', 'Female', '', '', '2014-09-03', 5, 999, 3, 2, NULL),
(90241, 'Mr.', 'P S D PERERA', '', '2015-01-01', 'Male', '', '', '2014-09-03', 5, 999, 3, 2, NULL),
(90242, 'Ms.', 'S P R JAYASINGHE', '', '2015-01-01', 'Female', '', '', '2014-09-03', 5, 999, 3, 2, NULL),
(90243, 'Mr.', 'K J P L SILVA', '', '2015-01-01', 'Male', '', '', '2014-09-03', 5, 999, 3, 2, '0000-00-00'),
(90244, 'Mr.', 'H M A Y RATHNAYAKE', '', '2015-01-01', 'Male', '', '', '2014-09-03', 6, 999, 3, 2, NULL),
(90245, 'Mr.', 'V A M S CHANDRASEKARA', '', '2015-01-01', 'Male', '', '', '2014-09-03', 6, 999, 3, 2, NULL),
(90246, '', 'K K U PERERA', '', '2015-01-01', 'Male', '', '', '2014-09-03', 5, 999, 3, 2, NULL),
(90247, '', 'A G R L ABESINGHE', '', '2015-01-01', 'Male', '', '', '2014-09-03', 5, 999, 3, 2, NULL),
(90248, '', 'A G R L ABESINGHE', '', '2015-01-01', 'Male', '', '', '2014-09-03', 9, 999, 3, 2, NULL),
(90249, 'Mr.', 'D.T.H. Perera', '', '2015-01-01', 'Male', '', '', '2014-09-09', 6, 999, 3, 2, NULL),
(90252, 'Mr.', 'P S JINADASA', '', '2015-01-01', 'Male', '', '', '2014-09-29', 5, 999, 3, 2, NULL),
(90253, '', 'J M A E BANDARA', '', '2015-01-01', 'Male', '', '', '2014-11-03', 9, 999, 3, 2, NULL),
(90254, 'Mr.', 'A M HARISHCHANDRA', '', '2015-01-01', 'Male', '', '', '2014-11-03', 9, 999, 3, 2, NULL),
(90255, 'Mr.', 'SHAVINDRA PEIRIS', '', '2015-01-01', 'Male', '', '', '2014-11-19', 51, 999, 3, 2, NULL),
(90256, 'Mr.', 'H A M V HARSHAKA', '', '2015-01-01', 'Male', '', '', '2014-11-24', 9, 999, 3, 2, NULL),
(90257, '', 'G L H Y DE SILVA', '', '2015-01-01', 'Male', '', '', '2014-11-24', 9, 999, 3, 2, NULL),
(90258, 'Ms.', 'P SASIINI UTHPALA', '', '2015-01-01', 'Male', '', '', '2014-12-10', 10, 999, 3, 2, NULL),
(90259, '', 'L R VIBESHAN', '', '2015-01-01', 'Male', '', '', '2015-05-01', 5, 999, 3, 2, NULL),
(90260, '', 'R S M FERNANDO', '', '2015-01-05', 'Male', '', '', '2015-05-01', 5, 999, 3, 2, NULL),
(90261, '', 'W A M NIPUN FERNANDO', '', '2015-01-01', 'Male', '', '', '2015-01-05', 5, 999, 3, 2, NULL),
(90262, 'Ms.', 'W S ERANDI', '', '2015-01-01', 'Female', '', '', '2015-01-05', 5, 999, 3, 2, NULL),
(90263, '', 'K M G U DIAS', '', '2015-01-01', 'Male', '', '', '2015-01-05', 5, 999, 3, 2, NULL),
(90264, '', 'J M D T M JAYASINGHE', '', '2015-01-01', 'Male', '', '', '2015-01-05', 5, 999, 3, 2, NULL),
(90265, '', 'M D J PEIRIS', '', '2015-01-01', 'Male', '', '', '2015-01-05', 5, 999, 3, 2, NULL),
(90266, '', 'J M T N BANDARA', '', '2015-01-01', 'Male', '', '', '2015-01-01', 5, 999, 3, 2, NULL),
(90267, '', 'S M D B SAMARAKON', '', '2015-01-01', 'Male', '', '', '2015-01-05', 7, 999, 3, 2, NULL),
(90268, '', 'K B ATHUKORALA', '', '2015-01-01', 'Male', '', '', '2015-01-19', 5, 999, 3, 2, NULL),
(90269, '', 'M H C L JAYASINGHE', '', '2015-01-01', 'Male', '', '', '2015-01-29', 56, 999, 3, 2, NULL),
(90270, '', ' B A POORNIMA GAYANI', '', '2015-01-01', 'Female', '', '', '2015-02-09', 51, 999, 3, 2, NULL),
(90271, '', 'K K G T ASHARI', '', '2015-01-01', 'Female', '', '', '2015-02-09', 5, 999, 3, 2, NULL),
(90272, '', 'D I M DISSANAYAKE', '', '2015-01-01', 'Female', '', '', '2015-01-09', 5, 999, 3, 2, NULL),
(90273, '', 'A A K S PERERA', '', '2015-01-01', 'Female', '', '', '2014-12-30', 7, 999, 3, 2, NULL),
(90274, '', 'Y CHALANI MADUSHANI', '', '2015-01-01', 'Female', '', '', '2015-02-11', 4, 999, 3, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emp_details_tbl8888`
--

CREATE TABLE IF NOT EXISTS `emp_details_tbl8888` (
  `EmpNo` int(10) NOT NULL,
  `Title` varchar(10) DEFAULT NULL,
  `Fullname` varchar(200) DEFAULT NULL,
  `NICNum` varchar(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `MobileNo` varchar(15) DEFAULT NULL,
  `DateofAppoinment` date DEFAULT NULL,
  `DivisionCode` int(5) DEFAULT NULL,
  `DesigCode` int(5) DEFAULT NULL,
  `EmpTypeCode` int(2) DEFAULT NULL,
  `CategoryCode` int(3) DEFAULT NULL,
  `RetirementDT` date DEFAULT NULL,
  PRIMARY KEY (`EmpNo`),
  KEY `DivisionCode` (`DivisionCode`),
  KEY `DesigCode` (`DesigCode`),
  KEY `EmpTypeCode` (`EmpTypeCode`),
  KEY `CategoryCode` (`CategoryCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emp_details_tbl8888`
--

INSERT INTO `emp_details_tbl8888` (`EmpNo`, `Title`, `Fullname`, `NICNum`, `DOB`, `Gender`, `Email`, `MobileNo`, `DateofAppoinment`, `DivisionCode`, `DesigCode`, `EmpTypeCode`, `CategoryCode`, `RetirementDT`) VALUES
(1, 'Adm.', 'System Administrator', NULL, '0000-00-00', NULL, NULL, '', NULL, 100, 1, 0, 0, '2014-11-30'),
(5, 'Mrs', 'P. D. C.  Janashanthi', '616810847V', '0000-00-00', 'Female', 'champika@accmt.ac.lk', '', '1987-04-01', 8, 58, 0, 0, '2014-11-30'),
(7, 'Mr', 'N. B.  Michale', '', '0000-00-00', 'Male', '', '', '0000-00-00', 10, 99, 0, 0, '2014-11-30'),
(8, 'Mr', 'P. Thilakasiri', '', '0000-00-00', 'Male', '', '', '0000-00-00', 50, 76, 0, 0, '2014-11-30'),
(24, 'Mr', 'S.N. Pasqual', '', '0000-00-00', 'Male', '', '', '0000-00-00', 56, 101, 0, 0, '2014-11-30'),
(36, 'Mrs', 'D. R. D. De Silva', '', '0000-00-00', 'Female', 'dilkusha@accmt.ac.lk', '', '0000-00-00', 3, 51, 0, 0, '2014-11-30'),
(53, 'Mrs', 'W. B. A. Weerawarnasuriya', '548330696V', '0000-00-00', 'Female', '', '', '0000-00-00', 50, 48, 0, 0, '2014-11-30'),
(59, 'Mrs.', 'G. H. C. Jayarani', '', '0000-00-00', 'Female', '', '', '0000-00-00', 50, 40, 0, 0, '2014-11-30'),
(65, 'Mr', 'J. A. K.  Jayakody', '', '0000-00-00', 'Male', 'jayakodi@accmt.ac.lk', '', '0000-00-00', 51, 46, 0, 0, '2014-11-30'),
(67, 'Mr', 'H. M. Sunil', '670262715V', '0000-00-00', 'Male', '', '', '0000-00-00', 8, 99, 0, 0, '2014-11-30'),
(68, 'Mr', 'N, D. N. K. Alvis', '', '0000-00-00', 'Male', '', '', '0000-00-00', 6, 101, 0, 0, '2014-11-30'),
(70, 'Mrs', 'K  Ediriweera', '', '0000-00-00', 'Female', 'kamani@accmt.ac.lk', '', '0000-00-00', 6, 3, 0, 0, '2014-11-30'),
(75, 'Mrs', 'M. A. D. C. Medagama', '627040091V', '0000-00-00', 'Female', 'dumudu@accmt.ac.lk', '', '0000-00-00', 4, 43, 0, 0, '2014-11-30'),
(93, 'Mr', 'R. A. S. S Gunasekara ', '663530500V', '0000-00-00', 'Male', 'saraj@accmt.ac.lk', '', '1995-10-15', 7, 26, 0, 0, '2014-11-30'),
(100, 'Mrs', 'H. C, Weerasekara', '', '0000-00-00', 'Female', 'chandrika@accmt.ac.lk', '', '0000-00-00', 2, 51, 0, 1, '0000-00-00'),
(107, 'Mrs.', 'L. R. N. Somathilake', '686710114V', '0000-00-00', 'Female', 'rasika@accmt.ac.lk', '', '1996-07-16', 9, 27, 0, 2, '0000-00-00'),
(108, 'Mrs', 'T. M. S. S.  P.  Cooray', '628442754V', '0000-00-00', 'Female', 'stella@accmt.ac.lk', '', '0000-00-00', 51, 98, 0, 3, '0000-00-00'),
(112, 'Mr', 'B. A. Jayasinghe', '721062406V', '0000-00-00', 'Male', '', '', '0000-00-00', 9, 25, 0, 0, '2014-11-30'),
(116, 'Mr', 'T. C.  Peiris', '703611842V', '0000-00-00', 'Male', '', '', '1997-08-01', 7, 102, 0, 0, '2014-11-30'),
(120, 'Mr', 'J. K.  Jayawardena', '710710813V', '0000-00-00', 'Male', 'kavindra@accmt.ac.lk', '', '1997-11-01', 5, 103, 0, 0, '2014-11-30'),
(125, 'Mr', 'C. K. Wijayawardena', '692983017V', '0000-00-00', 'Male', '', '', '0000-00-00', 3, 41, 0, 0, '2014-11-30'),
(126, 'Mr.', 'V. N. Silva', '', '0000-00-00', 'Male', '', '', '0000-00-00', 5, 104, 0, 0, '2014-11-30'),
(127, 'Mr', 'G. K. S. Perera', '792152597V', '0000-00-00', 'Male', '', '', '0000-00-00', 5, 104, 0, 0, '2014-11-30'),
(128, 'Mr', 'E. B. D. P.  Jayadewa', '641312746V', '0000-00-00', 'Male', '', '', '0000-00-00', 5, 95, 0, 0, '2014-11-30'),
(130, 'Mr', 'S. A. A.  Siriwardhana', '710631670V', '0000-00-00', 'Male', '', '', '0000-00-00', 3, 95, 0, 0, '2014-11-30'),
(132, 'Mr', 'S. P.  Athuluwage', '721680207V', '0000-00-00', 'Male', '', '', '0000-00-00', 9, 105, 0, 0, '2014-11-30'),
(138, 'Ms', 'P. M. K. A. Bandara', '778353032V', '0000-00-00', 'Female', '', '', '0000-00-00', 10, 107, 0, 0, '2014-11-30'),
(139, 'Mr', 'N I  Medagangoda', '701972350V', '0000-00-00', 'Female', 'indika@accmt.ac.lk', '', '2000-06-28', 7, 32, 0, 0, '2014-11-30'),
(142, 'Mrs', 'N. M.  Kandamby', '745380867V', '0000-00-00', 'Female', 'nadeeka@accmt.ac.lk', '', '0000-00-00', 5, 98, 0, 0, '2014-11-30'),
(143, 'Mrs.', 'N P Ketipearachchi', '695731400 ', '0000-00-00', 'Female', 'nilmini@accmt.ac.lk', '', '0000-00-00', 50, 98, 0, 0, '2014-11-30'),
(146, 'Mrs', 'R. M. L. N.  Rathnayake', '727150153V', '0000-00-00', 'Female', '', '', '2000-05-08', 6, 23, 0, 0, '2014-11-30'),
(147, 'Mrs', 'M. L. A. N.  Pushparani', '695972466V', '0000-00-00', 'Female', '', '', '0000-00-00', 4, 50, 0, 0, '2014-11-30'),
(149, 'Mrs', 'J. P. D. S Athuraliya', '686920291V', '0000-00-00', 'Female', '', '', '2000-06-20', 6, 8, 0, 0, '2014-11-30'),
(161, 'Mr', 'P.P.K. Rodrigo', '683130974V', '0000-00-00', 'Male', '', '', '0000-00-00', 3, 106, 0, 0, '2014-11-30'),
(162, 'Mr', 'P. K. P. Anuruddha', '751420510V', '0000-00-00', 'Male', '', '', '0000-00-00', 8, 95, 0, 0, '2014-11-30'),
(168, 'Mr', 'P. D. S.  Pushpakumara', '753232184V', '0000-00-00', 'Male', '', '', '2002-01-15', 5, 102, 0, 0, '2014-11-30'),
(169, 'Mr', 'D. N.  De Silva', '7521828332', '0000-00-00', 'Male', '', '', '0000-00-00', 5, 95, 0, 0, '2014-11-30'),
(180, 'Mr', 'S. A.  Welikala', '', '0000-00-00', 'Male', 'shiran@accmt.ac.lk', '', '0000-00-00', 54, 20, 0, 0, '2014-11-30'),
(188, 'Mr', 'M. A. K.  Dharmalal', '640822228V', '0000-00-00', 'Male', '', '', '0000-00-00', 3, 108, 0, 0, '2014-11-30'),
(190, 'Mr', 'R. P.  Dasanayaka', '701130839V', '0000-00-00', 'Male', '', '', '2005-12-01', 9, 38, 0, 0, '2014-11-30'),
(191, 'Mr', 'J Adassuriya', '751502176V', '0000-00-00', 'Male', 'adassuriya@accmt.ac.lk', '', '2004-11-01', 7, 80, 0, 0, '2014-11-30'),
(192, 'Mr', 'S.P.K.K.A Liyanage', '620283797V', '0000-00-00', 'Male', 'preethi@accmt.ac.lk', '', '0000-00-00', 10, 45, 0, 0, '2014-11-30'),
(193, 'Mrs', 'V. K. Aluthge', '67641143V', '0000-00-00', 'Female', '', '', '0000-00-00', 1, 51, 0, 0, '2014-11-30'),
(199, 'Mr', 'S. R. S. Rupasinghe', '850224056V', '0000-00-00', 'Male', 'sudarshana@accmt.ac.lk', '', '0000-00-00', 3, 109, 0, 0, '2014-11-30'),
(200, 'Mr', 'P. L. S.  Kumara', '760420840V', '0000-00-00', 'Male', '', '', '0000-00-00', 3, 110, 0, 0, '2014-11-30'),
(202, 'Mr', 'K. A. K.  Gunasekara', '640220031V', '0000-00-00', 'Male', '', '', '0000-00-00', 8, 111, 0, 0, '2014-11-30'),
(207, 'Mr', 'J. R. T. N. Jayakody', '810561505V', '0000-00-00', 'Male', '', '', '0000-00-00', 6, 111, 0, 0, '2014-11-30'),
(209, 'Mr', 'W. C. B.  De Silva', '740480413V', '0000-00-00', 'Male', 'chamika@accmt.ac.lk', '', '0000-00-00', 50, 112, 0, 0, '2014-11-30'),
(212, 'Mr', 'E. P. P Fernando', '691632466V', '0000-00-00', 'Male', '', '', '0000-00-00', 56, 113, 0, 0, '2014-11-30'),
(213, 'Mr', 'W. A. P.  Silva', '', '0000-00-00', 'Male', 'panduka@accmt.ac.lk', '', '0000-00-00', 3, 6, 0, 0, '2014-11-30'),
(215, 'Mr', 'J. S. B.  Rathnayake', '740132490V', '0000-00-00', 'Male', 'janaka @accmt.ac.lk', '', '0000-00-00', 55, 44, 0, 0, '2014-11-30'),
(216, 'Mr', 'N. K. L. T. M. S.  Dias', '712410337V', '0000-00-00', 'Male', 'tmsdias@yahoo.com', '', '0000-00-00', 6, 111, 0, 0, '2014-11-30'),
(217, 'Eng', 'P. S. Panawennage', '', '0000-00-00', 'Male', '', '', '0000-00-00', 2, 74, 0, 0, '2014-11-30'),
(218, 'Mr', 'N. K. J. K.  De Silva', '853001759V', '0000-00-00', 'Male', '', '', '0000-00-00', 3, 115, 0, 0, '2014-11-30'),
(225, 'Mr', 'R. A. C. A. K.  Ranawaka', '770573564V', '0000-00-00', 'Male', '', '', '0000-00-00', 5, 111, 0, 0, '2014-11-30'),
(226, 'Mr', 'J. S.  Koruwage', '801340040V', '0000-00-00', 'Male', '', '', '0000-00-00', 6, 111, 0, 0, '2014-11-30'),
(236, 'Mr', 'N. T. M.  Sajith', '851430342V', '0000-00-00', 'Male', '', '', '2011-12-01', 5, 78, 0, 0, '2014-11-30'),
(237, 'Ms', 'T. V.  Jayasinghe Arachchi', '855990091V', '0000-00-00', 'Female', '', '', '2011-12-01', 6, 78, 0, 0, '2014-11-30'),
(238, 'Mr', 'C. M.  Karunarathna', '862360273V', '0000-00-00', 'Male', '', '', '2011-12-01', 6, 78, 0, 0, '2014-11-30'),
(239, 'Ms.', 'M. L. Karunarathne', '', '0000-00-00', 'Female', '', '', '0000-00-00', 9, 77, 0, 0, '2014-11-30'),
(244, '', 'A. R. M. Rila', '', '0000-00-00', 'female', '', '', '0000-00-00', 7, 80, 0, 0, '2014-11-30'),
(246, 'Mr', 'W. R. S. C.  Ranathunga', '872660259V', '0000-00-00', 'Male', '', '', '0000-00-00', 5, 78, 0, 0, '2014-11-30'),
(249, 'Mr', 'U.D Niriella.', '682858779V', '0000-00-00', 'Male', '', '', '0000-00-00', 8, 78, 0, 0, '2014-11-30'),
(250, 'Ms', 'K.G. Lakmali', '', '0000-00-00', 'Female', '', '', '0000-00-00', 6, 78, 0, 0, '2014-11-30'),
(251, 'Mr', 'W. R. W. M. Y. S. B. Bulumulla', '', '0000-00-00', 'Female', '', '', '0000-00-00', 9, 78, 0, 0, '2014-11-30'),
(252, 'Mr', 'L. H.  Malindu Tilan', '', '0000-00-00', 'Male', '', '', '0000-00-00', 4, 109, 0, 0, '2014-11-30'),
(253, 'Ms', 'W. A. K. Madumali', '', '0000-00-00', 'Female', 'Kaushalya@accmt.ac.lk', '', '0000-00-00', 5, 109, 0, 0, '2014-11-30'),
(254, 'Mr', 'C. R. Ranasinghe', '', '0000-00-00', 'Male', '', '', '0000-00-00', 6, 78, 0, 0, '2014-11-30'),
(255, 'Ms', 'N. A. A. Nadeesha Dilrukshi', '', '0000-00-00', 'Female', '', '', '0000-00-00', 6, 78, 0, 0, '2014-11-30'),
(256, 'Ms', 'Vijayasothy V', '', '0000-00-00', 'Female', '', '', '0000-00-00', 6, 78, 0, 0, '2014-11-30'),
(257, 'Mr.', 'R. A. Gamini', '', '0000-00-00', 'Male', '', '', '0000-00-00', 8, 52, 0, 0, '2014-11-30'),
(258, 'Mr', 'S. R. J. S. Bandara', '', '0000-00-00', 'Male', '', '', '0000-00-00', 3, 109, 0, 0, '2014-11-30'),
(259, 'Mrs ', 'K. C. I. Silva', '', '0000-00-00', 'Female', '', '', '0000-00-00', 4, 109, 0, 0, '2014-11-30'),
(260, 'Ms.', 'H. D. N. Fernando', '', '0000-00-00', 'Female', '', '', '0000-00-00', 3, 109, 0, 0, '2014-11-30'),
(261, 'Ms.', 'P. D. T. De Silva', '', '0000-00-00', 'Female', '', '', '0000-00-00', 3, 109, 0, 0, '2014-11-30'),
(262, 'Ms.', 'K. T. C. K. Alwis', '', '0000-00-00', 'Female', '', '', '0000-00-00', 3, 109, 0, 0, '2014-11-30'),
(263, 'Ms.', 'M.. B. A. M. Dissanayake', '', '0000-00-00', 'Female', '', '', '0000-00-00', 3, 109, 0, 0, '2014-11-30'),
(264, 'Mr.', 'P. Buddhika Warnakula', '', '0000-00-00', 'Male', '', '', '0000-00-00', 3, 108, 0, 0, '2014-11-30'),
(265, 'Mr.', 'P. Chandima Ramanayake', '', '0000-00-00', 'Male', '', '', '0000-00-00', 3, 115, 0, 0, '2014-11-30'),
(266, 'Mr.', 'G. M. Rodrigo', '', '0000-00-00', 'Male', '', '', '0000-00-00', 3, 115, 0, 0, '2014-11-30'),
(267, 'Mr.', 'Saman Keerthi ', '', '0000-00-00', 'Male', '', '', '0000-00-00', 2, 21, 0, 0, '2014-11-30'),
(268, 'Ms.', 'K. A. Sumudu L. Perera', '', '0000-00-00', 'Female', '', '', '0000-00-00', 3, 109, 0, 0, '2014-11-30'),
(269, 'Mr.', 'K. D. S. Awantha', '', '0000-00-00', 'Male', '', '', '0000-00-00', 4, 115, 0, 0, '2014-11-30'),
(270, 'Mr. ', 'U. A. D Upul Priyashantha', '', '0000-00-00', 'Male', '', '', '0000-00-00', 3, 108, 0, 0, '2014-11-30'),
(271, 'Miss.', 'V. K. O. N. Thalpawila', '', '0000-00-00', 'Female', '', '', '0000-00-00', 3, 78, 0, 0, '2014-11-30'),
(272, 'Mr.', 'J. P. Rajitha Prasanna', '', '0000-00-00', 'Male', '', '', '0000-00-00', 5, 78, 0, 0, '2014-11-30'),
(273, 'Mr.', 'Lavanan Vengadasalam', '', '0000-00-00', 'Male', '', '', '0000-00-00', 7, 78, 0, 0, '2014-11-30'),
(274, 'Mr.', 'B. S. Marasinghe', '', '0000-00-00', 'Male', '', '', '0000-00-00', 7, 80, 0, 0, '2014-11-30'),
(275, 'Ms.', 'M. H. C. Kumarasinghe', '', '0000-00-00', 'Female', '', '', '0000-00-00', 7, 80, 0, 0, '2014-11-30'),
(276, 'Mr.', 'K. S. Roshan', '', '0000-00-00', 'Male', '', '', '0000-00-00', 8, 117, 0, 0, '2014-11-30'),
(277, 'Mr.', 'M. P. R. Perera', '', '0000-00-00', 'Male', '', '', '0000-00-00', 54, 42, 0, 0, '2014-11-30'),
(278, 'Mr.', 'M.B. Thilakarathne', '', '0000-00-00', 'Male', '', '', '0000-00-00', 5, 78, 0, 0, '2014-11-30'),
(279, 'Ms.', 'L. A. C. P. Ranasinghe', '', '0000-00-00', 'Female', '', '', '0000-00-00', 9, 118, 0, 0, '2014-11-30'),
(280, 'Ms.', 'S. D. Shiromi Lakmali ', '', '0000-00-00', 'Female', '', '', '0000-00-00', 9, 118, 0, 0, '2014-11-30'),
(281, 'Ms.', 'R. M. T. M. Danapala', '', '0000-00-00', 'Female', '', '', '0000-00-00', 8, 78, 0, 0, '2014-11-30'),
(282, 'Mr.', 'R. A. D. K. Sampath', '', '0000-00-00', 'Male', '', '', '0000-00-00', 5, 116, 0, 0, '2014-11-30'),
(90211, 'Mr.', 'K. G. H. Arjuna', '872893369V', '0000-00-00', 'Male', 'hearkg@hotmali.com', '0712200220', '2015-03-10', 9, 999, 3, 2, '2014-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `emp_details_tbl_bbkp`
--

CREATE TABLE IF NOT EXISTS `emp_details_tbl_bbkp` (
  `EmpNo` int(10) NOT NULL,
  `Title` varchar(10) DEFAULT NULL,
  `Fullname` varchar(200) DEFAULT NULL,
  `NICNum` varchar(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `MobileNo` varchar(15) DEFAULT NULL,
  `DateofAppoinment` date DEFAULT NULL,
  `DivisionCode` int(5) DEFAULT NULL,
  `DesigCode` int(5) DEFAULT NULL,
  `EmpTypeCode` int(2) DEFAULT NULL,
  `CategoryCode` int(3) DEFAULT NULL,
  `RetirementDT` date DEFAULT NULL,
  PRIMARY KEY (`EmpNo`),
  KEY `DivisionCode` (`DivisionCode`),
  KEY `DesigCode` (`DesigCode`),
  KEY `EmpTypeCode` (`EmpTypeCode`),
  KEY `CategoryCode` (`CategoryCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emp_details_tbl_bbkp`
--

INSERT INTO `emp_details_tbl_bbkp` (`EmpNo`, `Title`, `Fullname`, `NICNum`, `DOB`, `Gender`, `Email`, `MobileNo`, `DateofAppoinment`, `DivisionCode`, `DesigCode`, `EmpTypeCode`, `CategoryCode`, `RetirementDT`) VALUES
(100, 'Mr', 'K. G. H. Arjuna', '872983369', '1987-10-15', 'Male', 'hearkg@hotmali.com', '0712200220', '2014-03-10', 9, 999, 3, 1, '2015-03-09'),
(107, 'Mr', 'Udara Jayarathna', '892345678V', '1989-12-01', 'Male', 'ujaya@gmail.com', '07123456789', '2014-04-01', 9, 999, 3, 2, '2014-12-31'),
(108, 'Mr.', 'Isuru Kandambi', '882345678V', '1988-12-01', 'Male', 'Isuru@gmail.com', '07723456789', '2014-05-10', 9, 999, 3, 3, '2015-12-31'),
(109, 'Mr', 'K. G. H. Arjuna', '872983369', '1987-10-15', 'Male', 'hearkg@hotmali.com', '0712200220', '2014-03-10', 9, 999, 3, 1, '2015-03-09');

-- --------------------------------------------------------

--
-- Table structure for table `emp_type_tbl`
--

CREATE TABLE IF NOT EXISTS `emp_type_tbl` (
  `EmpTypeCode` int(2) NOT NULL AUTO_INCREMENT,
  `EmpType` varchar(50) NOT NULL,
  PRIMARY KEY (`EmpTypeCode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `emp_type_tbl`
--

INSERT INTO `emp_type_tbl` (`EmpTypeCode`, `EmpType`) VALUES
(0, 'unset'),
(1, 'Casual'),
(2, 'Permenent'),
(3, 'Trainee'),
(4, 'Security');

-- --------------------------------------------------------

--
-- Table structure for table `file_tbl`
--

CREATE TABLE IF NOT EXISTS `file_tbl` (
  `file_no` varchar(25) NOT NULL,
  `file_date` date NOT NULL,
  `pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file_tbl`
--

INSERT INTO `file_tbl` (`file_no`, `file_date`, `pro_id`) VALUES
('ACC/FN/02', '2015-10-01', 1),
('ACC/FN/01', '2015-10-01', 1),
('ACC/FN/03', '2016-10-10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ibudg_alloc_tbl`
--

CREATE TABLE IF NOT EXISTS `ibudg_alloc_tbl` (
  `item_allo_no` int(11) NOT NULL AUTO_INCREMENT,
  `pr_no` varchar(25) NOT NULL,
  `M_Pr_No` int(10) NOT NULL,
  `serial_no` int(10) NOT NULL,
  `divb_code` int(10) NOT NULL,
  `item_no` int(11) NOT NULL,
  `alloc_amt` double NOT NULL,
  `act_amt` double NOT NULL,
  `pr_date` date NOT NULL,
  `act_date` date NOT NULL,
  `div_approval` tinyint(1) NOT NULL,
  PRIMARY KEY (`item_allo_no`),
  KEY `pr_no` (`pr_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ibudg_alloc_tbl`
--

INSERT INTO `ibudg_alloc_tbl` (`item_allo_no`, `pr_no`, `M_Pr_No`, `serial_no`, `divb_code`, `item_no`, `alloc_amt`, `act_amt`, `pr_date`, `act_date`, `div_approval`) VALUES
(1, '0', 0, 1, 46, 0, 34234, 0, '2016-09-26', '0000-00-00', 0),
(2, '3', 0, 0, 48, 1, 6777, 0, '2016-10-11', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `issues_tbl`
--

CREATE TABLE IF NOT EXISTS `issues_tbl` (
  `AttDtId` int(10) NOT NULL,
  `EmpNo` int(10) NOT NULL,
  `Desc` varchar(200) NOT NULL,
  KEY `AttDtId` (`AttDtId`),
  KEY `EmpNo` (`EmpNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_dtls_tbl`
--

CREATE TABLE IF NOT EXISTS `item_dtls_tbl` (
  `divb_code` int(10) NOT NULL,
  `item_no` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `target_month` varchar(15) NOT NULL,
  `item_amount` double NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`divb_code`,`item_no`),
  KEY `divb_code` (`divb_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_dtls_tbl`
--

INSERT INTO `item_dtls_tbl` (`divb_code`, `item_no`, `description`, `target_month`, `item_amount`, `active`) VALUES
(1, 1, 'Laptop Compuetr', 'January', 200000, 1),
(4, 1, 'Laptop Compuetr', 'January', 200000, 0),
(4, 2, 'Desktop Compuetr', 'January', 200000, 0),
(4, 3, 'Desktop Compuetr', 'January', 200000, 0),
(4, 4, 'A/C Unit For New Partition', 'January', 150000, 0),
(4, 5, 'Electrical Wiring of Training Laboratary', 'January', 50000, 0),
(4, 6, 'Nework Cabling of Training Laboratary', 'January', 100000, 0),
(36, 2, 'Embedded System Developments(Microprocessor)', 'December', 500000, 1),
(37, 1, 'Embedded System Developments(computers,Laptops)', 'December', 500000, 0),
(37, 2, 'Advanced Hardware Recovery Tools', 'March', 500000, 0),
(38, 1, 'Branded Personal Computer', 'December', 125000, 1),
(38, 2, 'Branded Laptop Computer', 'December', 125000, 1),
(48, 1, 'Colour Laxer Printer', 'December', 100000, 1),
(49, 1, 'Finger print Recorder & Face recognition Machine', 'December', 100000, 1),
(50, 1, 'Laminating Machine', 'December', 100000, 1),
(51, 1, 'Lap top Computer', 'December', 150000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_tbl`
--

CREATE TABLE IF NOT EXISTS `login_tbl` (
  `User_Name` varchar(20) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `Type` varchar(1) NOT NULL,
  `FullName` varchar(200) NOT NULL,
  `ContactNos` varchar(50) NOT NULL,
  `NicNo` varchar(10) NOT NULL,
  PRIMARY KEY (`User_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_tbl`
--

INSERT INTO `login_tbl` (`User_Name`, `Password`, `Type`, `FullName`, `ContactNos`, `NicNo`) VALUES
('A', '0cc175b9c0f1b6a831c399e269772661', 'A', 'Heshan Arjuna', '0712200220', '872893369V'),
('Arjuna', 'd41d8cd98f00b204e9800998ecf8427e', 'V', '', '', ''),
('E', 'e1671797c52e15f763380b45e841ec32', 'E', '', '', ''),
('v', '9e3669d19b675bd57058fd4664205d2a', 'V', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `login_tbl_leave`
--

CREATE TABLE IF NOT EXISTS `login_tbl_leave` (
  `Emp_No` int(11) NOT NULL,
  `Designation` varchar(25) NOT NULL,
  `Division` varchar(25) NOT NULL,
  `category` varchar(25) NOT NULL,
  `Password` text NOT NULL,
  `Emp_Type` varchar(3) NOT NULL,
  PRIMARY KEY (`Emp_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_tbl_leave`
--

INSERT INTO `login_tbl_leave` (`Emp_No`, `Designation`, `Division`, `category`, `Password`, `Emp_Type`) VALUES
(1, '', '', '', 'c4ca4238a0b923820dcc509a6f75849b', 'ADM'),
(5, '', '', '', 'e4da3b7fbbce2345d7772b0674a318d5', 'HOD'),
(7, '', '', '', '8f14e45fceea167a5a36dedd4bea2543', 'EMP'),
(8, '', '', '', 'c9f0f895fb98ab9159f51fd0297e236d', 'EMP'),
(24, '', '', '', '1ff1de774005f8da13f42943881c655f', 'EMP'),
(36, '', '', '', '19ca14e7ea6328a42e0eb13d585e4c22', 'EMP'),
(53, '', '', '', 'd82c8d1619ad8176d665453cfb2e55f0', 'EMP'),
(59, '', '', '', '093f65e080a295f8076b1c5722a46aa2', 'HOD'),
(65, '', '', '', 'fc490ca45c00b1249bbe3554a4fdf6fb', 'CLE'),
(67, '', '', '', '735b90b4568125ed6c3f678819b6e058', 'EMP'),
(68, '', '', '', 'a3f390d88e4c41f2747bfa2f1b5f87db', 'EMP'),
(70, '', '', '', '7cbbc409ec990f19c78c75bd1e06f215', 'ADD'),
(75, '', '', '', 'd09bf41544a3365a46c9077ebb5e35c3', 'EMP'),
(93, '', '', '', '98dce83da57b0395e163467c9dae521b', 'HOD'),
(100, '', '', '', 'f899139df5e1059396431415e770c6dd', 'EMP'),
(107, '', '', '', 'a97da629b098b75c294dffdc3e463904', 'EMP'),
(108, '', '', '', 'a3c65c2974270fd093ee8a9bf8ae7d0b', 'EMP'),
(112, '', '', '', '7f6ffaa6bb0b408017b62254211691b5', 'EMP'),
(116, '', '', '', 'c45147dee729311ef5b5c3003946c48f', 'EMP'),
(120, '', '', '', 'da4fb5c6e93e74d3df8527599fa62642', 'HOD'),
(125, '', '', '', '3def184ad8f4755ff269862ea77393dd', 'HOD'),
(126, '', '', '', '069059b7ef840f0c74a814ec9237b6ec', 'EMP'),
(127, '', '', '', 'ec5decca5ed3d6b8079e2e7e7bacc9f2', 'EMP'),
(128, '', '', '', '76dc611d6ebaafc66cc0879c71b5db5c', 'EMP'),
(130, '49', '', 'Technical', '202cb962ac59075b964b07152d234b70', 'EMP'),
(132, '', '', '', '65ded5353c5ee48d0b7d48c591b8f430', 'EMP'),
(138, '', '', '', '013d407166ec4fa56eb1e1f8cbe183b9', 'EMP'),
(139, '', '', '', 'e00da03b685a0dd18fb6a08af0923de0', 'EMP'),
(142, '', '', '', 'a8baa56554f96369ab93e4f3bb068c22', 'EMP'),
(143, '', '', '', '903ce9225fca3e988c2af215d4e544d3', 'EMP'),
(146, '', '', '', 'a5e00132373a7031000fd987a3c9f87b', 'EMP'),
(147, '', '', '', '8d5e957f297893487bd98fa830fa6413', 'EMP'),
(149, '', '', '', 'f2217062e9a397a1dca429e7d70bc6ca', 'HOD'),
(161, '', '', '', 'bd4c9ab730f5513206b999ec0d90d1fb', 'EMP'),
(162, '', '', '', '82aa4b0af34c2313a562076992e50aa3', 'EMP'),
(168, '', '', '', '006f52e9102a8d3be2fe5614f42ba989', 'EMP'),
(169, '', '', '', '3636638817772e42b59d74cff571fbb3', 'EMP'),
(180, '', '', '', '045117b0e0a11a242b9765e79cbf113f', 'HOD'),
(188, '', '', '', '9dcb88e0137649590b755372b040afad', 'EMP'),
(190, '', '', '', 'cfecdb276f634854f3ef915e2e980c31', 'HOD'),
(191, '', '', '', '0aa1883c6411f7873cb83dacb17b0afc', 'EMP'),
(192, '', '', '', '58a2fc6ed39fd083f55d4182bf88826d', 'HOD'),
(193, '', '', '', 'bd686fd640be98efaae0091fa301e613', 'EMP'),
(199, '', '', '', '84d9ee44e457ddef7f2c4f25dc8fa865', 'EMP'),
(200, '', '', '', '3644a684f98ea8fe223c713b77189a77', 'EMP'),
(202, '', '', '', '854d6fae5ee42911677c739ee1734486', 'EMP'),
(207, '', '', '', '69adc1e107f7f7d035d7baf04342e1ca', 'EMP'),
(209, '', '', '', 'b1d10e7bafa4421218a51b1e1f1b0ba2', 'EMP'),
(212, '', '', '', '1534b76d325a8f591b52d302e7181331', 'EMP'),
(213, '', '', '', '979d472a84804b9f647bc185a877a8b5', 'ADD'),
(215, '', '', '', '3b8a614226a953a8cd9526fca6fe9ba5', 'HOD'),
(216, '', '', '', '45fbc6d3e05ebd93369ce542e8f2322d', 'EMP'),
(217, '', '', '', '63dc7ed1010d3c3b8269faf0ba7491d4', 'DIG'),
(218, '', '', '', 'e96ed478dab8595a7dbda4cbcbee168f', 'EMP'),
(225, '', '', '', 'd1c38a09acc34845c6be3a127a5aacaf', 'EMP'),
(226, '', '', '', '9cfdf10e8fc047a44b08ed031e1f0ed1', 'EMP'),
(236, '', '', '', '01161aaa0b6d1345dd8fe4e481144d84', 'EMP'),
(237, '', '', '', '539fd53b59e3bb12d203f45a912eeaf2', 'EMP'),
(238, '', '', '', 'ac1dd209cbcc5e5d1c6e28598e8cbbe8', 'EMP'),
(239, '', '', '', '555d6702c950ecb729a966504af0a635', 'EMP'),
(244, '', '', '', '9188905e74c28e489b44e954ec0b9bca', 'EMP'),
(246, '', '', '', '38db3aed920cf82ab059bfccbd02be6a', 'EMP'),
(249, '', '', '', '077e29b11be80ab57e1a2ecabb7da330', 'EMP'),
(250, '', '', '', '6c9882bbac1c7093bd25041881277658', 'EMP'),
(251, '', '', '', '19f3cd308f1455b3fa09a282e0d496f4', 'EMP'),
(252, '', '', '', '03c6b06952c750899bb03d998e631860', 'EMP'),
(253, '', '', '', 'c24cd76e1ce41366a4bbe8a49b02a028', 'EMP'),
(254, '', '', '', 'c52f1bd66cc19d05628bd8bf27af3ad6', 'EMP'),
(255, '', '', '', 'fe131d7f5a6b38b23cc967316c13dae2', 'EMP'),
(256, '', '', '', 'f718499c1c8cef6730f9fd03c8125cab', 'HOD'),
(257, '', '', '', 'd96409bf894217686ba124d7356686c9', 'HOD'),
(258, '', '', '', '502e4a16930e414107ee22b6198c578f', 'EMP'),
(259, '', '', '', 'cfa0860e83a4c3a763a7e62d825349f7', 'EMP'),
(260, '', '', '', 'a4f23670e1833f3fdb077ca70bbd5d66', 'EMP'),
(261, '', '', '', 'b1a59b315fc9a3002ce38bbe070ec3f5', 'EMP'),
(262, '', '', '', '36660e59856b4de58a219bcf4e27eba3', 'EMP'),
(263, '', '', '', '8c19f571e251e61cb8dd3612f26d5ecf', 'EMP'),
(264, '', '', '', 'd6baf65e0b240ce177cf70da146c8dc8', 'EMP'),
(265, '', '', '', 'e56954b4f6347e897f954495eab16a88', 'EMP'),
(266, '', '', '', 'f7664060cc52bc6f3d620bcedc94a4b6', 'EMP'),
(267, '', '', '', 'eda80a3d5b344bc40f3bc04f65b7a357', 'HOD'),
(268, '', '', '', '8f121ce07d74717e0b1f21d122e04521', 'EMP'),
(269, '', '', '', '06138bc5af6023646ede0e1f7c1eac75', 'EMP'),
(270, '', '', '', '39059724f73a9969845dfe4146c5660e', 'EMP'),
(271, '', '', '', '7f100b7b36092fb9b06dfb4fac360931', 'EMP'),
(272, '', '', '', '7a614fd06c325499f1680b9896beedeb', 'EMP'),
(273, '', '', '', '4734ba6f3de83d861c3176a6273cac6d', 'EMP'),
(274, '', '', '', 'd947bf06a885db0d477d707121934ff8', 'EMP'),
(275, '', '', '', '63923f49e5241343aa7acb6a06a751e7', 'EMP'),
(276, '', '', '', 'db8e1af0cb3aca1ae2d0018624204529', 'EMP'),
(277, '', '', '', '20f07591c6fcb220ffe637cda29bb3f6', 'EMP'),
(278, '', '', '', '07cdfd23373b17c6b337251c22b7ea57', 'EMP'),
(279, '', '', '', 'd395771085aab05244a4fb8fd91bf4ee', 'EMP'),
(280, '', '', '', '92c8c96e4c37100777c7190b76d28233', 'EMP'),
(281, '', '', '', 'e3796ae838835da0b6f6ea37bcf8bcb7', 'EMP'),
(282, '', '', '', '6a9aeddfc689c1d0e3b9ccc3ab651bc5', 'EMP'),
(285, '', '', '', '0e01938fc48a2cfb5f2217fbfb00722d', 'HOD');

-- --------------------------------------------------------

--
-- Table structure for table `lv_tbl`
--

CREATE TABLE IF NOT EXISTS `lv_tbl` (
  `Leave_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Emp_No` int(11) NOT NULL,
  `Leave_Type_ID` int(1) NOT NULL,
  `From_Date` date NOT NULL,
  `To_Date` date NOT NULL,
  `No_of_Days` double(4,1) NOT NULL,
  `Leave_Reason` varchar(100) NOT NULL,
  `Leave_Address_L1` varchar(100) DEFAULT NULL,
  `Leave_Address_L2` varchar(100) DEFAULT NULL,
  `Leave_Address_L3` varchar(100) DEFAULT NULL,
  `App_Date` date NOT NULL,
  `Act_Emp_No` int(11) NOT NULL,
  `Act_Approved` varchar(2) NOT NULL,
  `Hod_Emp_No` int(11) NOT NULL,
  `Hod_Approved` varchar(2) NOT NULL,
  `Cle_Printed` varchar(2) NOT NULL,
  PRIMARY KEY (`Leave_ID`),
  KEY `Emp_No` (`Emp_No`),
  KEY `Leave_Type_ID` (`Leave_Type_ID`),
  KEY `Hod_Emp_No` (`Hod_Emp_No`),
  KEY `Act_Emp_No` (`Act_Emp_No`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `lv_tbl`
--

INSERT INTO `lv_tbl` (`Leave_ID`, `Emp_No`, `Leave_Type_ID`, `From_Date`, `To_Date`, `No_of_Days`, `Leave_Reason`, `Leave_Address_L1`, `Leave_Address_L2`, `Leave_Address_L3`, `App_Date`, `Act_Emp_No`, `Act_Approved`, `Hod_Emp_No`, `Hod_Approved`, `Cle_Printed`) VALUES
(21, 107, 1, '2015-04-25', '2015-04-26', 1.0, 'for medical', 'gfsdg', 'sgsgb', 'fsdebts', '2015-04-23', 107, 'N', 217, 'N', 'N'),
(22, 107, 5, '2015-04-27', '2015-04-28', 1.0, 'dd', 'xc', 'dd', 'ssd', '2015-04-27', 107, 'Y', 70, 'N', 'N'),
(23, 107, 5, '2015-05-29', '2015-05-29', 0.5, 'personal', 'ee', 'ee', 'ee', '2015-05-29', 112, 'Y', 190, 'Y', 'N'),
(24, 107, 5, '2015-05-29', '2015-05-29', 0.5, 'ggg', 'zz', 'zz', 'zz', '2015-05-29', 112, 'N', 190, 'N', 'N'),
(25, 107, 5, '2015-05-29', '2015-05-29', 0.5, 'sds', 's', 's', 's', '2015-05-29', 112, 'N', 190, 'N', 'N'),
(26, 107, 5, '2015-06-03', '2015-06-03', 0.5, 'sds', 'ss', 's', 's', '2015-06-03', 239, 'Y', 190, 'Y', 'N'),
(27, 162, 1, '2015-06-05', '2015-06-08', 3.0, 'aaaaaaaaaaaaaa', 'aaa', 'zzz', 'aaaa', '2015-06-05', 5, 'Y', 256, 'Y', 'N'),
(28, 162, 1, '2015-06-05', '2015-06-08', 3.0, 'aaaaa', 'aaa', 'zzz', 'aaaa', '2015-06-05', 67, 'N', 70, 'N', 'N'),
(29, 162, 1, '2015-06-05', '2015-06-08', 3.0, 'fhbhfhdbhd', 'bdsh', 'wrw', 'wbb', '2015-06-05', 5, 'N', 256, 'N', 'N'),
(30, 192, 2, '2015-06-02', '2015-06-05', 3.0, 'jfkjjfiudhfiudf', 'jdnfjdfjj', 'jnfjdnf', 'nfdsns', '2015-06-05', 7, 'Y', 213, 'D', 'N'),
(31, 8, 3, '2015-06-01', '2015-06-06', 5.0, 'fddkgfklgmkfl', 'dknfkn', 'fdkjsnfksn', 'nfjskf', '2015-06-05', 125, 'Y', 213, 'Y', 'N'),
(32, 212, 2, '2015-06-05', '2015-06-08', 3.0, 'mkghkfjkhck', 'hbdsh', 'jfdsbjf', 'jvbhjdsh', '2015-06-05', 24, 'D', 70, 'N', 'N'),
(33, 53, 5, '2015-06-05', '2015-06-07', 2.0, 'iytuetywt', 'try6tu', 'ytryf', 'yrtyr', '2015-06-05', 59, 'N', 217, 'N', 'N'),
(34, 24, 1, '2015-06-04', '2015-06-06', 2.0, ',vf,vfsf', 'ejijiad', 'wygeyw', 'feuf', '2015-06-05', 212, 'Y', 213, 'Y', 'N'),
(38, 239, 5, '2015-01-08', '2015-01-08', 0.5, 'Election', '2/34', 'Munagama', 'Horana', '2015-07-03', 239, 'N', 190, 'N', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `lv_type`
--

CREATE TABLE IF NOT EXISTS `lv_type` (
  `Leave_Type_ID` int(1) NOT NULL,
  `Leave_Type` varchar(50) NOT NULL,
  PRIMARY KEY (`Leave_Type_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lv_type`
--

INSERT INTO `lv_type` (`Leave_Type_ID`, `Leave_Type`) VALUES
(1, 'Medical'),
(2, 'Vacation'),
(3, 'Casual'),
(4, 'Lapse'),
(5, 'Duty'),
(6, 'No Pay');

-- --------------------------------------------------------

--
-- Table structure for table `lv_type_tbl`
--

CREATE TABLE IF NOT EXISTS `lv_type_tbl` (
  `Leave_Type_ID` int(1) NOT NULL AUTO_INCREMENT,
  `Leave_Type` varchar(50) NOT NULL,
  PRIMARY KEY (`Leave_Type_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `lv_type_tbl`
--

INSERT INTO `lv_type_tbl` (`Leave_Type_ID`, `Leave_Type`) VALUES
(0, 'Not Applied'),
(1, 'Medical'),
(2, 'Vacation'),
(3, 'Casual'),
(4, 'Lapse'),
(5, 'Duty'),
(6, 'No Pay'),
(8, 'pp');

-- --------------------------------------------------------

--
-- Table structure for table `positions_tbl`
--

CREATE TABLE IF NOT EXISTS `positions_tbl` (
  `EmpNo` int(10) NOT NULL,
  `Promo_Dt` date NOT NULL,
  `DivisionCode` int(5) NOT NULL,
  `DesigCode` int(5) NOT NULL,
  `CategoryCode` int(3) NOT NULL,
  PRIMARY KEY (`EmpNo`,`Promo_Dt`),
  KEY `DivisionCode` (`DivisionCode`),
  KEY `DesigCode` (`DesigCode`),
  KEY `CategoryCode` (`CategoryCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `procurement_method_tbl`
--

CREATE TABLE IF NOT EXISTS `procurement_method_tbl` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `procurement_method_tbl`
--

INSERT INTO `procurement_method_tbl` (`pro_id`, `description`) VALUES
(1, 'appoin tec'),
(2, 'procgdsh');

-- --------------------------------------------------------

--
-- Table structure for table `pr_deny`
--

CREATE TABLE IF NOT EXISTS `pr_deny` (
  `pr_no` int(10) NOT NULL,
  `reason` text NOT NULL,
  PRIMARY KEY (`pr_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pr_deny`
--

INSERT INTO `pr_deny` (`pr_no`, `reason`) VALUES
(20, '');

-- --------------------------------------------------------

--
-- Table structure for table `pr_dtls_tbl`
--

CREATE TABLE IF NOT EXISTS `pr_dtls_tbl` (
  `pr_dtls_code` int(11) NOT NULL AUTO_INCREMENT,
  `pr_no` varchar(25) NOT NULL,
  `applicant` int(10) NOT NULL,
  `serial_no` int(10) NOT NULL,
  `DivisionCode` int(5) NOT NULL,
  `Name_officer` varchar(300) NOT NULL,
  `descrip` varchar(200) NOT NULL,
  `pr_date` date NOT NULL,
  `quantity` double NOT NULL,
  `pur_ type` varchar(400) NOT NULL,
  `purpose` varchar(600) NOT NULL,
  `DesigCode` int(5) NOT NULL,
  `Dtls_of_equipment` varchar(1000) NOT NULL,
  `est_cost` double NOT NULL,
  `act_cost` double NOT NULL,
  `bud_pro_des` text NOT NULL,
  `alter_source` text NOT NULL,
  `provision_des` varchar(600) NOT NULL,
  `simiar_item` int(10) NOT NULL,
  `similar_des` text NOT NULL,
  `head_rec` int(10) NOT NULL,
  `head_rec_date` date NOT NULL,
  `head_rec_sta` varchar(3) NOT NULL,
  `rec_ddg` int(10) NOT NULL,
  `rec_ddg_date` date NOT NULL,
  `rec_ddg_sta` varchar(3) NOT NULL,
  `autri_dg` int(10) NOT NULL,
  `autri_dg_date` date NOT NULL,
  `autri_dg_sta` varchar(3) NOT NULL,
  `usage_no` int(11) NOT NULL,
  `req_fulfill` varchar(1000) NOT NULL,
  `target_month` varchar(500) NOT NULL,
  `pro_code` varchar(20) NOT NULL,
  `pr_type_no` int(11) NOT NULL,
  `file_no` varchar(25) NOT NULL,
  `remarks` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`pr_dtls_code`),
  KEY `item_no` (`usage_no`,`pro_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `pr_dtls_tbl`
--

INSERT INTO `pr_dtls_tbl` (`pr_dtls_code`, `pr_no`, `applicant`, `serial_no`, `DivisionCode`, `Name_officer`, `descrip`, `pr_date`, `quantity`, `pur_ type`, `purpose`, `DesigCode`, `Dtls_of_equipment`, `est_cost`, `act_cost`, `bud_pro_des`, `alter_source`, `provision_des`, `simiar_item`, `similar_des`, `head_rec`, `head_rec_date`, `head_rec_sta`, `rec_ddg`, `rec_ddg_date`, `rec_ddg_sta`, `autri_dg`, `autri_dg_date`, `autri_dg_sta`, `usage_no`, `req_fulfill`, `target_month`, `pro_code`, `pr_type_no`, `file_no`, `remarks`) VALUES
(10, '10', 7, 0, 1, 'hhhh', '', '2016-10-06', 54, '', '    rrrr', 9, 'hjujjj', 6789, 0, '', 'gfhf', '  hfghfg  ', 3, 'fgfdh', 0, '0000-00-00', '', 0, '0000-00-00', '', 1, '2016-10-06', 'Y', 1, 'gfhf', 'March', '', 2, '', NULL),
(11, '', 93, 0, 0, '', '', '0000-00-00', 0, '', '          dssd        ', 0, '', 0, 0, '', '', '', 0, 'adsd', 0, '0000-00-00', '', 0, '0000-00-00', '', 0, '0000-00-00', '', 0, '', '', '', 0, '', NULL),
(13, '3', 93, 0, 7, 'test', '', '2016-11-08', 1, '', '    ddfd', 2, 'sss', 111, 0, '', 'fgfg', '   xdd ', 77, 'fgg', 0, '0000-00-00', '', 0, '0000-00-00', '', 0, '0000-00-00', '', 1, 'bh', 'October', '', 1, '', NULL),
(14, '', 93, 0, 0, '', '', '0000-00-00', 0, '', '          dssd        ', 0, '', 0, 0, '', '', '', 0, 'adsd', 0, '0000-00-00', '', 0, '0000-00-00', '', 0, '0000-00-00', '', 0, '', '', '', 0, '', NULL),
(15, '5', 93, 0, 0, '', '', '2016-11-09', 0, '', '    ', 0, '', 0, 0, '', '', '    ', 0, '', 0, '0000-00-00', '', 0, '0000-00-00', '', 0, '0000-00-00', '', 0, '', 'August', '', 0, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pr_req_tbl`
--

CREATE TABLE IF NOT EXISTS `pr_req_tbl` (
  `pr_no` varchar(25) NOT NULL,
  `div_code` int(5) NOT NULL,
  `applicant` int(10) NOT NULL,
  `pr_date` date NOT NULL,
  `divb_code` int(10) NOT NULL,
  PRIMARY KEY (`pr_no`),
  KEY `applicant` (`applicant`),
  KEY `divb_code` (`divb_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pr_type`
--

CREATE TABLE IF NOT EXISTS `pr_type` (
  `pr_type_no` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(10) NOT NULL,
  `short_name` varchar(5) NOT NULL,
  PRIMARY KEY (`pr_type_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pr_type`
--

INSERT INTO `pr_type` (`pr_type_no`, `description`, `short_name`) VALUES
(1, 'Works', 'W'),
(2, 'Goods', 'G'),
(3, 'a', 'aa');

-- --------------------------------------------------------

--
-- Table structure for table `rem_canceled_lv_tbl`
--

CREATE TABLE IF NOT EXISTS `rem_canceled_lv_tbl` (
  `Leave_ID` int(11) NOT NULL,
  `Emp_No` int(11) NOT NULL,
  `Remarks` varchar(255) NOT NULL,
  PRIMARY KEY (`Leave_ID`,`Emp_No`),
  KEY `Emp_No` (`Emp_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rem_lv_tbl`
--

CREATE TABLE IF NOT EXISTS `rem_lv_tbl` (
  `Leave_ID` int(11) NOT NULL,
  `Emp_No` int(11) NOT NULL,
  `Appr_Type` varchar(1) NOT NULL,
  `Remarks` varchar(255) NOT NULL,
  PRIMARY KEY (`Leave_ID`,`Emp_No`),
  KEY `Emp_No` (`Emp_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rem_lv_tbl`
--

INSERT INTO `rem_lv_tbl` (`Leave_ID`, `Emp_No`, `Appr_Type`, `Remarks`) VALUES
(30, 213, 'S', ''),
(32, 24, 'A', '');

-- --------------------------------------------------------

--
-- Table structure for table `shdl_task_tbl`
--

CREATE TABLE IF NOT EXISTS `shdl_task_tbl` (
  `sh_no` int(11) NOT NULL AUTO_INCREMENT,
  `sh_des` varchar(25) NOT NULL,
  `date_range` int(11) NOT NULL,
  PRIMARY KEY (`sh_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `shdl_task_tbl`
--

INSERT INTO `shdl_task_tbl` (`sh_no`, `sh_des`, `date_range`) VALUES
(1, 'Appoint TEC', 3),
(2, 'App.spec by TEC', 3),
(3, 'Procurement Method', 3),
(4, 'Preparation of Bid Docume', 3),
(5, 'Appl.Bid Documents by PC', 2),
(6, 'Invite Bids', 2),
(7, 'Clarifications/Pre-Bid Me', 10),
(8, 'Respond to Clariffica.', 3),
(9, 'Bid Received/ Bid Opening', 21),
(10, 'Tech.EVA', 14),
(11, 'PC/ Approval', 7),
(12, 'Con.Award', 2),
(13, 'Complete', 30);

-- --------------------------------------------------------

--
-- Table structure for table `slv_tbl`
--

CREATE TABLE IF NOT EXISTS `slv_tbl` (
  `Sleave_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Emp_No` int(11) NOT NULL,
  `L_date` date NOT NULL,
  `From_Time` time NOT NULL,
  `To_Time` time NOT NULL,
  `App_date` date NOT NULL,
  `Reason` varchar(100) NOT NULL,
  `Hod_Emp_No` int(11) NOT NULL,
  `Hod_Approved` varchar(2) NOT NULL,
  PRIMARY KEY (`Sleave_ID`),
  KEY `Emp_No` (`Emp_No`),
  KEY `Hod_Emp_No` (`Hod_Emp_No`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `slv_tbl`
--

INSERT INTO `slv_tbl` (`Sleave_ID`, `Emp_No`, `L_date`, `From_Time`, `To_Time`, `App_date`, `Reason`, `Hod_Emp_No`, `Hod_Approved`) VALUES
(4, 237, '2014-06-10', '12:30:00', '14:00:00', '2014-06-08', 'Blank Reason Test', 149, 'N'),
(5, 237, '2014-06-03', '09:30:00', '11:00:00', '2014-04-25', 'Personal ttttttt JJJJJJJJ', 149, 'N'),
(6, 149, '2015-03-13', '08:30:00', '09:00:00', '2015-03-13', 'Personal', 256, 'N'),
(7, 107, '2015-04-24', '08:30:00', '09:00:00', '2015-04-24', 'qdswfwqf', 70, 'N'),
(8, 107, '2015-04-23', '08:30:00', '09:00:00', '2015-04-24', 'rf4fgr3fgr', 70, 'N'),
(9, 107, '2015-04-22', '08:30:00', '09:00:00', '2015-04-24', '', 70, 'N'),
(10, 107, '2015-04-25', '08:30:00', '09:00:00', '2015-04-24', '', 70, 'N'),
(11, 107, '2015-04-27', '08:30:00', '09:00:00', '2015-04-24', 'wdfdwgdwdw', 70, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `usage_dtls_tbl`
--

CREATE TABLE IF NOT EXISTS `usage_dtls_tbl` (
  `usage_no` int(11) NOT NULL AUTO_INCREMENT,
  `usg_descrip` varchar(100) NOT NULL,
  `usage_nm` varchar(10) NOT NULL,
  PRIMARY KEY (`usage_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `usage_dtls_tbl`
--

INSERT INTO `usage_dtls_tbl` (`usage_no`, `usg_descrip`, `usage_nm`) VALUES
(1, 'Individual', 'Individual'),
(2, 'Project', 'Project');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attend_dts_tbl`
--
ALTER TABLE `attend_dts_tbl`
  ADD CONSTRAINT `attend_dts_tbl_ibfk_1` FOREIGN KEY (`DayTypeID`) REFERENCES `day_type_tbl` (`DayTypeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cancled_lv_tbl`
--
ALTER TABLE `cancled_lv_tbl`
  ADD CONSTRAINT `cancled_lv_tbl_ibfk_5` FOREIGN KEY (`Emp_No`) REFERENCES `emp_details_tbl` (`EmpNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cancled_lv_tbl_ibfk_6` FOREIGN KEY (`Leave_Type_ID`) REFERENCES `lv_type_tbl` (`Leave_Type_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cancled_lv_tbl_ibfk_7` FOREIGN KEY (`Act_Emp_No`) REFERENCES `emp_details_tbl` (`EmpNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cancled_lv_tbl_ibfk_8` FOREIGN KEY (`Hod_Emp_No`) REFERENCES `emp_details_tbl` (`EmpNo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `emp_details_tbl`
--
ALTER TABLE `emp_details_tbl`
  ADD CONSTRAINT `emp_details_tbl_ibfk_1` FOREIGN KEY (`DivisionCode`) REFERENCES `division_tbl` (`DivisionCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `emp_details_tbl_ibfk_2` FOREIGN KEY (`EmpTypeCode`) REFERENCES `emp_type_tbl` (`EmpTypeCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `emp_details_tbl_ibfk_3` FOREIGN KEY (`CategoryCode`) REFERENCES `category_tbl` (`CategoryCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `emp_details_tbl_ibfk_4` FOREIGN KEY (`DesigCode`) REFERENCES `designation_tbl` (`DesigCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `emp_details_tbl8888`
--
ALTER TABLE `emp_details_tbl8888`
  ADD CONSTRAINT `emp_details_tbl8888_ibfk_1` FOREIGN KEY (`DivisionCode`) REFERENCES `division_tbl` (`DivisionCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `emp_details_tbl8888_ibfk_2` FOREIGN KEY (`EmpTypeCode`) REFERENCES `emp_type_tbl` (`EmpTypeCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `emp_details_tbl8888_ibfk_3` FOREIGN KEY (`CategoryCode`) REFERENCES `category_tbl` (`CategoryCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `issues_tbl`
--
ALTER TABLE `issues_tbl`
  ADD CONSTRAINT `issues_tbl_ibfk_1` FOREIGN KEY (`AttDtId`) REFERENCES `attend_dts_tbl` (`AttDtId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `issues_tbl_ibfk_2` FOREIGN KEY (`EmpNo`) REFERENCES `emp_details_tbl` (`EmpNo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `login_tbl_leave`
--
ALTER TABLE `login_tbl_leave`
  ADD CONSTRAINT `login_tbl_leave_ibfk_1` FOREIGN KEY (`Emp_No`) REFERENCES `emp_details_tbl` (`EmpNo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lv_tbl`
--
ALTER TABLE `lv_tbl`
  ADD CONSTRAINT `lv_tbl_ibfk_10` FOREIGN KEY (`Leave_Type_ID`) REFERENCES `lv_type_tbl` (`Leave_Type_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `lv_tbl_ibfk_11` FOREIGN KEY (`Act_Emp_No`) REFERENCES `emp_details_tbl` (`EmpNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lv_tbl_ibfk_12` FOREIGN KEY (`Hod_Emp_No`) REFERENCES `emp_details_tbl` (`EmpNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lv_tbl_ibfk_9` FOREIGN KEY (`Emp_No`) REFERENCES `emp_details_tbl` (`EmpNo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `positions_tbl`
--
ALTER TABLE `positions_tbl`
  ADD CONSTRAINT `positions_tbl_ibfk_1` FOREIGN KEY (`EmpNo`) REFERENCES `emp_details_tbl` (`EmpNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `positions_tbl_ibfk_2` FOREIGN KEY (`DivisionCode`) REFERENCES `division_tbl` (`DivisionCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `positions_tbl_ibfk_3` FOREIGN KEY (`DesigCode`) REFERENCES `designation_tbl` (`DesigCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `positions_tbl_ibfk_4` FOREIGN KEY (`CategoryCode`) REFERENCES `category_tbl` (`CategoryCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rem_canceled_lv_tbl`
--
ALTER TABLE `rem_canceled_lv_tbl`
  ADD CONSTRAINT `rem_canceled_lv_tbl_ibfk_1` FOREIGN KEY (`Leave_ID`) REFERENCES `cancled_lv_tbl` (`Leave_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rem_canceled_lv_tbl_ibfk_2` FOREIGN KEY (`Emp_No`) REFERENCES `emp_details_tbl` (`EmpNo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rem_lv_tbl`
--
ALTER TABLE `rem_lv_tbl`
  ADD CONSTRAINT `rem_lv_tbl_ibfk_2` FOREIGN KEY (`Leave_ID`) REFERENCES `lv_tbl` (`Leave_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rem_lv_tbl_ibfk_3` FOREIGN KEY (`Emp_No`) REFERENCES `emp_details_tbl` (`EmpNo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `slv_tbl`
--
ALTER TABLE `slv_tbl`
  ADD CONSTRAINT `slv_tbl_ibfk_3` FOREIGN KEY (`Emp_No`) REFERENCES `emp_details_tbl` (`EmpNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `slv_tbl_ibfk_4` FOREIGN KEY (`Hod_Emp_No`) REFERENCES `emp_details_tbl` (`EmpNo`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
