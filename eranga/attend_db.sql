-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 21, 2014 at 06:06 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `attend_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `absent_tbl`
--

CREATE TABLE IF NOT EXISTS `absent_tbl` (
  `AttDtId` int(10) NOT NULL,
  `EmpNo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attend_dts_tbl`
--

CREATE TABLE IF NOT EXISTS `attend_dts_tbl` (
  `AttDtId` int(10) NOT NULL AUTO_INCREMENT,
  `AttDt` date NOT NULL,
  `ProsDt` date NOT NULL,
  PRIMARY KEY (`AttDtId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `attend_tbl`
--

CREATE TABLE IF NOT EXISTS `attend_tbl` (
  `AttDtId` int(10) NOT NULL,
  `EmpNo` int(10) NOT NULL,
  `InTime` time NOT NULL,
  `OutTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category_tbl`
--

CREATE TABLE IF NOT EXISTS `category_tbl` (
  `CategoryCode` int(3) NOT NULL AUTO_INCREMENT,
  `Category` varchar(100) NOT NULL,
  `InTime` time NOT NULL,
  `OutTime` time NOT NULL,
  `AdjustTime` int(2) NOT NULL,
  `LateTime` time NOT NULL,
  PRIMARY KEY (`CategoryCode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `category_tbl`
--

INSERT INTO `category_tbl` (`CategoryCode`, `Category`, `InTime`, `OutTime`, `AdjustTime`, `LateTime`) VALUES
(1, 'c1', '08:00:00', '16:00:00', 1, '01:00:00'),
(2, 'c2', '08:30:00', '16:30:00', 2, '02:00:00'),
(4, '  c3', '08:50:00', '16:50:00', 5, '03:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `designation_tbl`
--

CREATE TABLE IF NOT EXISTS `designation_tbl` (
  `DesigCode` int(5) NOT NULL AUTO_INCREMENT,
  `Designation` varchar(150) NOT NULL,
  PRIMARY KEY (`DesigCode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=120 ;

--
-- Dumping data for table `designation_tbl`
--

INSERT INTO `designation_tbl` (`DesigCode`, `Designation`) VALUES
(1, 'System Administrator'),
(2, 'Senior Professor'),
(3, 'Additional Director (Technical Operation)'),
(4, 'Additional Director (Planning  & Development)'),
(5, 'Additional Director (Space Technology)'),
(6, 'Additional Director (Adminstration & Finance)'),
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
(20, 'Senior Deputy Director Industrialization'),
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
(39, 'Assistant Director / Deputy Director Administration'),
(40, 'Assistant Director / Deputy Director Human Resources'),
(41, 'Assistant Director/ Deputy Director Media'),
(42, 'Assistant Dircetor / Deputy Director Industrial Relations'),
(43, 'Accountant '),
(44, 'Internal Auditor'),
(45, 'Librarian'),
(46, 'Administrative Office'),
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
(99, 'Office Aide - Grade I'),
(100, 'Plumber/Electrician'),
(101, 'Lab Attendent - Grade I'),
(102, 'Research Scientist - Grade III'),
(103, 'Principle Research Engineer'),
(104, 'Lab Attendent - Grade III'),
(105, 'Computer Application Asstant - Grade II'),
(106, 'Driver - Grade II'),
(107, 'Library Assistant - Grade I'),
(108, 'Driver - Grade III'),
(109, 'Management Assistant (Secretary) - Grade III'),
(110, 'Plumber/Electrician - Grade III'),
(111, 'Technical Officer - Grade II'),
(112, 'Receptionist / Telephone Operator '),
(113, 'Store Keeper - Grdae III'),
(115, 'Office Aide - Grade III'),
(116, 'Electronic Engineer - Grade II'),
(117, 'Technical Assistant - Grade III'),
(118, 'Software Engineer - Grade II'),
(119, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `division_tbl`
--

CREATE TABLE IF NOT EXISTS `division_tbl` (
  `DivisionCode` int(5) NOT NULL AUTO_INCREMENT,
  `Division` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`DivisionCode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `division_tbl`
--

INSERT INTO `division_tbl` (`DivisionCode`, `Division`) VALUES
(1, 'Chairman Division'),
(2, 'Director Division'),
(3, 'Admin Division'),
(4, 'Finance Division'),
(5, 'Communication Division'),
(6, 'Electronic Division'),
(7, 'Space Application Division'),
(8, 'Industrial Service Division'),
(9, 'Information Technology Division'),
(10, 'Library'),
(50, 'Administration-HR'),
(51, 'Administration-Purchasing'),
(52, 'Administration-Finance'),
(53, 'Media Division'),
(54, 'Manager,Industry Relation Division'),
(55, 'Internal Auditor Division '),
(56, 'Lab Store'),
(57, 'Administrator'),
(100, 'System Administration');

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
  UNIQUE KEY `EmpNo` (`EmpNo`),
  KEY `DivisionCode` (`DivisionCode`),
  KEY `DesigCode` (`DesigCode`),
  KEY `EmpTypeCode` (`EmpTypeCode`),
  KEY `CategoryCode` (`CategoryCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emp_details_tbl`
--

INSERT INTO `emp_details_tbl` (`EmpNo`, `Title`, `Fullname`, `NICNum`, `DOB`, `Gender`, `Email`, `MobileNo`, `DateofAppoinment`, `DivisionCode`, `DesigCode`, `EmpTypeCode`, `CategoryCode`, `RetirementDT`) VALUES
(1, 'Adm.', 'System Administrator', NULL, NULL, NULL, NULL, '', NULL, 100, 1, 0, 0, NULL),
(2, 'Mrs', 'Eranga', '1234567891', '0000-00-00', 'Female', 'bla@accmt.ac.lk', '0711234578', '2087-05-14', NULL, NULL, NULL, NULL, NULL),
(5, 'Mrs', 'P. D. C.  Janashanthi', '616810847V', '0000-00-00', 'Male', 'champika@accmt.ac.lk', '0711234567', '1987-04-01', 8, 58, 1, 1, '0000-00-00'),
(6, 'bla', 'bbbbcccdddeee', '47545', '2096-03-04', 'Female', 'hghjg', 'nnjg', '2084-01-15', 55, 17, 1, 2, '2084-12-18'),
(7, 'Mr', 'N. B.  Michale', '', '0000-00-00', 'Male', '', '', '0000-00-00', 10, 99, 0, 0, NULL),
(8, 'Mr', 'P. Thilakasiri', '', '0000-00-00', 'Male', '', '', '0000-00-00', 50, 76, 0, 0, NULL),
(10, 'Mrs', 'Nuwani', '89264678v', '0000-00-00', 'Female', 'dhjka@gmail.com', '23168', '2086-03-16', 100, 1, 1, 1, NULL),
(24, 'Mr', 'S.N. Pasqual', '', '0000-00-00', 'Male', '', '', '0000-00-00', 56, 101, 0, 0, NULL),
(36, 'Mrs', 'D. R. D. De Silva', '', '0000-00-00', 'Female', 'dilkusha@accmt.ac.lk', '', '0000-00-00', 3, 51, 0, 0, NULL),
(53, 'Mrs', 'W. B. A. Weerawarnasuriya', '548330696V', '0000-00-00', 'Female', '', '', '0000-00-00', 50, 48, 0, 0, NULL),
(59, 'Mrs.', 'G. H. C. Jayarani', '', '0000-00-00', 'Female', '', '', '0000-00-00', 50, 40, 0, 0, NULL),
(65, 'Mr', 'J. A. K.  Jayakody', '', '0000-00-00', 'Male', 'jayakodi@accmt.ac.lk', '', '0000-00-00', 51, 46, 0, 0, NULL),
(67, 'Mr', 'H. M. Sunil', '670262715V', '0000-00-00', 'Male', '', '', '0000-00-00', 8, 99, 0, 0, NULL),
(68, 'Mr', 'N, D. N. K. Alvis', '', '0000-00-00', 'Male', '', '', '0000-00-00', 6, 101, 0, 0, NULL),
(70, 'Mrs', 'K  Ediriweera', '', '0000-00-00', 'Female', 'kamani@accmt.ac.lk', '', '0000-00-00', 6, 3, 0, 0, NULL),
(75, 'Mrs', 'M. A. D. C. Medagama', '627040091V', '0000-00-00', 'Female', 'dumudu@accmt.ac.lk', '', '0000-00-00', 4, 43, 0, 0, NULL),
(93, 'Mr', 'R. A. S. S Gunasekara ', '663530500V', '0000-00-00', 'Male', 'saraj@accmt.ac.lk', '', '1995-10-15', 7, 26, 0, 0, NULL),
(100, 'Mrs', 'H. C, Weerasekara', '', '0000-00-00', 'Female', 'chandrika@accmt.ac.lk', '', '0000-00-00', 2, 51, 0, 0, NULL),
(107, 'Mrs.', 'L. R. N. Somathilake', '686710114V', '0000-00-00', 'Female', 'rasika@accmt.ac.lk', '', '1996-07-16', 9, 27, 0, 0, NULL),
(108, 'Mrs', 'T. M. S. S.  P.  Cooray', '628442754V', '0000-00-00', 'Female', 'stella@accmt.ac.lk', '', '0000-00-00', 51, 98, 0, 0, NULL),
(112, 'Mr', 'B. A. Jayasinghe', '721062406V', '0000-00-00', 'Male', '', '', '0000-00-00', 9, 25, 0, 0, NULL),
(116, 'Mr', 'T. C.  Peiris', '703611842V', '0000-00-00', 'Male', '', '', '1997-08-01', 7, 102, 0, 0, NULL),
(120, 'Mr', 'J. K.  Jayawardena', '710710813V', '0000-00-00', 'Male', 'kavindra@accmt.ac.lk', '', '1997-11-01', 5, 103, 0, 0, NULL),
(125, 'Mr', 'C. K. Wijayawardena', '692983017V', '0000-00-00', 'Male', '', '', '0000-00-00', 3, 41, 0, 0, NULL),
(126, 'Mr.', 'V. N. Silva', '', '0000-00-00', 'Male', '', '', '0000-00-00', 5, 104, 0, 0, NULL),
(127, 'Mr', 'G. K. S. Perera', '792152597V', '0000-00-00', 'Male', '', '', '0000-00-00', 5, 104, 0, 0, NULL),
(128, 'Mr', 'E. B. D. P.  Jayadewa', '641312746V', '0000-00-00', 'Male', '', '', '0000-00-00', 5, 95, 0, 0, NULL),
(130, 'Mr', 'S. A. A.  Siriwardhana', '710631670V', '0000-00-00', 'Male', '', '', '0000-00-00', 3, 95, 0, 0, NULL),
(132, 'Mr', 'S. P.  Athuluwage', '721680207V', '0000-00-00', 'Male', '', '', '0000-00-00', 9, 105, 0, 0, NULL),
(138, 'Ms', 'P. M. K. A. Bandara', '778353032V', '0000-00-00', 'Female', '', '', '0000-00-00', 10, 107, 0, 0, NULL),
(139, 'Mr', 'N I  Medagangoda', '701972350V', '0000-00-00', 'Female', 'indika@accmt.ac.lk', '', '2000-06-28', 7, 32, 2, 2, NULL),
(142, 'Mrs', 'N. M.  Kandamby', '745380867V', '0000-00-00', 'Female', 'nadeeka@accmt.ac.lk', '', '0000-00-00', 5, 98, 0, 0, NULL),
(143, 'Mrs.', 'N P Ketipearachchi', '695731400 ', '1969-03-13', 'Female', 'nilmini@accmt.ac.lk', '', '0000-00-00', 50, 98, 0, 0, NULL),
(146, 'Mrs', 'R. M. L. N.  Rathnayake', '727150153V', '0000-00-00', 'Female', '', '', '2000-05-08', 6, 23, 0, 0, NULL),
(147, 'Mrs', 'M. L. A. N.  Pushparani', '695972466V', '0000-00-00', 'Female', '', '', '0000-00-00', 4, 50, 0, 0, NULL),
(149, 'Mrs', 'J. P. D. S Athuraliya', '686920291V', '0000-00-00', 'Female', '', '', '2000-06-20', 6, 8, 0, 0, NULL),
(161, 'Mr', 'P.P.K. Rodrigo', '683130974V', '0000-00-00', 'Male', '', '', '0000-00-00', 3, 106, 0, 0, NULL),
(162, 'Mr', 'P. K. P. Anuruddha', '751420510V', '0000-00-00', 'Male', '', '', '0000-00-00', 8, 95, 0, 0, NULL),
(168, 'Mr', 'P. D. S.  Pushpakumara', '753232184V', '0000-00-00', 'Male', '', '', '2002-01-15', 5, 102, 0, 0, NULL),
(169, 'Mr', 'D. N.  De Silva', '7521828332', '0000-00-00', 'Male', '', '', '0000-00-00', 5, 95, 0, 0, NULL),
(180, 'Mr', 'S. A.  Welikala', '', '0000-00-00', 'Male', 'shiran@accmt.ac.lk', '', '0000-00-00', 54, 20, 0, 0, NULL),
(188, 'Mr', 'M. A. K.  Dharmalal', '640822228V', '0000-00-00', 'Male', '', '', '0000-00-00', 3, 108, 0, 0, NULL),
(190, 'Mr', 'R. P.  Dasanayaka', '701130839V', '0000-00-00', 'Male', '', '', '2005-12-01', 9, 38, 0, 0, NULL),
(191, 'Mr', 'J Adassuriya', '751502176V', '0000-00-00', 'Male', 'adassuriya@accmt.ac.lk', '', '2004-11-01', 7, 80, 0, 0, NULL),
(192, 'Mr', 'S.P.K.K.A Liyanage', '620283797V', '0000-00-00', 'Male', 'preethi@accmt.ac.lk', '', '0000-00-00', 10, 45, 0, 0, NULL),
(193, 'Mrs', 'V. K. Aluthge', '67641143V', '0000-00-00', 'Female', '', '', '0000-00-00', 1, 51, 0, 0, NULL),
(199, 'Mr', 'S. R. S. Rupasinghe', '850224056V', '0000-00-00', 'Male', 'sudarshana@accmt.ac.lk', '', '0000-00-00', 3, 109, 0, 0, NULL),
(200, 'Mr', 'P. L. S.  Kumara', '760420840V', '0000-00-00', 'Male', '', '', '0000-00-00', 3, 110, 0, 0, NULL),
(202, 'Mr', 'K. A. K.  Gunasekara', '640220031V', '0000-00-00', 'Male', '', '', '0000-00-00', 8, 111, 0, 0, NULL),
(207, 'Mr', 'J. R. T. N. Jayakody', '810561505V', '0000-00-00', 'Male', '', '', '0000-00-00', 6, 111, 0, 0, NULL),
(209, 'Mr', 'W. C. B.  De Silva', '740480413V', '0000-00-00', 'Male', 'chamika@accmt.ac.lk', '', '0000-00-00', 50, 112, 0, 0, NULL),
(212, 'Mr', 'E. P. P Fernando', '691632466V', '0000-00-00', 'Male', '', '', '0000-00-00', 56, 113, 0, 0, NULL),
(213, 'Mr', 'W. A. P.  Silva', '', '0000-00-00', 'Male', 'panduka@accmt.ac.lk', '', '0000-00-00', 3, 6, 0, 0, NULL),
(215, 'Mr', 'J. S. B.  Rathnayake', '740132490V', '0000-00-00', 'Male', 'janaka @accmt.ac.lk', '', '0000-00-00', 55, 44, 0, 0, NULL),
(216, 'Mr', 'N. K. L. T. M. S.  Dias', '712410337V', '0000-00-00', 'Male', 'tmsdias@yahoo.com', '', '0000-00-00', 6, 111, 0, 0, NULL),
(217, 'Eng', 'P. S. Panawennage', '', '0000-00-00', 'Male', '', '', '0000-00-00', 2, 74, 0, 0, NULL),
(218, 'Mr', 'N. K. J. K.  De Silva', '853001759V', '0000-00-00', 'Male', '', '', '0000-00-00', 3, 115, 0, 0, NULL),
(225, 'Mr', 'R. A. C. A. K.  Ranawaka', '770573564V', '0000-00-00', 'Male', '', '', '0000-00-00', 5, 111, 0, 0, NULL),
(226, 'Mr', 'J. S.  Koruwage', '801340040V', '0000-00-00', 'Male', '', '', '0000-00-00', 6, 111, 0, 0, NULL),
(236, 'Mr', 'N. T. M.  Sajith', '851430342V', '0000-00-00', 'Male', '', '', '2011-12-01', 5, 78, 0, 0, NULL),
(237, 'Ms', 'T. V.  Jayasinghe Arachchi', '855990091V', '0000-00-00', 'Female', '', '', '2011-12-01', 6, 78, 0, 0, NULL),
(238, 'Mr', 'C. M.  Karunarathna', '862360273V', '0000-00-00', 'Male', '', '', '2011-12-01', 6, 78, 0, 0, NULL),
(239, 'Ms.', 'M. L. Karunarathne', '', '0000-00-00', 'Female', '', '', '0000-00-00', 9, 77, 0, 0, NULL),
(244, '', 'A. R. M. Rila', '', '0000-00-00', 'female', '', '', '0000-00-00', 7, 80, 0, 0, NULL),
(246, 'Mr', 'W. R. S. C.  Ranathunga', '872660259V', '0000-00-00', 'Male', '', '', '0000-00-00', 5, 78, 0, 0, NULL),
(249, 'Mr', 'U.D Niriella.', '682858779V', '0000-00-00', 'Male', '', '', '0000-00-00', 8, 78, 0, 0, NULL),
(250, 'Ms', 'K.G. Lakmali', '', '0000-00-00', 'Female', '', '', '0000-00-00', 6, 78, 0, 0, NULL),
(251, 'Mr', 'W. R. W. M. Y. S. B. Bulumulla', '', '0000-00-00', 'Female', '', '', '0000-00-00', 9, 78, 0, 0, NULL),
(252, 'Mr', 'L. H.  Malindu Tilan', '', '0000-00-00', 'Male', '', '', '0000-00-00', 4, 109, 0, 0, NULL),
(253, 'Ms', 'W. A. K. Madumali', '', '0000-00-00', 'Female', 'Kaushalya@accmt.ac.lk', '', '0000-00-00', 5, 109, 0, 0, NULL),
(254, 'Mr', 'C. R. Ranasinghe', '', '0000-00-00', 'Male', '', '', '0000-00-00', 6, 78, 0, 0, NULL),
(255, 'Ms', 'N. A. A. Nadeesha Dilrukshi', '', '0000-00-00', 'Female', '', '', '0000-00-00', 6, 78, 0, 0, NULL),
(256, 'Ms', 'Vijayasothy V', '', '0000-00-00', 'Female', '', '', '0000-00-00', 6, 78, 0, 0, NULL),
(257, 'Mr.', 'R. A. Gamini', '', '0000-00-00', 'Male', '', '', '0000-00-00', 8, 52, 0, 0, NULL),
(258, 'Mr', 'S. R. J. S. Bandara', '', '0000-00-00', 'Male', '', '', '0000-00-00', 3, 109, 0, 0, NULL),
(259, 'Mrs ', 'K. C. I. Silva', '', '0000-00-00', 'Female', '', '', '0000-00-00', 4, 109, 0, 0, NULL),
(260, 'Ms.', 'H. D. N. Fernando', '', '0000-00-00', 'Female', '', '', '0000-00-00', 3, 109, 0, 0, NULL),
(261, 'Ms.', 'P. D. T. De Silva', '', '0000-00-00', 'Female', '', '', '0000-00-00', 3, 109, 0, 0, NULL),
(262, 'Ms.', 'K. T. C. K. Alwis', '', '0000-00-00', 'Female', '', '', '0000-00-00', 3, 109, 0, 0, NULL),
(263, 'Ms.', 'M.. B. A. M. Dissanayake', '', '0000-00-00', 'Female', '', '', '0000-00-00', 3, 109, 0, 0, NULL),
(264, 'Mr.', 'P. Buddhika Warnakula', '', '0000-00-00', 'Male', '', '', '0000-00-00', 3, 108, 0, 0, NULL),
(265, 'Mr.', 'P. Chandima Ramanayake', '', '0000-00-00', 'Male', '', '', '0000-00-00', 3, 115, 0, 0, NULL),
(266, 'Mr.', 'G. M. Rodrigo', '', '0000-00-00', 'Male', '', '', '0000-00-00', 3, 115, 0, 0, NULL),
(267, 'Mr.', 'Saman Keerthi ', '', '0000-00-00', 'Male', '', '', '0000-00-00', 2, 21, 0, 0, NULL),
(268, 'Ms.', 'K. A. Sumudu L. Perera', '', '0000-00-00', 'Female', '', '', '0000-00-00', 3, 109, 0, 0, NULL),
(269, 'Mr.', 'K. D. S. Awantha', '', '0000-00-00', 'Male', '', '', '0000-00-00', 4, 115, 0, 0, NULL),
(270, 'Mr. ', 'U. A. D Upul Priyashantha', '', '0000-00-00', 'Male', '', '', '0000-00-00', 3, 108, 0, 0, NULL),
(271, 'Miss.', 'V. K. O. N. Thalpawila', '', '0000-00-00', 'Female', '', '', '0000-00-00', 3, 78, 0, 0, NULL),
(272, 'Mr.', 'J. P. Rajitha Prasanna', '', '0000-00-00', 'Male', '', '', '0000-00-00', 5, 78, 0, 0, NULL),
(273, 'Mr.', 'Lavanan Vengadasalam', '', '0000-00-00', 'Male', '', '', '0000-00-00', 7, 78, 0, 0, NULL),
(274, 'Mr.', 'B. S. Marasinghe', '', '0000-00-00', 'Male', '', '', '0000-00-00', 7, 80, 0, 0, NULL),
(275, 'Ms.', 'M. H. C. Kumarasinghe', '', '0000-00-00', 'Female', '', '', '0000-00-00', 7, 80, 0, 0, NULL),
(276, 'Mr.', 'K. S. Roshan', '', '0000-00-00', 'Male', '', '', '0000-00-00', 8, 117, 0, 0, NULL),
(277, 'Mr.', 'M. P. R. Perera', '', '0000-00-00', 'Male', '', '', '0000-00-00', 54, 42, 0, 0, NULL),
(278, 'Mr.', 'M.B. Thilakarathne', '', '0000-00-00', 'Male', '', '', '0000-00-00', 5, 78, 0, 0, NULL),
(279, 'Ms.', 'L. A. C. P. Ranasinghe', '', '0000-00-00', 'Female', '', '', '0000-00-00', 9, 118, 0, 0, NULL),
(280, 'Ms.', 'S. D. Shiromi Lakmali ', '', '0000-00-00', 'Female', '', '', '0000-00-00', 9, 118, 0, 0, NULL),
(281, 'Ms.', 'R. M. T. M. Danapala', '', '0000-00-00', 'Female', '', '', '0000-00-00', 8, 78, 0, 0, NULL),
(282, 'Mr.', 'R. A. D. K. Sampath', '', '0000-00-00', 'Male', '', '', '0000-00-00', 5, 116, 0, 0, NULL),
(2222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emp_lv_tbl`
--

CREATE TABLE IF NOT EXISTS `emp_lv_tbl` (
  `Leave_ID` int(15) NOT NULL AUTO_INCREMENT,
  `Emp_No` int(10) NOT NULL,
  `Leave_Type_ID` int(1) NOT NULL,
  `From_Date` date NOT NULL,
  `To_Date` date NOT NULL,
  `No_of_Days` double(4,1) NOT NULL,
  PRIMARY KEY (`Leave_ID`),
  KEY `Emp_No` (`Emp_No`),
  KEY `Leave_Type_ID` (`Leave_Type_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `emp_slv_tbl`
--

CREATE TABLE IF NOT EXISTS `emp_slv_tbl` (
  `Sleave_ID` int(20) NOT NULL AUTO_INCREMENT,
  `Emp_No` int(10) NOT NULL,
  `L_date` date NOT NULL,
  `From_Time` time NOT NULL,
  `To_Time` time NOT NULL,
  PRIMARY KEY (`Sleave_ID`),
  KEY `Emp_No` (`Emp_No`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `emp_slv_tbl`
--

INSERT INTO `emp_slv_tbl` (`Sleave_ID`, `Emp_No`, `L_date`, `From_Time`, `To_Time`) VALUES
(4, 237, '2014-06-10', '12:30:00', '14:00:00'),
(5, 237, '2014-06-03', '09:30:00', '11:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `emp_type_tbl`
--

CREATE TABLE IF NOT EXISTS `emp_type_tbl` (
  `EmpTypeCode` int(2) NOT NULL AUTO_INCREMENT,
  `EmpType` varchar(50) NOT NULL,
  PRIMARY KEY (`EmpTypeCode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `emp_type_tbl`
--

INSERT INTO `emp_type_tbl` (`EmpTypeCode`, `EmpType`) VALUES
(1, 'e1'),
(2, 'e2');

-- --------------------------------------------------------

--
-- Table structure for table `ent_lv_tbl`
--

CREATE TABLE IF NOT EXISTS `ent_lv_tbl` (
  `Emp_No` int(10) NOT NULL,
  `Year` year(4) NOT NULL,
  `Medical` int(2) NOT NULL,
  `Vacation` int(2) NOT NULL,
  `Casual` int(2) NOT NULL,
  `Lapse` int(2) NOT NULL,
  KEY `Emp_No` (`Emp_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ent_lv_tbl`
--

INSERT INTO `ent_lv_tbl` (`Emp_No`, `Year`, `Medical`, `Vacation`, `Casual`, `Lapse`) VALUES
(264, 2014, 21, 14, 7, 0),
(237, 2014, 21, 14, 7, 0),
(237, 2013, 21, 14, 7, 0),
(264, 2013, 21, 14, 7, 0),
(149, 2014, 10, 10, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `issues_tbl`
--

CREATE TABLE IF NOT EXISTS `issues_tbl` (
  `AttDtId` int(10) NOT NULL,
  `EmpNo` int(10) NOT NULL,
  `Desc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_tbl`
--

CREATE TABLE IF NOT EXISTS `login_tbl` (
  `User_Name` varchar(20) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `Type` varchar(1) NOT NULL,
  PRIMARY KEY (`User_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_tbl`
--

INSERT INTO `login_tbl` (`User_Name`, `Password`, `Type`) VALUES
('A', '0cc175b9c0f1b6a831c399e269772661', 'A'),
('aj', '3b6f421e7550395e28e091c5565ac80a', 'A'),
('AJN', '8c4e7559771ce17d8888318ca4edd4d6', 'A'),
('Arjuna', 'd41d8cd98f00b204e9800998ecf8427e', 'V'),
('E', 'e1671797c52e15f763380b45e841ec32', 'E'),
('Heshan', '0cc175b9c0f1b6a831c399e269772661', 'A'),
('v', '9e3669d19b675bd57058fd4664205d2a', 'V');

-- --------------------------------------------------------

--
-- Table structure for table `lv_type_tbl`
--

CREATE TABLE IF NOT EXISTS `lv_type_tbl` (
  `Leave_Type_ID` int(1) NOT NULL,
  `Leave_Type` varchar(50) NOT NULL,
  PRIMARY KEY (`Leave_Type_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lv_type_tbl`
--

INSERT INTO `lv_type_tbl` (`Leave_Type_ID`, `Leave_Type`) VALUES
(1, 'Medical'),
(2, 'Vacation'),
(3, 'Casual'),
(4, 'Lapse'),
(5, 'Duty'),
(6, 'No Pay');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
