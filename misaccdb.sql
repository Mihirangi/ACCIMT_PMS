-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2017 at 03:28 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `misaccdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `com_division`
--

CREATE TABLE `com_division` (
  `div_id` int(5) NOT NULL,
  `Mdiv_code` varchar(10) NOT NULL,
  `Tdiv_code` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_division`
--

INSERT INTO `com_division` (`div_id`, `Mdiv_code`, `Tdiv_code`) VALUES
(1, '2', '27'),
(2, '3', '27'),
(3, '4', '27'),
(4, '3', '27'),
(5, '4', '27'),
(6, '5', '27'),
(7, '1', '27'),
(8, '5', '27'),
(9, '9', '27'),
(10, '1', '27'),
(11, '5', '27'),
(12, '9', '27'),
(13, '19', '27'),
(14, '19', '27'),
(15, '1', '27'),
(16, '2', '27'),
(17, '2', '27'),
(18, '7', '27'),
(19, '8', '27'),
(20, '9', '27');

-- --------------------------------------------------------

--
-- Table structure for table `deny_projects`
--

CREATE TABLE `deny_projects` (
  `id` int(11) NOT NULL,
  `p_code` varchar(20) NOT NULL,
  `reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `designation_tbl`
--

CREATE TABLE `designation_tbl` (
  `DesigCode` int(5) NOT NULL,
  `Designation` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `division_tbl` (
  `DivisionCode` int(5) NOT NULL,
  `Division` varchar(150) DEFAULT NULL,
  `sh_code` varchar(5) NOT NULL,
  `category` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `division_tbl`
--

INSERT INTO `division_tbl` (`DivisionCode`, `Division`, `sh_code`, `category`) VALUES
(1, 'Chairman\'s Division', 'CHD', ''),
(2, 'Director Division', 'DIR', ''),
(3, 'Admin Division', 'ADM', ''),
(4, 'Finance Division', 'FIN', ''),
(5, 'Communication Division', 'COM', ''),
(6, 'Electronic Division', 'ELE', ''),
(7, 'Space Technology ', 'STD', ''),
(8, 'Industrial Services Division', 'ISD', ''),
(9, 'Information Technology Division', 'ITD', ''),
(10, 'Administration-HR', 'ADH', ''),
(11, 'Space Applications Division', 'STA', ''),
(13, 'Media Division', 'MED', ''),
(14, 'Technology Transfer Division', 'TTD', ''),
(15, 'Internal Auditor Division ', 'IAD', ''),
(16, 'Astronomy Division', 'AST', ''),
(19, 'Library ', 'LIB ', '');

-- --------------------------------------------------------

--
-- Table structure for table `emp_details_tbl`
--

CREATE TABLE `emp_details_tbl` (
  `EmpNo` int(10) NOT NULL,
  `tec_member` varchar(10) NOT NULL,
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
  `RetirementDT` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emp_details_tbl`
--

INSERT INTO `emp_details_tbl` (`EmpNo`, `tec_member`, `Title`, `Fullname`, `NICNum`, `DOB`, `Gender`, `Email`, `MobileNo`, `DateofAppoinment`, `DivisionCode`, `DesigCode`, `EmpTypeCode`, `CategoryCode`, `RetirementDT`) VALUES
(1, 'y', 'Adm.', 'System Administrator', '', '0000-00-00', 'Female', '', '', '0000-00-00', 100, 1, 0, 0, '1976-12-01'),
(5, 'n', 'Mrs', 'P. D. C.  Janashanthi', '616810847V', '1961-06-29', 'Female', '', '', '1987-04-01', 8, 14, 2, 1, '2021-06-28'),
(7, 'n', 'Mr', 'N. B.  Michael', '573031970V', '1957-10-29', 'Male', '', '', '1985-02-18', 19, 99, 2, 3, '2017-10-28'),
(8, 'y', 'Mr', 'P. Thilakasiri', '590053660V', '1959-01-05', 'Male', '', '', '1987-01-01', 3, 76, 2, 3, '2019-01-04'),
(24, 'n', 'Mr', 'S.N. Pasqual', '670330325V', '1967-02-02', 'Male', '', '', '1987-03-16', 16, 101, 2, 3, '2027-02-01'),
(36, '', 'Mrs', 'D. R. D. De Silva', '596380522V', '1959-05-17', 'Female', 'dilkusha@accmt.ac.lk', '', '1988-05-10', 3, 51, 2, 1, '2019-05-16'),
(45, '', 'Mr.', 'M.P.L. Chandrasiri', '601271303V', '1960-05-06', 'Male', '', '', '1980-01-01', 51, 97, 2, 2, '2014-02-28'),
(53, '', 'Mrs', 'W. B. A. Weerawarnasuriya', '548330696V', '1954-11-28', 'Female', '', '', '1991-02-21', 50, 48, 2, 1, '2014-11-27'),
(59, '', 'Mrs.', 'G. H. C. Jayarani', '675020450V', '1967-03-03', 'Female', '', '', '1991-11-06', 10, 1000, 2, 1, '2027-03-02'),
(65, '', 'Mr', 'J. A. K.  Jayakody', '670981037V', '1967-04-07', 'Male', 'jayakodi@accmt.ac.lk', '', '1991-11-18', 11, 46, 2, 1, '2027-04-06'),
(67, '', 'Mr', 'H. M. Sunil', '670262715V', '1967-01-26', 'Male', '', '', '1991-12-05', 14, 99, 2, 3, '2027-01-25'),
(68, '', 'Mr', 'N, D. N. Kumara', '672380588V', '1967-08-25', 'Male', '', '', '1991-12-05', 6, 101, 2, 3, '2027-08-24'),
(70, '', 'Mrs', 'K  Ediriweera', '656531568V', '1965-06-01', 'Female', 'kamani@accmt.ac.lk', '', '1996-04-01', 2, 3, 2, 1, '2025-05-31'),
(75, '', 'Mrs', 'M. A. D. C. Medagama', '627040091V', '1962-07-22', 'Female', 'dumudu@accmt.ac.lk', '', '1993-04-15', 4, 43, 2, 1, '2022-07-21'),
(93, '', 'Mr', 'R. A. S. S Gunasekara ', '663530500V', '1966-12-18', 'Male', 'saraj@accmt.ac.lk', '', '1995-10-15', 16, 26, 2, 1, '2026-12-17'),
(100, '', 'Mrs', 'H. C, Weerasekara', '655841725V', '1965-03-24', 'Female', 'chandrika@accmt.ac.lk', '', '1996-04-08', 2, 51, 2, 1, '2025-03-23'),
(107, '', 'Mrs', 'L. R. N. Somathilake', '686710114V', '1968-06-19', 'Female', 'rasika@accmt.ac.lk', '', '1996-07-16', 9, 27, 2, 1, '2028-06-18'),
(108, '', 'Mrs', 'T. M. S. S.  P.  Cooray', '628442754V', '1962-12-09', 'Female', 'stella@accmt.ac.lk', '', '1996-08-01', 11, 98, 2, 2, '2022-12-08'),
(112, '', 'Mr', 'B. A. Jayasinghe', '721062406V', '1972-04-15', 'Male', '', '', '1997-04-01', 9, 25, 2, 1, '2032-04-14'),
(116, '', 'Mr', 'T. C.  Peiris', '703611842V', '1970-12-26', 'Male', '', '', '1997-08-01', 16, 102, 2, 1, '2030-12-25'),
(120, '', 'Mr', 'J. K.  Jayawardena', '710710813V', '1971-03-11', 'Male', 'kavindra@accmt.ac.lk', '', '1998-01-26', 5, 103, 2, 1, '2031-03-10'),
(125, '', 'Mr', 'C. K. Wijayawardena', '692983017V', '1969-10-24', 'Male', '', '', '1998-07-20', 3, 41, 2, 1, '2029-10-23'),
(126, '', 'Mr.', 'D.V. N. Silva', '752611491V', '1975-09-17', 'Male', '', '', '1998-12-17', 5, 104, 2, 3, '2035-09-16'),
(127, '', 'Mr', 'G. K. S. Perera', '792152597V', '1979-08-02', 'Male', '', '', '1998-08-14', 5, 104, 2, 3, '2039-08-01'),
(128, '', 'Mr', 'E. B. D. P.  Jayadewa', '641312746V', '1964-05-10', 'Male', '', '', '1998-08-10', 5, 49, 2, 1, '2024-05-09'),
(130, '', 'Mr', 'S. A. A.  Siriwardhana', '710631670V', '1971-03-03', 'Male', '', '', '1998-08-17', 3, 49, 2, 1, '2031-03-02'),
(132, '', 'Mr', 'S. P.  Athuluwage', '721680207V', '1972-06-16', 'Male', '', '', '1999-12-10', 9, 105, 2, 2, '2032-06-15'),
(138, '', 'Ms', 'P. M. K. A. Bandara', '778353032V', '1977-11-30', 'Male', '', '', '2001-12-18', 9, 105, 2, 2, '2037-11-29'),
(139, '', 'Mr', 'N I  Medagangoda', '701972350V', '1970-07-15', 'Female', 'indika@accmt.ac.lk', '', '2000-06-28', 16, 32, 2, 1, '2030-07-14'),
(142, '', 'Mrs', 'N. M.  Kandamby', '745380867V', '1974-02-07', 'Female', 'nadeeka@accmt.ac.lk', '', '1999-11-24', 5, 98, 2, 2, '2034-02-06'),
(143, '', 'Mrs.', 'N P Ketipearachchi', '695731400 ', '1969-03-13', 'Female', 'nilmini@accmt.ac.lk', '', '1999-10-01', 10, 98, 2, 2, '2029-03-12'),
(146, '', 'Mrs', 'R. M. L. N.  Rathnayake', '727150153V', '1972-08-02', 'Female', '', '', '2000-05-08', 6, 23, 2, 1, '2032-08-01'),
(147, '', 'Mrs', 'M. L. A. N.  Pushparani', '695972466V', '1969-04-06', 'Female', '', '', '2000-06-20', 4, 50, 2, 1, '2029-04-05'),
(149, '', 'Mrs', 'J. P. D. S Athuraliya', '686920291V', '1969-07-10', 'Female', '', '', '2000-06-20', 6, 8, 2, 1, '2029-07-09'),
(161, '', 'Mr', 'P.P.K. Rodrigo', '683130974V', '1968-11-08', 'Male', '', '', '2001-04-02', 3, 106, 2, 3, '2028-11-07'),
(162, '', 'Mr', 'P. K. P. Anuruddha', '751420510V', '1975-05-21', 'Male', '', '', '2001-07-09', 8, 49, 2, 1, '2035-07-20'),
(168, '', 'Mr', 'P. D. S.  Pushpakumara', '753232184V', '1975-11-18', 'Male', '', '', '2002-01-15', 5, 102, 2, 1, '2035-11-17'),
(169, '', 'Mr', 'G. D. N.  De Silva', '7521828332', '1975-08-05', 'Male', '', '', '2002-01-15', 5, 49, 2, 1, '2035-08-04'),
(180, '', 'Mr', 'S. A.  Welikala', '703371426V', '1970-12-02', 'Male', 'shiran@accmt.ac.lk', '', '2003-09-01', 14, 20, 2, 1, '2030-12-01'),
(188, '', 'Mr', 'M. A. K.  Dharmalal', '640822228V', '1964-03-01', 'Male', '', '', '0000-00-00', 3, 108, 2, 3, '2024-02-29'),
(190, '', 'Mr', 'R. P.  Dasanayaka', '701130839V', '1970-04-22', 'Male', '', '', '2004-08-02', 9, 38, 2, 1, '2030-04-21'),
(191, '', 'Mr', 'J Adassuriya', '751502176V', '1975-05-29', 'Male', 'adassuriya@accmt.ac.lk', '', '2004-11-01', 16, 80, 2, 1, '2035-05-28'),
(192, '', 'Mr', 'S.P.K.K.A Liyanage', '620283797V', '1962-01-28', 'Male', 'preethi@accmt.ac.lk', '', '2006-04-01', 19, 45, 2, 1, '2022-01-27'),
(193, '', 'Mrs', 'V. K. Aluthge', '67641143V', '1967-05-20', 'Female', '', '', '2006-03-01', 1, 51, 2, 1, '0000-00-00'),
(199, '', 'Mr', 'S. R. S. Rupasinghe', '850224056V', '1985-01-22', 'Male', 'sudarshana@accmt.ac.lk', '', '2005-08-29', 3, 1001, 2, 2, '2045-01-21'),
(200, '', 'Mr', 'P. L. S.  Kumara', '760420840V', '1976-02-11', 'Male', '', '', '2006-04-30', 3, 110, 2, 3, '2036-02-10'),
(202, '', 'Mr', 'K. A. K.  Gunasekara', '640220031V', '1964-01-22', 'Male', '', '', '2005-09-11', 8, 111, 2, 2, '2024-01-21'),
(207, '', 'Mr', 'J. R. T. N. Jayakody', '810561505V', '1981-02-25', 'Male', '', '', '2009-08-17', 6, 111, 2, 2, '2041-02-24'),
(209, '', 'Mr', 'W. C. B.  De Silva', '740480413V', '1974-02-17', 'Male', 'chamika@accmt.ac.lk', '', '2006-02-03', 50, 1001, 2, 2, '2034-02-16'),
(212, '', 'Mr', 'E. P. P Fernando', '691632466V', '1969-06-11', 'Male', '', '', '2007-02-05', 56, 113, 2, 2, '2029-06-10'),
(213, '', 'Mr', 'W. A. P.  Silva', '551892212V', '1955-07-07', 'Male', 'panduka@accmt.ac.lk', '', '2007-10-01', 3, 6, 2, 1, '2015-07-06'),
(215, '', 'Mr', 'J. S. B.  Rathnayake', '740132490V', '1974-01-13', 'Male', 'janaka @accmt.ac.lk', '', '2008-03-07', 15, 44, 2, 1, '2034-01-12'),
(216, '', 'Mr', 'N. K. L. T. M. S.  Dias', '712410337V', '1971-08-28', 'Male', 'tmsdias@yahoo.com', '', '2008-04-21', 6, 111, 2, 2, '2031-08-27'),
(217, '', 'Eng', 'P. S. Panawennage', '662142409V', '1966-08-01', 'Male', '', '', '2013-06-03', 2, 74, 2, 1, '2026-07-31'),
(218, '', 'Mr', 'N. K. J. K.  De Silva', '853001759V', '1985-10-26', 'Male', '', '', '2009-11-01', 3, 99, 2, 3, '2045-10-25'),
(225, '', 'Mr', 'R. A. C. A. K.  Ranawaka', '770573564V', '1997-02-26', 'Male', '', '', '2009-08-16', 5, 111, 2, 2, '2057-02-25'),
(226, '', 'Mr', 'J. S.  Koruwage', '801340040V', '1980-05-13', 'Male', '', '', '2009-09-01', 6, 111, 2, 2, '2040-05-12'),
(236, '', 'Mr', 'N. T. M.  Sajith', '851430342V', '1985-05-22', 'Male', '', '', '2011-12-01', 5, 78, 2, 1, '2045-05-21'),
(237, '', 'Ms', 'T. V.  Jayasinghe Arachchi', '855990091V', '1985-04-08', 'Female', '', '', '2011-12-01', 6, 78, 2, 1, '2045-04-07'),
(238, '', 'Mr', 'C. M.  Karunarathna', '862360273V', '1986-08-23', 'Male', '', '', '2011-12-01', 6, 78, 2, 1, '2046-08-22'),
(239, '', 'Ms.', 'M. L. Karunarathne', '858513278V', '1985-12-16', 'Female', '', '', '2011-12-15', 9, 77, 2, 1, '2045-12-15'),
(244, '', 'Mr.', 'A. R. M. Rila', '761852078V', '1976-07-03', 'Female', '', '', '2012-06-01', 11, 80, 2, 1, '2036-07-02'),
(246, '', 'Mr', 'W. R. S. C.  Ranathunga', '872660259V', '1987-09-22', 'Male', '', '', '2012-06-01', 5, 78, 2, 1, '2047-09-21'),
(249, '', 'Mr', 'U.D Niriella.', '682858779V', '1968-10-11', 'Male', '', '', '2012-07-02', 8, 78, 2, 1, '2028-10-10'),
(250, '', 'Ms', 'K.G. Lakmali', '857684516V', '1985-09-24', 'Female', '', '', '2012-07-02', 6, 78, 2, 1, '2045-09-23'),
(251, '', 'Mr', 'W. R. W. M. Y. S. B. Bulumulla', '84082170V', '1984-03-22', 'Female', '', '', '2015-08-15', 9, 78, 2, 1, '2044-03-21'),
(252, '', 'Mr', 'L. H.  Malindu Tilan', '883090500V', '1988-11-04', 'Male', '', '', '2013-02-13', 4, 1001, 2, 2, '2048-11-03'),
(253, '', 'Ms', 'W. A. K. Madumali', '896010719V', '1989-04-10', 'Female', 'Kaushalya@accmt.ac.lk', '', '2013-02-01', 5, 1001, 2, 2, '2049-04-09'),
(254, '', 'Mr', 'C. R. Ranasinghe', '751310307V', '1975-05-10', 'Male', '', '', '2013-05-15', 6, 78, 2, 1, '2035-05-09'),
(255, '', 'Ms', 'N. A. A. Nadeesha Dilrukshi', '865450222V', '1986-02-14', 'Female', '', '', '2013-05-15', 6, 78, 2, 1, '2046-02-13'),
(256, '', 'Ms', 'Vijayasothy Vijayagopal', '878300432V', '1987-11-25', 'Female', '', '', '2013-05-15', 8, 78, 2, 1, '2047-11-24'),
(257, '', 'Mr.', 'R. A. Gamini', '830224351V', '1983-01-22', 'Male', '', '', '2013-06-17', 3, 39, 2, 1, '2043-01-21'),
(258, '', 'Mr', 'S. R. J. S. Bandara', '8311920319', '1983-07-10', 'Male', '', '', '2013-07-10', 3, 117, 2, 2, '2043-07-09'),
(259, '', 'Mrs ', 'K. C. I. Silva', '738411439V', '1973-12-06', 'Male', '', '', '2013-10-01', 3, 1001, 2, 2, '2033-12-05'),
(260, '', 'Ms.', 'H. D. N. Fernando', '895850128V', '1989-03-25', 'Female', '', '', '2013-10-01', 3, 1001, 2, 2, '2049-03-24'),
(261, '', 'Ms.', 'P. D. T. De Silva', '906460513V', '1990-05-25', 'Female', '', '', '2013-10-01', 3, 1001, 2, 2, '2050-05-24'),
(262, '', 'Ms.', 'K. T. C. K. Alwis', '936882196V', '1993-07-06', 'Female', '', '', '2013-10-01', 3, 1001, 2, 2, '2053-07-05'),
(263, '', 'Ms.', 'M. B. A. M. Dissanayake', '897772710V', '1989-10-03', 'Female', '', '', '2013-10-01', 7, 1001, 2, 2, '2049-10-02'),
(264, '', 'Mr.', 'P. Buddhika Warnakula', '813222248V', '1981-11-17', 'Male', '', '', '2013-10-01', 3, 108, 2, 3, '2041-11-16'),
(265, '', 'Mr.', 'P. Chandima Ramanayake', '880931890V', '1988-04-02', 'Male', '', '', '2013-10-03', 50, 99, 2, 3, '2048-04-01'),
(266, '', 'Mr.', 'G. M. Rodrigo', '741220431V', '1974-05-01', 'Male', '', '', '2013-10-09', 3, 99, 2, 3, '2034-04-30'),
(267, '', 'Mr.', 'Saman Keerthi ', '672980739V', '1967-10-24', 'Male', '', '', '2013-12-06', 2, 21, 2, 1, '2027-10-23'),
(268, '', 'Ms.', 'K. A. Sumudu L. Perera', '826390522V', '1982-05-18', 'Female', '', '', '2014-01-08', 8, 1001, 2, 2, '2042-05-17'),
(269, '', 'Mr.', 'K. D. S. Awantha', '910181920V', '1991-01-18', 'Male', '', '', '2014-01-13', 3, 99, 2, 3, '2051-01-17'),
(270, '', 'Mr. ', 'U. A. D Upul Priyashantha', '821440955V', '1982-05-23', 'Male', '', '', '2014-01-13', 3, 108, 2, 3, '2042-05-22'),
(271, '', 'Miss.', 'V. K. O. N. Thalpawila', '876660997V', '1987-06-14', 'Female', '', '', '2014-01-13', 3, 78, 2, 1, '2047-06-13'),
(272, '', 'Mr.', 'J. P. Rajitha Prasanna', '891933452V', '1989-07-11', 'Male', '', '', '2014-01-13', 5, 78, 2, 1, '2049-07-10'),
(273, '', 'Mr.', 'Lavanan Vengadasalam', '87250831V', '1987-09-12', 'Male', '', '', '2014-01-01', 7, 78, 2, 1, '2047-09-11'),
(274, '', 'Mr.', 'B. S. Marasinghe', '7926901066', '1979-09-25', 'Male', '', '', '2014-01-27', 11, 80, 2, 1, '2039-09-24'),
(275, '', 'Ms.', 'M. H. C. Kumarasinghe', '875930737V', '1987-04-02', 'Female', '', '', '2014-01-27', 11, 80, 2, 1, '2047-04-01'),
(276, '', 'Mr.', 'K. S. Roshan', '882301893V', '1988-08-17', 'Male', '', '', '2014-01-27', 8, 117, 2, 2, '2048-08-16'),
(277, '', 'Mr.', 'M. P. R. Perera', '722821688V', '1972-10-08', 'Male', '', '', '2014-02-03', 54, 42, 2, 1, '2032-10-07'),
(278, '', 'Mr.', 'M.B. Thilakarathne', '852583088V', '1985-09-14', 'Male', '', '', '2014-02-03', 5, 78, 2, 1, '2045-09-13'),
(279, '', 'Ms.', 'L. A. C. P. Ranasinghe', '857190220V', '1985-08-06', 'Female', '', '', '2014-02-05', 9, 118, 2, 1, '2045-08-05'),
(280, '', 'Ms.', 'S. D. Shiromi Lakmali ', '876752360V', '1987-06-23', 'Female', '', '', '2014-02-05', 9, 118, 2, 1, '2047-06-22'),
(281, '', 'Ms.', 'R. M. T. M. Danapala', '', '0000-00-00', 'Female', '', '', '2014-02-02', 8, 78, 2, 1, '0000-00-00'),
(282, '', 'Mr.', 'R. A. D. K. Sampath', '802740611V', '1980-09-30', 'Male', '', '', '2014-02-17', 5, 116, 2, 1, '2040-09-29'),
(283, '', 'Mr.', 'U. D.A. Fernando', '770733073V', '1977-03-13', 'Male', '', '', '1977-03-25', 5, 52, 2, 2, '2037-03-12'),
(285, '', 'Mr.', 'A.S. Weerapperuma', '680952981V', '1968-04-04', 'Male', '', '', '2014-06-02', 4, 21, 2, 1, '2028-04-03'),
(286, '', 'Ms.', 'Dineshi Pathirana', '935880203V', '1993-03-28', 'Female', '', '', '2014-10-20', 4, 1001, 2, 2, '2053-03-27'),
(287, '', 'Ms.', 'P.W.M.M. Kulathunga', '886281609V', '1988-05-07', 'Male', '', '', '2014-10-20', 6, 1001, 2, 2, '2048-05-06'),
(290, '', 'Ms.', 'R.M.S.D. Madumala', '907701085V', '1990-09-26', 'Male', '', '', '2014-11-03', 50, 1001, 2, 2, '2050-09-25'),
(291, '', 'Ms.', 'W.A. Pavithra Madushani', '918440925V', '1991-12-09', 'Male', '', '', '2014-11-03', 50, 1001, 2, 2, '2051-12-08'),
(292, '', 'Mr.', 'W.K.M. Mahindapala', '723032415V', '1972-10-29', 'Male', '', '', '2014-12-05', 11, 29, 2, 1, '2032-10-28'),
(295, '', 'Mr.', 'I.A.D. Anushka Nadeeshan', '882070760V', '1988-07-25', 'Male', '', '', '2014-12-01', 5, 52, 2, 2, '2048-07-24'),
(298, '', 'Mr.', 'M. Dilan Prasanga Peiris', '870330065V', '1987-02-02', 'Male', '', '', '2014-12-29', 5, 52, 2, 2, '2047-02-01'),
(90155, '', 'Ms.', 'W M S N K WIJETATHNE', '', '2014-11-01', 'Male', '', '', '2015-01-23', 4, 999, 3, 2, NULL),
(90180, '', 'Mr.', 'A C LAKSHITHA AMBEPITIYA', '', '2015-01-01', 'Male', '', '', '2013-12-03', 6, 999, 3, 2, NULL),
(90198, '', 'Ms.', ' K A S MUDUSHANI', '', '2015-01-01', 'Female', '', '', '2014-02-05', 56, 999, 3, 2, NULL),
(90206, '', 'Ms.', 'K D S T PRIYANGI', '', '2015-01-01', 'Female', '', '', '2014-02-20', 55, 999, 3, 2, NULL),
(90207, '', 'Ms.', 'K D D R GUNATHILAKA', '', '2015-01-01', 'Female', '', '', '2014-03-03', 50, 999, 3, 2, NULL),
(90211, '', 'Mr.', 'K. G. H. Arjuna', '872893369V', '0000-00-00', 'Male', 'hearkg@hotmail.com', '0712200220', '2015-03-10', 9, 999, 3, 2, '2015-03-03'),
(90216, '', 'Mr.', 'M H D SASHIKA GANGANI', '872893369V', '0000-00-00', 'Female', ' ', ' ', '2014-04-01', 53, 999, 3, 2, '2015-03-30'),
(90221, '', 'Mr.', 'U D JAYARATHNE', '', '2015-01-01', 'Male', '', '', '2014-05-05', 6, 999, 3, 2, NULL),
(90223, '', 'Mr.', 'M H A MOHAMED MIFRAZ', '', '2015-01-01', 'Male', '', '', '2014-05-12', 5, 999, 3, 2, NULL),
(90227, '', '', 'A A D C ABEYSUNDARA', '', '2015-01-01', 'Male', '', '', '2014-06-11', 6, 999, 3, 2, NULL),
(90234, '', '', 'T THEEBAVATHANI', '', '2015-01-01', 'Male', '', '', '2014-08-04', 9, 999, 3, 2, NULL),
(90236, '', '', 'H A D D D JAYASEKARA', '', '2015-01-01', 'Female', '', '', '2014-09-02', 51, 999, 3, 2, NULL),
(90239, '', 'Ms.', 'P G C JAYAMINI', '', '2015-01-01', 'Female', '', '', '2014-09-03', 6, 999, 3, 2, NULL),
(90240, '', 'Ms.', 'T G A KAUSHALYA', '', '2015-01-01', 'Female', '', '', '2014-09-03', 5, 999, 3, 2, NULL),
(90241, '', 'Mr.', 'P S D PERERA', '', '2015-01-01', 'Male', '', '', '2014-09-03', 5, 999, 3, 2, NULL),
(90242, '', 'Ms.', 'S P R JAYASINGHE', '', '2015-01-01', 'Female', '', '', '2014-09-03', 5, 999, 3, 2, NULL),
(90243, '', 'Mr.', 'K J P L SILVA', '', '2015-01-01', 'Male', '', '', '2014-09-03', 5, 999, 3, 2, '0000-00-00'),
(90244, '', 'Mr.', 'H M A Y RATHNAYAKE', '', '2015-01-01', 'Male', '', '', '2014-09-03', 6, 999, 3, 2, NULL),
(90245, '', 'Mr.', 'V A M S CHANDRASEKARA', '', '2015-01-01', 'Male', '', '', '2014-09-03', 6, 999, 3, 2, NULL),
(90246, '', '', 'K K U PERERA', '', '2015-01-01', 'Male', '', '', '2014-09-03', 5, 999, 3, 2, NULL),
(90247, '', '', 'A G R L ABESINGHE', '', '2015-01-01', 'Male', '', '', '2014-09-03', 5, 999, 3, 2, NULL),
(90248, '', '', 'A G R L ABESINGHE', '', '2015-01-01', 'Male', '', '', '2014-09-03', 9, 999, 3, 2, NULL),
(90249, '', 'Mr.', 'D.T.H. Perera', '', '2015-01-01', 'Male', '', '', '2014-09-09', 6, 999, 3, 2, NULL),
(90252, '', 'Mr.', 'P S JINADASA', '', '2015-01-01', 'Male', '', '', '2014-09-29', 5, 999, 3, 2, NULL),
(90253, '', '', 'J M A E BANDARA', '', '2015-01-01', 'Male', '', '', '2014-11-03', 9, 999, 3, 2, NULL),
(90254, '', 'Mr.', 'A M HARISHCHANDRA', '', '2015-01-01', 'Male', '', '', '2014-11-03', 9, 999, 3, 2, NULL),
(90255, '', 'Mr.', 'SHAVINDRA PEIRIS', '', '2015-01-01', 'Male', '', '', '2014-11-19', 51, 999, 3, 2, NULL),
(90256, '', 'Mr.', 'H A M V HARSHAKA', '', '2015-01-01', 'Male', '', '', '2014-11-24', 9, 999, 3, 2, NULL),
(90257, '', '', 'G L H Y DE SILVA', '', '2015-01-01', 'Male', '', '', '2014-11-24', 9, 999, 3, 2, NULL),
(90258, '', 'Ms.', 'P SASIINI UTHPALA', '', '2015-01-01', 'Male', '', '', '2014-12-10', 10, 999, 3, 2, NULL),
(90259, '', '', 'L R VIBESHAN', '', '2015-01-01', 'Male', '', '', '2015-05-01', 5, 999, 3, 2, NULL),
(90260, '', '', 'R S M FERNANDO', '', '2015-01-05', 'Male', '', '', '2015-05-01', 5, 999, 3, 2, NULL),
(90261, '', '', 'W A M NIPUN FERNANDO', '', '2015-01-01', 'Male', '', '', '2015-01-05', 5, 999, 3, 2, NULL),
(90262, '', 'Ms.', 'W S ERANDI', '', '2015-01-01', 'Female', '', '', '2015-01-05', 5, 999, 3, 2, NULL),
(90263, '', '', 'K M G U DIAS', '', '2015-01-01', 'Male', '', '', '2015-01-05', 5, 999, 3, 2, NULL),
(90264, '', '', 'J M D T M JAYASINGHE', '', '2015-01-01', 'Male', '', '', '2015-01-05', 5, 999, 3, 2, NULL),
(90265, '', '', 'M D J PEIRIS', '', '2015-01-01', 'Male', '', '', '2015-01-05', 5, 999, 3, 2, NULL),
(90266, '', '', 'J M T N BANDARA', '', '2015-01-01', 'Male', '', '', '2015-01-01', 5, 999, 3, 2, NULL),
(90267, '', '', 'S M D B SAMARAKON', '', '2015-01-01', 'Male', '', '', '2015-01-05', 7, 999, 3, 2, NULL),
(90268, '', '', 'K B ATHUKORALA', '', '2015-01-01', 'Male', '', '', '2015-01-19', 5, 999, 3, 2, NULL),
(90269, '', '', 'M H C L JAYASINGHE', '', '2015-01-01', 'Male', '', '', '2015-01-29', 56, 999, 3, 2, NULL),
(90270, '', '', ' B A POORNIMA GAYANI', '', '2015-01-01', 'Female', '', '', '2015-02-09', 51, 999, 3, 2, NULL),
(90271, '', '', 'K K G T ASHARI', '', '2015-01-01', 'Female', '', '', '2015-02-09', 5, 999, 3, 2, NULL),
(90272, '', '', 'D I M DISSANAYAKE', '', '2015-01-01', 'Female', '', '', '2015-01-09', 5, 999, 3, 2, NULL),
(90273, '', '', 'A A K S PERERA', '', '2015-01-01', 'Female', '', '', '2014-12-30', 7, 999, 3, 2, NULL),
(90274, '', '', 'Y CHALANI MADUSHANI', '', '2015-01-01', 'Female', '', '', '2015-02-11', 4, 999, 3, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hr_desig_cadre`
--

CREATE TABLE `hr_desig_cadre` (
  `DesigCode` int(11) NOT NULL,
  `appcp_t` int(11) DEFAULT NULL,
  `appcp_a` int(11) DEFAULT NULL,
  `extcp_t` int(11) DEFAULT NULL,
  `extcp_a` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_desig_cadre`
--

INSERT INTO `hr_desig_cadre` (`DesigCode`, `appcp_t`, `appcp_a`, `extcp_t`, `extcp_a`) VALUES
(2, 1, 0, 0, 0),
(3, 1, 0, 0, 0),
(104, 5, 5, NULL, NULL),
(105, 0, 0, NULL, NULL),
(4, 1, 0, 0, 0),
(5, 1, 0, 0, 0),
(6, 0, 1, 0, 0),
(7, 4, 0, 0, 0),
(8, 5, 0, 0, 0),
(9, 1, 0, 0, 0),
(10, 1, 0, 0, 0),
(11, 1, 0, 0, 0),
(12, 1, 0, 0, 0),
(13, 1, 0, 0, 0),
(14, 1, 0, 0, 0),
(15, 1, 0, 0, 0),
(16, 1, 0, 0, 0),
(17, 1, 0, 0, 0),
(18, 1, 0, 0, 0),
(19, 1, 0, 0, 0),
(20, 1, 0, 0, 1),
(21, 0, 1, 0, 1),
(23, 9, 0, 1, 0),
(25, 2, 0, 1, 0),
(26, 1, 0, 1, 0),
(27, 1, 0, 1, 0),
(28, 2, 0, 0, 0),
(29, 10, 0, 3, 0),
(30, 2, 0, 0, 0),
(31, 2, 0, 0, 0),
(32, 3, 0, 2, 0),
(33, 1, 0, 1, 0),
(34, 11, 0, 11, 0),
(35, 2, 0, 2, 0),
(36, 3, 0, 0, 0),
(37, 5, 0, 0, 0),
(38, 1, 0, 0, 0),
(39, 0, 1, 0, 0),
(40, 0, 1, 0, 0),
(41, 0, 1, 0, 0),
(42, 1, 0, 0, 0),
(43, 0, 1, 0, 0),
(44, 0, 1, 0, 0),
(45, 1, 0, 0, 0),
(46, 0, 1, 0, 0),
(48, 0, 1, 0, 0),
(49, 6, 0, 0, 0),
(50, 0, 1, 0, 0),
(51, 0, 2, 0, 0),
(52, 20, 0, 0, 0),
(53, 0, 0, 0, 0),
(55, 1, 0, 0, 0),
(58, 2, 0, 0, 0),
(59, 2, 0, 0, 0),
(60, 2, 0, 0, 0),
(63, 1, 0, 0, 0),
(64, 1, 0, 0, 0),
(65, 1, 0, 0, 0),
(66, 0, 1, 0, 0),
(67, 4, 0, 0, 0),
(70, 1, 0, 0, 0),
(74, 1, 0, 0, 0),
(75, 0, 8, 0, 0),
(76, 0, 8, 0, 0),
(77, 0, 0, 0, 0),
(78, 0, 0, 0, 0),
(80, 0, 0, 0, 0),
(81, 1, 0, 0, 0),
(90, 0, 0, 0, 0),
(91, 0, 0, 0, 0),
(92, 1, 0, 0, 0),
(93, 3, 0, 0, 0),
(94, 0, 1, 0, 0),
(95, 6, 0, 0, 0),
(96, 0, 1, 0, 0),
(97, 0, 1, 0, 0),
(98, 0, 0, 0, 0),
(99, 0, 7, 0, 0),
(100, 1, 0, 0, 0),
(101, 1, 0, NULL, NULL),
(102, 0, 0, NULL, NULL),
(103, 0, 0, NULL, NULL),
(106, 0, 0, NULL, NULL),
(107, 0, 0, NULL, NULL),
(108, 0, 0, NULL, NULL),
(109, 0, 0, NULL, NULL),
(110, 0, 0, NULL, NULL),
(111, 0, 0, NULL, NULL),
(112, 0, 0, NULL, NULL),
(113, 0, 1, NULL, NULL),
(114, 0, 0, NULL, NULL),
(115, 0, 0, NULL, NULL),
(116, 0, 0, NULL, NULL),
(117, 0, 0, NULL, NULL),
(118, 0, 0, NULL, NULL),
(119, 0, 0, NULL, NULL),
(120, 0, 1, NULL, NULL),
(121, 0, 0, NULL, NULL),
(122, 0, 1, NULL, NULL),
(123, 0, 0, NULL, NULL),
(124, 0, 0, NULL, NULL),
(125, 0, 1, NULL, NULL),
(126, 0, 0, NULL, NULL),
(127, 0, 0, NULL, NULL),
(131, 12, 1, NULL, NULL),
(1001, 44, 44, NULL, NULL),
(1002, 1000, 1001, NULL, NULL),
(1003, 1005, 1005, NULL, NULL),
(1004, 2000, 2000, NULL, NULL),
(1005, 0, 0, NULL, NULL),
(1006, 0, 0, NULL, NULL),
(1008, 0, 0, NULL, NULL),
(1010, 5, 5, NULL, NULL),
(1012, 0, 0, NULL, NULL),
(1014, 0, 0, NULL, NULL),
(1016, 6, 6, NULL, NULL),
(1018, 0, 0, NULL, NULL),
(1020, 0, 0, NULL, NULL),
(1022, 0, 0, NULL, NULL),
(1024, 8, 8, NULL, NULL),
(1025, 0, 0, NULL, NULL),
(1026, 0, 0, NULL, NULL),
(1027, 0, 0, NULL, NULL),
(1028, 7, 7, NULL, NULL),
(1029, 0, 0, NULL, NULL),
(1030, 0, 0, NULL, NULL),
(1031, 0, 0, NULL, NULL),
(1032, 0, 0, NULL, NULL),
(1033, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hr_division_tbl`
--

CREATE TABLE `hr_division_tbl` (
  `DivisionCode` int(5) NOT NULL,
  `Division` varchar(150) DEFAULT NULL,
  `sh_code` varchar(5) NOT NULL,
  `category` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hr_division_tbl`
--

INSERT INTO `hr_division_tbl` (`DivisionCode`, `Division`, `sh_code`, `category`) VALUES
(1, 'Chairman\'s Division', 'CHD', 'Main'),
(2, 'Director Division', 'DIR', 'Main'),
(3, 'Admin Division', 'ADM', 'Main'),
(4, 'Finance Division', 'FIN', 'Main'),
(5, 'Communication Division', 'COM', 'Main'),
(6, 'Electronic Division', 'ELE', 'Main'),
(7, 'Space Technology ', 'SPT', 'Main'),
(8, 'Industrial Services Division', 'ISD', 'Main'),
(9, 'Information Technology Division', 'ITD', 'Main'),
(10, 'Administration-HR', 'ADH', 'Main'),
(11, 'Space Applications Division', 'SPA', 'Main'),
(13, 'Media Division', 'MED', 'Main'),
(14, 'Technology Transfer Division', 'TTD', 'Main'),
(15, 'Internal Auditor Division ', 'IAD', 'Main'),
(16, 'Astronomy Division', 'AST', 'Main'),
(19, 'Library ', 'LIB ', 'Main'),
(27, 'Space Technology and Applications', 'STA', 'Top'),
(28, 'fhfhh', 'ffhh', 'Sub'),
(29, 'hjhj', 'jjkii', 'Sub');

-- --------------------------------------------------------

--
-- Table structure for table `hr_login_tbl`
--

CREATE TABLE `hr_login_tbl` (
  `user_id` int(3) NOT NULL,
  `User_Name` varchar(15) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Type` varchar(1) NOT NULL,
  `updatedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_login_tbl`
--

INSERT INTO `hr_login_tbl` (`user_id`, `User_Name`, `Password`, `Type`, `updatedate`) VALUES
(8, 'administrator', '21232f297a57a5a743894a0e4a801fc3', 'A', '2016-11-15 08:51:48'),
(17, 'Editor', 'd2f2297d6e829cd3493aa7de4416a18f', 'E', '2016-12-15 06:35:44'),
(18, 'Viewer', '4786f3282f04de5b5c7317c490c6d922', 'V', '2016-12-15 06:36:18'),
(19, 'Rasika', '44f437ced647ec3f40fa0841041871cd', 'V', '2016-12-16 09:18:07'),
(20, '294', '6883966fd8f918a4aa29be29d2c386fb', 'V', '2016-12-26 05:33:43'),
(21, '5', 'bbaeabb367a620899fd0350cec001269', 'E', '2016-12-26 05:34:14'),
(22, '7', '8f14e45fceea167a5a36dedd4bea2543', 'V', '2016-12-26 05:34:35'),
(23, '8', 'c9f0f895fb98ab9159f51fd0297e236d', 'V', '2016-12-26 05:35:12'),
(24, '24', '1ff1de774005f8da13f42943881c655f', 'V', '2016-12-26 05:35:35'),
(25, '36', '19ca14e7ea6328a42e0eb13d585e4c22', 'V', '2016-12-26 05:35:55'),
(26, '45', '6c8349cc7260ae62e3b1396831a8398f', 'V', '2016-12-26 05:36:12'),
(27, '53', 'd82c8d1619ad8176d665453cfb2e55f0', 'V', '2016-12-26 05:36:30'),
(28, '59', '093f65e080a295f8076b1c5722a46aa2', 'E', '2016-12-26 05:36:50'),
(29, '65', 'fc490ca45c00b1249bbe3554a4fdf6fb', 'V', '2016-12-26 05:37:08'),
(30, '67', '735b90b4568125ed6c3f678819b6e058', 'V', '2016-12-26 05:37:25'),
(31, '68', 'a3f390d88e4c41f2747bfa2f1b5f87db', 'V', '2016-12-26 05:37:40'),
(32, '70', '6dbf9f39310ee563a02cb82a3b5d2849', 'A', '2016-12-26 05:37:58'),
(33, '75', 'd09bf41544a3365a46c9077ebb5e35c3', 'V', '2016-12-26 05:38:15'),
(34, '93', '1a31f606d47b66ea0355a7f343ef378c', 'E', '2016-12-26 05:38:33'),
(35, '100', 'f899139df5e1059396431415e770c6dd', 'V', '2016-12-26 05:38:57'),
(36, '107', 'a97da629b098b75c294dffdc3e463904', 'A', '2016-12-26 05:39:19'),
(37, '108', 'a3c65c2974270fd093ee8a9bf8ae7d0b', 'V', '2016-12-26 05:39:40'),
(38, '112', '7f6ffaa6bb0b408017b62254211691b5', 'E', '2016-12-26 05:40:02'),
(39, '116', 'c45147dee729311ef5b5c3003946c48f', 'V', '2016-12-26 05:40:17'),
(40, '120', 'da4fb5c6e93e74d3df8527599fa62642', 'V', '2016-12-26 05:40:53'),
(41, '125', '3def184ad8f4755ff269862ea77393dd', 'V', '2016-12-26 05:41:04'),
(42, '126', '069059b7ef840f0c74a814ec9237b6ec', 'V', '2016-12-26 05:41:21'),
(43, '127', 'ec5decca5ed3d6b8079e2e7e7bacc9f2', 'V', '2016-12-26 05:41:34'),
(44, '128', '76dc611d6ebaafc66cc0879c71b5db5c', 'V', '2016-12-26 05:41:50'),
(45, '130', '9b8619251a19057cff70779273e95aa6', 'V', '2016-12-26 05:42:01'),
(46, '132', '65ded5353c5ee48d0b7d48c591b8f430', 'V', '2016-12-26 05:42:15'),
(47, '138', '013d407166ec4fa56eb1e1f8cbe183b9', 'V', '2016-12-26 05:42:28'),
(48, '139', 'e00da03b685a0dd18fb6a08af0923de0', 'E', '2016-12-26 05:42:43'),
(49, '142', 'a8baa56554f96369ab93e4f3bb068c22', 'V', '2016-12-26 05:43:00'),
(50, '143', '903ce9225fca3e988c2af215d4e544d3', 'V', '2016-12-26 05:43:52'),
(51, '146', 'a5e00132373a7031000fd987a3c9f87b', 'V', '2016-12-26 05:44:04'),
(52, '147', '8d5e957f297893487bd98fa830fa6413', 'V', '2016-12-26 05:44:18'),
(53, '149', 'f2217062e9a397a1dca429e7d70bc6ca', 'E', '2016-12-26 05:44:30'),
(54, '161', 'bd4c9ab730f5513206b999ec0d90d1fb', 'V', '2016-12-26 05:44:48'),
(55, '162', '82aa4b0af34c2313a562076992e50aa3', 'V', '2016-12-26 05:45:02'),
(56, '168', '006f52e9102a8d3be2fe5614f42ba989', 'V', '2016-12-26 05:45:16'),
(57, '169', '3636638817772e42b59d74cff571fbb3', 'V', '2016-12-26 05:45:33'),
(58, '180', '045117b0e0a11a242b9765e79cbf113f', 'E', '2016-12-26 05:45:50'),
(59, '188', '9dcb88e0137649590b755372b040afad', 'V', '2016-12-26 05:46:12'),
(60, '190', 'cfecdb276f634854f3ef915e2e980c31', 'E', '2016-12-26 05:46:28'),
(61, '191', '0aa1883c6411f7873cb83dacb17b0afc', 'V', '2016-12-26 05:46:45'),
(62, '192', '58a2fc6ed39fd083f55d4182bf88826d', 'E', '2016-12-26 05:47:05'),
(63, '193', 'bd686fd640be98efaae0091fa301e613', 'V', '2016-12-26 05:47:23'),
(64, '199', '84d9ee44e457ddef7f2c4f25dc8fa865', 'V', '2016-12-26 05:47:38'),
(65, '200', '3644a684f98ea8fe223c713b77189a77', 'V', '2016-12-26 05:47:50'),
(66, '202', '854d6fae5ee42911677c739ee1734486', 'V', '2016-12-26 05:48:06'),
(67, '207', '69adc1e107f7f7d035d7baf04342e1ca', 'V', '2016-12-26 05:48:31'),
(68, '209', 'b1d10e7bafa4421218a51b1e1f1b0ba2', 'V', '2016-12-26 05:48:48'),
(69, '212', '1534b76d325a8f591b52d302e7181331', 'V', '2016-12-26 05:49:04'),
(70, '213', '979d472a84804b9f647bc185a877a8b5', 'V', '2016-12-26 05:49:23'),
(71, '215', '3b8a614226a953a8cd9526fca6fe9ba5', 'V', '2016-12-26 05:49:41'),
(72, '216', '45fbc6d3e05ebd93369ce542e8f2322d', 'V', '2016-12-26 05:50:05'),
(73, '217', '63dc7ed1010d3c3b8269faf0ba7491d4', 'V', '2016-12-26 05:50:19'),
(74, '218', 'e96ed478dab8595a7dbda4cbcbee168f', 'V', '2016-12-26 05:50:31'),
(75, '225', 'd1c38a09acc34845c6be3a127a5aacaf', 'V', '2016-12-26 05:50:43'),
(76, '226', '9cfdf10e8fc047a44b08ed031e1f0ed1', 'V', '2016-12-26 05:50:58'),
(77, '236', '01161aaa0b6d1345dd8fe4e481144d84', 'V', '2016-12-26 05:51:38'),
(78, '237', '539fd53b59e3bb12d203f45a912eeaf2', 'V', '2016-12-26 05:52:02'),
(79, '238', 'ac1dd209cbcc5e5d1c6e28598e8cbbe8', 'V', '2016-12-26 05:52:24'),
(80, '239', '555d6702c950ecb729a966504af0a635', 'V', '2016-12-26 05:52:39'),
(81, '244', '9188905e74c28e489b44e954ec0b9bca', 'E', '2016-12-26 05:52:54'),
(82, '246', '38db3aed920cf82ab059bfccbd02be6a', 'V', '2016-12-26 05:53:11'),
(83, '249', '077e29b11be80ab57e1a2ecabb7da330', 'V', '2016-12-26 05:53:26'),
(84, '250', '6c9882bbac1c7093bd25041881277658', 'V', '2016-12-26 05:53:40'),
(85, '251', '19f3cd308f1455b3fa09a282e0d496f4', 'V', '2016-12-26 05:53:50'),
(86, '252', '03c6b06952c750899bb03d998e631860', 'V', '2016-12-26 05:54:04'),
(87, '253', 'c24cd76e1ce41366a4bbe8a49b02a028', 'V', '2016-12-26 05:54:28'),
(88, '254', 'c52f1bd66cc19d05628bd8bf27af3ad6', 'V', '2016-12-26 05:54:42'),
(89, '255', 'fe131d7f5a6b38b23cc967316c13dae2', 'V', '2016-12-26 05:54:56'),
(90, '256', 'f718499c1c8cef6730f9fd03c8125cab', 'V', '2016-12-26 05:55:33'),
(91, '257', 'd96409bf894217686ba124d7356686c9', 'V', '2016-12-26 05:55:44'),
(92, '258', '502e4a16930e414107ee22b6198c578f', 'V', '2016-12-26 05:56:29'),
(93, '259', 'cfa0860e83a4c3a763a7e62d825349f7', 'V', '2016-12-26 05:56:41'),
(94, '260', 'a4f23670e1833f3fdb077ca70bbd5d66', 'V', '2016-12-26 05:57:04'),
(95, '261', 'b1a59b315fc9a3002ce38bbe070ec3f5', 'V', '2016-12-26 05:57:23'),
(96, '262', '36660e59856b4de58a219bcf4e27eba3', 'V', '2016-12-26 05:58:44'),
(97, '263', '8c19f571e251e61cb8dd3612f26d5ecf', 'V', '2016-12-26 05:59:29'),
(98, '264', 'd6baf65e0b240ce177cf70da146c8dc8', 'V', '2016-12-26 06:00:04'),
(99, '265', 'e56954b4f6347e897f954495eab16a88', 'V', '2016-12-26 06:00:27'),
(100, '266', 'f7664060cc52bc6f3d620bcedc94a4b6', 'V', '2016-12-26 06:01:11'),
(101, '267', 'eda80a3d5b344bc40f3bc04f65b7a357', 'V', '2016-12-26 06:01:27'),
(102, '268', '8f121ce07d74717e0b1f21d122e04521', 'V', '2016-12-26 06:01:50'),
(103, '269', '06138bc5af6023646ede0e1f7c1eac75', 'V', '2016-12-26 06:02:37'),
(104, '270', '39059724f73a9969845dfe4146c5660e', 'V', '2016-12-26 06:02:53'),
(105, '271', '7f100b7b36092fb9b06dfb4fac360931', 'V', '2016-12-26 06:03:06'),
(108, '272', '7a614fd06c325499f1680b9896beedeb', 'V', '2016-12-26 06:03:37'),
(109, '273', '4734ba6f3de83d861c3176a6273cac6d', 'V', '2016-12-26 06:03:48'),
(110, '274', 'd947bf06a885db0d477d707121934ff8', 'V', '2016-12-26 06:04:01'),
(111, '275', '63923f49e5241343aa7acb6a06a751e7', 'V', '2016-12-26 06:04:14'),
(112, '276', 'db8e1af0cb3aca1ae2d0018624204529', 'V', '2016-12-26 06:04:31'),
(113, '277', '20f07591c6fcb220ffe637cda29bb3f6', 'V', '2016-12-26 06:04:43'),
(114, '278', '07cdfd23373b17c6b337251c22b7ea57', 'V', '2016-12-26 06:04:59'),
(115, '279', 'd395771085aab05244a4fb8fd91bf4ee', 'V', '2016-12-26 06:05:10'),
(116, '280', '92c8c96e4c37100777c7190b76d28233', 'V', '2016-12-26 06:05:25'),
(117, '281', 'e3796ae838835da0b6f6ea37bcf8bcb7', 'V', '2016-12-26 06:05:38'),
(118, '282', '6a9aeddfc689c1d0e3b9ccc3ab651bc5', 'V', '2016-12-26 06:05:55'),
(119, '283', '0f49c89d1e7298bb9930789c8ed59d48', 'V', '2016-12-26 06:06:10'),
(120, '285', '0e01938fc48a2cfb5f2217fbfb00722d', 'V', '2016-12-26 06:06:27'),
(121, '286', '16a5cdae362b8d27a1d8f8c7b78b4330', 'V', '2016-12-26 06:06:43'),
(122, '287', '918317b57931b6b7a7d29490fe5ec9f9', 'V', '2016-12-26 06:07:14'),
(123, '290', 'f90f2aca5c640289d0a29417bcb63a37', 'V', '2016-12-26 06:07:29'),
(124, '291', '9c838d2e45b2ad1094d42f4ef36764f6', 'V', '2016-12-26 06:08:22'),
(125, '292', '1700002963a49da13542e0726b7bb758', 'V', '2016-12-26 06:08:43'),
(126, '295', '49182f81e6a13cf5eaa496d51fea6406', 'V', '2016-12-26 06:09:09'),
(127, '298', '26e359e83860db1d11b6acca57d8ea88', 'V', '2016-12-26 06:09:23'),
(128, 'SK', '372d30dd2849813ef674855253900679', 'S', '2017-01-11 06:33:44');

-- --------------------------------------------------------

--
-- Table structure for table `hr_official_details`
--

CREATE TABLE `hr_official_details` (
  `EmpNo` int(11) NOT NULL,
  `DateofAppoinment` date DEFAULT NULL,
  `DivisionCode` int(11) DEFAULT NULL,
  `Category` varchar(20) DEFAULT NULL,
  `DesigCode` int(11) DEFAULT NULL,
  `Promotion` date DEFAULT NULL,
  `ProbationPeriod` varchar(255) DEFAULT NULL,
  `IncrementDate` date DEFAULT NULL,
  `Resignation` date DEFAULT NULL,
  `emp_active` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hr_official_details`
--

INSERT INTO `hr_official_details` (`EmpNo`, `DateofAppoinment`, `DivisionCode`, `Category`, `DesigCode`, `Promotion`, `ProbationPeriod`, `IncrementDate`, `Resignation`, `emp_active`) VALUES
(5, '1987-04-01', 8, 'Executive Level', 58, '0000-00-00', 'to', '2014-02-06', '2017-03-01', 'R'),
(7, '0000-00-00', 10, 'Minor Level', 99, '0000-00-00', 'to', '2014-02-18', '0000-00-00', 'A'),
(8, '0000-00-00', 3, 'Minor Level', 76, '0000-00-00', 'to', '2014-05-02', '2015-06-22', 'R'),
(24, '0000-00-00', 56, 'Minor Level', 101, '0000-00-00', 'to', '2014-09-12', '0000-00-00', 'A'),
(36, '1988-05-01', 3, 'Executive Level', 51, '0000-00-00', 'to', '2014-03-01', '0000-00-00', 'A'),
(53, '0000-00-00', 50, 'Executive Level', 48, '0000-00-00', 'to', '2014-05-21', '2014-11-27', 'R'),
(59, '0000-00-00', 50, 'Executive Level', 40, '0000-00-00', 'to', '2014-12-07', '0000-00-00', 'A'),
(65, '1991-11-18', 3, 'Executive Level', 46, '0000-00-00', 'to', '2014-05-21', '0000-00-00', 'A'),
(67, '1991-12-05', 57, 'Minor Level', 99, '0000-00-00', 'to', '2014-12-05', '0000-00-00', 'A'),
(68, '1991-12-05', 6, 'Minor Level', 101, '0000-00-00', 'to', '0000-09-12', '0000-00-00', 'A'),
(70, '1992-04-01', 58, 'Executive Level', 3, '0000-00-00', 'to', '2014-08-01', '0000-00-00', 'A'),
(75, '0000-00-00', 4, 'Executive Level', 43, '0000-00-00', 'to', '2014-06-18', '0000-00-00', 'A'),
(93, '1995-10-15', 7, 'Executive Level', 26, '0000-00-00', 'to', '2014-02-06', '0000-00-00', 'A'),
(100, '0000-00-00', 59, 'Executive Level', 51, '0000-00-00', 'to', '0000-05-21', '0000-00-00', 'A'),
(107, '1996-07-16', 9, 'Executive Level', 27, '0000-00-00', '1996-07-16to', '2014-06-25', '0000-00-00', 'A'),
(108, '0000-00-00', 3, 'Middle Level', 98, '0000-00-00', 'to', '2014-05-19', '0000-00-00', 'A'),
(112, '0000-00-00', 9, 'Executive Level', 25, '0000-00-00', 'to', '2014-02-06', '0000-00-00', 'A'),
(116, '1997-08-01', 7, 'Executive Level', 102, '0000-00-00', '1997-08-01to', '2013-04-03', '0000-00-00', 'A'),
(120, '1997-11-01', 5, 'Executive Level', 8, '0000-00-00', 'to', '2014-02-06', '0000-00-00', 'A'),
(125, '0000-00-00', 3, 'Executive Level', 41, '0000-00-00', 'to', '2014-07-20', '0000-00-00', 'A'),
(126, '0000-00-00', 5, 'Minor Level', 104, '0000-00-00', 'to', '2014-12-03', '0000-00-00', 'A'),
(127, '0000-00-00', 5, 'Minor Level', 104, '0000-00-00', 'to', '2014-12-03', '0000-00-00', 'A'),
(128, '0000-00-00', 5, 'Executive Level', 95, '0000-00-00', 'to', '0000-05-21', '0000-00-00', 'A'),
(130, '0000-00-00', 3, 'Executive Level', 95, '0000-00-00', 'to', '2014-05-21', '0000-00-00', 'A'),
(132, '0000-00-00', 9, 'Middle Level', 105, '0000-00-00', 'to', '2014-12-10', '0000-00-00', 'A'),
(138, '0000-00-00', 10, 'Middle Level', 107, '0000-00-00', 'to', '2014-12-18', '0000-00-00', 'A'),
(139, '2000-06-28', 7, 'Executive Level', 32, '0000-00-00', 'to', '2014-04-09', '0000-00-00', 'A'),
(142, '0000-00-00', 5, 'Middle Level', 98, '0000-00-00', 'to', '2014-09-05', '0000-00-00', 'A'),
(143, '0000-00-00', 50, 'Middle Level', 98, '0000-00-00', 'to', '2014-09-03', '0000-00-00', 'A'),
(146, '2000-05-08', 6, 'Executive Level', 23, '0000-00-00', 'to', '2014-09-01', '0000-00-00', 'A'),
(147, '0000-00-00', 4, 'Executive Level', 50, '0000-00-00', 'to', '2014-05-21', '0000-00-00', 'A'),
(149, '2000-06-20', 6, 'Executive Level', 8, '0000-00-00', '2000-06-20to', '2014-02-03', '0000-00-00', 'A'),
(161, '2001-04-02', 3, 'Minor Level', 106, '0000-00-00', 'to', '0000-00-00', '0000-00-00', 'A'),
(162, '2001-07-09', 8, 'Executive Level', 95, '0000-00-00', 'to', '2014-05-21', '0000-00-00', 'A'),
(168, '2002-01-15', 5, 'Executive Level', 102, '0000-00-00', 'to', '2014-01-19', '0000-00-00', 'A'),
(169, '2002-01-15', 5, 'Executive Level', 95, '0000-00-00', 'to', '2014-05-21', '0000-00-00', 'A'),
(180, '0000-00-00', 57, 'Executive Level', 20, '0000-00-00', 'to', '0000-02-06', '0000-00-00', 'A'),
(188, '0000-00-00', 3, 'Minor Level', 106, '0000-00-00', 'to', '0000-03-01', '0000-00-00', 'A'),
(190, '2005-12-01', 9, 'Executive Level', 38, '2012-11-19', 'to', '2014-12-01', '0000-00-00', 'A'),
(191, '2004-11-01', 7, 'Executive Level', 80, '0000-00-00', 'to', '2014-11-11', '0000-00-00', 'A'),
(192, '0000-00-00', 10, 'Executive Level', 45, '0000-00-00', 'to', '0000-04-03', '0000-00-00', 'A'),
(193, '0000-00-00', 1, 'Executive Level', 51, '0000-00-00', 'to', '0000-03-01', '0000-00-00', 'A'),
(199, '0000-00-00', 3, 'Middle Level', 119, '0000-00-00', 'to', '0000-01-19', '0000-00-00', 'A'),
(200, '0000-00-00', 3, 'Minor Level', 110, '0000-00-00', 'to', '2014-05-22', '0000-00-00', 'A'),
(202, '2005-09-11', 8, 'Middle Level', 111, '0000-00-00', 'to', '0000-09-12', '0000-00-00', 'A'),
(207, '0000-00-00', 6, 'Middle Level', 111, '0000-00-00', 'to', '0000-08-17', '0000-00-00', 'A'),
(212, '0000-00-00', 56, 'Middle Level', 120, '0000-00-00', 'to', '0000-02-05', '0000-00-00', 'A'),
(213, '0000-00-00', 3, 'Executive Level', 6, '0000-00-00', 'to', '2014-10-01', '2015-07-06', 'R'),
(215, '0000-00-00', 60, 'Executive Level', 44, '0000-00-00', 'to', '2014-03-07', '0000-00-00', 'A'),
(216, '2008-04-15', 6, 'Middle Level', 111, '0000-00-00', 'to', '2014-04-21', '0000-00-00', 'A'),
(217, '2013-06-03', 59, 'Executive Level', 92, NULL, 'to', '2014-06-03', '0000-00-00', NULL),
(218, '0000-00-00', 3, 'Minor Level', 115, '0000-00-00', 'to', '2014-11-01', '2015-09-01', 'S'),
(225, '2009-08-17', 5, 'Middle Level', 111, '0000-00-00', 'to', '2014-08-17', '2015-10-30', 'S'),
(226, '2009-09-01', 6, 'Middle Level', 111, '0000-00-00', 'to', '2014-09-01', '2015-06-22', 'S'),
(236, '2011-12-01', 5, 'Executive Level', 78, '0000-00-00', 'to', '0000-12-01', '2014-11-02', 'S'),
(237, '0000-00-00', 6, 'Executive Level', 78, '0000-00-00', 'to', '2014-12-01', '0000-00-00', 'A'),
(238, '2011-12-01', 6, 'Executive Level', 78, '0000-00-00', 'to', '2014-12-01', '2015-04-19', 'S'),
(239, '0000-00-00', 9, 'Executive Level', 77, '0000-00-00', 'to', '2015-12-15', '0000-00-00', 'A'),
(244, '0000-00-00', 7, 'Executive Level', 80, '0000-00-00', 'to', '2014-06-01', '0000-00-00', 'A'),
(246, '2012-06-01', 5, 'Executive Level', 78, '0000-00-00', 'to', '2014-06-01', '2015-06-30', 'S'),
(249, '0000-00-00', 8, 'Executive Level', 78, '0000-00-00', 'to', '2014-07-02', '0000-00-00', 'A'),
(250, '0000-00-00', 6, 'Executive Level', 78, '0000-00-00', 'to', '0000-00-00', '0000-00-00', 'A'),
(251, '0000-00-00', 9, 'Executive Level', 78, '0000-00-00', 'to', '2014-08-15', '2015-06-17', 'S'),
(252, '2014-02-01', 4, 'Middle Level', 119, '0000-00-00', 'to', '2014-02-01', '0000-00-00', 'A'),
(253, '0000-00-00', 4, 'Middle Level', 119, '0000-00-00', 'to', '2014-02-01', '0000-00-00', 'A'),
(254, '0000-00-00', 5, 'Executive Level', 78, '0000-00-00', 'to', '2014-05-15', '0000-00-00', 'A'),
(255, '2013-05-15', 6, 'Executive Level', 78, '0000-00-00', 'to', '2014-05-15', '0000-00-00', 'A'),
(256, '0000-00-00', 8, 'Executive Level', 78, '0000-00-00', 'to', '0000-02-15', '0000-00-00', 'A'),
(257, '2013-06-17', 3, 'Executive Level', 39, '0000-00-00', 'to', '2014-06-17', '0000-00-00', 'A'),
(258, '2013-07-10', 6, 'Middle Level', 52, '0000-00-00', 'to', '2014-07-10', '0000-00-00', 'A'),
(259, '0000-00-00', 3, 'Middle Level', 119, '0000-00-00', 'to', '2014-10-01', '0000-00-00', 'A'),
(260, '2013-10-01', 4, 'Middle Level', 119, '0000-00-00', 'to', '2013-10-01', '0000-00-00', 'A'),
(261, '2013-10-01', 58, 'Middle Level', 119, '0000-00-00', 'to', '2013-10-01', '0000-00-00', 'A'),
(262, '2013-10-01', 50, 'Middle Level', 122, '0000-00-00', 'to', '2013-10-01', '0000-00-00', 'A'),
(263, '2014-10-01', 7, 'Middle Level', 119, '0000-00-00', 'to', '2014-10-01', '0000-00-00', 'A'),
(264, '0000-00-00', 3, 'Minor Level', 108, '0000-00-00', 'to', '2014-10-09', '0000-00-00', 'A'),
(265, '0000-00-00', 50, 'Minor Level', 115, '0000-00-00', 'to', '2014-10-03', '2015-09-28', 'S'),
(266, '0000-00-00', 3, 'Minor Level', 115, '0000-00-00', 'to', '2014-10-09', '0000-00-00', 'A'),
(268, '2014-01-08', 8, 'Middle Level', 119, '0000-00-00', 'to', '2014-01-08', '0000-00-00', 'A'),
(269, '2014-01-13', 4, 'Minor Level', 115, '0000-00-00', 'to', '2014-01-13', '0000-00-00', 'A'),
(270, '2014-01-13', 3, 'Minor Level', 108, '0000-00-00', 'to', '2014-01-13', '2014-12-03', 'S'),
(271, '2014-01-13', 5, 'Executive Level', 78, '0000-00-00', 'to', '2014-01-13', '0000-00-00', 'A'),
(272, '2014-01-13', 5, 'Executive Level', 78, '0000-00-00', 'to', '2014-01-13', '0000-00-00', 'A'),
(273, '2014-01-13', 7, 'Executive Level', 78, '0000-00-00', 'to', '2014-01-13', '2015-09-04', 'S'),
(274, '2014-01-27', 7, 'Executive Level', 80, '0000-00-00', 'to', '2014-01-27', '0000-00-00', 'A'),
(275, '0000-00-00', 7, 'Executive Level', 80, '0000-00-00', 'to', '0000-00-00', '0000-00-00', 'A'),
(276, '2014-01-27', 8, 'Middle Level', 117, '0000-00-00', 'to', '2014-01-27', '0000-00-00', 'A'),
(277, '2014-02-03', 57, 'Executive Level', 42, '0000-00-00', 'to', '2014-02-03', '0000-00-00', 'A'),
(278, '2014-02-03', 5, 'Executive Level', 78, '0000-00-00', 'to', '2014-02-03', '2015-06-30', 'S'),
(279, '2014-02-05', 9, 'Executive Level', 118, '0000-00-00', 'to', '2014-02-05', '0000-00-00', 'A'),
(280, '2014-02-05', 9, 'Executive Level', 118, '0000-00-00', 'to', '2014-02-05', '0000-00-00', 'A'),
(282, '2014-02-17', 5, 'Executive Level', 116, '0000-00-00', 'to', '2014-02-17', '0000-00-00', 'A'),
(283, '2014-03-25', 5, 'Middle Level', 117, '0000-00-00', 'to', '2014-03-25', '2015-03-25', 'S'),
(285, '2014-06-02', 4, 'Executive Level', 21, NULL, '2015-06-02to2017-06-01', '2015-06-02', '0000-00-00', NULL),
(286, '2014-10-20', 4, 'Middle Level', 119, NULL, '2014-10-20to2017-10-19', '0000-00-00', '0000-00-00', 'A'),
(287, '2014-10-20', 6, 'Middle Level', 109, NULL, '2014-10-20to2017-10-19', '0000-00-00', '0000-00-00', 'A'),
(290, '2014-11-03', 50, 'Middle Level', 119, NULL, '2014-11-03to2017-11-02', '0000-00-00', '0000-00-00', NULL),
(291, '2014-11-03', 50, 'Middle Level', 126, NULL, '2014-11-03to2014-11-02', '2015-11-03', '0000-00-00', NULL),
(292, '2014-12-05', 7, 'Executive Level', 78, NULL, '2014-12-05to2017-12-04', '0000-00-00', '0000-00-00', NULL),
(293, '2014-12-01', 6, 'Executive Level', 78, NULL, '2014-12-01to2017-11-30', '0000-00-00', '0000-00-00', NULL),
(294, '2014-12-01', 6, 'Executive Level', 29, NULL, '2014-12-01to2017-12-01', '0000-00-00', '0000-00-00', NULL),
(295, '2014-12-01', 5, 'Middle Level', 117, NULL, '20141201to20171201', '0000-00-00', '0000-00-00', NULL),
(296, '2014-12-01', 6, 'Middle Level', 52, NULL, '2014-12-01to2017-11-30', '0000-00-00', '0000-00-00', NULL),
(298, '2014-12-29', 5, 'Middle Level', 117, NULL, '2014-12-29to2017-12-29', '0000-00-00', '0000-00-00', NULL),
(299, '2015-01-01', 5, 'Executive Level', 78, NULL, '2015-01-01to2017-12-31', '0000-00-00', '0000-00-00', NULL),
(302, '2015-07-07', 3, 'Minor Level', 108, NULL, '20150707to20180706', '0000-00-00', '0000-00-00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hr_personal_details`
--

CREATE TABLE `hr_personal_details` (
  `EmpNo` int(11) NOT NULL,
  `Title` varchar(10) DEFAULT NULL,
  `Surname` varchar(50) DEFAULT NULL,
  `Initials` varchar(50) DEFAULT NULL,
  `NameDnbyIntl` varchar(255) DEFAULT NULL,
  `NICNum` varchar(15) DEFAULT NULL,
  `DOB` varchar(15) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `PrmntAdd1` varchar(100) DEFAULT NULL,
  `PrmntAdd2` varchar(100) DEFAULT NULL,
  `PrmntAdd3` varchar(100) DEFAULT NULL,
  `CntctAdd1` varchar(100) DEFAULT NULL,
  `CntctAdd2` varchar(100) DEFAULT NULL,
  `CntctAdd3` varchar(100) DEFAULT NULL,
  `OfficeCnNum` varchar(20) DEFAULT NULL,
  `PrsnlCnNum` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Fullname` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hr_personal_details`
--

INSERT INTO `hr_personal_details` (`EmpNo`, `Title`, `Surname`, `Initials`, `NameDnbyIntl`, `NICNum`, `DOB`, `Gender`, `PrmntAdd1`, `PrmntAdd2`, `PrmntAdd3`, `CntctAdd1`, `CntctAdd2`, `CntctAdd3`, `OfficeCnNum`, `PrsnlCnNum`, `Email`, `Fullname`) VALUES
(5, 'Mrs.', 'Janashanthi', 'P. D. C. ', 'Palihenage Dona', '616810847 V', '1961.06.29', 'Female', '144/2,Mill Road, Katubedda, Moratuwa.', '', '', '', '', '', '2650838', '2650838', 'champika@accmt.ac.lk', 'P.D. Champika Janashanthi'),
(7, 'Mr.', NULL, NULL, 'Nawura Badalge Micheal', '573031970 V', '1957.10.29', 'Male', '36/2, Gonapola, Waskaduwatta. Gonapola.', '', '', '', '', '', '', '', '', 'N B Micheal'),
(8, 'Mr', NULL, NULL, 'Papiliyanage Thilakasiri', '590053660V', '1959.01.05', 'Male', 'No. 02, Thelawala, Mt. Lavinia', '', '', '', '', '', '', '', '', 'P. Thilakasiri'),
(24, 'Mr', 'Pasqual', 'S.N.', 'Pasquel Kankanamalage Saranath Nishantha Pasquel', '670330325 V', '1967.02.02', 'Male', 'No.112/48,Rajasamaranayaka Mawatha, Kurusa Handiya, Alubomulla, Panadura', '', '', '', '', '', '', '', '', 'S.N. Pasqual'),
(36, 'Mrs', 'De Silva', 'D. R. D.', 'Dilkusha Ruwani Deepika ', '596380522 V', '1959.05.17', 'Female', 'No.19/1,Maji Gunaratna Mawatha, Off Temple Road, Mount Lavinia.', 'Off Temple Road,', 'Mount Lavinia.', '', '', '', '', '', 'dilkusha@accmt.ac.lk', 'D. R. D. De Silva'),
(53, 'Mrs', 'De Silva', 'W. B. A.', 'Weligamage Binsi Amitha ', '548330696V', '1954.11.28', 'Female', 'No.243, Horana Road, Wekada, Panadura.', 'Wekada,', 'Panadura.', '', '', '', '', '', 'amitha@accmt.ac.lk', 'W. B. A. Weerawarnasuriya'),
(59, 'Mrs.', NULL, NULL, 'Gajaman Hewa Colambage', '675020450 V', '1967.01.03', 'Female', '', '', '', '', '', '', '', '', 'jayarani@accmt.ac.lk', 'G. H. C. Jayarani'),
(65, 'Mr', 'Jayakody', 'J. A. K. ', 'Jayakody Arachchige Kithsiri', '670981037 V', '1967.04.07', 'Male', 'No.37, Balagalla, Divulapitiya.', 'Balagalla,', 'Divulapitiya.', '', '', '', '0112650838', '0112650838', 'jayakodi@accmt.ac.lk', 'J. A. K.  Jayakody'),
(67, 'Mr', 'Sunil', 'H. M.', 'Handapangoda Mudalige', '670262715V', '1967.01.26', 'Male', 'No.64, Kosketiya, Palawattha West.', 'Kosketiya,', 'Palawattha West.', '', '', '', '', '', '', 'H. M. Sunil'),
(68, 'Mr', 'Alvis', 'N, D. N. K.', 'Nakandalage Don Neela Kumara', '672380588 V', '1967.08.25', 'Male', 'Ihala Kanda Para, Yagirala.', 'Yagirala,', '', '', '', '', '', '', '', 'N.D.N. Kumara'),
(70, 'Mrs', 'Ediriweera', 'K', 'Kamani', '656531568 V', '1965.06.01', 'Female', '61/2, 2 nd Lane, Wanatha Road, Gangodawila, Nugegoda.', 'Wanatha Road,Gangodawila,', 'Nugegoda.', '', '', '', '0112650837', '0112650837', 'kamani@accmt.ac.lk', 'K  Ediriweera'),
(75, 'Mrs', 'Medagama', 'M. A. D. C.', 'Modera Acharige Dumudinee Chandralatha ', '627040091 V', '1962.07.22', 'Female', '60 A, Sudarmarama Road, Katubedda, Moratuwa.', 'Sudharmarama Road,', 'Katubedda,Moratuwa', '', '', '', '0112650569', '0112650569', 'dumudu@accmt.ac.lk', 'M. A. D. C. Medagama'),
(93, 'Mr', 'Gunasekera', 'R. A. S. S Gunasekara', 'Ranawaka Arachchige Sujith Saraj', '663530500V', '1966.12.18', 'Male', '29/24, Mawathagama, Homagama.', 'Mawathagama,', 'Homagama.', '', '', '', '2650838', '2650838', 'saraj@accmt.ac.lk', 'R. A. S. S Gunasekara '),
(100, 'Mrs', 'Weerasekara', 'H. C,', 'Hodamuni Chandrika ', '655841725 V', '1965.03.25', 'Female', '22 C, Hill View Road, Panwila, Kalutara South.', 'Hill view Road, Panwila', 'Kalutara South', '', '', '', '2650838', '2650838', 'chandrika@accmt.ac.lk', 'H. C, Weerasekara'),
(107, 'Mrs.', 'Somathilake', 'L. R. N.', 'Lokuwithanage Rasika Nishanthi', '686710114V', '1968.06.19', 'Female', 'Araliya Mawatha, Tibbotugoda, Pokunuwita.', 'Thibbotugoda,', 'Pokunuwita.', '', '', '', '2650838', '2650838', 'rasika@accmt.ac.lk', 'L. R. N. Somathilake'),
(108, 'Mrs', 'Cooray', 'T. M. S. S.  P. ', 'Thusecooray Mohottigurunanselage Stella Sriya Prishanthie', '628442754V', '1962.12.09', 'Female', '89B,  Uyana Road, Moratuwa.', 'Uyana Road,', 'Moratuwa.', '', '', '', '', '', 'stella@accmt.ac.lk', 'T. M. S. S.  P.  Cooray'),
(112, 'Mr', NULL, NULL, 'Bellanavidanalage Anjana', '721062406V', '1972.04.15', 'Male', '69/1, Attidiya Road, Ratmalana.', 'Attidiya Road,', 'Ratmalana.', '', '', '', '', '', 'anjana @accmt.ac.lk', 'B. A. Jayasinghe'),
(116, 'Mr', 'Peiris', 'T. C. ', 'Thimbiripolage Chandana ', '703611842 V', '1970.12.26', 'Male', 'No. 241/2 B,  Galle Road, Ratmalana.', 'Galle Road,', 'Ratmalana.', '', '', '', '', '', 'chandana@accmt.ac.lk', 'T. C.  Peiris'),
(120, 'Mr', 'Jayawardena', 'J. K. ', 'Jayakodige Kavindra', '710710813V', '1971.03.11', 'Male', '10/5, Vipassarama Road, Maharagama.', 'Vipassarama Road,', 'Maharagama.', '', '', '', '0112651880', '0112651880', 'kavindra@accmt.ac.lk', 'J. K.  Jayawardena'),
(125, 'Mr', 'Wijayawardena', 'C. K.', 'Sarath Weerasundaralage Dedarshaka Chinthana Kumara', '692983017V', '1969.10.24', 'Male', '"Sisila", Palliyapitiya, Dunagaha.', 'Bopaththa,', 'Urapola.', '', '', '', '', '', 'chin@accmt.ac.lk', 'S W. C. K. Wijayawardena'),
(126, 'Mr.', NULL, NULL, 'Devage Vajira Nalin ', '752611491 V', '1975.09.17', 'Male', 'No. 1036,  Vijitna Mawatha, Nagoda.', '', '', '', '', '', '', '', '', 'D.V. N. Silva'),
(127, 'Mr', 'Perera', 'G. K. S.', 'Galhenage Kamal Shantha', '792152597V', '1979.08.02', 'Male', '87 E, Janahitha Mawatha, Ramukkana,  Bandaragama. ', '', '', '', '', '', '', '', '', 'G. K. S. Perera'),
(128, 'Mr', 'Jayadewa', 'E. B. D. P. ', 'Elpitiya Badalge Don Prasanna', '641312746V', '1964.05.10', 'Male', 'No.06, 2nd Lane, Katubedda,  Moratuwa.', 'Katubedda,', 'Moratuwa.', '', '', '', '', '', 'jayadeva@accmt.ac.lk', 'E. B. D. P.  Jayadewa'),
(130, 'Mr', 'Siriwardhana', 'S. A. A. ', 'Siriwardhana Arachchige Anurudhdha', '710631670V', '1971.03.03', 'Male', 'No. 79 C, Mahabellana, Alubomulla. ', '', '', '', '', '', '', '', '', 'S. A. A.  Siriwardhana'),
(132, 'Mr', 'Athuluwage', 'S. P. ', 'Saman Pushpakumara', '721680207V', '1972.06.16', 'Male', 'No.321, Miriswatta, Piliyandala.', 'Miriswatta,', 'Piliyandala.', '', '', '', '', '', 'saman@accmt.ac.lk', 'S. P.  Athuluwage'),
(138, 'Mrs', 'Bandara', 'P. M. K. A.', 'Panik Mudiyanselage Kanchana Ayomi', '778353032V', '1977.11.30', 'Female', 'No.219/31A, Sarvodaya Mawatha, Markandana,  Piliyandala.', '', '', '', '', '', '', '', 'Kanchana@accmt.ac.lk', 'P. M. K. A. Bandara'),
(139, 'Mr', 'Medagangoda', 'N I ', 'Nuwan Indika', '701972350 V', '1970.07.15', 'Male', 'No. 50 A, De Silva Road, Panadura.', 'De Silva Road,', 'Panadura', '', '', '', '2650838', '2650838', 'indika@accmt.ac.lk', 'N I  Medagangoda'),
(142, 'Mrs', 'Kandamby', 'N. M. ', 'Nadeeka Madhani', '745380867V', '1974.02.07', 'Female', 'Kirimetiwela,  Nehinna, Dodangoda.', '', 'Dodangoda.', '', '', '', '', '', 'nadeeka@accmt.ac.lk', 'N. M.  Kandamby'),
(143, 'Mrs.', 'Ketipearachchi', 'N. P. ', 'Nilmini Priyanthi ', '695731400 V', '1969.03.13', 'Female', '127, John Rodrigo Mawatha, Katubedda, Moratuwa.', '', '', '', '', '', '2650569, 2650838', '2650569, 2650838', 'nilmini@accmt.ac.lk', 'N P Ketipearachchi'),
(146, 'Mrs', 'Rathnayake', 'R. M. L. N. ', 'Rathnayake Mudiyanselage Lilanthi Nirupa', '727150153 V', '1972.08.02', 'Female', '241/ 2B, Galle Road. Ratmalana.', '', '', '', '', '', '2650838', '2650838', 'nirupa@accmt.ac.lk', 'R. M. L. N.  Rathnayake'),
(147, 'Mrs', 'Pushparani', 'M. L. A. N. ', 'Mirisse Liyana Arachchige Nirmala', '695972466V', '1969.04.06', 'Female', '89/E,  Uswatte Road, Mahawila, Panadura.', 'Uswatta Junction,', 'Mahawila,Panadura.', '', '', '', '0112650838', '0112650838', 'nirmala@accmt.ac.lk', 'M. L. A. N.  Pushparani'),
(149, 'Mrs', 'Athuraliya', 'J. P. D. S', 'Janakie Purnima De Silva', '686920291V', '1968.07.10', 'Female', '18/8, Walauwatha, Wekada, Panadura.', 'Walauwatha,Wekada,', 'Panadura.', '', '', '', '2650838', '2650838', 'janaki@accmt.ac.lk', 'J. P. D. S Athuraliya'),
(161, 'Mr', 'Rodrigo', 'P.P.K.', 'Pulahingage Priyanka Kamal ', '683130974V', '08-Nov-68', 'Male', '"JAYA SRI",', 'Metiyalamulla,', 'Payagala.', '', '', '', '01233454', '', '', 'P.P.K. Rodrigo'),
(162, 'Mr', 'Anuruddha', 'P. K. P.', 'Puwakketiye Kankanamge Piyal', '751420510V', '1975.05.21', 'Male', '"Anuradha" Alwis watta, Kalutara South.', '', '', '', '', '', '', '', 'piyal@accmt.ac.lk', 'P. K. P. Anuruddha'),
(168, 'Mr', 'Pushpakumara', 'P. D. S. ', 'Pathirage Don Samantha', '753232184V', '1975.11.18', 'Male', '299 F, Abhaya Mawatha, Nagoda,  Kalutara.', 'Nagoda,', 'Kalutara.', '', '', '', '', '', 'samantha@accmt.ac.lk', 'P. D. S.  Pushpakumara'),
(169, 'Mr', 'De Silva', 'D. N. ', 'Ginige Dinusha Niwantha', '7521828332v', '1975.08.05', 'Male', 'No. 06, Town Hall Road, Ambalangoda.', '', '', '', '', '', '', '', 'dinusha@accmt.ac.lk', 'G.D. N.  De Silva'),
(180, 'Mr', 'Welikala', 'S. A. ', 'Shiran Anton', '', '1970.12.02', 'Male', 'No.153.First  Lane, Pahathgama, Hanwella.', '', '', '', '', '', '0112650569', '0112650569', 'shiran@accmt.ac.lk', 'S. A.  Welikala'),
(188, 'Mr', 'Dharmalal', 'M. A. K. ', 'Meegamuwage Ajith Kumara', '640822228V', '1964.03.22', 'Male', 'No.163/1, Katuwangoda,  Pothupitiya, Wadduwa.', '', '', '', '', '', '0112650838', '0112650838', '', 'M. A. K.  Dharmalal'),
(190, 'Mr', 'Dasanayaka', 'R. P. ', 'Rohan Priyantha', '701130839V', '1970.04.22', 'Male', '217 A,  Haltota  West, Haltota,  12538.', '', '', '', '', '', '2650838', '2650838', '', 'R. P.  Dasanayaka'),
(191, 'Mr', 'Adassuriya', 'J', 'Janaka', '751502176V', '1975.05.29', 'Male', '31/8, 4th Lane, Wickramasinghepura, Battaramulla.', '', '', '', '', '', '2650838', '2650838', 'adassuriya@accmt.ac.lk', 'J Adassuriya'),
(192, 'Mr', 'Liyanage', 'S.P.K.K.A', 'Sarath Preethi Kusum Kulappu Arachchi', '620283797V', '1962.01.28', 'Male', 'No.11,  Dawatagahawatta, Meda Wadduwa,  Wadduwa.', '', '', '', '', '', '2650839', '2650839', 'preethi@accmt.ac.lk', 'S.P.K.K.A Liyanage'),
(193, 'Mrs. ', 'Aluthge', 'V. K.', 'Vishaka  Kumuduni', '676411143 V', '1967.05.20', 'Female', '"Suvinda" Pirivena Road, Molligoda, Wadduwa.', '', '', '', '', '', '', '', 'vishaka@accmt.ac.lk', 'V K Aluthge'),
(199, 'Mr', 'Rupasinghe', 'S. R. S.', 'Singappuli Ralalage Sudarshana', '850224056V', '1985.01.22', 'Male', 'No. 835/28, Rose Garden, Galle Road, Molligoda, Wadduwa.', '', '', '', '', '', '', '', 'sudarshana@accmt.ac.lk', 'S. R. S. Rupasinghe'),
(200, 'Mr', 'Kumara', 'P. L. S. ', 'Polpitiya Lekamlage Shantha', '760420840V', '1976.02.11', 'Male', '66/1, Madeniya,  Pitawala.', '', '', '', '', '', '0112650838', '0112650838', '', 'P. L. S.  Kumara'),
(202, 'Mr', 'Gunasekara', 'K. A. K. ', 'Kirinde Arachchige Keerthi', '640220031V', '1964.01.22', 'Male', 'Priyanka, Diwalwathugoda, Puhulwella, Matara.', '', '', '', '', '', '', '', 'keerthi@accmt.ac.lk', 'K. A. K.  Gunasekara'),
(207, 'Mr', 'Jayakody', 'J. R. T. N.', 'Jayakody Ralalage Thushantha Niranjan', '810561505V', '1981.02.25', 'Male', 'No 181 2/2, Ulukade Junction, Ganemulla.', '', '', '', '', '', '', '', 'jayakody@accmt.ac.lk', 'J. R. T. N. Jayakody'),
(209, 'Mr', 'De Silva', 'W. C. B. ', 'Waradana Chamika Bishwajith', '740480413V', '1974.02.17', 'Male', 'P. R. De Silva Mawatha, Brahmanawatta, Balapitiya.', '', '', '', '', '', '', '', 'chamika@accmt.ac.lk', 'W. C. B.  De Silva'),
(212, 'Mr', 'Fernando', 'E. P. P', 'Eashrawari Priyantha Pushpakumara', '691632466V', '1969.06.11', 'Male', 'No. 14/12 B, Koralawella Road, Moratuwa.', '', '', '', '', '', '', '', 'priyantha@accmt.ac.lk', 'E. P. P Fernando'),
(213, 'Mr', 'Silva', 'W. A. P. ', 'Walathara Arachchige Panduka', '551892212  V', '1955.07.07', 'Male', '342/1,Sri Benett Soysa Mawatha, Morawinna, Panadura.', '', '', '', '', '', '2650838', '2650838', 'panduka@accmt.ac.lk', 'W. A. P.  Silva'),
(215, 'Mr', 'Rathnayake', 'J. S. B. ', 'Janaka Samantha Bandara', '740132490V', '1974.01.13', 'Male', 'No, 93,  Pilapitiya, Muruthalawa.', '', '', '', '', '', '0112650838', '0112650838', 'janaka @accmt.ac.lk', 'J. S. B.  Rathnayake'),
(216, 'Mr', 'Dias', 'N. K. L. T. M. S. ', 'Nanayakkarawasam Kalupahana Liyanage Thusitha Manju Sri', '712410337V', '1971.08.28', 'Male', 'No.45/1, Mahalwarawa Road, Panipitiya.', '', '', '', '', '', '0112650838', '0112650838', 'tmsdias@yahoo.com', 'N. K. L. T. M. S.  Dias'),
(217, 'Mr.', NULL, NULL, 'Preethi Sanath', '662142409 V', '1966.08.01', 'Male', '173/4,  Kaolin Refinery Road, Werahera, Boralesgamuwa.', '', '', '', '', '', '', '', 'dg.accmt.ac.lk', 'P. S. Panawennage'),
(218, 'Mr', 'De Silva', 'N. K. J. K. ', 'Nammuni Kasun Jayalath Kumara', '853001759V', '1985.10.26', 'Male', '36/2, Sagara Mawatha, Kuda Payagala. Payagala.', '', '', '', '', '', '01122650838', '01122650838', '', 'N. K. J. K.  De Silva'),
(225, 'Mr', 'Ranawaka', 'R. A. C. A. K. ', 'Ranawaka Arachchige Chinthaka Aruna Kumara', '770573564V', '1977.02.26', 'Male', 'No.20/A, Galwarusa Road, Korathota, Kaduwela.', '', '', '', '', '', '', '', 'chinthaka@accmt.ac.lk', 'R. A. C. A. K.  Ranawaka'),
(226, 'Mr', 'Koruwage', 'J. S. ', 'Janaka Srimal', '801340040V', '1980.05.13', 'Male', 'No.1/23, Kinswell Park, Marapola, Veyangoda.', '', '', '', '', '', '', '', '', 'J. S.  Koruwage'),
(236, 'Mr', 'Sajith', 'N. T. M. ', 'Nakur Thamby Mohamed', '851430342V', '1985.05.22', 'Male', 'No. 169, Haja Road,  Sainthamaruthu - 10', '', '', '', '', '', '2650838', '2650838', '', 'N. T. M.  Sajith'),
(237, 'Ms', 'Jayasinghe Arachchi', 'T. V. ', 'Thilini Vijayanthi', '855990091V', '1985.04.08', 'Female', 'No. 167, 9th Lane,Pilomina Estate, Dodangoda.', '', '', '', '', '', '2650838', '2650838', '', 'T. V.  Jayasinghe Arachchi'),
(238, 'Mr', 'Karunarathna', 'C. M. ', 'Charaka Maduranga', '862360273V', '1986.08.23', 'Male', 'B - 3 -2/1, Soyzapura, Moratuwa.', '', '', '', '', '', '2650838', '2650838', '', 'C. M.  Karunarathna'),
(239, 'Ms.', NULL, NULL, 'Maddumage Lakshani', '858513278 V', '1985.12.16', 'Female', 'No. 5/34, B D L Gunasekera Mawatha, Munagama, Horana.', '', '', '', '', '', '', '', 'lakshani@accmt.ac.lk', 'M. L. Karunarathne'),
(244, 'Mr.', NULL, NULL, 'Abdul Raheem Mohamed ', '761852078 V', '1976.07.03', 'Male', '38/3, Deniya Road, Thalupotha, Negombo.', '', '', '', '', '', '', '', '', 'A. R. M. Rila'),
(246, 'Mr', 'Ranathunga', 'W. R. S. C. ', 'Wickrama Ralalage Sahan Chandrakantha', '872660259V', '1987.09.22', 'Male', '52A/3, Ramasinghe Lane, Kiribathgoda.', '', '', '', '', '', '', '', '', 'W. R. S. C.  Ranathunga'),
(249, 'Mr', 'Niriella.', 'U.D', 'Upul Dhammika.', '682858779V', '1968.10.11', 'Male', 'NO.64/A,  Ihala Beligalla,  Beliatta. ', 'Ihala Beligalla,', 'Beliatta.', '', '', '', '', '', 'upul@accmt.ac.lk', 'U.D Niriella.'),
(251, 'Mr', NULL, NULL, 'Wickramasinghe Rajakaruna Weerakoon Mudiyansele Yasas Sri Bandara Bulumulla', '840812170 V', '1984.03.22', 'Male', 'No. 170 A, Bulumulla, Kiribathkumbura.', '', '', '', '', '', '', '', '', 'W. R. W. M. Y. S. B. Bulumulla'),
(252, 'Mr', NULL, NULL, 'Lokugam Hewa ', '883090500 V', '1988.11.04', 'Male', 'No. 82/18,  Opposite of the Police Station Road,  Ketethanna, Kahawaththa.', '', '', '', '', '', '', '', 'malindu@accmt.ac.lk', 'L. H.  Malindu Tilan'),
(253, 'Ms', NULL, NULL, 'Wadukimbura Arachchilage Kaushalya', '896010719 V', '1989.04.10', 'Female', 'Bogada Aramba, Dewalegama, Pelmadulla.', '', '', '', '', '', '0112650838', '0112650838', 'Kaushalya@accmt.ac.lk', 'W. A. K. Madumali'),
(254, 'Mr', NULL, NULL, '', '', '', 'Male', '', '', '', '', '', '', '', '', '', 'C. R. Ranasinghe'),
(255, 'Mrs.', NULL, NULL, 'Nissanka Arachchi Appuhamilage ', '865450222 V', '1986.02.14', 'Female', '', '', '', '', '', '', '', '', 'nadeesha@accmt.ac.lk', 'N. A. A. Nadeesha Dilrukshi'),
(256, 'Ms', NULL, NULL, 'Vijayagopal', '878300432 V', '1987.11.25', 'Female', '135/14, Sri Saranankara Road, Fernando Garden, Dehiwala.', '', '', '', '', '', '', '', '', 'Vijayasothy V'),
(257, 'Mr.', NULL, NULL, 'Rathnayake Arachchige', '830224351 V', '1983.01.22', 'Male', '212/8, Salalihini Mawatha, Mulleriyawa North, Mulleriyawa New Town.', '', '', '', '', '', '', '', 'gamini@accmt.ac.lk', 'R. A. Gamini'),
(258, 'Mr', NULL, NULL, 'Siyabalawe Ralalage Janaka Sampath', '831920319 V', '1983.07.10', 'Male', 'No. 74, Waduwawe Niwasa, Hathalispahuwa, Polgahawela.', '', '', '', '', '', '', '', '', 'S. R. J. S. Bandara'),
(259, 'Mrs ', NULL, NULL, 'Karunamuni Champa Indumathi ', '738411439 V', '1973.12.06', 'Female', 'Ranaviru Udayapushpakumara Mawatha, Kudawaskaduwa,  Waskaduwa.', '', '', '', '', '', '', '', '', 'K. C. I. Silva'),
(260, 'Ms.', NULL, NULL, 'Hembathantrige Dilini Nisansala', '895850128 V', '1989.03.25', 'Female', 'No. 128/A,  Ihala Wadugoda, Payagala.', '', '', '', '', '', '', '', '', 'H. D. N. Fernando'),
(261, 'Ms.', NULL, NULL, 'Pettagam Dilini Thaksala ', '906460513 V', '1990.05.25', 'Female', '"Bhagya",  Maradana,  Balapitiya.', '', '', '', '', '', '', '', '', 'P. D. T. De Silva'),
(262, 'Ms.', NULL, NULL, 'Kodippili Thanthillage Chamali Kaushalya', '936882196 V', '1993.07.06', 'Female', '66/172, E/1,  Seewali Lane, Borella, Colombo 08.', '', '', '', '', '', '', '', '', 'K. T. C. K. Alwis'),
(263, 'Ms.', NULL, NULL, 'Mudiyanse Bandalaralage Aruni Madhushani ', '897772710 V', '1989.10.03', 'Female', '64/5, Sri Medhananda Mawatha, Makuluduwa, Piliyandala.', '', '', '', '', '', '', '', '', 'M.. B. A. M. Dissanayake'),
(264, 'Mr.', NULL, NULL, 'Polpitiyage', '813222248 V', '1981.11.17', 'Male', 'No. 941, Nawagamuwa, Thalapitiya, Ranala.', '', '', '', '', '', '', '', '', 'P. Buddhika Warnakula'),
(265, 'Mr.', NULL, NULL, 'Prasad', '880931890 V', '1988.04.02', 'Male', '96/1,  Mavittara,  Piliyandala.', '', '', '', '', '', '', '', '', 'P. Chandima Ramanayake'),
(266, 'Mr.', NULL, NULL, 'Gangodage Mangala', '7412204331 V', '1974.05.01', 'Male', 'Maswila Road, Wevita, Bandaragama.', '', '', '', '', '', '', '', '', 'G. M. Rodrigo'),
(267, 'Mr.', NULL, NULL, '', '', '', 'Male', '', '', '', '', '', '', '', '', '', 'Saman Keerthi '),
(268, 'Ms.', NULL, NULL, 'Kolonna Arachchige', '826390522  V', '1982.05.18', 'Female', 'No. 57, Bonjieon Road, Kotahena, Colombo 13.', '', '', '', '', '', '', '', '', 'K. A. Sumudu L. Perera'),
(269, 'Mr.', NULL, NULL, 'Kuruppumullage Don Shanaka', '910181920 V', '1991.01.18', 'Male', 'No. 108/14,  Watarappola Road, Mount Lavinia', '', '', '', '', '', '', '', '', 'K. D. S. Awantha'),
(270, 'Mr. ', NULL, NULL, NULL, '', '', 'Male', '', '', '', '', '', '', '', '', '', 'U. A. D Upul Priyashantha'),
(271, 'Miss.', NULL, NULL, 'Vidana Kankanamlage Oshadi Nisansala', '876660997 V', '1987.06.14', 'Female', '57, Madakumbura, Panadura', '', '', '', '', '', '', '', '', 'V. K. O. N. Thalpawila'),
(272, 'Mr.', NULL, NULL, 'Jayalath Pathirage ', '891933452 V', '1989.07.11', 'Male', '380/5, Jayalath Medical Centre, Himbutana.', '', '', '', '', '', '', '', '', 'J. P. Rajitha Prasanna'),
(273, 'Mr.', NULL, NULL, 'Lavanan ', '872560831  V', '1987.09.12', 'Male', 'No. 3 B  1/1,  Alexandra Road,  Colombo - 00600', '', '', '', '', '', '', '', '', 'L  Vengadasalam'),
(274, 'Mr.', NULL, NULL, 'Buddika Sampath', '792690106 V', '1979.09.25', 'Male', '73/12,  Nedahas Mawatha, Keerapane, Gampola.', '', '', '', '', '', '', '', '', 'B. S. Marasinghe'),
(275, 'Ms.', NULL, NULL, 'Manage Hiruni Chathurika', '875930737 V', '1987.04.02', 'Female', 'Werella, Hapugoda, Hiriwadunna.', '', '', '', '', '', '', '', '', 'M. H. C. Kumarasinghe'),
(276, 'Mr.', NULL, NULL, 'Kahawalage Saminda', '882301893 V', '1988.08.17', 'Male', 'Mahagedarawatta Road, Haltota West, Haltota.', '', '', '', '', '', '', '', '', 'K. S. Roshan'),
(277, 'Mr.', NULL, NULL, 'Meringhage Parakrama Ruchranath ', '', '1972.10.08', 'Male', 'No. 39/10, Siripapura Place, Singera Road, Madiwela.', '', '', '', '', '', '', '', '', 'M. P. R. Perera'),
(278, 'Mr.', NULL, NULL, 'Manjula Buddhika ', '852583088 V', '1985.09.14', 'Male', 'No. 140/15,  Lower Kindgs Street, Badulla.', '', '', '', '', '', '', '', '', 'M.B. Thilakarathne'),
(279, 'Ms.', NULL, NULL, 'Liyana  Arachchige Chandima Priyadarshani', '', '1985.08.06', 'Female', '245 C,  Hettipola Road, Kuliyapitiya.', '', '', '', '', '', '', '', '', 'L. A. C. P. Ranasinghe'),
(280, 'Ms.', NULL, NULL, 'Hewage Dona ', '', '', 'Female', 'No. 267, Horagollawatta, Deenapamunuwa, Urapola.', '', '', '', '', '', '', '', '', 'S. D. Shiromi Lakmali '),
(281, 'Ms.', NULL, NULL, NULL, '', '', 'Female', '', '', '', '', '', '', '', '', '', 'R. M. T. M. Danapala'),
(282, 'Mr.', NULL, NULL, 'Rajapaksha Arachchige Don Kavindra', '802740611 V', '1980.09.30', 'Male', 'No. 4  A/19,  "Kavindu",  Tissapura II,  Ampara.', '', '', '', '', '', '', '', '', 'R. A. D. K. Sampath'),
(283, 'Mr.', NULL, NULL, 'Dombagahapathirage Ushan Aruna', '770733073 V', '1977.03.13', 'Male', '13 A,  Egoda Uyana, Moratuwa.', '', '', '', '', '', '', '', '', ' D U A Fernando'),
(285, 'Mr', NULL, NULL, NULL, '680952981v', '1968-04-04', 'Male', '63/6', 'Epitamulla Road', 'Pitakotte, Kotte', '', '', '', '', '', '', 'A S Weerapperuma'),
(286, 'Ms', NULL, NULL, 'K P D P Pathirana', '935880203 V', '1993-03-28', 'Female', '303/C, Welivita, Kaduwela.', '', '', '', '', '', '', '', '', 'Kandangamuwe Pathirannahalage Dineshi Prabaha Pathirana'),
(287, 'Ms.', NULL, NULL, NULL, '886281609 V', '', 'Female', '1/197,  Vidyala Mawatha, Habarakada, Homagama.', '', '', '', '', '', '', '', '', 'Paragahagoda Wahumpurage Manuji Mokshika Kulatunga'),
(290, 'Ms', NULL, NULL, 'R M S D Madumala', '907701085 V', '1990-09-26', 'Female', 'No. 110/A,  Ratnapura Road,  Avissawella.', '', '', '', '', '', '', '', '', 'Ranawaka Mudiyanselage Sanoja Dilhani Madumala'),
(291, 'Ms.', NULL, NULL, NULL, '918440925 V', '1991.12.09', 'Female', 'No. 55/14,  Kolamunna, Piliyandala.', '', '', '', '', '', '', '', '', 'Weerasinghe Arachchilage Paviththra '),
(292, 'Mr. ', NULL, NULL, 'W K M Mahindapala', '723032415 V', '1972.10.29', 'Male', 'No. 65/24,  Old Road,  Kalutara South.', '', '', '', '', '', '', '', '', 'Wadumestrige Kamal Manjula Mahindapala'),
(293, 'Mr.', NULL, NULL, 'A N Nanayakkara', '863162319 V', '1986.11.11', 'Male', '44 C, Walauwatta, Telejjawila.', '', '', '', '', '', '', '', '', 'Anurudde Nirmala Nanayakkara'),
(294, 'Mr.  ', NULL, NULL, 'P. Mahadevan', '893480129 V', '1989-12-13', 'Male', '91/4,  4/1  Hamden Lane,  Colombo 06', '', '', '', '', '', '', '', '', 'Prasanna Mahadevan'),
(296, 'Mr.', NULL, NULL, 'C D Panamaldeniya', '892060673 V', '1989.07.24', 'Male', 'No. 116/12 A, Vihara Mawatha, Mulgampola, Kandy.', '', '', '', '', '', '', '', '', 'Chameera Darshana Panamaldeniya'),
(298, 'Mr.', NULL, NULL, 'M D P Peiris', '80330065 V ', '2nd February 19', 'Female', 'No. 32/A 1st Lane, Koralawella, Moratuwa.', '', '', '', '', '', '', '', '', 'Mahathelge Dilan Prasanga Peiris');

-- --------------------------------------------------------

--
-- Table structure for table `hr_projects`
--

CREATE TABLE `hr_projects` (
  `serial_no` int(11) NOT NULL,
  `year` int(4) NOT NULL,
  `div_code` int(11) NOT NULL,
  `pt_code` int(11) NOT NULL,
  `description` varchar(6) NOT NULL,
  `code` varchar(19) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `apcode` varchar(10) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `ptype` varchar(20) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `confirm` varchar(1) NOT NULL DEFAULT 'n',
  `sk_code` varchar(15) NOT NULL,
  `p_close` varchar(1) NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_projects`
--

INSERT INTO `hr_projects` (`serial_no`, `year`, `div_code`, `pt_code`, `description`, `code`, `pname`, `apcode`, `startdate`, `enddate`, `ptype`, `cname`, `confirm`, `sk_code`, `p_close`) VALUES
(1, 2017, 8, 3, 'PLC1ST', '2017/ISD/COU/PLC1ST', 'Programmable Logic Controller Course 2017 1st', '5.1.1', '2017-01-02', '2017-02-24', 'Client based', 'Industry', 'y', '17IS001', 'y'),
(2, 2017, 8, 4, 'CALBRN', '2017/ISD/CAL/CALBRN', 'CALIBRAION 2017', '5.2..2', '2017-01-01', '2017-12-31', 'Client based', 'Industry', 'y', '17IS002', 'n'),
(3, 2017, 8, 7, 'LMStst', '2017/ISD/PFT/LMStst', 'Light Measurement', '5.2.1', '2017-01-01', '2017-12-31', 'Client based', 'Industry', 'y', '17IS003', 'n'),
(4, 2017, 8, 1, 'Maintn', '2017/ISD/CON/Maintn', 'Maintenance', '5.3', '2017-01-01', '2017-12-31', 'Inhouse', '', 'n', '', 'n'),
(10, 2017, 6, 7, 'BAT-Q1', '2017/ELE/PFT/BAT-Q1', 'Battery Testing-Q1', '1.3.1', '2017-01-01', '2017-03-31', 'Client based', 'Industry', 'y', '17EL001', 'n'),
(11, 2017, 6, 5, 'RMLEEL', '2017/ELE/IHS/RMLEEL', 'RepMainLE', '1.6', '2017-01-01', '2017-12-31', 'Inhouse', 'ACCIMT', 'y', '17EL002', 'n'),
(12, 2017, 9, 8, 'DROMON', '2017/ITD/PRJ/DROMON', 'Rainfall Data Collection System', '4.1.1', '2017-01-02', '2017-03-31', 'Client based', 'Department of Agrarian Development', 'n', '', 'n'),
(14, 2017, 6, 8, 'LFTTAB', '2017/ELE/PRJ/LFTTAB', 'Lift Table', '1.3', '2017-01-19', '2017-03-31', 'Inhouse', 'ACCIMT', 'y', '17EL003', 'n'),
(15, 2017, 6, 8, 'WSDLPU', '2017/ELE/PRJ/WSDLPU', 'Wireless Secured Data Logger', '1.1.2', '2017-01-01', '2017-12-31', 'Client based', 'Public Utilities Commission of Sri Lanka', 'y', '', 'n'),
(16, 2017, 6, 8, 'AISELE', '2017/ELE/PRJ/AISELE', 'Automated Irrigation System', '1.1.4', '2017-01-01', '2017-12-31', 'Inhouse', 'ACCIMT', 'y', '', 'n'),
(17, 2017, 6, 8, 'POEBDC', '2017/ELE/PRJ/POEBDC', 'POE based Digital Clock', '1.1.3', '2017-01-01', '2017-12-31', 'Inhouse', 'ACCIMT', 'y', '', 'n'),
(18, 2017, 6, 8, 'HPSACM', '2017/ELE/PRJ/HPSACM', 'High Performance Surge Absorber for Common Mode', '1.1.1', '2017-01-01', '2017-12-31', 'Inhouse', 'ACCIMT', 'y', '', 'n'),
(19, 2017, 7, 8, 'AST/DS', '2017/STA/PRJ/AST/DS', 'Mode Identification of Oscillations of Delta Scuti', '3.1.1', '2017-01-02', '2018-12-31', 'Inhouse', '', 'y', '', 'n'),
(20, 2017, 7, 8, 'AST/SU', '2017/STA/PRJ/AST/SU', 'Study and Investigate internal characteristics of ', '3.1.2', '2017-01-02', '2017-12-29', 'Inhouse', '', 'y', '', 'n'),
(21, 2017, 7, 8, 'AST/CM', '2017/STA/PRJ/AST/CM', 'Comet morphology studies on 41P/Tuttle-Giacobini-K', '3.1.3', '2017-01-02', '2017-12-29', 'Inhouse', '', 'y', '', 'n'),
(23, 2017, 7, 8, 'AST/CR', '2017/STA/PRJ/AST/CR', 'Collaborative Research Projects with local Univers', '3.1.5', '2017-01-02', '2017-06-30', 'Collaborative', 'University of Sri Jayawardenapura', 'n', '', 'n'),
(24, 2017, 7, 3, 'AST/AW', '2017/STA/COU/AST/AW', 'Workshop on introduction to Practical Astronomy', '3.2.1', '2017-12-01', '2017-12-29', 'Inhouse', '', 'n', '', 'n'),
(25, 2017, 7, 3, 'AST/TP', '2017/STA/COU/AST/TP', 'Astronomy teacher training program', '3.2.2', '2017-08-07', '2017-08-31', 'Inhouse', '', 'n', '', 'n'),
(26, 2017, 7, 2, 'AST/EV', '2017/STA/EVT/AST/EV', 'Educational visits to ACCIMT facilities', '3.3.1', '2017-02-02', '2017-02-02', 'Inhouse', '', 'y', '', 'n'),
(27, 2017, 7, 2, 'AST/WR', '2017/STA/EVT/AST/WR', 'Water rocket educational workshop & the - Water Ro', '3.3.2 ', '2017-02-02', '2017-02-02', 'Inhouse', '', 'n', '', 'n'),
(28, 2017, 7, 8, 'SA/UAV', '2017/STA/PRJ/SA/UAV', 'Research project  using on UAV imagery', '3.4.1', '2017-01-02', '2017-12-29', 'Collaborative', 'Department of Archeology', 'n', '', 'n'),
(29, 2017, 6, 8, 'SA/SPS', '2017/ELE/PRJ/SA/SPS', 'Research project  on Spectral Signatures ', '3.4.2', '2017-01-02', '2017-12-29', 'Collaborative', 'Department of Rice Research Institute, University ', 'n', '', 'n'),
(32, 2017, 7, 8, 'SA/UND', '2017/STA/PRJ/SA/UND', 'Regional and international collaborations for nati', '3.5.1', '2014-01-01', '2017-12-29', 'Collaborative', 'Department of Agriculture, Irrigation etc', 'n', '', 'n'),
(33, 2017, 7, 8, 'SA/SSB', '2017/STA/PRJ/SA/SSB', 'Spectral Signature Bank', '3.5.2', '2017-01-02', '2017-09-29', 'Inhouse', '', 'y', '', 'n'),
(34, 2017, 7, 3, 'SA/WRG', '2017/STA/COU/SA/WRG', 'workshop on introduction to RS/ GIS & Remote Sensi', '  3.6.1', '2017-07-03', '2017-07-28', 'Inhouse', '', 'n', '', 'n'),
(35, 2017, 7, 8, 'SA/GOP', '2017/STA/PRJ/SA/GOP', 'Development of a Geoportal', '3.7.1', '2017-01-02', '2017-12-29', 'Inhouse', '', 'y', '', 'n'),
(36, 2017, 7, 8, 'SA/NHB', '2017/STA/PRJ/SA/NHB', 'National Hub', '3.7.2', '2017-01-02', '2017-12-29', 'Inhouse', '', 'n', '', 'n'),
(37, 2017, 7, 8, 'ST/NSP', '2017/STA/PRJ/ST/NSP', 'Nano Satellite Programe', '3.8.1 ', '2016-10-17', '2019-12-27', 'Collaborative', 'Samara Aerospace State University ', 'n', '', 'n'),
(38, 2017, 7, 8, 'ST/CBP', '2017/STA/PRJ/ST/CBP', 'Capacity building programmes for Space Technologie', '3.8.2 ', '2017-01-02', '2017-12-29', 'Inhouse', '', 'n', '', 'n'),
(39, 2017, 7, 8, 'ISNNAO', '2017/STA/PRJ/NAOISN', 'National Astronomical Observatory & ISON Project ', '3.9.1', '2017-01-02', '2017-12-29', 'Inhouse', '', 'n', '', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `hr_project_details`
--

CREATE TABLE `hr_project_details` (
  `serial_no` int(11) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `apnumber` int(11) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `ptype` varchar(20) NOT NULL,
  `cname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_project_details`
--

INSERT INTO `hr_project_details` (`serial_no`, `pname`, `apnumber`, `startdate`, `enddate`, `ptype`, `cname`) VALUES
(32, 'calibration', 1, '2016-12-15', '2016-12-27', '', ''),
(33, 'WEB', 0, '2016-11-24', '2016-11-29', '', ''),
(40, 'WEB', 0, '2016-11-30', '2017-11-15', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `hr_project_types`
--

CREATE TABLE `hr_project_types` (
  `pt_code` int(11) NOT NULL,
  `pt_short_des` varchar(50) NOT NULL,
  `pt_description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_project_types`
--

INSERT INTO `hr_project_types` (`pt_code`, `pt_short_des`, `pt_description`) VALUES
(1, 'CON', 'Test and Measurements'),
(2, 'EVT', 'Other Events programmes'),
(3, 'COU	', 'Courses'),
(4, 'CAL	', 'Calibration Jobs'),
(5, 'IHS', 'Inhouse services (Repairs, LAN maintenance))'),
(6, 'CRP	', 'Complex recovery projects'),
(7, 'PFT', 'Performance Testing Jobs'),
(8, 'PRJ', 'Projects(inhouse and Client based)');

-- --------------------------------------------------------

--
-- Table structure for table `hr_salary`
--

CREATE TABLE `hr_salary` (
  `SalaryCode` varchar(50) NOT NULL DEFAULT '',
  `SalaryScale` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hr_salary`
--

INSERT INTO `hr_salary` (`SalaryCode`, `SalaryScale`) VALUES
('AR 1', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250'),
('AR 2', '34,550 - 10 X 925 - 43,800'),
('HM 1-3', '41,745 - 15 X 1,100 - 58,245'),
('HM 2-1', '44,030 - 12 X 1,310 - 59,750'),
('HM 2-2', '44,755 - 12 X 1,310 - 60,475'),
('HM 2-3', '47,245 - 12 X 1,310 - 62,965'),
('JM 1-2', '20,890 - 10 X 365 - 18 X 550 - 34,440'),
('MA 1-2', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710'),
('MA 2-2', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	'),
('MM 1-1', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655'),
('PL 1', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 - 17,845'),
('PL 2', '12,410 - 10 X 130 - 10 X 145 - 10 X 160 -12 X 170 - 18,800'),
('PL 3', '12,670 - 10 X 130 - 10 X 145 - 10 X 160 - 12 X 170 - 19,060'),
('aaa', '54'),
('r', '444');

-- --------------------------------------------------------

--
-- Table structure for table `hr_salary_all_details`
--

CREATE TABLE `hr_salary_all_details` (
  `EmpNo` int(11) NOT NULL,
  `CurrentSalary` int(11) NOT NULL,
  `SalaryAfterIncrement` int(11) NOT NULL,
  `IncrementValue` int(11) NOT NULL,
  `SalaryCode` varchar(50) NOT NULL,
  `Grade` int(2) NOT NULL,
  `TotalPayYears` int(11) NOT NULL,
  `RemainingYears` int(11) NOT NULL,
  `Link` varchar(255) NOT NULL,
  `PaidDate` date NOT NULL,
  `Order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_salary_all_details`
--

INSERT INTO `hr_salary_all_details` (`EmpNo`, `CurrentSalary`, `SalaryAfterIncrement`, `IncrementValue`, `SalaryCode`, `Grade`, `TotalPayYears`, `RemainingYears`, `Link`, `PaidDate`, `Order`) VALUES
(5, 53845, 54945, 1100, 'HM 1-3 ', 1, 13, 3, 'P.D. Champika Janashanthi2014-02-06', '2014-02-06', 1),
(107, 48345, 49445, 1100, 'HM 1-3 ', 1, 8, 8, 'L. R. N. Somathilake2013-06-25', '2013-06-25', 1),
(59, 40180, 41105, 925, 'MM 1-1 ', 1, 20, 6, 'G. H. C. Jayarani2013-12-07', '2013-12-07', 1),
(70, 56545, 57855, 1310, 'HM 2-2 ', 1, 11, 2, 'K  Ediriweera2013-08-01', '2013-08-01', 1),
(75, 42955, 43880, 925, 'MM 1-1 ', 1, 23, 3, 'M. A. D. C. Medagama2013-06-18', '2013-06-18', 1),
(138, 18700, 18990, 290, 'MA 1-2 ', 1, 28, 14, 'P. M. K. A. Bandara2013-12-18', '2013-12-18', 1),
(142, 18990, 19280, 290, 'MA 1-2 ', 1, 29, 13, 'N. M.  Kandamby2013-09-05', '2013-09-05', 1),
(143, 18990, 19280, 290, 'MA 1-2 ', 1, 29, 13, 'N P Ketipearachchi2013-09-03', '2013-09-03', 1),
(146, 47245, 48345, 1100, 'HM 1-3 ', 1, 7, 9, 'R. M. L. N.  Rathnayake2014-09-01', '2014-09-01', 2),
(147, 22715, 23080, 365, 'JM 1-2 ', 2, 7, 4, 'M. L. A. N.  Pushparani2013-05-21', '2013-05-21', 1),
(193, 32045, 32780, 735, 'MM 1-1 ', 2, 11, 0, 'V K Aluthge2014-03-01', '2014-03-01', 1),
(237, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'T. V.  Jayasinghe Arachchi2013-12-01', '2013-12-01', 1),
(239, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'M. L. Karunarathne2013-12-05', '2013-12-05', 1),
(120, 49270, 50580, 1310, 'HM 2-1 ', 1, 6, 7, 'J. K.  Jayawardena2013-02-06', '2013-02-06', 1),
(162, 23445, 23810, 365, 'JM 1-2 ', 2, 9, 2, 'P. K. P. Anuruddha2013-05-21', '2013-05-21', 1),
(168, 26925, 27475, 550, 'AR 1 ', 2, 6, 5, 'P. D. S.  Pushpakumara2014-01-19', '2014-01-19', 1),
(169, 23080, 23445, 365, 'JM 1-2 ', 2, 8, 7, 'G.D. N.  De Silva2013-05-21', '2013-05-21', 1),
(188, 14550, 14695, 145, 'PL 3 ', 2, 16, 5, 'M. A. K.  Dharmalal2013-03-01', '2013-03-01', 1),
(191, 33010, 33780, 770, 'AR 1 ', 1, 15, 11, 'J Adassuriya2013-11-11', '2013-11-11', 1),
(192, 43880, 44805, 925, 'MM 1-1 ', 1, 24, 2, 'S.P.K.K.A Liyanage2013-04-03', '2013-04-03', 1),
(199, 13885, 14030, 145, 'MA 1-2 ', 3, 5, 6, 'S. R. S. Rupasinghe2013-01-19', '2013-01-19', 1),
(215, 30575, 31310, 735, 'MM 1-1 ', 2, 10, 1, 'J. S. B.  Rathnayake2014-03-07', '2014-03-07', 1),
(216, 16740, 16910, 170, 'MA 2-2 ', 2, 16, 2, 'N. K. L. T. M. S.  Dias2013-04-21', '2013-04-21', 1),
(217, 61655, 62965, 1310, 'HM 2-3 ', 1, 13, 0, 'P. S. Panawennage2013-06-03', '2013-06-03', 1),
(218, 12290, 12410, 120, 'PL 1 ', 3, 5, 6, 'N. K. J. K.  De Silva2013-11-01', '2013-11-01', 1),
(226, 16570, 16740, 170, 'MA 2-2 ', 2, 15, 7, 'J. S.  Koruwage2013-09-01', '2013-09-01', 1),
(225, 16570, 16740, 170, 'MA 2-2 ', 2, 15, 7, 'R. A. C. A. K.  Ranawaka2013-08-17', '2013-08-17', 1),
(236, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'N. T. M.  Sajith2013-12-01', '2013-12-01', 1),
(238, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'C. M.  Karunarathna2013-12-01', '2013-12-01', 1),
(8, 17870, 18040, 170, 'PL 3 ', 1, 37, 6, 'P. Thilakasiri2013-05-02', '2013-05-02', 1),
(24, 17270, 17440, 170, 'PL 2 ', 1, 33, 10, 'S.N. Pasqual2013-09-12', '2013-09-12', 1),
(65, 23080, 23445, 365, 'JM 1-2 ', 2, 8, 3, 'J. A. K.  Jayakody2013-05-21', '2013-05-21', 1),
(67, 17205, 17365, 160, 'PL 1 ', 1, 40, 3, 'H. M. Sunil2013-12-05', '2013-12-05', 1),
(93, 46145, 47245, 1100, 'HM 1-3 ', 1, 6, 10, 'R. A. S. S Gunasekara 2014-02-06', '2014-02-06', 1),
(112, 43945, 45045, 1100, 'HM 1-3 ', 1, 4, 12, 'B. A. Jayasinghe2013-02-06', '2013-02-06', 1),
(116, 28765, 29410, 645, 'AR 1 ', 2, 9, 2, 'T. C.  Peiris2014-04-03', '2014-04-03', 1),
(108, 23365, 23710, 345, 'MA 1-2 ', 1, 42, 0, 'T. M. S. S.  P.  Cooray2009-05-19', '2009-05-19', 1),
(125, 36480, 37405, 925, 'MM 1-1 ', 1, 16, 10, 'S W. C. K. Wijayawardena2013-07-20', '2013-07-20', 1),
(128, 21620, 21985, 365, 'JM 1-2 ', 2, 4, 7, 'E. B. D. P.  Jayadewa2013-05-21', '2013-05-21', 1),
(68, 17100, 17270, 170, 'PL 2 ', 1, 34, 9, 'N.N. Kumara2013-09-12', '2013-09-12', 1),
(7, 17685, 17845, 160, 'PL 1 ', 1, 46, 0, 'N B Micheal2012-02-18', '2012-02-18', 1),
(36, 32045, 32780, 735, 'MM 1-1 ', 2, 11, 0, 'D. R. D. De Silva2009-03-01', '2010-03-01', 1),
(202, 18120, 18410, 290, 'MA 2-2 ', 2, 22, 0, 'K. A. K.  Gunasekara2011-09-12', '2011-09-12', 1),
(212, 16670, 16960, 290, 'MA 1-2 ', 2, 22, 0, 'E. P. P Fernando2012-02-05', '2012-02-05', 1),
(244, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'A. R. M. Rila2013-06-01', '2013-06-01', 1),
(126, 15015, 15160, 145, 'PL 2 ', 2, 21, 0, 'D.V. N. Silva2011-12-03', '2011-12-03', 1),
(127, 15015, 15160, 145, 'PL 2 ', 2, 21, 0, 'G. K. S. Perera2011-12-03', '2011-12-03', 1),
(132, 16960, 17250, 290, 'MA 1-2 ', 2, 22, 0, 'S. P.  Athuluwage2011-12-10', '2011-12-10', 1),
(149, 50580, 51890, 1310, 'HM 2-1 ', 1, 7, 6, 'J. P. D. S Athuraliya2014-02-03', '2014-02-03', 1),
(120, 50580, 51890, 1310, 'HM 2-1 ', 1, 7, 6, 'J. K.  Jayawardena2014-02-06', '2014-02-06', 2),
(188, 14695, 14840, 145, 'PL 3 ', 2, 17, 4, 'M. A. K.  Dharmalal2014-03-01', '2014-03-01', 2),
(130, 24175, 24540, 365, 'JM 1-2 ', 2, 11, 0, 'S. A. A.  Siriwardhana2013-05-21', '2013-05-21', 1),
(192, 44805, 45730, 925, 'MM 1-1 ', 1, 25, 1, 'S.P.K.K.A Liyanage2014-04-03', '2014-04-03', 2),
(246, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'W. R. S. C.  Ranathunga2013-06-01', '2013-06-01', 1),
(249, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'U.D Niriella.2013-07-02', '2013-07-02', 1),
(251, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'W. R. W. M. Y. S. B. Bulumulla2013-08-15', '2013-08-15', 1),
(253, 13450, 13595, 145, 'MA 1-2 ', 3, 2, 9, 'W. A. K. Madumali2014-02-01', '2014-02-01', 1),
(213, 59165, 60475, 1310, 'HM 2-2 ', 1, 13, 0, 'W. A. P.  Silva2011-10-01', '2011-10-01', 1),
(190, 42875, 43800, 925, 'AR 2', 1, 11, 0, 'R.P.Dasanayaka2011-12-01', '2011-12-01', 0),
(100, 24175, 24540, 365, 'JM 1-2 ', 2, 11, 0, 'H. C, Weerasekara2011-05-21', '2011-05-21', 1),
(207, 16230, 16400, 170, 'MA 2-2 ', 2, 13, 9, 'J. R. T. N. Jayakody2013-08-17', '2013-08-17', 1),
(207, 16400, 16570, 170, 'MA 2-2 ', 2, 14, 8, 'J. R. T. N. Jayakody2014-08-17', '0000-00-00', 2),
(75, 43880, 44805, 925, 'MM 1-1 ', 1, 24, 2, 'M. A. D. C. Medagama2014-06-18', '2014-06-18', 2),
(147, 23080, 23445, 365, 'JM 1-2 ', 2, 8, 3, 'M. L. A. N.  Pushparani2014-05-21', '2014-05-21', 2),
(143, 19280, 19570, 290, 'MA 1-2 ', 1, 30, 12, 'N P Ketipearachchi2014-09-03', '2014-09-03', 2),
(146, 46145, 47245, 1100, 'HM 1-3 ', 1, 6, 10, 'R. M. L. N.  Rathnayake2013-09-01', '2013-09-01', 1),
(257, 25640, 26305, 665, 'MM 1-1 ', 2, 2, 10, 'R. A. Gamini2014-06-17', '2015-06-17', 1),
(59, 41105, 42030, 925, 'MM 1-1 ', 1, 21, 5, 'G. H. C. Jayarani2014-12-07', '2014-12-07', 2),
(162, 23810, 24175, 365, 'JM 1-2 ', 2, 10, 1, 'P. K. P. Anuruddha2014-05-21', '2014-05-21', 2),
(200, 13450, 13580, 130, 'PL 3 ', 3, 8, 3, 'P. L. S. Kumara2014-05-21', '2014-05-21', 1),
(107, 49445, 50545, 1100, 'HM 1-3 ', 1, 9, 7, 'L. R. N. Somathilake2014-06-25', '2014-06-25', 2),
(8, 18040, 18210, 170, 'PL 3 ', 1, 38, 5, 'P. Thilakasiri2014-05-02', '0000-00-00', 2),
(142, 19570, 19915, 345, 'MA 1-2 ', 1, 31, 11, 'N. M.  Kandamby2015-09-05', '0000-00-00', 3),
(255, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'N. A. A. Nadeesha Dilrukshi2014-05-15', '2014-05-15', 1),
(142, 19280, 19570, 290, 'MA 1-2 ', 1, 30, 12, 'N. M.  Kandamby2014-09-05', '2014-09-05', 2),
(256, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'Vijayasothy V2014-05-15', '2014-05-15', 1),
(249, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'U.D Niriella.2014-07-02', '2014-07-02', 2),
(264, 12670, 12800, 130, 'PL 3 ', 3, 2, 9, 'P. Buddhika Warnakula2014-10-09', '2014-10-09', 1),
(67, 17365, 17525, 160, 'PL 1 ', 1, 41, 2, 'H. M. Sunil2014-12-05', '2014-12-05', 2),
(263, 13450, 13595, 145, 'MA 1-2 ', 3, 2, 9, 'M.. B. A. M. Dissanayake2014-10-01', '2014-10-01', 1),
(261, 13450, 13595, 145, 'MA 1-2 ', 3, 2, 9, 'P. D. T. De Silva2014-10-01', '2014-10-01', 1),
(244, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'A. R. M. Rila2014-06-01', '2014-06-01', 2),
(65, 23445, 23810, 365, 'JM 1-2 ', 2, 9, 2, 'J. A. K.  Jayakody2014-05-21', '2014-05-21', 2),
(259, 13450, 13595, 145, 'MA 1-2 ', 3, 2, 9, 'K. C. I. Silva2014-10-01', '2014-10-01', 1),
(169, 23445, 23810, 365, 'JM 1-2 ', 2, 9, 2, 'G.D. N.  De Silva2014-05-21', '2014-05-21', 2),
(246, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'W. R. S. C.  Ranathunga2013-06-01', '2014-06-01', 2),
(138, 18990, 19280, 290, 'MA 1-2 ', 1, 29, 13, 'P. M. K. A. Bandara2014-12-18', '2014-12-18', 2),
(191, 33780, 34550, 770, 'AR 1 ', 1, 16, 10, 'J Adassuriya2014-11-11', '2014-11-11', 2),
(265, 11930, 12050, 120, 'PL 1 ', 3, 2, 9, 'P. Chandima Ramanayake2014-10-03', '2014-10-03', 1),
(70, 57855, 59165, 1310, 'HM 2-2 ', 1, 12, 1, 'K  Ediriweera2014-08-01', '2014-08-19', 2),
(258, 14610, 14755, 145, 'MA 2-2 ', 3, 2, 9, 'S. R. J. S. Bandara2014-07-10', '2014-07-10', 1),
(139, 34550, 35475, 925, 'AR 2 ', 1, 2, 9, 'N I  Medagangoda2014-04-09', '2014-04-09', 1),
(209, 15070, 13370, -1700, 'MA 1-2 ', 2, 2, 20, 'W. C. B.  De Silva0000-00-00', '0000-00-00', 1),
(251, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'W. R. W. M. Y. S. B. Bulumulla2014-08-15', '2014-08-15', 2),
(260, 13450, 13595, 145, 'MA 1-2 ', 3, 2, 9, 'H. D. N. Fernando2014-10-01', '2014-10-01', 1),
(266, 11930, 12050, 120, 'PL 1 ', 3, 2, 9, 'G. M. Rodrigo2014-10-09', '2014-10-09', 1),
(112, 45045, 46145, 1100, 'HM 1-3 ', 1, 5, 11, 'B. A. Jayasinghe2014-02-06', '2014-02-06', 2),
(149, 51890, 53200, 1310, 'HM 2-1', 1, 8, 5, 'J. P. D. S Athuraliya2015-02-03', '2015-02-03', 2),
(216, 17080, 17250, 170, 'MA 2-2 ', 2, 18, 4, 'N. K. L. T. M. S.  Dias2015-04-21', '2015-04-21', 3),
(199, 14175, 14320, 145, 'MA 1-2 ', 3, 7, 4, 'S. R. S. Rupasinghe2015-01-19', '2015-01-19', 3),
(226, 16740, 16910, 170, 'MA 2-2 ', 2, 16, 6, 'J. S.  Koruwage2014-09-01', '0000-00-00', 2),
(225, 16740, 16910, 170, 'MA 2-2 ', 2, 16, 6, 'R. A. C. A. K.  Ranawaka2014-08-17', '2014-08-17', 2),
(68, 17270, 17440, 170, 'PL 2 ', 1, 35, 8, 'N.N. Kumara2014-09-12', '2014-09-12', 2),
(251, 25825, 26375, 550, 'AR 1 ', 2, 4, 7, 'W. R. W. M. Y. S. B. Bulumulla2015-08-15', '0000-00-00', 3),
(280, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'S. D. Shiromi Lakmali 2015-02-05', '2015-02-05', 1),
(112, 46145, 47245, 1100, 'HM 1-3 ', 1, 6, 10, 'B. A. Jayasinghe2015-02-06', '2015-02-06', 3),
(277, 25640, 26305, 665, 'MM 1-1 ', 2, 2, 9, 'M. P. R. Perera2015-02-03', '2015-02-03', 1),
(239, 25825, 26375, 550, 'AR 1 ', 2, 4, 7, 'M. L. Karunarathne2014-12-05', '2014-12-05', 2),
(253, 13595, 13740, 145, 'MA 1-2 ', 3, 3, 8, 'W. A. K. Madumali2015-02-01', '2015-02-01', 2),
(274, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'B. S. Marasinghe2015-01-27', '2015-01-27', 1),
(276, 14610, 14755, 145, 'MA 2-2 ', 3, 2, 9, 'K. S. Roshan2015-01-27', '2015-01-27', 1),
(268, 13450, 13595, 145, 'MA 1-2 ', 3, 2, 9, 'K. A. Sumudu L. Perera2015-01-08', '2015-01-08', 1),
(273, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'L  Vengadasalam2015-01-13', '2015-01-13', 1),
(269, 11930, 12050, 120, 'PL 1 ', 3, 2, 9, 'K. D. S. Awantha2015-01-13', '2015-01-13', 1),
(272, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'J. P. Rajitha Prasanna2015-01-13', '2015-01-13', 1),
(271, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'V. K. O. N. Thalpawila2015-01-13', '2015-01-13', 1),
(168, 27475, 28120, 645, 'AR 1 ', 2, 7, 4, 'P. D. S.  Pushpakumara2015-01-19', '2015-01-19', 2),
(282, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'R. A. D. K. Sampath2015-02-17', '2015-02-17', 1),
(256, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'Vijayasothy V2015-05-15', '2015-05-15', 2),
(180, 41745, 42845, 1100, 'HM 1-3 ', 1, 2, 14, 'S. A.  Welikala2014-02-06', '2014-02-06', 1),
(5, 54945, 56045, 1100, 'HM 1-3 ', 1, 14, 2, 'P.D. Champika Janashanthi2015-02-06', '2015-02-06', 2),
(192, 45730, 46655, 925, 'MM 1-1 ', 1, 26, 0, 'S.P.K.K.A Liyanage2015-04-03', '2015-04-03', 3),
(120, 51890, 53200, 1310, 'HM 2-1 ', 1, 8, 5, 'J. K.  Jayawardena2015-02-06', '2015-02-06', 3),
(215, 31310, 32045, 735, 'MM 1-1 ', 2, 11, 0, 'J. S. B.  Rathnayake2015-03-07', '2015-03-07', 2),
(116, 29410, 30055, 645, 'AR 1 ', 2, 10, 1, 'T. C.  Peiris2015-04-03', '2015-04-03', 2),
(278, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'M.B. Thilakarathne2015-02-03', '2015-02-03', 1),
(139, 35475, 36400, 925, 'AR 2 ', 1, 3, 8, 'N I  Medagangoda2015-04-09', '2015-04-09', 2),
(168, 28120, 28765, 645, 'AR 1 ', 2, 8, 3, 'P. D. S.  Pushpakumara2016-01-19', '0000-00-00', 3),
(255, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'N. A. A. Nadeesha Dilrukshi2015-05-15', '2015-05-15', 2),
(125, 37405, 38330, 925, 'MM 1-1 ', 1, 17, 9, 'S W. C. K. Wijayawardena2014-07-20', '2014-07-20', 2),
(128, 21985, 22350, 365, 'JM 1-2 ', 2, 5, 6, 'E. B. D. P.  Jayadewa2014-05-21', '2014-05-21', 2),
(65, 23810, 24175, 365, 'JM 1-2 ', 2, 10, 1, 'J. A. K.  Jayakody2015-05-21', '2015-05-21', 3),
(162, 24175, 24540, 365, 'JM 1-2 ', 2, 11, 0, 'P. K. P. Anuruddha2015-05-21', '2015-05-21', 3),
(147, 23445, 23810, 365, 'JM 1-2 ', 2, 9, 2, 'M. L. A. N.  Pushparani2015-05-21', '2015-05-21', 3),
(257, 26305, 26970, 665, 'MM 1-1 ', 2, 3, 8, 'R. A. Gamini2015-06-17', '2015-06-17', 2),
(180, 42845, 43945, 1100, 'HM 1-3 ', 1, 3, 13, 'S. A.  Welikala2015-02-06', '2015-02-06', 2),
(277, 26305, 26970, 665, 'MM 1-1 ', 2, 3, 8, 'M. P. R. Perera2016-02-03', '0000-00-00', 2),
(107, 50545, 51645, 1100, 'HM 1-3 ', 1, 10, 6, 'L. R. N. Somathilake2015-06-25', '2015-06-25', 3),
(169, 23810, 24175, 365, 'JM 1-2 ', 2, 10, 1, 'G.D. N.  De Silva2015-05-21', '2015-05-21', 3),
(285, 41745, 42845, 1100, 'HM 1-3 ', 1, 2, 14, 'A S Weerapperuma2015-06-02', '2015-06-02', 1),
(75, 44805, 45730, 925, 'MM 1-1 ', 1, 25, 1, 'M. A. D. C. Medagama2015-06-18', '2015-06-18', 3),
(249, 25825, 26375, 550, 'AR 1 ', 2, 4, 7, 'U.D Niriella.2015-07-02', '0000-00-00', 3),
(70, 59165, 60475, 1310, 'HM 2-2 ', 1, 13, 0, 'K  Ediriweera2015-08-01', '0000-00-00', 3),
(146, 48345, 49445, 1100, 'HM 1-3 ', 1, 8, 8, 'R. M. L. N.  Rathnayake2015-09-01', '0000-00-00', 3),
(24, 17440, 17610, 170, 'PL 2 ', 1, 34, 9, 'S.N. Pasqual2014-09-12', '2014-09-12', 2),
(143, 19570, 19915, 345, 'MA 1-2 ', 1, 31, 11, 'N P Ketipearachchi2015-09-03', '0000-00-00', 3),
(188, 14840, 14985, 145, 'PL 3 ', 2, 18, 3, 'M. A. K.  Dharmalal2015-03-01', '0000-00-00', 3),
(125, 38330, 39255, 925, 'MM 1-1 ', 1, 18, 8, 'S W. C. K. Wijayawardena2015-07-20', '2015-07-20', 3),
(244, 25825, 26375, 550, 'AR 1 ', 2, 4, 7, 'A. R. M. Rila2015-06-01', '2015-06-01', 3),
(199, 14030, 14175, 145, 'MA 1-2 ', 3, 6, 5, 'S. R. S. Rupasinghe2014-01-19', '2014-01-19', 2),
(200, 13580, 13710, 130, 'PL 3 ', 3, 9, 2, 'P. L. S.  Kumara2015-05-21', '2015-05-21', 2),
(59, 42030, 42955, 925, 'MM 1-1 ', 1, 22, 4, 'G. H. C. Jayarani2015-12-07', '2015-12-07', 3),
(216, 16910, 17080, 170, 'MA 2-2 ', 2, 17, 1, 'N. K. L. T. M. S.  Dias2014-04-21', '2014-04-21', 2),
(291, 13450, 13595, 145, 'MA 1-2 ', 3, 2, 9, 'Weerasinghe Arachchilage Paviththra 2015-11-03', '2015-11-03', 1),
(260, 13595, 13740, 145, 'MA 1-2 ', 3, 3, 8, 'H. D. N. Fernando2015-10-01', '2015-10-01', 2),
(266, 12050, 12170, 120, 'PL 1 ', 3, 3, 8, 'G. M. Rodrigo2015-10-09', '2015-10-09', 2),
(263, 13595, 13740, 145, 'MA 1-2 ', 3, 3, 8, 'M.. B. A. M. Dissanayake2015-10-01', '2015-10-01', 2),
(93, 47245, 48345, 1100, 'HM 1-3 ', 1, 7, 9, 'R. A. S. S Gunasekara 2015-02-06', '2015-02-06', 2),
(279, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'L. A. C. P. Ranasinghe2015-02-05', '2015-02-05', 1),
(191, 34550, 35320, 770, 'AR 1 ', 1, 17, 9, 'J Adassuriya2015-11-11', '2015-11-11', 3),
(67, 17525, 17685, 160, 'PL 1 ', 1, 42, 1, 'H. M. Sunil2015-12-05', '2015-12-05', 3),
(138, 19280, 19570, 290, 'MA 1-2 ', 1, 30, 12, 'P. M. K. A. Bandara2015-12-18', '2015-12-18', 3),
(290, 13450, 13595, 145, 'MA 1-2 ', 3, 2, 9, 'Ranawaka Mudiyanselage Sanoja Dilhani Madumala2015-11-03', '2015-11-03', 1),
(259, 13595, 13740, 145, 'MA 1-2 ', 3, 3, 8, 'K. C. I. Silva2015-10-01', '2015-10-01', 2),
(286, 13450, 13595, 145, 'MA 1-2 ', 3, 2, 9, 'Kandangamuwe Pathirannahalage Dineshi Prabaha Pathirana2015-10-20', '2015-10-20', 1),
(68, 17440, 17610, 170, 'PL 2 ', 1, 36, 7, 'N.D.N. Kumara2015-09-12', '2015-09-12', 3),
(258, 14755, 14900, 145, 'MA 2-2 ', 3, 3, 8, 'S. R. J. S. Bandara2015-07-10', '2015-07-10', 2),
(116, 30055, 30700, 645, 'AR 1 ', 2, 11, 0, 'T. C.  Peiris2016-04-03', '0000-00-00', 3),
(268, 13595, 13740, 145, 'MA 1-2 ', 3, 3, 8, 'K. A. Sumudu L. Perera2016-01-08', '0000-00-00', 2),
(169, 24175, 24540, 365, 'JM 1-2 ', 2, 11, 0, 'G.D. N.  De Silva2016-05-21', '0000-00-00', 4),
(120, 53200, 54510, 1310, 'HM 2-1 ', 1, 9, 4, 'J. K.  Jayawardena2016-02-06', '0000-00-00', 4),
(298, 14610, 14755, 145, 'MA 2-2 ', 3, 2, 9, 'Mahathelge Dilan Prasanga Peiris2015-12-29', '2015-12-29', 1),
(292, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'Wadumestrige Kamal Manjula Mahindapala2015-12-05', '2015-12-05', 1),
(294, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'Prasanna Mahadevan2015-12-01', '2015-12-01', 1),
(296, 14610, 14755, 145, 'MA 2-2 ', 3, 2, 9, 'Chameera Darshana Panamaldeniya2015-12-01', '2015-12-01', 1),
(293, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'Anurudde Nirmala Nanayakkara2015-12-01', '2015-12-01', 1),
(128, 22350, 22715, 365, 'JM 1-2 ', 2, 6, 5, 'E. B. D. P.  Jayadewa2015-05-21', '0000-00-00', 3),
(161, 14405, 14550, 145, 'PL 3 ', 2, 15, 6, 'P.P.K. Rodrigo2014-02-27', '0000-00-00', 1),
(24, 17610, 17780, 170, 'PL 2 ', 1, 35, 8, 'S.N. Pasqual2015-09-12', '2015-09-12', 3),
(239, 26375, 26925, 550, 'AR 1 ', 2, 5, 6, 'M. L. Karunarathne2015-12-05', '0000-00-00', 3),
(264, 12800, 12930, 130, 'PL 3 ', 3, 3, 8, 'P. Buddhika Warnakula2015-10-09', '2015-10-09', 2),
(261, 13595, 13740, 145, 'MA 1-2 ', 3, 3, 8, 'P. D. T. De Silva2015-10-01', '0000-00-00', 2),
(24, 17440, 17610, 170, 'PL 2 ', 1, 36, 7, 'S.N. Pasqual2016-09-12', '0000-00-00', 4),
(225, 16910, 17080, 170, 'MA 2-2 ', 2, 17, 5, 'R. A. C. A. K.  Ranawaka2015-08-17', '0000-00-00', 3),
(253, 13740, 13885, 145, 'MA 1-2 ', 3, 4, 7, 'W. A. K. Madumali2016-02-01', '0000-00-00', 3),
(274, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'B. S. Marasinghe2016-01-27', '0000-00-00', 2),
(276, 14755, 14900, 145, 'MA 2-2 ', 3, 3, 8, 'K. S. Roshan2016-01-27', '0000-00-00', 2),
(272, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'J. P. Rajitha Prasanna2016-01-13', '0000-00-00', 2),
(199, 14320, 14465, 145, 'MA 1-2 ', 3, 8, 3, 'S. R. S. Rupasinghe2016-01-19', '0000-00-00', 4),
(269, 12050, 12170, 120, 'PL 1 ', 3, 3, 8, 'K. D. S. Awantha2016-01-13', '0000-00-00', 2),
(112, 47245, 48345, 1100, 'HM 1-3 ', 1, 7, 9, 'B. A. Jayasinghe2016-02-06', '0000-00-00', 4),
(180, 43945, 45045, 1100, 'HM 1-3 ', 1, 4, 12, 'S. A.  Welikala2016-02-06', '0000-00-00', 3),
(93, 48345, 49445, 1100, 'HM 1-3 ', 1, 8, 8, 'R. A. S. S Gunasekara 2016-02-06', '0000-00-00', 3),
(279, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'L. A. C. P. Ranasinghe2016-02-05', '0000-00-00', 2),
(149, 53200, 54510, 1310, 'HM 2-1 ', 1, 9, 4, 'J. P. D. S Athuraliya2016-02-03', '0000-00-00', 3),
(282, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'R. A. D. K. Sampath2016-02-17', '0000-00-00', 2),
(216, 17250, 17540, 290, 'MA 2-2 ', 2, 19, 3, 'N. K. L. T. M. S.  Dias2016-04-21', '0000-00-00', 4),
(139, 36400, 37325, 925, 'AR 2 ', 1, 4, 7, 'N I  Medagangoda2016-04-09', '0000-00-00', 3),
(147, 23810, 24175, 365, 'JM 1-2 ', 2, 10, 1, 'M. L. A. N.  Pushparani2016-05-21', '0000-00-00', 4),
(285, 42845, 43945, 1100, 'HM 1-3 ', 1, 3, 13, 'A S Weerapperuma2016-06-02', '0000-00-00', 2),
(5, 53845, 54945, 1100, 'HM 1-3 ', 1, 13, 3, 'P.D. Champika Janashanthi2014-02-06', '2014-02-06', 1),
(107, 48345, 49445, 1100, 'HM 1-3 ', 1, 8, 8, 'L. R. N. Somathilake2013-06-25', '2013-06-25', 1),
(59, 40180, 41105, 925, 'MM 1-1 ', 1, 20, 6, 'G. H. C. Jayarani2013-12-07', '2013-12-07', 1),
(70, 56545, 57855, 1310, 'HM 2-2 ', 1, 11, 2, 'K  Ediriweera2013-08-01', '2013-08-01', 1),
(75, 42955, 43880, 925, 'MM 1-1 ', 1, 23, 3, 'M. A. D. C. Medagama2013-06-18', '2013-06-18', 1),
(138, 18700, 18990, 290, 'MA 1-2 ', 1, 28, 14, 'P. M. K. A. Bandara2013-12-18', '2013-12-18', 1),
(142, 18990, 19280, 290, 'MA 1-2 ', 1, 29, 13, 'N. M.  Kandamby2013-09-05', '2013-09-05', 1),
(143, 18990, 19280, 290, 'MA 1-2 ', 1, 29, 13, 'N P Ketipearachchi2013-09-03', '2013-09-03', 1),
(146, 47245, 48345, 1100, 'HM 1-3 ', 1, 7, 9, 'R. M. L. N.  Rathnayake2014-09-01', '2014-09-01', 2),
(147, 22715, 23080, 365, 'JM 1-2 ', 2, 7, 4, 'M. L. A. N.  Pushparani2013-05-21', '2013-05-21', 1),
(193, 32045, 32780, 735, 'MM 1-1 ', 2, 11, 0, 'V K Aluthge2014-03-01', '2014-03-01', 1),
(237, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'T. V.  Jayasinghe Arachchi2013-12-01', '2013-12-01', 1),
(239, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'M. L. Karunarathne2013-12-05', '2013-12-05', 1),
(120, 49270, 50580, 1310, 'HM 2-1 ', 1, 6, 7, 'J. K.  Jayawardena2013-02-06', '2013-02-06', 1),
(162, 23445, 23810, 365, 'JM 1-2 ', 2, 9, 2, 'P. K. P. Anuruddha2013-05-21', '2013-05-21', 1),
(168, 26925, 27475, 550, 'AR 1 ', 2, 6, 5, 'P. D. S.  Pushpakumara2014-01-19', '2014-01-19', 1),
(169, 23080, 23445, 365, 'JM 1-2 ', 2, 8, 7, 'G.D. N.  De Silva2013-05-21', '2013-05-21', 1),
(188, 14550, 14695, 145, 'PL 3 ', 2, 16, 5, 'M. A. K.  Dharmalal2013-03-01', '2013-03-01', 1),
(191, 33010, 33780, 770, 'AR 1 ', 1, 15, 11, 'J Adassuriya2013-11-11', '2013-11-11', 1),
(192, 43880, 44805, 925, 'MM 1-1 ', 1, 24, 2, 'S.P.K.K.A Liyanage2013-04-03', '2013-04-03', 1),
(199, 13885, 14030, 145, 'MA 1-2 ', 3, 5, 6, 'S. R. S. Rupasinghe2013-01-19', '2013-01-19', 1),
(215, 30575, 31310, 735, 'MM 1-1 ', 2, 10, 1, 'J. S. B.  Rathnayake2014-03-07', '2014-03-07', 1),
(216, 16740, 16910, 170, 'MA 2-2 ', 2, 16, 2, 'N. K. L. T. M. S.  Dias2013-04-21', '2013-04-21', 1),
(217, 61655, 62965, 1310, 'HM 2-3 ', 1, 13, 0, 'P. S. Panawennage2013-06-03', '2013-06-03', 1),
(218, 12290, 12410, 120, 'PL 1 ', 3, 5, 6, 'N. K. J. K.  De Silva2013-11-01', '2013-11-01', 1),
(226, 16570, 16740, 170, 'MA 2-2 ', 2, 15, 7, 'J. S.  Koruwage2013-09-01', '2013-09-01', 1),
(225, 16570, 16740, 170, 'MA 2-2 ', 2, 15, 7, 'R. A. C. A. K.  Ranawaka2013-08-17', '2013-08-17', 1),
(236, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'N. T. M.  Sajith2013-12-01', '2013-12-01', 1),
(238, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'C. M.  Karunarathna2013-12-01', '2013-12-01', 1),
(8, 17870, 18040, 170, 'PL 3 ', 1, 37, 6, 'P. Thilakasiri2013-05-02', '2013-05-02', 1),
(24, 17270, 17440, 170, 'PL 2 ', 1, 33, 10, 'S.N. Pasqual2013-09-12', '2013-09-12', 1),
(65, 23080, 23445, 365, 'JM 1-2 ', 2, 8, 3, 'J. A. K.  Jayakody2013-05-21', '2013-05-21', 1),
(67, 17205, 17365, 160, 'PL 1 ', 1, 40, 3, 'H. M. Sunil2013-12-05', '2013-12-05', 1),
(93, 46145, 47245, 1100, 'HM 1-3 ', 1, 6, 10, 'R. A. S. S Gunasekara 2014-02-06', '2014-02-06', 1),
(112, 43945, 45045, 1100, 'HM 1-3 ', 1, 4, 12, 'B. A. Jayasinghe2013-02-06', '2013-02-06', 1),
(116, 28765, 29410, 645, 'AR 1 ', 2, 9, 2, 'T. C.  Peiris2014-04-03', '2014-04-03', 1),
(108, 23365, 23710, 345, 'MA 1-2 ', 1, 42, 0, 'T. M. S. S.  P.  Cooray2009-05-19', '2009-05-19', 1),
(125, 36480, 37405, 925, 'MM 1-1 ', 1, 16, 10, 'S W. C. K. Wijayawardena2013-07-20', '2013-07-20', 1),
(128, 21620, 21985, 365, 'JM 1-2 ', 2, 4, 7, 'E. B. D. P.  Jayadewa2013-05-21', '2013-05-21', 1),
(68, 17100, 17270, 170, 'PL 2 ', 1, 34, 9, 'N.N. Kumara2013-09-12', '2013-09-12', 1),
(7, 17685, 17845, 160, 'PL 1 ', 1, 46, 0, 'N B Micheal2012-02-18', '2012-02-18', 1),
(36, 32045, 32780, 735, 'MM 1-1 ', 2, 11, 0, 'D. R. D. De Silva2009-03-01', '2010-03-01', 1),
(202, 18120, 18410, 290, 'MA 2-2 ', 2, 22, 0, 'K. A. K.  Gunasekara2011-09-12', '2011-09-12', 1),
(212, 16670, 16960, 290, 'MA 1-2 ', 2, 22, 0, 'E. P. P Fernando2012-02-05', '2012-02-05', 1),
(244, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'A. R. M. Rila2013-06-01', '2013-06-01', 1),
(126, 15015, 15160, 145, 'PL 2 ', 2, 21, 0, 'D.V. N. Silva2011-12-03', '2011-12-03', 1),
(127, 15015, 15160, 145, 'PL 2 ', 2, 21, 0, 'G. K. S. Perera2011-12-03', '2011-12-03', 1),
(132, 16960, 17250, 290, 'MA 1-2 ', 2, 22, 0, 'S. P.  Athuluwage2011-12-10', '2011-12-10', 1),
(149, 50580, 51890, 1310, 'HM 2-1 ', 1, 7, 6, 'J. P. D. S Athuraliya2014-02-03', '2014-02-03', 1),
(120, 50580, 51890, 1310, 'HM 2-1 ', 1, 7, 6, 'J. K.  Jayawardena2014-02-06', '2014-02-06', 2),
(188, 14695, 14840, 145, 'PL 3 ', 2, 17, 4, 'M. A. K.  Dharmalal2014-03-01', '2014-03-01', 2),
(130, 24175, 24540, 365, 'JM 1-2 ', 2, 11, 0, 'S. A. A.  Siriwardhana2013-05-21', '2013-05-21', 1),
(192, 44805, 45730, 925, 'MM 1-1 ', 1, 25, 1, 'S.P.K.K.A Liyanage2014-04-03', '2014-04-03', 2),
(246, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'W. R. S. C.  Ranathunga2013-06-01', '2013-06-01', 1),
(249, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'U.D Niriella.2013-07-02', '2013-07-02', 1),
(251, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'W. R. W. M. Y. S. B. Bulumulla2013-08-15', '2013-08-15', 1),
(253, 13450, 13595, 145, 'MA 1-2 ', 3, 2, 9, 'W. A. K. Madumali2014-02-01', '2014-02-01', 1),
(213, 59165, 60475, 1310, 'HM 2-2 ', 1, 13, 0, 'W. A. P.  Silva2011-10-01', '2011-10-01', 1),
(190, 42875, 43800, 925, 'AR 2', 1, 11, 0, 'R.P.Dasanayaka2011-12-01', '2011-12-01', 0),
(100, 24175, 24540, 365, 'JM 1-2 ', 2, 11, 0, 'H. C, Weerasekara2011-05-21', '2011-05-21', 1),
(207, 16230, 16400, 170, 'MA 2-2 ', 2, 13, 9, 'J. R. T. N. Jayakody2013-08-17', '2013-08-17', 1),
(207, 16400, 16570, 170, 'MA 2-2 ', 2, 14, 8, 'J. R. T. N. Jayakody2014-08-17', '0000-00-00', 2),
(75, 43880, 44805, 925, 'MM 1-1 ', 1, 24, 2, 'M. A. D. C. Medagama2014-06-18', '2014-06-18', 2),
(147, 23080, 23445, 365, 'JM 1-2 ', 2, 8, 3, 'M. L. A. N.  Pushparani2014-05-21', '2014-05-21', 2),
(143, 19280, 19570, 290, 'MA 1-2 ', 1, 30, 12, 'N P Ketipearachchi2014-09-03', '2014-09-03', 2),
(146, 46145, 47245, 1100, 'HM 1-3 ', 1, 6, 10, 'R. M. L. N.  Rathnayake2013-09-01', '2013-09-01', 1),
(257, 25640, 26305, 665, 'MM 1-1 ', 2, 2, 10, 'R. A. Gamini2014-06-17', '2015-06-17', 1),
(59, 41105, 42030, 925, 'MM 1-1 ', 1, 21, 5, 'G. H. C. Jayarani2014-12-07', '2014-12-07', 2),
(162, 23810, 24175, 365, 'JM 1-2 ', 2, 10, 1, 'P. K. P. Anuruddha2014-05-21', '2014-05-21', 2),
(200, 13450, 13580, 130, 'PL 3 ', 3, 8, 3, 'P. L. S. Kumara2014-05-21', '2014-05-21', 1),
(107, 49445, 50545, 1100, 'HM 1-3 ', 1, 9, 7, 'L. R. N. Somathilake2014-06-25', '2014-06-25', 2),
(8, 18040, 18210, 170, 'PL 3 ', 1, 38, 5, 'P. Thilakasiri2014-05-02', '0000-00-00', 2),
(142, 19570, 19915, 345, 'MA 1-2 ', 1, 31, 11, 'N. M.  Kandamby2015-09-05', '0000-00-00', 3),
(255, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'N. A. A. Nadeesha Dilrukshi2014-05-15', '2014-05-15', 1),
(142, 19280, 19570, 290, 'MA 1-2 ', 1, 30, 12, 'N. M.  Kandamby2014-09-05', '2014-09-05', 2),
(256, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'Vijayasothy V2014-05-15', '2014-05-15', 1),
(249, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'U.D Niriella.2014-07-02', '2014-07-02', 2),
(264, 12670, 12800, 130, 'PL 3 ', 3, 2, 9, 'P. Buddhika Warnakula2014-10-09', '2014-10-09', 1),
(67, 17365, 17525, 160, 'PL 1 ', 1, 41, 2, 'H. M. Sunil2014-12-05', '2014-12-05', 2),
(263, 13450, 13595, 145, 'MA 1-2 ', 3, 2, 9, 'M.. B. A. M. Dissanayake2014-10-01', '2014-10-01', 1),
(261, 13450, 13595, 145, 'MA 1-2 ', 3, 2, 9, 'P. D. T. De Silva2014-10-01', '2014-10-01', 1),
(244, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'A. R. M. Rila2014-06-01', '2014-06-01', 2),
(65, 23445, 23810, 365, 'JM 1-2 ', 2, 9, 2, 'J. A. K.  Jayakody2014-05-21', '2014-05-21', 2),
(259, 13450, 13595, 145, 'MA 1-2 ', 3, 2, 9, 'K. C. I. Silva2014-10-01', '2014-10-01', 1),
(169, 23445, 23810, 365, 'JM 1-2 ', 2, 9, 2, 'G.D. N.  De Silva2014-05-21', '2014-05-21', 2),
(246, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'W. R. S. C.  Ranathunga2013-06-01', '2014-06-01', 2),
(138, 18990, 19280, 290, 'MA 1-2 ', 1, 29, 13, 'P. M. K. A. Bandara2014-12-18', '2014-12-18', 2),
(191, 33780, 34550, 770, 'AR 1 ', 1, 16, 10, 'J Adassuriya2014-11-11', '2014-11-11', 2),
(265, 11930, 12050, 120, 'PL 1 ', 3, 2, 9, 'P. Chandima Ramanayake2014-10-03', '2014-10-03', 1),
(70, 57855, 59165, 1310, 'HM 2-2 ', 1, 12, 1, 'K  Ediriweera2014-08-01', '2014-08-19', 2),
(258, 14610, 14755, 145, 'MA 2-2 ', 3, 2, 9, 'S. R. J. S. Bandara2014-07-10', '2014-07-10', 1),
(139, 34550, 35475, 925, 'AR 2 ', 1, 2, 9, 'N I  Medagangoda2014-04-09', '2014-04-09', 1),
(209, 15070, 13370, -1700, 'MA 1-2 ', 2, 2, 20, 'W. C. B.  De Silva0000-00-00', '0000-00-00', 1),
(251, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'W. R. W. M. Y. S. B. Bulumulla2014-08-15', '2014-08-15', 2),
(260, 13450, 13595, 145, 'MA 1-2 ', 3, 2, 9, 'H. D. N. Fernando2014-10-01', '2014-10-01', 1),
(266, 11930, 12050, 120, 'PL 1 ', 3, 2, 9, 'G. M. Rodrigo2014-10-09', '2014-10-09', 1),
(112, 45045, 46145, 1100, 'HM 1-3 ', 1, 5, 11, 'B. A. Jayasinghe2014-02-06', '2014-02-06', 2),
(149, 51890, 53200, 1310, 'HM 2-1', 1, 8, 5, 'J. P. D. S Athuraliya2015-02-03', '2015-02-03', 2),
(216, 17080, 17250, 170, 'MA 2-2 ', 2, 18, 4, 'N. K. L. T. M. S.  Dias2015-04-21', '2015-04-21', 3),
(199, 14175, 14320, 145, 'MA 1-2 ', 3, 7, 4, 'S. R. S. Rupasinghe2015-01-19', '2015-01-19', 3),
(226, 16740, 16910, 170, 'MA 2-2 ', 2, 16, 6, 'J. S.  Koruwage2014-09-01', '0000-00-00', 2),
(225, 16740, 16910, 170, 'MA 2-2 ', 2, 16, 6, 'R. A. C. A. K.  Ranawaka2014-08-17', '2014-08-17', 2),
(68, 17270, 17440, 170, 'PL 2 ', 1, 35, 8, 'N.N. Kumara2014-09-12', '2014-09-12', 2),
(251, 25825, 26375, 550, 'AR 1 ', 2, 4, 7, 'W. R. W. M. Y. S. B. Bulumulla2015-08-15', '0000-00-00', 3),
(280, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'S. D. Shiromi Lakmali 2015-02-05', '2015-02-05', 1),
(112, 46145, 47245, 1100, 'HM 1-3 ', 1, 6, 10, 'B. A. Jayasinghe2015-02-06', '2015-02-06', 3),
(277, 25640, 26305, 665, 'MM 1-1 ', 2, 2, 9, 'M. P. R. Perera2015-02-03', '2015-02-03', 1),
(239, 25825, 26375, 550, 'AR 1 ', 2, 4, 7, 'M. L. Karunarathne2014-12-05', '2014-12-05', 2),
(253, 13595, 13740, 145, 'MA 1-2 ', 3, 3, 8, 'W. A. K. Madumali2015-02-01', '2015-02-01', 2),
(274, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'B. S. Marasinghe2015-01-27', '2015-01-27', 1),
(276, 14610, 14755, 145, 'MA 2-2 ', 3, 2, 9, 'K. S. Roshan2015-01-27', '2015-01-27', 1),
(268, 13450, 13595, 145, 'MA 1-2 ', 3, 2, 9, 'K. A. Sumudu L. Perera2015-01-08', '2015-01-08', 1),
(273, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'L  Vengadasalam2015-01-13', '2015-01-13', 1),
(269, 11930, 12050, 120, 'PL 1 ', 3, 2, 9, 'K. D. S. Awantha2015-01-13', '2015-01-13', 1),
(272, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'J. P. Rajitha Prasanna2015-01-13', '2015-01-13', 1),
(271, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'V. K. O. N. Thalpawila2015-01-13', '2015-01-13', 1),
(168, 27475, 28120, 645, 'AR 1 ', 2, 7, 4, 'P. D. S.  Pushpakumara2015-01-19', '2015-01-19', 2),
(282, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'R. A. D. K. Sampath2015-02-17', '2015-02-17', 1),
(256, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'Vijayasothy V2015-05-15', '2015-05-15', 2),
(180, 41745, 42845, 1100, 'HM 1-3 ', 1, 2, 14, 'S. A.  Welikala2014-02-06', '2014-02-06', 1),
(5, 54945, 56045, 1100, 'HM 1-3 ', 1, 14, 2, 'P.D. Champika Janashanthi2015-02-06', '2015-02-06', 2),
(192, 45730, 46655, 925, 'MM 1-1 ', 1, 26, 0, 'S.P.K.K.A Liyanage2015-04-03', '2015-04-03', 3),
(120, 51890, 53200, 1310, 'HM 2-1 ', 1, 8, 5, 'J. K.  Jayawardena2015-02-06', '2015-02-06', 3),
(215, 31310, 32045, 735, 'MM 1-1 ', 2, 11, 0, 'J. S. B.  Rathnayake2015-03-07', '2015-03-07', 2),
(116, 29410, 30055, 645, 'AR 1 ', 2, 10, 1, 'T. C.  Peiris2015-04-03', '2015-04-03', 2),
(278, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'M.B. Thilakarathne2015-02-03', '2015-02-03', 1),
(139, 35475, 36400, 925, 'AR 2 ', 1, 3, 8, 'N I  Medagangoda2015-04-09', '2015-04-09', 2),
(168, 28120, 28765, 645, 'AR 1 ', 2, 8, 3, 'P. D. S.  Pushpakumara2016-01-19', '0000-00-00', 3),
(255, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'N. A. A. Nadeesha Dilrukshi2015-05-15', '2015-05-15', 2),
(125, 37405, 38330, 925, 'MM 1-1 ', 1, 17, 9, 'S W. C. K. Wijayawardena2014-07-20', '2014-07-20', 2),
(128, 21985, 22350, 365, 'JM 1-2 ', 2, 5, 6, 'E. B. D. P.  Jayadewa2014-05-21', '2014-05-21', 2),
(65, 23810, 24175, 365, 'JM 1-2 ', 2, 10, 1, 'J. A. K.  Jayakody2015-05-21', '2015-05-21', 3),
(162, 24175, 24540, 365, 'JM 1-2 ', 2, 11, 0, 'P. K. P. Anuruddha2015-05-21', '2015-05-21', 3),
(147, 23445, 23810, 365, 'JM 1-2 ', 2, 9, 2, 'M. L. A. N.  Pushparani2015-05-21', '2015-05-21', 3),
(257, 26305, 26970, 665, 'MM 1-1 ', 2, 3, 8, 'R. A. Gamini2015-06-17', '2015-06-17', 2),
(180, 42845, 43945, 1100, 'HM 1-3 ', 1, 3, 13, 'S. A.  Welikala2015-02-06', '2015-02-06', 2),
(277, 26305, 26970, 665, 'MM 1-1 ', 2, 3, 8, 'M. P. R. Perera2016-02-03', '0000-00-00', 2),
(107, 50545, 51645, 1100, 'HM 1-3 ', 1, 10, 6, 'L. R. N. Somathilake2015-06-25', '2015-06-25', 3),
(169, 23810, 24175, 365, 'JM 1-2 ', 2, 10, 1, 'G.D. N.  De Silva2015-05-21', '2015-05-21', 3),
(285, 41745, 42845, 1100, 'HM 1-3 ', 1, 2, 14, 'A S Weerapperuma2015-06-02', '2015-06-02', 1),
(75, 44805, 45730, 925, 'MM 1-1 ', 1, 25, 1, 'M. A. D. C. Medagama2015-06-18', '2015-06-18', 3),
(249, 25825, 26375, 550, 'AR 1 ', 2, 4, 7, 'U.D Niriella.2015-07-02', '0000-00-00', 3),
(70, 59165, 60475, 1310, 'HM 2-2 ', 1, 13, 0, 'K  Ediriweera2015-08-01', '0000-00-00', 3),
(146, 48345, 49445, 1100, 'HM 1-3 ', 1, 8, 8, 'R. M. L. N.  Rathnayake2015-09-01', '0000-00-00', 3),
(24, 17440, 17610, 170, 'PL 2 ', 1, 34, 9, 'S.N. Pasqual2014-09-12', '2014-09-12', 2),
(143, 19570, 19915, 345, 'MA 1-2 ', 1, 31, 11, 'N P Ketipearachchi2015-09-03', '0000-00-00', 3),
(188, 14840, 14985, 145, 'PL 3 ', 2, 18, 3, 'M. A. K.  Dharmalal2015-03-01', '0000-00-00', 3),
(125, 38330, 39255, 925, 'MM 1-1 ', 1, 18, 8, 'S W. C. K. Wijayawardena2015-07-20', '2015-07-20', 3),
(244, 25825, 26375, 550, 'AR 1 ', 2, 4, 7, 'A. R. M. Rila2015-06-01', '2015-06-01', 3),
(199, 14030, 14175, 145, 'MA 1-2 ', 3, 6, 5, 'S. R. S. Rupasinghe2014-01-19', '2014-01-19', 2),
(200, 13580, 13710, 130, 'PL 3 ', 3, 9, 2, 'P. L. S.  Kumara2015-05-21', '2015-05-21', 2),
(59, 42030, 42955, 925, 'MM 1-1 ', 1, 22, 4, 'G. H. C. Jayarani2015-12-07', '2015-12-07', 3),
(216, 16910, 17080, 170, 'MA 2-2 ', 2, 17, 1, 'N. K. L. T. M. S.  Dias2014-04-21', '2014-04-21', 2),
(291, 13450, 13595, 145, 'MA 1-2 ', 3, 2, 9, 'Weerasinghe Arachchilage Paviththra 2015-11-03', '2015-11-03', 1),
(260, 13595, 13740, 145, 'MA 1-2 ', 3, 3, 8, 'H. D. N. Fernando2015-10-01', '2015-10-01', 2),
(266, 12050, 12170, 120, 'PL 1 ', 3, 3, 8, 'G. M. Rodrigo2015-10-09', '2015-10-09', 2),
(263, 13595, 13740, 145, 'MA 1-2 ', 3, 3, 8, 'M.. B. A. M. Dissanayake2015-10-01', '2015-10-01', 2),
(93, 47245, 48345, 1100, 'HM 1-3 ', 1, 7, 9, 'R. A. S. S Gunasekara 2015-02-06', '2015-02-06', 2),
(279, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'L. A. C. P. Ranasinghe2015-02-05', '2015-02-05', 1),
(191, 34550, 35320, 770, 'AR 1 ', 1, 17, 9, 'J Adassuriya2015-11-11', '2015-11-11', 3),
(67, 17525, 17685, 160, 'PL 1 ', 1, 42, 1, 'H. M. Sunil2015-12-05', '2015-12-05', 3),
(138, 19280, 19570, 290, 'MA 1-2 ', 1, 30, 12, 'P. M. K. A. Bandara2015-12-18', '2015-12-18', 3),
(290, 13450, 13595, 145, 'MA 1-2 ', 3, 2, 9, 'Ranawaka Mudiyanselage Sanoja Dilhani Madumala2015-11-03', '2015-11-03', 1),
(259, 13595, 13740, 145, 'MA 1-2 ', 3, 3, 8, 'K. C. I. Silva2015-10-01', '2015-10-01', 2),
(286, 13450, 13595, 145, 'MA 1-2 ', 3, 2, 9, 'Kandangamuwe Pathirannahalage Dineshi Prabaha Pathirana2015-10-20', '2015-10-20', 1),
(68, 17440, 17610, 170, 'PL 2 ', 1, 36, 7, 'N.D.N. Kumara2015-09-12', '2015-09-12', 3),
(258, 14755, 14900, 145, 'MA 2-2 ', 3, 3, 8, 'S. R. J. S. Bandara2015-07-10', '2015-07-10', 2),
(116, 30055, 30700, 645, 'AR 1 ', 2, 11, 0, 'T. C.  Peiris2016-04-03', '0000-00-00', 3),
(268, 13595, 13740, 145, 'MA 1-2 ', 3, 3, 8, 'K. A. Sumudu L. Perera2016-01-08', '0000-00-00', 2),
(169, 24175, 24540, 365, 'JM 1-2 ', 2, 11, 0, 'G.D. N.  De Silva2016-05-21', '0000-00-00', 4),
(120, 53200, 54510, 1310, 'HM 2-1 ', 1, 9, 4, 'J. K.  Jayawardena2016-02-06', '0000-00-00', 4),
(298, 14610, 14755, 145, 'MA 2-2 ', 3, 2, 9, 'Mahathelge Dilan Prasanga Peiris2015-12-29', '2015-12-29', 1),
(292, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'Wadumestrige Kamal Manjula Mahindapala2015-12-05', '2015-12-05', 1),
(294, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'Prasanna Mahadevan2015-12-01', '2015-12-01', 1),
(296, 14610, 14755, 145, 'MA 2-2 ', 3, 2, 9, 'Chameera Darshana Panamaldeniya2015-12-01', '2015-12-01', 1),
(293, 24725, 25275, 550, 'AR 1 ', 2, 2, 9, 'Anurudde Nirmala Nanayakkara2015-12-01', '2015-12-01', 1),
(128, 22350, 22715, 365, 'JM 1-2 ', 2, 6, 5, 'E. B. D. P.  Jayadewa2015-05-21', '0000-00-00', 3),
(161, 14405, 14550, 145, 'PL 3 ', 2, 15, 6, 'P.P.K. Rodrigo2014-02-27', '0000-00-00', 1),
(24, 17610, 17780, 170, 'PL 2 ', 1, 35, 8, 'S.N. Pasqual2015-09-12', '2015-09-12', 3),
(239, 26375, 26925, 550, 'AR 1 ', 2, 5, 6, 'M. L. Karunarathne2015-12-05', '0000-00-00', 3),
(264, 12800, 12930, 130, 'PL 3 ', 3, 3, 8, 'P. Buddhika Warnakula2015-10-09', '2015-10-09', 2),
(261, 13595, 13740, 145, 'MA 1-2 ', 3, 3, 8, 'P. D. T. De Silva2015-10-01', '0000-00-00', 2),
(24, 17440, 17610, 170, 'PL 2 ', 1, 36, 7, 'S.N. Pasqual2016-09-12', '0000-00-00', 4),
(225, 16910, 17080, 170, 'MA 2-2 ', 2, 17, 5, 'R. A. C. A. K.  Ranawaka2015-08-17', '0000-00-00', 3),
(253, 13740, 13885, 145, 'MA 1-2 ', 3, 4, 7, 'W. A. K. Madumali2016-02-01', '0000-00-00', 3),
(274, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'B. S. Marasinghe2016-01-27', '0000-00-00', 2),
(276, 14755, 14900, 145, 'MA 2-2 ', 3, 3, 8, 'K. S. Roshan2016-01-27', '0000-00-00', 2),
(272, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'J. P. Rajitha Prasanna2016-01-13', '0000-00-00', 2),
(199, 14320, 14465, 145, 'MA 1-2 ', 3, 8, 3, 'S. R. S. Rupasinghe2016-01-19', '0000-00-00', 4),
(269, 12050, 12170, 120, 'PL 1 ', 3, 3, 8, 'K. D. S. Awantha2016-01-13', '0000-00-00', 2),
(112, 47245, 48345, 1100, 'HM 1-3 ', 1, 7, 9, 'B. A. Jayasinghe2016-02-06', '0000-00-00', 4),
(180, 43945, 45045, 1100, 'HM 1-3 ', 1, 4, 12, 'S. A.  Welikala2016-02-06', '0000-00-00', 3),
(93, 48345, 49445, 1100, 'HM 1-3 ', 1, 8, 8, 'R. A. S. S Gunasekara 2016-02-06', '0000-00-00', 3),
(279, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'L. A. C. P. Ranasinghe2016-02-05', '0000-00-00', 2),
(149, 53200, 54510, 1310, 'HM 2-1 ', 1, 9, 4, 'J. P. D. S Athuraliya2016-02-03', '0000-00-00', 3),
(282, 25275, 25825, 550, 'AR 1 ', 2, 3, 8, 'R. A. D. K. Sampath2016-02-17', '0000-00-00', 2),
(216, 17250, 17540, 290, 'MA 2-2 ', 2, 19, 3, 'N. K. L. T. M. S.  Dias2016-04-21', '0000-00-00', 4),
(139, 36400, 37325, 925, 'AR 2 ', 1, 4, 7, 'N I  Medagangoda2016-04-09', '0000-00-00', 3),
(147, 23810, 24175, 365, 'JM 1-2 ', 2, 10, 1, 'M. L. A. N.  Pushparani2016-05-21', '0000-00-00', 4),
(285, 42845, 43945, 1100, 'HM 1-3 ', 1, 3, 13, 'A S Weerapperuma2016-06-02', '0000-00-00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `hr_salary_details`
--

CREATE TABLE `hr_salary_details` (
  `Id` int(11) NOT NULL,
  `SalaryCode` varchar(50) NOT NULL,
  `Grade` varchar(100) NOT NULL,
  `InitialValue` int(11) NOT NULL,
  `InitialStep` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_salary_details`
--

INSERT INTO `hr_salary_details` (`Id`, `SalaryCode`, `Grade`, `InitialValue`, `InitialStep`) VALUES
(1, 'HM 2-3', '1', 47245, 1),
(2, 'HM 2-2', '1', 44755, 1),
(3, 'HM 2-1', '1', 44030, 1),
(4, 'HM 1-3', '1', 41745, 1),
(5, 'AR 2', '1', 34550, 1),
(6, 'AR 1', '2', 24725, 1),
(7, 'AR 1', '1', 31470, 12),
(8, 'MM 1-1', '2', 25640, 1),
(9, 'MM 1-1', '1', 33705, 12),
(10, 'JM 1-2', '2', 20890, 1),
(11, 'JM 1-2', '1', 25090, 12),
(12, 'MA 2-2', '3', 14610, 1),
(13, 'MA 2-2', '2', 16230, 12),
(14, 'MA 2-2', '1', 18755, 23),
(15, 'MA 1-2', '3', 13450, 1),
(16, 'MA 1-2', '2', 15070, 12),
(17, 'MA 1-2', '1', 17540, 23),
(18, 'PL 3', '3', 12670, 1),
(19, 'PL 3', '2', 14115, 12),
(20, 'PL 3', '1', 15580, 22),
(21, 'PL 2', '3', 12410, 1),
(22, 'PL 2', '2', 13855, 12),
(23, 'PL 2', '1', 15320, 22),
(24, 'PL 1', '3', 11930, 1),
(25, 'PL 1', '2', 13260, 12),
(26, 'PL 1', '1', 14575, 22),
(35, 'PL 3', '', 0, 0),
(34, 'AR 1', '', 0, 0),
(39, 'HM 1-3', '5', 44545, 5),
(41, 'select salary code', '', 0, 0),
(42, 'select salary code', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hr_salary_scale_details`
--

CREATE TABLE `hr_salary_scale_details` (
  `Id` int(11) NOT NULL,
  `SalaryCode` varchar(50) NOT NULL,
  `Grade` int(2) NOT NULL,
  `IncrementYears` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_salary_scale_details`
--

INSERT INTO `hr_salary_scale_details` (`Id`, `SalaryCode`, `Grade`, `IncrementYears`, `Amount`, `Order`) VALUES
(1, 'HM 2-3', 1, 12, 1310, 1),
(2, 'HM 2-2', 1, 12, 1310, 1),
(3, 'HM 2-1', 1, 12, 1310, 1),
(4, 'HM 1-3', 1, 15, 1100, 1),
(5, 'AR 2', 1, 10, 925, 1),
(6, 'AR 1', 2, 5, 550, 1),
(7, 'AR 1', 2, 5, 645, 1),
(8, 'AR 1', 1, 14, 770, 1),
(9, 'MM 1-1', 2, 3, 665, 1),
(10, 'MM 1-1', 2, 7, 735, 2),
(11, 'MM 1-1', 1, 14, 925, 1),
(12, 'JM 1-2', 2, 10, 365, 1),
(13, 'JM 1-2', 1, 17, 550, 1),
(14, 'MA 2-2', 3, 10, 145, 1),
(15, 'MA 2-2', 2, 6, 170, 1),
(16, 'MA 2-2', 2, 4, 290, 2),
(17, 'MA 2-2', 1, 19, 345, 1),
(18, 'MA 1-2', 3, 10, 145, 1),
(19, 'MA 1-2', 2, 6, 170, 1),
(20, 'MA 1-2', 2, 4, 290, 2),
(21, 'MA 1-2', 1, 7, 290, 1),
(22, 'MA 1-2', 1, 12, 345, 2),
(23, 'PL 3', 3, 10, 130, 0),
(24, 'PL 3', 2, 9, 145, 0),
(25, 'PL 3', 1, 9, 160, 0),
(26, 'PL 3', 1, 12, 170, 2),
(27, 'PL 2', 3, 10, 130, 1),
(28, 'PL 2', 2, 9, 145, 1),
(29, 'PL 2', 1, 9, 160, 1),
(30, 'PL 2', 1, 12, 170, 2),
(31, 'PL 1', 3, 10, 120, 1),
(32, 'PL 1', 2, 9, 130, 1),
(33, 'PL 1', 1, 6, 145, 1),
(34, 'PL 1', 1, 15, 160, 2),
(35, 'HM 1-3', 1, 12, 1234, 1),
(36, 'PL 2', 1, 0, 0, 1),
(38, 'select salary code', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hr_stores_tbl`
--

CREATE TABLE `hr_stores_tbl` (
  `st_id` int(11) NOT NULL,
  `serial_no` int(11) NOT NULL,
  `st_code` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_stores_tbl`
--

INSERT INTO `hr_stores_tbl` (`st_id`, `serial_no`, `st_code`) VALUES
(1, 1, ''),
(2, 1, 'sdss'),
(3, 1, 'sds');

-- --------------------------------------------------------

--
-- Table structure for table `hr_temp_salary_info`
--

CREATE TABLE `hr_temp_salary_info` (
  `EmpNo` int(11) NOT NULL,
  `Order` int(11) NOT NULL,
  `PreparedDate` date NOT NULL,
  `NameFull` varchar(255) NOT NULL,
  `Designation` varchar(25) NOT NULL,
  `SalScale` varchar(100) NOT NULL,
  `PresentSal` varchar(20) NOT NULL,
  `IncDate` date NOT NULL,
  `IncValue` varchar(20) NOT NULL,
  `FinalSal` varchar(20) NOT NULL,
  `DeputyDeneral` varchar(255) NOT NULL,
  `cc` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_temp_salary_info`
--

INSERT INTO `hr_temp_salary_info` (`EmpNo`, `Order`, `PreparedDate`, `NameFull`, `Designation`, `SalScale`, `PresentSal`, `IncDate`, `IncValue`, `FinalSal`, `DeputyDeneral`, `cc`) VALUES
(75, 1, '2015-08-25', 'M. A. D. C. Medagama', 'Accountant ', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '43880', '2014-06-18', '925', '44805', '- select -', 'Mrs. M. A. D. C. Medagama, Accountant - Grade I'),
(147, 1, '2016-07-02', 'M. L. A. N.  Pushparani', 'Accounts Officer ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '23080', '2014-05-21', '365', '23445', 'G. H. C. Jayarani', 'Mrs. M. L. A. N. Pushparani, Accounts Officer - Grade II'),
(146, 1, '2015-10-22', 'R. M. L. N.  Rathnayake', 'Senior Research Engineer', '41,745 - 15 X 1,100 - 58,245', '46145', '2013-09-01', '1100', '47245', '- select -', 'Mrs. R. M. L. N. Rathnayake, Senior Research Engineer'),
(257, 1, '2015-07-20', 'R. A. Gamini', 'Assistant Director / Depu', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '25640', '2014-06-17', '665', '26305', '- select -', 'Mr.. R. A. Gamini, Assistant Director / Deputy Director Administration'),
(143, 2, '2015-10-22', 'N P Ketipearachchi', 'Management Assistant (Sec', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '19280', '2014-09-03', '290', '19570', '- select -', 'Mrs.. N P Ketipearachchi, Management Assistant (Secretary) - Grade I'),
(146, 2, '2015-10-22', 'R. M. L. N.  Rathnayake', 'Senior Research Engineer', '41,745 - 15 X 1,100 - 58,245', '47245', '2014-09-01', '1100', '48345', '- select -', 'Mrs. R. M. L. N. Rathnayake, Senior Research Engineer'),
(162, 1, '2016-07-18', 'P. K. P. Anuruddha', 'Engineering Assistant', '20,890 - 10 X 365 - 18 X 550 - 34,440', '23810', '2014-05-21', '365', '24175', 'G. H. C. Jayarani', 'Mr. P. K. P. Anuruddha, Engineering Assistant - Grade II'),
(0, 1, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(200, 1, '2016-03-24', 'P. L. S.  Kumara', 'Plumber/Electrician - Gra', '12,670 - 10 X 130 - 10 X 145 - 10 X 160 - 12 X 170 - 19,060', '13450', '2014-05-21', '130', '13580', 'G. H. C. Jayarani', 'Mr. P. L. S. Kumara, Plumber/Electrician - Grade III'),
(107, 1, '2015-09-01', 'L. R. N. Somathilake', 'Senior Systems Analyst', '41,745 - 15 X 1,100 - 58,245', '49445', '2014-06-25', '1100', '50545', '- select -', 'Mrs.. L. R. N. Somathilake, Senior Systems Analyst'),
(0, 2, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(217, 1, '2015-08-14', 'P. S. Panawennage', 'Director General & CEO', '47,245 - 12 X 1,310 - 62,965', '62965', '2014-06-03', '1310', '64275', '- select -', 'Mr.. P. S. Panawennage, Director General/Chief Executive Officer'),
(0, 3, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 4, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 5, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(213, 1, '2015-01-05', 'W. A. P.  Silva', 'Addtional Director (Admin', '44,755 - 12 X 1,310 - 60,475', '63095', '2014-10-01', '1310', '64405', 'P. S. Panawennage', 'Mr. W. A. P. Silva, Deputy Director General (Administration & Finance)'),
(255, 1, '2015-07-15', 'N. A. A. Nadeesha Dilrukshi', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2014-05-15', '550', '25275', '- select -', 'Mrs.. N. A. A. Nadeesha Dilrukshi, Research Engineer - Grade II'),
(142, 1, '2015-10-29', 'N. M.  Kandamby', 'Management Assistant (Sec', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '19280', '2014-09-05', '290', '19570', '- select -', 'Mrs. N. M. Kandamby, Management Assistant (Secretary) - Grade I'),
(256, 1, '2015-07-08', 'Vijayasothy V', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2014-05-15', '550', '25275', '- select -', 'Ms. Vijayasothy V, Research Engineer - Grade II'),
(249, 1, '2015-08-25', 'U.D Niriella.', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2014-07-02', '550', '25825', '- select -', 'Mr. U.D Niriella., Research Engineer - Grade II'),
(264, 1, '2016-03-28', 'P. Buddhika Warnakula', 'Driver - Grade III', '12,670 - 10 X 130 - 10 X 145 - 10 X 160 - 12 X 170 - 19,060', '12670', '2014-10-09', '130', '12800', 'G. H. C. Jayarani', 'Mr.. P. Buddhika Warnakula, Driver - Grade III'),
(264, 2, '2016-03-28', 'P. Buddhika Warnakula', 'Driver - Grade III', '12,670 - 10 X 130 - 10 X 145 - 10 X 160 - 12 X 170 - 19,060', '12670', '2014-10-09', '130', '12800', 'G. H. C. Jayarani', 'Mr.. P. Buddhika Warnakula, Driver - Grade III'),
(126, 1, '2016-03-24', 'D.V. N. Silva', 'Lab Attendent - Grade III', '12,410 - 10 X 130 - 10 X 145 - 10 X 160 -12 X 170 - 18,800', '15450', '2014-12-03', '145', '15595', 'G. H. C. Jayarani', 'Mr.. D.V. N. Silva, Lab Attendent - Grade III'),
(67, 1, '2016-03-24', 'H. M. Sunil', 'Office Aide - Grade I', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 - 17,845', '17365', '2014-12-05', '160', '17525', 'G. H. C. Jayarani', 'Mr. H. M. Sunil, Office Aide - Grade I'),
(263, 1, '2016-03-24', 'M.. B. A. M. Dissanayake', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13450', '2014-10-01', '145', '13595', 'G. H. C. Jayarani', 'Ms.. M.. B. A. M. Dissanayake, Management Assistant - Grade III'),
(202, 1, '2015-10-29', 'K. A. K.  Gunasekara', 'Technical Officer - Grade', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '18990', '2014-09-12', '290', '19280', '- select -', 'Mr. K. A. K. Gunasekara, Technical Officer - Grade II'),
(261, 1, '2016-04-19', 'P. D. T. De Silva', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13450', '2014-10-01', '145', '13595', 'G. H. C. Jayarani', 'Ms.. P. D. T. De Silva, Management Assistant - Grade III'),
(244, 1, '2016-03-10', 'A. R. M. Rila', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2014-06-01', '550', '25825', '- select -', 'Mr.. A. R. M. Rila, Research Scientist - Grade II'),
(65, 1, '2015-07-20', 'J. A. K.  Jayakody', 'Administrative Office', '20,890 - 10 X 365 - 18 X 550 - 34,440', '23445', '2014-05-21', '365', '23810', '- select -', 'Mr. J. A. K. Jayakody, Administrative Office'),
(259, 1, '2016-03-28', 'K. C. I. Silva', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13450', '2014-10-01', '145', '13595', 'G. H. C. Jayarani', 'Mrs . K. C. I. Silva, Management Assistant - Grade III'),
(0, 6, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(169, 1, '2015-08-25', 'G.D. N.  De Silva', 'Engineering Assistant', '20,890 - 10 X 365 - 18 X 550 - 34,440', '23445', '2014-05-21', '365', '23810', '- select -', 'Mr. G.D. N. De Silva, Engineering Assistant - Grade II'),
(246, 1, '2015-01-16', 'W. R. S. C.  Ranathunga', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2013-06-01', '550', '25825', 'W. A. P.  Silva', 'Mr. W. R. S. C. Ranathunga, Research Engineer - Grade II'),
(138, 1, '2016-03-24', 'P. M. K. A. Bandara', 'Library Assistant - Grade', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '18990', '2014-12-18', '290', '19280', 'G. H. C. Jayarani', 'Mrs. P. M. K. A. Bandara, Library Assistant - Grade I'),
(191, 1, '2016-03-24', 'J Adassuriya', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '33780', '2014-11-11', '770', '34550', 'G. H. C. Jayarani', 'Mr. J Adassuriya, Research Scientist - Grade II'),
(127, 1, '2016-03-24', 'G. K. S. Perera', 'Lab Attendent - Grade III', '12,410 - 10 X 130 - 10 X 145 - 10 X 160 -12 X 170 - 18,800', '15450', '2014-12-03', '145', '15595', 'G. H. C. Jayarani', 'Mr. G. K. S. Perera, Lab Attendent - Grade III'),
(265, 1, '2015-02-02', 'P. Chandima Ramanayake', 'Office Aide - Grade III', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 - 17,845', '11930', '2014-10-03', '120', '12050', 'W. A. P.  Silva', 'Mr.. P. Chandima Ramanayake, Office Aide - Grade III'),
(70, 1, '2015-08-15', 'K  Ediriweera', 'Deputy Director General (', '44,755 - 12 X 1,310 - 60,475', '57855', '2014-08-01', '1310', '59165', '- select -', 'Mrs. K Ediriweera, Deputy Director General (Technical Operation)'),
(258, 1, '2016-03-28', 'S. R. J. S. Bandara', 'Technical Assistants', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '14610', '2014-07-10', '145', '14755', 'G. H. C. Jayarani', 'Mr. S. R. J. S. Bandara, Technical Assistants Grade III'),
(139, 1, '2016-05-12', 'N I  Medagangoda', 'Research Scientist', '34,550 - 10 X 925 - 43,800', '34550', '2014-04-09', '925', '35475', 'G. H. C. Jayarani', 'Mr. N I Medagangoda, Research Scientist'),
(59, 1, '2015-02-02', 'G. H. C. Jayarani', 'Assistant Director/ Deput', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '41105', '2014-12-07', '925', '42030', 'W. A. P.  Silva', 'Mrs.. G. H. C. Jayarani, Assistant Director/ Deputy Director Human Resources'),
(0, 7, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(190, 1, '2016-03-24', 'R. P.  Dasanayaka', 'System Analyst - Grade I', '34,550 - 10 X 925 - 43,800', '46575', '2014-12-01', '925', '47500', 'G. H. C. Jayarani', 'Mr. R. P. Dasanayaka, System Analyst - Grade I'),
(260, 1, '2016-03-24', 'H. D. N. Fernando', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13450', '2014-10-01', '145', '13595', 'G. H. C. Jayarani', 'Ms.. H. D. N. Fernando, Management Assistant - Grade III'),
(251, 1, '2015-03-13', 'W. R. W. M. Y. S. B. Bulumulla', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2014-08-15', '550', '25825', 'W. A. P.  Silva', 'Mr. W. R. W. M. Y. S. B. Bulumulla, Research Engineer - Grade II'),
(298, 3, '2016-03-28', 'Mahathelge Dilan Prasanga Peiris', 'Technical Assistant - Gra', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '14610', '2015-12-29', '145', '14755', 'G. H. C. Jayarani', 'Mr.. Mahathelge Dilan Prasanga Peiris, Technical Assistant - Grade III'),
(258, 2, '2016-03-28', 'S. R. J. S. Bandara', 'Technical Assistants  Gra', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '14755', '2015-07-10', '145', '14900', 'G. H. C. Jayarani', 'Mr. S. R. J. S. Bandara, Technical Assistants Grade III'),
(0, 8, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 9, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 10, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 11, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 12, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 13, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 14, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 15, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 16, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 17, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 18, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 19, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 20, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 21, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 22, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 23, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 24, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 25, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 26, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 27, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 28, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 29, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 30, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 31, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 32, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 33, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 34, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 35, '0000-00-00', 'L. R. N. Somathilake/>L. R. N. Somathilake </td><td hidden=', 'Senior Systems Analyst', '41,745 - 15 X 1,100 - 58,245', '49445', '2014-06-25', '1100', '50545', '', ''),
(0, 36, '0000-00-00', 'L. R. N. Somathilake/>L. R. N. Somathilake </td><td hidden=', 'Senior Systems Analyst', '41,745 - 15 X 1,100 - 58,245', '49445', '2014-06-25', '1100', '50545', '', ''),
(0, 37, '0000-00-00', 'N I  Medagangoda/>N I  Medagangoda </td><td hidden=', 'Research Scientist', '34,550 - 10 X 925 - 43,800', '34550', '2014-04-09', '925', '35475', '', ''),
(0, 38, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 39, '0000-00-00', 'L. R. N. Somathilake/>L. R. N. Somathilake </td><td hidden=', 'Senior Systems Analyst', '41,745 - 15 X 1,100 - 58,245', '49445', '2014-06-25', '1100', '50545', '', ''),
(36, 1, '2016-06-06', 'D. R. D. De Silva', 'Confidential Secretary', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '34250', '2014-03-01', '735', '34985', 'G. H. C. Jayarani', 'Mrs. D. R. D. De Silva, Confidential Secretary - Grade II'),
(7, 1, '2016-05-12', 'N B Micheal', 'Office Aide - Grade I', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 - 17,845', '18005', '2014-02-18', '160', '18165', 'G. H. C. Jayarani', 'Mr.. N B Micheal, Office Aide - Grade I'),
(0, 40, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(266, 1, '2016-03-24', 'G. M. Rodrigo', 'Office Aide - Grade III', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 - 17,845', '11930', '2014-10-09', '120', '12050', 'G. H. C. Jayarani', 'Mr.. G. M. Rodrigo, Office Aide - Grade III'),
(112, 1, '2016-05-31', 'B. A. Jayasinghe', 'Senior System/ Software E', '41,745 - 15 X 1,100 - 58,245', '45045', '2014-02-06', '1100', '46145', 'G. H. C. Jayarani', 'Mr. B. A. Jayasinghe, Senior System/ Software Engineer'),
(0, 41, '0000-00-00', 'B. A. Jayasinghe/>B. A. Jayasinghe </td><td hidden=', 'Senior System/ Software E', '41,745 - 15 X 1,100 - 58,245', '45045', '2014-02-06', '1100', '46145', '', ''),
(149, 1, '2016-05-31', 'J. P. D. S Athuraliya', 'Principal Research Engine', '44,030 - 12 X 1,310 - 59,750', '50580', '2014-02-03', '1310', '51890', 'G. H. C. Jayarani', 'Mrs. J. P. D. S Athuraliya, Principal Research Engineer'),
(199, 1, '2016-05-31', 'S. R. S. Rupasinghe', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13885', '2013-01-19', '145', '14030', 'G. H. C. Jayarani', 'Mr. S. R. S. Rupasinghe, Management Assistant - Grade III'),
(199, 3, '2016-05-31', 'S. R. S. Rupasinghe', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '14175', '2015-01-19', '145', '14320', 'G. H. C. Jayarani', 'Mr. S. R. S. Rupasinghe, Management Assistant - Grade III'),
(226, 1, '2015-03-13', 'J. S.  Koruwage', 'Technical Officer - Grade', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '16740', '2014-09-01', '170', '16910', 'W. A. P.  Silva', 'Mr. J. S. Koruwage, Technical Officer - Grade II'),
(225, 1, '2016-05-12', 'R. A. C. A. K.  Ranawaka', 'Technical Officer - Grade', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '16740', '2014-08-17', '170', '16910', 'G. H. C. Jayarani', 'Mr. R. A. C. A. K. Ranawaka, Technical Officer - Grade II'),
(132, 1, '2016-03-28', 'S. P.  Athuluwage', 'Computer Application Asst', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '17830', '2014-12-10', '290', '18120', 'G. H. C. Jayarani', 'Mr. S. P. Athuluwage, Computer Application Asstant - Grade II'),
(68, 1, '2016-03-24', 'N.N. Kumara', 'Lab Attendent - Grade I', '12,410 - 10 X 130 - 10 X 145 - 10 X 160 -12 X 170 - 18,800', '17270', '2014-09-12', '170', '17440', 'G. H. C. Jayarani', 'Mr. N.D.N. Kumara, Lab Attendent - Grade I'),
(251, 2, '2015-03-13', 'W. R. W. M. Y. S. B. Bulumulla', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25825', '2015-08-15', '550', '26375', 'W. A. P.  Silva', 'Mr. W. R. W. M. Y. S. B. Bulumulla, Research Engineer - Grade II'),
(280, 1, '2015-04-01', 'S. D. Shiromi Lakmali ', 'Software Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-02-05', '550', '25275', 'W. A. P.  Silva', 'Ms.. S. D. Shiromi Lakmali , Software Engineer - Grade II'),
(112, 2, '2016-05-31', 'B. A. Jayasinghe', 'Senior System/ Software E', '41,745 - 15 X 1,100 - 58,245', '46145', '2015-02-06', '1100', '47245', 'G. H. C. Jayarani', 'Mr. B. A. Jayasinghe, Senior System/ Software Engineer'),
(7, 2, '2016-05-12', 'N B Micheal', 'Office Aide - Grade I', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 - 17,845', '18165', '2015-02-18', '160', '18325', 'G. H. C. Jayarani', 'Mr.. N B Micheal, Office Aide - Grade I'),
(277, 1, '2016-07-02', 'M. P. R. Perera', 'Assistant Dirctor / Deput', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '25640', '2015-02-03', '665', '26305', 'G. H. C. Jayarani', 'Mr.. M. P. R. Perera, Assistant Director (Industrial Relations) Grade II'),
(149, 2, '2016-05-31', 'J. P. D. S Athuraliya', 'Principal Research Engine', '44,030 - 12 X 1,310 - 59,750', '51890', '2015-02-03', '1310', '53200', 'G. H. C. Jayarani', 'Mrs. J. P. D. S Athuraliya, Principal Research Engineer'),
(253, 1, '2016-05-31', 'W. A. K. Madumali', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13595', '2015-02-01', '145', '13740', 'G. H. C. Jayarani', 'Ms. W. A. K. Madumali, Management Assistant - Grade III'),
(274, 1, '2016-05-12', 'B. S. Marasinghe', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-01-27', '550', '25275', 'G. H. C. Jayarani', 'Mr.. B. S. Marasinghe, Research Scientist - Grade II'),
(276, 1, '2016-05-12', 'K. S. Roshan', 'Technical Assistant - Gra', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '14610', '2015-01-27', '145', '14755', 'G. H. C. Jayarani', 'Mr.. K. S. Roshan, Technical Assistant - Grade III'),
(268, 1, '2016-05-12', 'K. A. Sumudu L. Perera', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13450', '2015-01-08', '145', '13595', 'G. H. C. Jayarani', 'Ms.. K. A. Sumudu L. Perera, Management Assistant - Grade III'),
(273, 1, '2015-03-28', 'L  Vengadasalam', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-01-13', '550', '25275', 'W. A. P.  Silva', 'Mr.. L Vengadasalam, Research Engineer - Grade II'),
(36, 2, '2016-06-06', 'D. R. D. De Silva', 'Confidential Secretary', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '34985', '2015-03-01', '735', '35720', 'G. H. C. Jayarani', 'Mrs. D. R. D. De Silva, Confidential Secretary - Grade II'),
(269, 1, '2016-05-31', 'K. D. S. Awantha', 'Office Aide - Grade III', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 - 17,845', '11930', '2015-01-13', '120', '12050', 'G. H. C. Jayarani', 'Mr.. K. D. S. Awantha, Office Aide - Grade III'),
(0, 42, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(193, 1, '2016-05-31', 'V K Aluthge', 'Confidential Secretary', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '32780', '2015-03-01', '735', '33515', 'G. H. C. Jayarani', 'Mrs. . V K Aluthge, Confidential Secretary - Grade II'),
(0, 43, '0000-00-00', 'L. R. N. Somathilake/>L. R. N. Somathilake </td><td hidden=', 'Senior Systems Analyst', '41,745 - 15 X 1,100 - 58,245', '49445', '2014-06-25', '1100', '50545', '', ''),
(0, 44, '0000-00-00', 'L. R. N. Somathilake/>L. R. N. Somathilake </td><td hidden=', 'Senior Systems Analyst', '41,745 - 15 X 1,100 - 58,245', '49445', '2014-06-25', '1100', '50545', '', ''),
(0, 45, '0000-00-00', 'L. R. N. Somathilake/>L. R. N. Somathilake </td><td hidden=', 'Senior Systems Analyst', '41,745 - 15 X 1,100 - 58,245', '49445', '2014-06-25', '1100', '50545', '', ''),
(239, 1, '2016-04-19', 'M. L. Karunarathne', 'System Analyst - Grade II', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25825', '2014-12-05', '550', '26375', 'G. H. C. Jayarani', 'Ms.. M. L. Karunarathne, System Analyst - Grade II'),
(212, 1, '2016-03-24', 'E. P. P Fernando', 'Management Assistant (Sto', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '17250', '2014-02-05', '290', '17540', 'G. H. C. Jayarani', 'Mr. E. P. P Fernando, Management Assistant (Store Keeper) - Grade II'),
(0, 46, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(212, 2, '2016-03-24', 'E. P. P Fernando', 'Management Assistant (Sto', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '17540', '2015-02-05', '290', '17830', 'G. H. C. Jayarani', 'Mr. E. P. P Fernando, Management Assistant (Store Keeper) - Grade II'),
(0, 47, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(272, 1, '2016-05-12', 'J. P. Rajitha Prasanna', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-01-13', '550', '25275', 'G. H. C. Jayarani', 'Mr.. J. P. Rajitha Prasanna, Research Engineer - Grade II'),
(271, 1, '2016-05-12', 'V. K. O. N. Thalpawila', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-01-13', '550', '25275', 'G. H. C. Jayarani', 'Miss.. V. K. O. N. Thalpawila, Research Engineer - Grade II'),
(255, 2, '2015-07-15', 'N. A. A. Nadeesha Dilrukshi', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2015-05-15', '550', '25825', '- select -', 'Mrs.. N. A. A. Nadeesha Dilrukshi, Research Engineer - Grade II'),
(282, 1, '2016-05-12', 'R. A. D. K. Sampath', 'Electronic Engineer - Gra', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-02-17', '550', '25275', 'G. H. C. Jayarani', 'Mr.. R. A. D. K. Sampath, Electronic Engineer - Grade II'),
(256, 2, '2015-07-08', 'Vijayasothy V', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2015-05-15', '550', '25825', '- select -', 'Ms. Vijayasothy V, Research Engineer - Grade II'),
(0, 48, '0000-00-00', 'E. P. P Fernando/>E. P. P Fernando </td><td hidden=', 'Management Assistant (Sto', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '17540', '2015-02-05', '290', '17830', '', ''),
(0, 49, '0000-00-00', 'E. P. P Fernando/>E. P. P Fernando </td><td hidden=', 'Management Assistant (Sto', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '17540', '2015-02-05', '290', '17830', '', ''),
(180, 1, '2016-05-31', 'S. A.  Welikala', 'Senior Deputy Director In', '41,745 - 15 X 1,100 - 58,245', '41745', '2014-02-06', '1100', '42845', 'G. H. C. Jayarani', 'Mr. S. A. Welikala, Senior Deputy Director Industrialization'),
(5, 1, '2016-05-31', 'P.D. Champika Janashanthi', ' Senior Electronic Engine', '41,745 - 15 X 1,100 - 58,245', '54945', '2015-02-06', '1100', '56045', 'G. H. C. Jayarani', 'Mrs.. P.D. Champika Janashanthi, Senior Electronic Engineer'),
(192, 1, '2016-05-31', 'S.P.K.K.A Liyanage', ' Librarian', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '45730', '2015-04-03', '925', '46655', 'G. H. C. Jayarani', 'Mr. S.P.K.K.A Liyanage, Librarian - Grade I'),
(120, 1, '2016-05-12', 'J. K.  Jayawardena', 'Principle Research Engine', '44,030 - 12 X 1,310 - 59,750', '51890', '2015-02-06', '1310', '53200', 'G. H. C. Jayarani', 'Mr. J. K. Jayawardena, Principal Research Engineer'),
(215, 1, '2016-05-31', 'J. S. B.  Rathnayake', 'Internal Auditor', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '32045', '2015-03-07', '735', '32780', 'G. H. C. Jayarani', 'Mr. J. S. B. Rathnayake, Internal Auditor - Grade II'),
(116, 1, '2015-07-08', 'T. C.  Peiris', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '29410', '2015-04-03', '645', '30055', '- select -', 'Mr. T. C. Peiris, Research Scientist - Grade III'),
(278, 1, '2015-07-08', 'M.B. Thilakarathne', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-02-03', '550', '25275', '- select -', 'Mr.. M.B. Thilakarathne, Research Engineer - Grade II'),
(278, 2, '2015-07-08', 'M.B. Thilakarathne', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-02-03', '550', '25275', '- select -', 'Mr.. M.B. Thilakarathne, Research Engineer - Grade II'),
(139, 2, '2016-05-12', 'N I  Medagangoda', 'Research Scientist', '34,550 - 10 X 925 - 43,800', '35475', '2015-04-09', '925', '36400', 'G. H. C. Jayarani', 'Mr. N I Medagangoda, Research Scientist'),
(212, 3, '2016-03-24', 'E. P. P Fernando', 'Management Assistant (Sto', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '17830', '2016-02-05', '290', '18120', 'G. H. C. Jayarani', 'Mr. E. P. P Fernando, Management Assistant (Store Keeper) - Grade II'),
(212, 4, '2016-03-24', 'E. P. P Fernando', 'Management Assistant (Sto', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '17830', '2016-02-05', '290', '18120', 'G. H. C. Jayarani', 'Mr. E. P. P Fernando, Management Assistant (Store Keeper) - Grade II'),
(0, 57, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(190, 2, '2016-03-24', 'R. P.  Dasanayaka', 'System Analyst - Grade I', '34,550 - 10 X 925 - 43,800', '47500', '2015-12-01', '925', '48425', 'G. H. C. Jayarani', 'Mr. R. P. Dasanayaka, System Analyst - Grade I'),
(192, 2, '2016-05-31', 'S.P.K.K.A Liyanage', ' Librarian', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '46655', '2016-04-03', '925', '47580', 'G. H. C. Jayarani', 'Mr. S.P.K.K.A Liyanage, Librarian - Grade I'),
(168, 2, '2016-05-12', 'P. D. S.  Pushpakumara', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '27475', '2015-01-19', '645', '28120', 'G. H. C. Jayarani', 'Mr. P. D. S. Pushpakumara, Research Scientist - Grade III'),
(0, 50, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(168, 3, '2016-05-12', 'P. D. S.  Pushpakumara', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '27475', '2015-01-19', '645', '28120', 'G. H. C. Jayarani', 'Mr. P. D. S. Pushpakumara, Research Scientist - Grade III'),
(107, 2, '2015-09-01', 'L. R. N. Somathilake', 'Senior Systems Analyst', '41,745 - 15 X 1,100 - 58,245', '50545', '2015-06-25', '1100', '51645', '- select -', 'Mrs.. L. R. N. Somathilake, Senior Systems Analyst'),
(70, 3, '2015-08-15', 'K  Ediriweera', 'Deputy Director General (', '44,755 - 12 X 1,310 - 60,475', '59165', '2015-08-01', '1310', '60475', '- select -', 'Mrs. K Ediriweera, Deputy Director General (Technical Operation)'),
(168, 2, '2016-05-12', 'P. D. S.  Pushpakumara', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '27475', '2015-01-19', '645', '28120', 'G. H. C. Jayarani', 'Mr. P. D. S. Pushpakumara, Research Scientist - Grade III'),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '24540', '2016-05-21', '0', '24540', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '24540', '2016-05-21', '0', '24540', '', ''),
(125, 1, '2016-03-24', 'S W. C. K. Wijayawardena', 'Assistant Director/ Deput', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '37405', '2014-07-20', '925', '38330', 'G. H. C. Jayarani', 'Mr. S W. C. K. Wijayawardena, Deputy Director (Media) Grade I'),
(128, 1, '2016-07-18', 'E. B. D. P.  Jayadewa', 'Engineering Assistant', '20,890 - 10 X 365 - 18 X 550 - 34,440', '21985', '2014-05-21', '365', '22350', 'G. H. C. Jayarani', 'Mr. E. B. D. P. Jayadewa, Engineering Assistant - Grade II'),
(65, 2, '2015-07-20', 'J. A. K.  Jayakody', 'Administrative Office', '20,890 - 10 X 365 - 18 X 550 - 34,440', '23810', '2015-05-21', '365', '24175', '- select -', 'Mr. J. A. K. Jayakody, Administrative Office'),
(130, 1, '2016-07-02', 'S. A. A.  Siriwardhana', 'Engineering Assistant', '20,890 - 10 X 365 - 18 X 550 - 34,440', '24905', '2015-05-21', '365', '25270', 'G. H. C. Jayarani', 'Mr. S. A. A. Siriwardhana, Engineering Assistant - Grade II'),
(162, 2, '2016-07-18', 'P. K. P. Anuruddha', 'Engineering Assistant', '20,890 - 10 X 365 - 18 X 550 - 34,440', '24175', '2015-05-21', '365', '24540', 'G. H. C. Jayarani', 'Mr. P. K. P. Anuruddha, Engineering Assistant - Grade II'),
(147, 2, '2016-07-02', 'M. L. A. N.  Pushparani', 'Accounts Officer ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '23445', '2015-05-21', '365', '23810', 'G. H. C. Jayarani', 'Mrs. M. L. A. N. Pushparani, Accounts Officer - Grade II'),
(0, 51, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(257, 2, '2015-07-20', 'R. A. Gamini', 'Assistant Director / Depu', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '26305', '2015-06-17', '665', '26970', '- select -', 'Mr.. R. A. Gamini, Assistant Director / Deputy Director Administration'),
(107, 3, '2015-09-01', 'L. R. N. Somathilake', 'Senior Systems Analyst', '41,745 - 15 X 1,100 - 58,245', '50545', '2015-06-25', '1100', '51645', '- select -', 'Mrs.. L. R. N. Somathilake, Senior Systems Analyst'),
(257, 3, '2015-07-20', 'R. A. Gamini', 'Assistant Director / Depu', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '26305', '2015-06-17', '665', '26970', '- select -', 'Mr.. R. A. Gamini, Assistant Director / Deputy Director Administration'),
(192, 3, '2016-05-31', 'S.P.K.K.A Liyanage', ' Librarian', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '45730', '2015-04-03', '925', '46655', 'G. H. C. Jayarani', 'Mr. S.P.K.K.A Liyanage, Librarian - Grade I'),
(180, 2, '2016-05-31', 'S. A.  Welikala', 'Senior Deputy Director In', '41,745 - 15 X 1,100 - 58,245', '42845', '2015-02-06', '1100', '43945', 'G. H. C. Jayarani', 'Mr. S. A. Welikala, Senior Deputy Director Industrialization'),
(217, 2, '2015-08-14', 'P. S. Panawennage', 'Director General/Chief Ex', '47,245 - 12 X 1,310 - 62,965', '64275', '2015-06-03', '1310', '65585', '- select -', 'Mr.. P. S. Panawennage, Director General/Chief Executive Officer'),
(296, 1, '2016-03-28', 'Chameera Darshana Panamaldeniya', 'Technical Assistants  Gra', '', '0', '0000-00-00', '0', '0', 'G. H. C. Jayarani', 'Mr.. Chameera Darshana Panamaldeniya, Technical Assistants Grade III'),
(296, 2, '2016-03-28', 'Chameera Darshana Panamaldeniya', 'Technical Assistants  Gra', '', '0', '0000-00-00', '0', '0', 'G. H. C. Jayarani', 'Mr.. Chameera Darshana Panamaldeniya, Technical Assistants Grade III'),
(0, 52, '0000-00-00', '', '', '', '0', '0000-00-00', '0', '0', '', ''),
(0, 53, '0000-00-00', '', '', '', '0', '0000-00-00', '0', '0', '', ''),
(108, 1, '2016-07-02', 'T. M. S. S.  P.  Cooray', 'Management Assistant (Sec', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '25435', '2015-05-19', '345', '25780', 'G. H. C. Jayarani', 'Mrs. T. M. S. S. P. Cooray, Management Assistant (Secretary) - Grade I'),
(108, 2, '2016-07-02', 'T. M. S. S.  P.  Cooray', 'Management Assistant (Sec', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '25435', '2015-05-19', '345', '25780', 'G. H. C. Jayarani', 'Mrs. T. M. S. S. P. Cooray, Management Assistant (Secretary) - Grade I'),
(169, 2, '2015-08-25', 'G.D. N.  De Silva', 'Engineering Assistant  - ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '23810', '2015-05-21', '365', '24175', '- select -', 'Mr. G.D. N. De Silva, Engineering Assistant - Grade II'),
(169, 3, '2015-08-25', 'G.D. N.  De Silva', 'Engineering Assistant  - ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '23810', '2015-05-21', '365', '24175', '- select -', 'Mr. G.D. N. De Silva, Engineering Assistant - Grade II'),
(285, 1, '2016-07-18', 'A S Weerapperuma', 'Senior Deputy Director Fi', '41,745 - 15 X 1,100 - 58,245', '41745', '2015-06-02', '1100', '42845', 'G. H. C. Jayarani', 'Mr. A S Weerapperuma, Senior Deputy Director Finance'),
(75, 2, '2015-08-25', 'M. A. D. C. Medagama', 'Accountant  - Grade I', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '44805', '2015-06-18', '925', '45730', '- select -', 'Mrs. M. A. D. C. Medagama, Accountant - Grade I'),
(249, 2, '2015-08-25', 'U.D Niriella.', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25825', '2015-07-02', '550', '26375', '- select -', 'Mr. U.D Niriella., Research Engineer - Grade II'),
(70, 2, '2015-08-15', 'K  Ediriweera', 'Deputy Director General (', '44,755 - 12 X 1,310 - 60,475', '59165', '2015-08-01', '1310', '60475', '- select -', 'Mrs. K Ediriweera, Deputy Director General (Technical Operation)'),
(24, 1, '2016-04-19', 'S.N. Pasqual', 'Lab Attendent - Grade I', '12,410 - 10 X 130 - 10 X 145 - 10 X 160 -12 X 170 - 18,800', '17440', '2014-09-12', '170', '17610', 'G. H. C. Jayarani', 'Mr. S.N. Pasqual, Lab Attendent - Grade I'),
(202, 2, '2015-10-29', 'K. A. K.  Gunasekara', 'Technical Officer - Grade', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '19280', '2015-09-12', '290', '19570', '- select -', 'Mr. K. A. K. Gunasekara, Technical Officer - Grade II'),
(202, 3, '2015-10-29', 'K. A. K.  Gunasekara', 'Technical Officer - Grade', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '19280', '2015-09-12', '290', '19570', '- select -', 'Mr. K. A. K. Gunasekara, Technical Officer - Grade II'),
(146, 3, '2015-10-22', 'R. M. L. N.  Rathnayake', 'Senior Research Engineer', '41,745 - 15 X 1,100 - 58,245', '48345', '2015-09-01', '1100', '49445', '- select -', 'Mrs. R. M. L. N. Rathnayake, Senior Research Engineer'),
(142, 2, '2015-10-29', 'N. M.  Kandamby', 'Management Assistant (Sec', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '19570', '2015-09-05', '345', '19915', '- select -', 'Mrs. N. M. Kandamby, Management Assistant (Secretary) - Grade I'),
(143, 2, '2015-10-22', 'N P Ketipearachchi', 'Management Assistant (Sec', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '19570', '2015-09-03', '345', '19915', '- select -', 'Mrs.. N P Ketipearachchi, Management Assistant (Secretary) - Grade I'),
(188, 1, '2016-07-18', 'M. A. K.  Dharmalal', 'Driver - Grade II', '12,670 - 10 X 130 - 10 X 145 - 10 X 160 - 12 X 170 - 19,060', '14840', '2015-03-01', '145', '14985', 'G. H. C. Jayarani', 'Mr. M. A. K. Dharmalal, Driver - Grade II'),
(188, 2, '2016-07-18', 'M. A. K.  Dharmalal', 'Driver - Grade II', '12,670 - 10 X 130 - 10 X 145 - 10 X 160 - 12 X 170 - 19,060', '14840', '2015-03-01', '145', '14985', 'G. H. C. Jayarani', 'Mr. M. A. K. Dharmalal, Driver - Grade II'),
(125, 2, '2016-03-24', 'S W. C. K. Wijayawardena', 'Deputy Director (Media) G', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '38330', '2015-07-20', '925', '39255', 'G. H. C. Jayarani', 'Mr. S W. C. K. Wijayawardena, Deputy Director (Media) Grade I'),
(244, 2, '2016-03-10', 'A. R. M. Rila', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25825', '2015-06-01', '550', '26375', '- select -', 'Mr.. A. R. M. Rila, Research Scientist - Grade II'),
(200, 2, '2016-03-24', 'P. L. S.  Kumara', 'Plumber/Electrician - Gra', '12,670 - 10 X 130 - 10 X 145 - 10 X 160 - 12 X 170 - 19,060', '13580', '2015-05-21', '130', '13710', 'G. H. C. Jayarani', 'Mr. P. L. S. Kumara, Plumber/Electrician - Grade III'),
(216, 2, '2016-05-31', 'N. K. L. T. M. S.  Dias', 'Technical Officer - Grade', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '17080', '2015-04-21', '170', '17250', 'G. H. C. Jayarani', 'Mr. N. K. L. T. M. S. Dias, Technical Officer - Grade II'),
(199, 2, '2016-05-31', 'S. R. S. Rupasinghe', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '14030', '2014-01-19', '145', '14175', 'G. H. C. Jayarani', 'Mr. S. R. S. Rupasinghe, Management Assistant - Grade III'),
(216, 5, '2016-05-31', 'N. K. L. T. M. S.  Dias', 'Technical Officer - Grade', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '16910', '2014-04-21', '170', '17080', 'G. H. C. Jayarani', 'Mr. N. K. L. T. M. S. Dias, Technical Officer - Grade II'),
(59, 2, '0000-00-00', 'G. H. C. Jayarani', 'Deputy Director ( Human R', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '42030', '2015-12-07', '925', '42955', '', ''),
(59, 3, '0000-00-00', 'G. H. C. Jayarani', 'Deputy Director ( Human R', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '42030', '2015-12-07', '925', '42955', '', ''),
(291, 1, '2016-03-24', 'Weerasinghe Arachchilage Paviththra ', 'Management Assistant - Gr', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13450', '2015-11-03', '145', '13595', 'G. H. C. Jayarani', 'Ms.. Weerasinghe Arachchilage Paviththra , Management Assistant - Grade III (Receptionist/Telephone Operator)'),
(260, 2, '2016-03-24', 'H. D. N. Fernando', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13595', '2015-10-01', '145', '13740', 'G. H. C. Jayarani', 'Ms.. H. D. N. Fernando, Management Assistant - Grade III'),
(266, 2, '2016-03-24', 'G. M. Rodrigo', 'Office Aide - Grade III', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 - 17,845', '12050', '2015-10-09', '120', '12170', 'G. H. C. Jayarani', 'Mr.. G. M. Rodrigo, Office Aide - Grade III'),
(263, 2, '2016-03-24', 'M.. B. A. M. Dissanayake', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13595', '2015-10-01', '145', '13740', 'G. H. C. Jayarani', 'Ms.. M.. B. A. M. Dissanayake, Management Assistant - Grade III'),
(263, 3, '2016-03-24', 'M.. B. A. M. Dissanayake', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13595', '2015-10-01', '145', '13740', 'G. H. C. Jayarani', 'Ms.. M.. B. A. M. Dissanayake, Management Assistant - Grade III'),
(93, 1, '2016-05-12', 'R. A. S. S Gunasekara ', 'Senior Research Scientist', '41,745 - 15 X 1,100 - 58,245', '47245', '2015-02-06', '1100', '48345', 'G. H. C. Jayarani', 'Mr. R. A. S. S Gunasekara , Senior Research Scientist'),
(279, 1, '2016-05-31', 'L. A. C. P. Ranasinghe', 'Software Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-02-05', '550', '25275', 'G. H. C. Jayarani', 'Ms.. L. A. C. P. Ranasinghe, Software Engineer - Grade II'),
(126, 2, '2016-03-24', 'D.V. N. Silva', 'Lab Attendent - Grade III', '12,410 - 10 X 130 - 10 X 145 - 10 X 160 -12 X 170 - 18,800', '15595', '2015-12-03', '145', '15740', 'G. H. C. Jayarani', 'Mr.. D.V. N. Silva, Lab Attendent - Grade III'),
(191, 2, '2016-03-24', 'J Adassuriya', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '34550', '2015-11-11', '770', '35320', 'G. H. C. Jayarani', 'Mr. J Adassuriya, Research Scientist - Grade II'),
(67, 2, '2016-03-24', 'H. M. Sunil', 'Office Aide - Grade I', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 - 17,845', '17525', '2015-12-05', '160', '17685', 'G. H. C. Jayarani', 'Mr. H. M. Sunil, Office Aide - Grade I'),
(67, 3, '2016-03-24', 'H. M. Sunil', 'Office Aide - Grade I', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 - 17,845', '17525', '2015-12-05', '160', '17685', 'G. H. C. Jayarani', 'Mr. H. M. Sunil, Office Aide - Grade I'),
(132, 2, '2016-03-28', 'S. P.  Athuluwage', 'Computer Application Asst', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '18120', '2015-12-10', '290', '18410', 'G. H. C. Jayarani', 'Mr. S. P. Athuluwage, Computer Application Asstant - Grade II'),
(132, 3, '2016-03-28', 'S. P.  Athuluwage', 'Computer Application Asst', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '18120', '2015-12-10', '290', '18410', 'G. H. C. Jayarani', 'Mr. S. P. Athuluwage, Computer Application Asstant - Grade II'),
(138, 2, '2016-03-24', 'P. M. K. A. Bandara', 'Library Assistant - Grade', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '19280', '2015-12-18', '290', '19570', 'G. H. C. Jayarani', 'Mrs. P. M. K. A. Bandara, Library Assistant - Grade I'),
(290, 1, '2016-03-24', 'Ranawaka Mudiyanselage Sanoja Dilhani Madumala', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13450', '2015-11-03', '145', '13595', 'G. H. C. Jayarani', 'Ms. Ranawaka Mudiyanselage Sanoja Dilhani Madumala, Management Assistant - Grade III'),
(127, 2, '2016-03-24', 'G. K. S. Perera', 'Lab Attendent - Grade III', '12,410 - 10 X 130 - 10 X 145 - 10 X 160 -12 X 170 - 18,800', '15595', '2015-12-03', '145', '15740', 'G. H. C. Jayarani', 'Mr. G. K. S. Perera, Lab Attendent - Grade III'),
(259, 2, '2016-03-28', 'K. C. I. Silva', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13595', '2015-10-01', '145', '13740', 'G. H. C. Jayarani', 'Mrs . K. C. I. Silva, Management Assistant - Grade III'),
(286, 1, '2016-03-24', 'Kandangamuwe Pathirannahalage Dineshi Prabaha Pathirana', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13450', '2015-10-20', '145', '13595', 'G. H. C. Jayarani', 'Ms. Kandangamuwe Pathirannahalage Dineshi Prabaha Pathirana, Management Assistant - Grade III'),
(68, 2, '2016-03-24', 'N.D.N. Kumara', 'Lab Attendent - Grade I', '12,410 - 10 X 130 - 10 X 145 - 10 X 160 -12 X 170 - 18,800', '17440', '2015-09-12', '170', '17610', 'G. H. C. Jayarani', 'Mr. N.D.N. Kumara, Lab Attendent - Grade I'),
(0, 58, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(24, 3, '2016-04-19', 'S.N. Pasqual', 'Lab Attendent - Grade I', '12,410 - 10 X 130 - 10 X 145 - 10 X 160 -12 X 170 - 18,800', '17610', '2015-09-12', '170', '17780', 'G. H. C. Jayarani', 'Mr. S.N. Pasqual, Lab Attendent - Grade I'),
(298, 2, '2016-03-28', 'Mahathelge Dilan Prasanga Peiris', 'Technical Assistant - Gra', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '14610', '2015-12-29', '145', '14755', 'G. H. C. Jayarani', 'Mr.. Mahathelge Dilan Prasanga Peiris, Technical Assistant - Grade III'),
(298, 3, '2016-03-28', 'Mahathelge Dilan Prasanga Peiris', 'Technical Assistant - Gra', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '14610', '2015-12-29', '145', '14755', 'G. H. C. Jayarani', 'Mr.. Mahathelge Dilan Prasanga Peiris, Technical Assistant - Grade III'),
(258, 3, '2016-03-28', 'S. R. J. S. Bandara', 'Technical Assistants  Gra', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '14755', '2015-07-10', '145', '14900', 'G. H. C. Jayarani', 'Mr. S. R. J. S. Bandara, Technical Assistants Grade III'),
(292, 1, '2016-03-28', 'Wadumestrige Kamal Manjula Mahindapala', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-12-05', '550', '25275', 'G. H. C. Jayarani', 'Mr. . Wadumestrige Kamal Manjula Mahindapala, Research Engineer - Grade II'),
(292, 2, '2016-03-28', 'Wadumestrige Kamal Manjula Mahindapala', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-12-05', '550', '25275', 'G. H. C. Jayarani', 'Mr. . Wadumestrige Kamal Manjula Mahindapala, Research Engineer - Grade II'),
(294, 1, '2016-03-28', 'Prasanna Mahadevan', 'Research Engineer', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-12-01', '550', '25275', 'G. H. C. Jayarani', 'Mr. . Prasanna Mahadevan, Research Engineer'),
(294, 2, '2016-03-28', 'Prasanna Mahadevan', 'Research Engineer', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-12-01', '550', '25275', 'G. H. C. Jayarani', 'Mr. . Prasanna Mahadevan, Research Engineer'),
(296, 3, '2016-03-28', 'Chameera Darshana Panamaldeniya', 'Technical Assistants  Gra', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '14610', '2015-12-01', '145', '14755', 'G. H. C. Jayarani', 'Mr.. Chameera Darshana Panamaldeniya, Technical Assistants Grade III'),
(293, 1, '2016-03-28', 'Anurudde Nirmala Nanayakkara', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-12-01', '550', '25275', 'G. H. C. Jayarani', 'Mr.. Anurudde Nirmala Nanayakkara, Research Engineer - Grade II'),
(293, 2, '2016-03-28', 'Anurudde Nirmala Nanayakkara', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-12-01', '550', '25275', 'G. H. C. Jayarani', 'Mr.. Anurudde Nirmala Nanayakkara, Research Engineer - Grade II'),
(128, 2, '2016-07-18', 'E. B. D. P.  Jayadewa', 'Engineering Assistant  - ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '22350', '2015-05-21', '365', '22715', 'G. H. C. Jayarani', 'Mr. E. B. D. P. Jayadewa, Engineering Assistant - Grade II'),
(292, 3, '2016-03-28', 'Wadumestrige Kamal Manjula Mahindapala', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-12-05', '550', '25275', 'G. H. C. Jayarani', 'Mr. . Wadumestrige Kamal Manjula Mahindapala, Research Engineer - Grade II'),
(294, 3, '2016-03-28', 'Prasanna Mahadevan', 'Research Engineer', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-12-01', '550', '25275', 'G. H. C. Jayarani', 'Mr. . Prasanna Mahadevan, Research Engineer'),
(0, 54, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(296, 4, '2016-03-28', 'Chameera Darshana Panamaldeniya', 'Technical Assistants  Gra', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '14610', '2015-12-01', '145', '14755', 'G. H. C. Jayarani', 'Mr.. Chameera Darshana Panamaldeniya, Technical Assistants Grade III'),
(107, 4, '0000-00-00', 'L. R. N. Somathilake', 'Senior Systems Analyst', '41,745 - 15 X 1,100 - 58,245', '50545', '2015-06-25', '1100', '51645', '', ''),
(0, 55, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 56, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(190, 3, '2016-03-24', 'R. P.  Dasanayaka', 'System Analyst - Grade I', '34,550 - 10 X 925 - 43,800', '47500', '2015-12-01', '925', '48425', 'G. H. C. Jayarani', 'Mr. R. P. Dasanayaka, System Analyst - Grade I'),
(24, 2, '2016-04-19', 'S.N. Pasqual', 'Lab Attendent - Grade I', '12,410 - 10 X 130 - 10 X 145 - 10 X 160 -12 X 170 - 18,800', '17610', '2015-09-12', '170', '17780', 'G. H. C. Jayarani', 'Mr. S.N. Pasqual, Lab Attendent - Grade I'),
(239, 2, '2016-04-19', 'M. L. Karunarathne', 'System Analyst - Grade II', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '26375', '2015-12-05', '550', '26925', 'G. H. C. Jayarani', 'Ms.. M. L. Karunarathne, System Analyst - Grade II'),
(239, 3, '2016-04-19', 'M. L. Karunarathne', 'System Analyst - Grade II', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '26375', '2015-12-05', '550', '26925', 'G. H. C. Jayarani', 'Ms.. M. L. Karunarathne, System Analyst - Grade II'),
(264, 3, '2016-03-28', 'P. Buddhika Warnakula', 'Driver - Grade III', '12,670 - 10 X 130 - 10 X 145 - 10 X 160 - 12 X 170 - 19,060', '12800', '2015-10-09', '130', '12930', 'G. H. C. Jayarani', 'Mr.. P. Buddhika Warnakula, Driver - Grade III'),
(264, 4, '2016-03-28', 'P. Buddhika Warnakula', 'Driver - Grade III', '12,670 - 10 X 130 - 10 X 145 - 10 X 160 - 12 X 170 - 19,060', '12800', '2015-10-09', '130', '12930', 'G. H. C. Jayarani', 'Mr.. P. Buddhika Warnakula, Driver - Grade III'),
(261, 2, '2016-04-19', 'P. D. T. De Silva', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13595', '2015-10-01', '145', '13740', 'G. H. C. Jayarani', 'Ms.. P. D. T. De Silva, Management Assistant - Grade III'),
(261, 3, '2016-04-19', 'P. D. T. De Silva', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13595', '2015-10-01', '145', '13740', 'G. H. C. Jayarani', 'Ms.. P. D. T. De Silva, Management Assistant - Grade III'),
(225, 2, '2016-05-12', 'R. A. C. A. K.  Ranawaka', 'Technical Officer - Grade', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '16910', '2015-08-17', '170', '17080', 'G. H. C. Jayarani', 'Mr. R. A. C. A. K. Ranawaka, Technical Officer - Grade II'),
(225, 3, '2016-05-12', 'R. A. C. A. K.  Ranawaka', 'Technical Officer - Grade', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '16910', '2015-08-17', '170', '17080', 'G. H. C. Jayarani', 'Mr. R. A. C. A. K. Ranawaka, Technical Officer - Grade II'),
(161, 1, '0000-00-00', 'P.P.K. Rodrigo', 'Driver - Grade II', '12,670 - 10 X 130 - 10 X 145 - 10 X 160 - 12 X 170 - 19,060', '14405', '2014-02-27', '145', '14550', '', ''),
(253, 2, '2016-05-31', 'W. A. K. Madumali', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13740', '2016-02-01', '145', '13885', 'G. H. C. Jayarani', 'Ms. W. A. K. Madumali, Management Assistant - Grade III'),
(253, 3, '2016-05-31', 'W. A. K. Madumali', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13740', '2016-02-01', '145', '13885', 'G. H. C. Jayarani', 'Ms. W. A. K. Madumali, Management Assistant - Grade III'),
(274, 2, '2016-05-12', 'B. S. Marasinghe', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2016-01-27', '550', '25825', 'G. H. C. Jayarani', 'Mr.. B. S. Marasinghe, Research Scientist - Grade II'),
(274, 3, '2016-05-12', 'B. S. Marasinghe', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2016-01-27', '550', '25825', 'G. H. C. Jayarani', 'Mr.. B. S. Marasinghe, Research Scientist - Grade II'),
(276, 2, '2016-05-12', 'K. S. Roshan', 'Technical Assistant - Gra', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '14755', '2016-01-27', '145', '14900', 'G. H. C. Jayarani', 'Mr.. K. S. Roshan, Technical Assistant - Grade III'),
(276, 3, '2016-05-12', 'K. S. Roshan', 'Technical Assistant - Gra', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '14755', '2016-01-27', '145', '14900', 'G. H. C. Jayarani', 'Mr.. K. S. Roshan, Technical Assistant - Grade III'),
(272, 2, '2016-05-12', 'J. P. Rajitha Prasanna', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2016-01-13', '550', '25825', 'G. H. C. Jayarani', 'Mr.. J. P. Rajitha Prasanna, Research Engineer - Grade II'),
(272, 3, '2016-05-12', 'J. P. Rajitha Prasanna', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2016-01-13', '550', '25825', 'G. H. C. Jayarani', 'Mr.. J. P. Rajitha Prasanna, Research Engineer - Grade II'),
(199, 4, '2016-05-31', 'S. R. S. Rupasinghe', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '14320', '2016-01-19', '145', '14465', 'G. H. C. Jayarani', 'Mr. S. R. S. Rupasinghe, Management Assistant - Grade III'),
(199, 5, '2016-05-31', 'S. R. S. Rupasinghe', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '14320', '2016-01-19', '145', '14465', 'G. H. C. Jayarani', 'Mr. S. R. S. Rupasinghe, Management Assistant - Grade III');
INSERT INTO `hr_temp_salary_info` (`EmpNo`, `Order`, `PreparedDate`, `NameFull`, `Designation`, `SalScale`, `PresentSal`, `IncDate`, `IncValue`, `FinalSal`, `DeputyDeneral`, `cc`) VALUES
(120, 2, '2016-05-12', 'J. K.  Jayawardena', 'Principal Research Engine', '44,030 - 12 X 1,310 - 59,750', '53200', '2016-02-06', '1310', '54510', 'G. H. C. Jayarani', 'Mr. J. K. Jayawardena, Principal Research Engineer'),
(120, 3, '2016-05-12', 'J. K.  Jayawardena', 'Principal Research Engine', '44,030 - 12 X 1,310 - 59,750', '53200', '2016-02-06', '1310', '54510', 'G. H. C. Jayarani', 'Mr. J. K. Jayawardena, Principal Research Engineer'),
(268, 2, '2016-05-12', 'K. A. Sumudu L. Perera', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13595', '2016-01-08', '145', '13740', 'G. H. C. Jayarani', 'Ms.. K. A. Sumudu L. Perera, Management Assistant - Grade III'),
(269, 2, '2016-05-31', 'K. D. S. Awantha', 'Office Aide - Grade III', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 - 17,845', '12050', '2016-01-13', '120', '12170', 'G. H. C. Jayarani', 'Mr.. K. D. S. Awantha, Office Aide - Grade III'),
(271, 2, '2016-05-12', 'V. K. O. N. Thalpawila', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2016-01-13', '550', '25825', 'G. H. C. Jayarani', 'Miss.. V. K. O. N. Thalpawila, Research Engineer - Grade II'),
(168, 4, '2016-05-12', 'P. D. S.  Pushpakumara', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '28120', '2016-01-19', '645', '28765', 'G. H. C. Jayarani', 'Mr. P. D. S. Pushpakumara, Research Scientist - Grade III'),
(168, 5, '2016-05-12', 'P. D. S.  Pushpakumara', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '28120', '2016-01-19', '645', '28765', 'G. H. C. Jayarani', 'Mr. P. D. S. Pushpakumara, Research Scientist - Grade III'),
(112, 3, '2016-05-31', 'B. A. Jayasinghe', 'Senior System/ Software E', '41,745 - 15 X 1,100 - 58,245', '47245', '2016-02-06', '1100', '48345', 'G. H. C. Jayarani', 'Mr. B. A. Jayasinghe, Senior System/ Software Engineer'),
(112, 4, '2016-05-31', 'B. A. Jayasinghe', 'Senior System/ Software E', '41,745 - 15 X 1,100 - 58,245', '47245', '2016-02-06', '1100', '48345', 'G. H. C. Jayarani', 'Mr. B. A. Jayasinghe, Senior System/ Software Engineer'),
(168, 6, '2016-05-12', 'P. D. S.  Pushpakumara', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '28120', '2016-01-19', '645', '28765', 'G. H. C. Jayarani', 'Mr. P. D. S. Pushpakumara, Research Scientist - Grade III'),
(0, 59, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(180, 3, '2016-05-31', 'S. A.  Welikala', 'Senior Deputy Director In', '41,745 - 15 X 1,100 - 58,245', '43945', '2016-02-06', '1100', '45045', 'G. H. C. Jayarani', 'Mr. S. A. Welikala, Senior Deputy Director Industrialization'),
(180, 4, '2016-05-31', 'S. A.  Welikala', 'Senior Deputy Director In', '41,745 - 15 X 1,100 - 58,245', '43945', '2016-02-06', '1100', '45045', 'G. H. C. Jayarani', 'Mr. S. A. Welikala, Senior Deputy Director Industrialization'),
(93, 2, '2016-05-12', 'R. A. S. S Gunasekara ', 'Senior Research Scientist', '41,745 - 15 X 1,100 - 58,245', '48345', '2016-02-06', '1100', '49445', 'G. H. C. Jayarani', 'Mr. R. A. S. S Gunasekara , Senior Research Scientist'),
(93, 3, '2016-05-12', 'R. A. S. S Gunasekara ', 'Senior Research Scientist', '41,745 - 15 X 1,100 - 58,245', '48345', '2016-02-06', '1100', '49445', 'G. H. C. Jayarani', 'Mr. R. A. S. S Gunasekara , Senior Research Scientist'),
(279, 2, '2016-05-31', 'L. A. C. P. Ranasinghe', 'Software Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2016-02-05', '550', '25825', 'G. H. C. Jayarani', 'Ms.. L. A. C. P. Ranasinghe, Software Engineer - Grade II'),
(279, 3, '2016-05-31', 'L. A. C. P. Ranasinghe', 'Software Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2016-02-05', '550', '25825', 'G. H. C. Jayarani', 'Ms.. L. A. C. P. Ranasinghe, Software Engineer - Grade II'),
(149, 3, '2016-05-31', 'J. P. D. S Athuraliya', 'Principal Research Engine', '44,030 - 12 X 1,310 - 59,750', '53200', '2016-02-03', '1310', '54510', 'G. H. C. Jayarani', 'Mrs. J. P. D. S Athuraliya, Principal Research Engineer'),
(149, 4, '2016-05-31', 'J. P. D. S Athuraliya', 'Principal Research Engine', '44,030 - 12 X 1,310 - 59,750', '53200', '2016-02-03', '1310', '54510', 'G. H. C. Jayarani', 'Mrs. J. P. D. S Athuraliya, Principal Research Engineer'),
(282, 2, '2016-05-12', 'R. A. D. K. Sampath', 'Electronic Engineer - Gra', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2016-02-17', '550', '25825', 'G. H. C. Jayarani', 'Mr.. R. A. D. K. Sampath, Electronic Engineer - Grade II'),
(282, 3, '2016-05-12', 'R. A. D. K. Sampath', 'Electronic Engineer - Gra', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2016-02-17', '550', '25825', 'G. H. C. Jayarani', 'Mr.. R. A. D. K. Sampath, Electronic Engineer - Grade II'),
(215, 2, '2016-05-31', 'J. S. B.  Rathnayake', 'Internal Auditor', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '32045', '2016-03-07', '735', '32780', 'G. H. C. Jayarani', 'Mr. J. S. B. Rathnayake, Internal Auditor - Grade II'),
(215, 3, '2016-05-31', 'J. S. B.  Rathnayake', 'Internal Auditor', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '32045', '2016-03-07', '735', '32780', 'G. H. C. Jayarani', 'Mr. J. S. B. Rathnayake, Internal Auditor - Grade II'),
(216, 3, '2016-05-31', 'N. K. L. T. M. S.  Dias', 'Technical Officer - Grade', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '17250', '2016-04-21', '290', '17540', 'G. H. C. Jayarani', 'Mr. N. K. L. T. M. S. Dias, Technical Officer - Grade II'),
(216, 4, '2016-05-31', 'N. K. L. T. M. S.  Dias', 'Technical Officer - Grade', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '17250', '2016-04-21', '290', '17540', 'G. H. C. Jayarani', 'Mr. N. K. L. T. M. S. Dias, Technical Officer - Grade II'),
(139, 3, '2016-05-12', 'N I  Medagangoda', 'Research Scientist', '34,550 - 10 X 925 - 43,800', '36400', '2016-04-09', '925', '37325', 'G. H. C. Jayarani', 'Mr. N I Medagangoda, Research Scientist'),
(139, 4, '2016-05-12', 'N I  Medagangoda', 'Research Scientist', '34,550 - 10 X 925 - 43,800', '36400', '2016-04-09', '925', '37325', 'G. H. C. Jayarani', 'Mr. N I Medagangoda, Research Scientist'),
(0, 2, '0000-00-00', 'M. P. R. Perera', 'Assistant Director (Indus', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '26305', '2016-02-03', '665', '26970', '', ''),
(5, 2, '2016-05-31', 'P.D. Champika Janashanthi', ' Senior Electronic Engine', '41,745 - 15 X 1,100 - 58,245', '54945', '2015-02-06', '1100', '56045', 'G. H. C. Jayarani', 'Mrs.. P.D. Champika Janashanthi, Senior Electronic Engineer'),
(5, 3, '2016-05-31', 'P.D. Champika Janashanthi', ' Senior Electronic Engine', '41,745 - 15 X 1,100 - 58,245', '54945', '2015-02-06', '1100', '56045', 'G. H. C. Jayarani', 'Mrs.. P.D. Champika Janashanthi, Senior Electronic Engineer'),
(138, 3, '0000-00-00', 'P. M. K. A. Bandara', 'Library Assistant - Grade', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '19280', '2015-12-18', '290', '19570', '', ''),
(138, 4, '0000-00-00', 'P. M. K. A. Bandara', 'Library Assistant - Grade', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '19280', '2015-12-18', '290', '19570', '', ''),
(212, 5, '0000-00-00', 'E. P. P Fernando', 'Management Assistant (Sto', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '17830', '2016-02-05', '290', '18120', '', ''),
(212, 6, '0000-00-00', 'E. P. P Fernando', 'Management Assistant (Sto', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '17830', '2016-02-05', '290', '18120', '', ''),
(67, 4, '0000-00-00', 'H. M. Sunil', 'Office Aide - Grade I', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 - 17,845', '17525', '2015-12-05', '160', '17685', '', ''),
(67, 5, '0000-00-00', 'H. M. Sunil', 'Office Aide - Grade I', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 - 17,845', '17525', '2015-12-05', '160', '17685', '', ''),
(5, 4, '2016-05-31', 'P.D. Champika Janashanthi', ' Senior Electronic Engine', '41,745 - 15 X 1,100 - 58,245', '56045', '2016-02-06', '1100', '57145', 'G. H. C. Jayarani', 'Mrs.. P.D. Champika Janashanthi, Senior Electronic Engineer'),
(5, 5, '2016-05-31', 'P.D. Champika Janashanthi', ' Senior Electronic Engine', '41,745 - 15 X 1,100 - 58,245', '56045', '2016-02-06', '1100', '57145', 'G. H. C. Jayarani', 'Mrs.. P.D. Champika Janashanthi, Senior Electronic Engineer'),
(192, 4, '2016-05-31', 'S.P.K.K.A Liyanage', ' Librarian', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '46655', '2016-04-03', '925', '47580', 'G. H. C. Jayarani', 'Mr. S.P.K.K.A Liyanage, Librarian - Grade I'),
(0, 60, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(7, 3, '2016-05-12', 'N B Micheal', 'Office Aide - Grade I', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 ', '18325', '2016-02-18', '160', '18485', 'G. H. C. Jayarani', 'Mr.. N B Micheal, Office Aide - Grade I'),
(7, 3, '2016-05-12', 'N B Micheal', 'Office Aide - Grade I', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 ', '18325', '2016-02-18', '160', '18485', 'G. H. C. Jayarani', 'Mr.. N B Micheal, Office Aide - Grade I'),
(7, 5, '2016-05-12', 'N B Micheal', 'Office Aide - Grade I', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 ', '18325', '2016-02-18', '160', '18485', 'G. H. C. Jayarani', 'Mr.. N B Micheal, Office Aide - Grade I'),
(0, 61, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 62, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 63, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(36, 3, '2016-06-06', 'D. R. D. De Silva', 'Confidential Secretary', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '35720', '2016-03-01', '735', '36455', 'G. H. C. Jayarani', 'Mrs. D. R. D. De Silva, Confidential Secretary - Grade II'),
(215, 4, '2016-05-31', 'J. S. B.  Rathnayake', 'Internal Auditor', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '32045', '2016-03-07', '735', '32780', 'G. H. C. Jayarani', 'Mr. J. S. B. Rathnayake, Internal Auditor - Grade II'),
(193, 2, '2016-05-31', 'V K Aluthge', 'Confidential Secretary', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '33515', '2016-03-01', '735', '34250', 'G. H. C. Jayarani', 'Mrs. . V K Aluthge, Confidential Secretary - Grade II'),
(0, 65, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(36, 4, '2016-06-06', 'D. R. D. De Silva', 'Confidential Secretary', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '35720', '2016-03-01', '735', '36455', 'G. H. C. Jayarani', 'Mrs. D. R. D. De Silva, Confidential Secretary - Grade II'),
(0, 64, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(193, 3, '2016-05-31', 'V K Aluthge', 'Confidential Secretary', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '33515', '2016-03-01', '735', '34250', 'G. H. C. Jayarani', 'Mrs. . V K Aluthge, Confidential Secretary - Grade II'),
(0, 66, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 2, '0000-00-00', 'M. P. R. Perera', 'Assistant Director (Indus', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '26305', '2016-02-03', '665', '26970', '', ''),
(128, 3, '2016-07-18', 'E. B. D. P.  Jayadewa', 'Engineering Assistant  - ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '22350', '2015-05-21', '365', '22715', 'G. H. C. Jayarani', 'Mr. E. B. D. P. Jayadewa, Engineering Assistant - Grade II'),
(0, 69, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 3, '0000-00-00', 'M. L. A. N.  Pushparani', 'Accounts Officer  -  Grad', '20,890 - 10 X 365 - 18 X 550 - 34,440', '23810', '2016-05-21', '365', '24175', '', ''),
(0, 3, '0000-00-00', 'M. L. A. N.  Pushparani', 'Accounts Officer  -  Grad', '20,890 - 10 X 365 - 18 X 550 - 34,440', '23810', '2016-05-21', '365', '24175', '', ''),
(0, 2, '0000-00-00', 'S. A. A.  Siriwardhana', 'Engineering Assistant  - ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '25270', '2016-05-21', '365', '25635', '', ''),
(0, 2, '0000-00-00', 'S. A. A.  Siriwardhana', 'Engineering Assistant  - ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '25270', '2016-05-21', '365', '25635', '', ''),
(0, 3, '0000-00-00', 'P. K. P. Anuruddha', 'Engineering Assistant  - ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '24540', '2016-05-21', '365', '24905', '', ''),
(0, 3, '0000-00-00', 'P. K. P. Anuruddha', 'Engineering Assistant  - ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '24540', '2016-05-21', '365', '24905', '', ''),
(0, 2, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26365', '2016-05-21', '365', '26730', '', ''),
(0, 2, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26365', '2016-05-21', '365', '26730', '', ''),
(0, 3, '0000-00-00', 'T. M. S. S.  P.  Cooray', 'Management Assistant (Sec', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '25780', '2016-05-19', '345', '26125', '', ''),
(0, 3, '0000-00-00', 'T. M. S. S.  P.  Cooray', 'Management Assistant (Sec', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '25780', '2016-05-19', '345', '26125', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 2, '0000-00-00', 'A S Weerapperuma', 'Senior Deputy Director Fi', '41,745 - 15 X 1,100 - 58,245', '42845', '2016-06-02', '1100', '43945', '', ''),
(0, 2, '0000-00-00', 'A S Weerapperuma', 'Senior Deputy Director Fi', '41,745 - 15 X 1,100 - 58,245', '42845', '2016-06-02', '1100', '43945', '', ''),
(285, 2, '2016-07-18', 'A S Weerapperuma', 'Senior Deputy Director Fi', '41,745 - 15 X 1,100 - 58,245', '42845', '2016-06-02', '1100', '43945', 'G. H. C. Jayarani', 'Mr. A S Weerapperuma, Senior Deputy Director Finance'),
(0, 86, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 3, '0000-00-00', 'A S Weerapperuma', 'Senior Deputy Director Fi', '41,745 - 15 X 1,100 - 58,245', '42845', '2016-06-02', '1100', '43945', '', ''),
(0, 3, '0000-00-00', 'A S Weerapperuma', 'Senior Deputy Director Fi', '41,745 - 15 X 1,100 - 58,245', '42845', '2016-06-02', '1100', '43945', '', ''),
(161, 2, '0000-00-00', 'P.P.K. Rodrigo', 'Driver - Grade II', '12,670 - 10 X 130 - 10 X 145 - 10 X 160 - 12 X 170 - 19,060', '14405', '2014-02-27', '145', '14550', '', ''),
(0, 89, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(188, 3, '2016-07-18', 'M. A. K.  Dharmalal', 'Driver - Grade II', '12,670 - 10 X 130 - 10 X 145 - 10 X 160 - 12 X 170 - 19,060', '14840', '2015-03-01', '145', '14985', 'G. H. C. Jayarani', 'Mr. M. A. K. Dharmalal, Driver - Grade II'),
(0, 90, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 2, '0000-00-00', 'S. A. A.  Siriwardhana', 'Engineering Assistant  - ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '25270', '2016-05-21', '365', '25635', '', ''),
(0, 2, '0000-00-00', 'S. A. A.  Siriwardhana', 'Engineering Assistant  - ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '25270', '2016-05-21', '365', '25635', '', ''),
(0, 3, '0000-00-00', 'T. M. S. S.  P.  Cooray', 'Management Assistant (Sec', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '25780', '2016-05-19', '345', '26125', '', ''),
(0, 3, '0000-00-00', 'T. M. S. S.  P.  Cooray', 'Management Assistant (Sec', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '25780', '2016-05-19', '345', '26125', '', ''),
(0, 2, '0000-00-00', 'M. P. R. Perera', 'Assistant Director (Indus', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '26305', '2016-02-03', '665', '26970', '', ''),
(0, 2, '0000-00-00', 'M. P. R. Perera', 'Assistant Director (Indus', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '26305', '2016-02-03', '665', '26970', '', ''),
(0, 3, '0000-00-00', 'M. L. A. N.  Pushparani', 'Accounts Officer  -  Grad', '20,890 - 10 X 365 - 18 X 550 - 34,440', '23810', '2016-05-21', '365', '24175', '', ''),
(0, 3, '0000-00-00', 'M. L. A. N.  Pushparani', 'Accounts Officer  -  Grad', '20,890 - 10 X 365 - 18 X 550 - 34,440', '23810', '2016-05-21', '365', '24175', '', ''),
(147, 3, '2016-07-02', 'M. L. A. N.  Pushparani', 'Accounts Officer', '20,890 - 10 X 365 - 18 X 550 - 34,440', '23810', '2016-05-21', '365', '24175', 'G. H. C. Jayarani', 'Mrs. M. L. A. N. Pushparani, Accounts Officer - Grade II'),
(277, 2, '2016-07-02', 'M. P. R. Perera', 'Assistant Dirctor / Deput', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '26305', '2016-02-03', '665', '26970', 'G. H. C. Jayarani', 'Mr.. M. P. R. Perera, Assistant Director (Industrial Relations) Grade II'),
(108, 3, '2016-07-02', 'T. M. S. S.  P.  Cooray', 'Management Assistant (Sec', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '25780', '2016-05-19', '345', '26125', 'G. H. C. Jayarani', 'Mrs. T. M. S. S. P. Cooray, Management Assistant (Secretary) - Grade I'),
(130, 2, '2016-07-02', 'S. A. A.  Siriwardhana', 'Engineering Assistant', '20,890 - 10 X 365 - 18 X 550 - 34,440', '25270', '2016-05-21', '365', '25635', 'G. H. C. Jayarani', 'Mr. S. A. A. Siriwardhana, Engineering Assistant - Grade II'),
(100, 1, '2016-07-02', 'H. C, Weerasekara', 'Confidential Secretary  -', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '26730', '2016-05-21', '365', '27095', 'G. H. C. Jayarani', 'Mrs. H. C, Weerasekara, Confidential Secretary - Grade II'),
(0, 3, '0000-00-00', 'A S Weerapperuma', 'Senior Deputy Director Fi', '41,745 - 15 X 1,100 - 58,245', '42845', '2016-06-02', '1100', '43945', '', ''),
(0, 3, '0000-00-00', 'A S Weerapperuma', 'Senior Deputy Director Fi', '41,745 - 15 X 1,100 - 58,245', '42845', '2016-06-02', '1100', '43945', '', ''),
(0, 3, '0000-00-00', 'P. K. P. Anuruddha', 'Engineering Assistant  - ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '24540', '2016-05-21', '365', '24905', '', ''),
(0, 3, '0000-00-00', 'P. K. P. Anuruddha', 'Engineering Assistant  - ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '24540', '2016-05-21', '365', '24905', '', ''),
(162, 3, '2016-07-18', 'P. K. P. Anuruddha', 'Engineering Assistant', '20,890 - 10 X 365 - 18 X 550 - 34,440', '24540', '2016-05-21', '365', '24905', 'G. H. C. Jayarani', 'Mr. P. K. P. Anuruddha, Engineering Assistant - Grade II'),
(0, 136, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(75, 1, '2015-08-25', 'M. A. D. C. Medagama', 'Accountant ', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '43880', '2014-06-18', '925', '44805', '- select -', 'Mrs. M. A. D. C. Medagama, Accountant - Grade I'),
(147, 1, '2016-07-02', 'M. L. A. N.  Pushparani', 'Accounts Officer ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '23080', '2014-05-21', '365', '23445', 'G. H. C. Jayarani', 'Mrs. M. L. A. N. Pushparani, Accounts Officer - Grade II'),
(146, 1, '2015-10-22', 'R. M. L. N.  Rathnayake', 'Senior Research Engineer', '41,745 - 15 X 1,100 - 58,245', '46145', '2013-09-01', '1100', '47245', '- select -', 'Mrs. R. M. L. N. Rathnayake, Senior Research Engineer'),
(257, 1, '2015-07-20', 'R. A. Gamini', 'Assistant Director / Depu', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '25640', '2014-06-17', '665', '26305', '- select -', 'Mr.. R. A. Gamini, Assistant Director / Deputy Director Administration'),
(143, 2, '2015-10-22', 'N P Ketipearachchi', 'Management Assistant (Sec', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '19280', '2014-09-03', '290', '19570', '- select -', 'Mrs.. N P Ketipearachchi, Management Assistant (Secretary) - Grade I'),
(146, 2, '2015-10-22', 'R. M. L. N.  Rathnayake', 'Senior Research Engineer', '41,745 - 15 X 1,100 - 58,245', '47245', '2014-09-01', '1100', '48345', '- select -', 'Mrs. R. M. L. N. Rathnayake, Senior Research Engineer'),
(162, 1, '2016-07-18', 'P. K. P. Anuruddha', 'Engineering Assistant', '20,890 - 10 X 365 - 18 X 550 - 34,440', '23810', '2014-05-21', '365', '24175', 'G. H. C. Jayarani', 'Mr. P. K. P. Anuruddha, Engineering Assistant - Grade II'),
(0, 1, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(200, 1, '2016-03-24', 'P. L. S.  Kumara', 'Plumber/Electrician - Gra', '12,670 - 10 X 130 - 10 X 145 - 10 X 160 - 12 X 170 - 19,060', '13450', '2014-05-21', '130', '13580', 'G. H. C. Jayarani', 'Mr. P. L. S. Kumara, Plumber/Electrician - Grade III'),
(107, 1, '2015-09-01', 'L. R. N. Somathilake', 'Senior Systems Analyst', '41,745 - 15 X 1,100 - 58,245', '49445', '2014-06-25', '1100', '50545', '- select -', 'Mrs.. L. R. N. Somathilake, Senior Systems Analyst'),
(0, 2, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(217, 1, '2015-08-14', 'P. S. Panawennage', 'Director General & CEO', '47,245 - 12 X 1,310 - 62,965', '62965', '2014-06-03', '1310', '64275', '- select -', 'Mr.. P. S. Panawennage, Director General/Chief Executive Officer'),
(0, 3, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 4, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 5, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(213, 1, '2015-01-05', 'W. A. P.  Silva', 'Addtional Director (Admin', '44,755 - 12 X 1,310 - 60,475', '63095', '2014-10-01', '1310', '64405', 'P. S. Panawennage', 'Mr. W. A. P. Silva, Deputy Director General (Administration & Finance)'),
(255, 1, '2015-07-15', 'N. A. A. Nadeesha Dilrukshi', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2014-05-15', '550', '25275', '- select -', 'Mrs.. N. A. A. Nadeesha Dilrukshi, Research Engineer - Grade II'),
(142, 1, '2015-10-29', 'N. M.  Kandamby', 'Management Assistant (Sec', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '19280', '2014-09-05', '290', '19570', '- select -', 'Mrs. N. M. Kandamby, Management Assistant (Secretary) - Grade I'),
(256, 1, '2015-07-08', 'Vijayasothy V', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2014-05-15', '550', '25275', '- select -', 'Ms. Vijayasothy V, Research Engineer - Grade II'),
(249, 1, '2015-08-25', 'U.D Niriella.', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2014-07-02', '550', '25825', '- select -', 'Mr. U.D Niriella., Research Engineer - Grade II'),
(264, 1, '2016-03-28', 'P. Buddhika Warnakula', 'Driver - Grade III', '12,670 - 10 X 130 - 10 X 145 - 10 X 160 - 12 X 170 - 19,060', '12670', '2014-10-09', '130', '12800', 'G. H. C. Jayarani', 'Mr.. P. Buddhika Warnakula, Driver - Grade III'),
(264, 2, '2016-03-28', 'P. Buddhika Warnakula', 'Driver - Grade III', '12,670 - 10 X 130 - 10 X 145 - 10 X 160 - 12 X 170 - 19,060', '12670', '2014-10-09', '130', '12800', 'G. H. C. Jayarani', 'Mr.. P. Buddhika Warnakula, Driver - Grade III'),
(126, 1, '2016-03-24', 'D.V. N. Silva', 'Lab Attendent - Grade III', '12,410 - 10 X 130 - 10 X 145 - 10 X 160 -12 X 170 - 18,800', '15450', '2014-12-03', '145', '15595', 'G. H. C. Jayarani', 'Mr.. D.V. N. Silva, Lab Attendent - Grade III'),
(67, 1, '2016-03-24', 'H. M. Sunil', 'Office Aide - Grade I', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 - 17,845', '17365', '2014-12-05', '160', '17525', 'G. H. C. Jayarani', 'Mr. H. M. Sunil, Office Aide - Grade I'),
(263, 1, '2016-03-24', 'M.. B. A. M. Dissanayake', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13450', '2014-10-01', '145', '13595', 'G. H. C. Jayarani', 'Ms.. M.. B. A. M. Dissanayake, Management Assistant - Grade III'),
(202, 1, '2015-10-29', 'K. A. K.  Gunasekara', 'Technical Officer - Grade', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '18990', '2014-09-12', '290', '19280', '- select -', 'Mr. K. A. K. Gunasekara, Technical Officer - Grade II'),
(261, 1, '2016-04-19', 'P. D. T. De Silva', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13450', '2014-10-01', '145', '13595', 'G. H. C. Jayarani', 'Ms.. P. D. T. De Silva, Management Assistant - Grade III'),
(244, 1, '2016-03-10', 'A. R. M. Rila', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2014-06-01', '550', '25825', '- select -', 'Mr.. A. R. M. Rila, Research Scientist - Grade II'),
(65, 1, '2015-07-20', 'J. A. K.  Jayakody', 'Administrative Office', '20,890 - 10 X 365 - 18 X 550 - 34,440', '23445', '2014-05-21', '365', '23810', '- select -', 'Mr. J. A. K. Jayakody, Administrative Office'),
(259, 1, '2016-03-28', 'K. C. I. Silva', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13450', '2014-10-01', '145', '13595', 'G. H. C. Jayarani', 'Mrs . K. C. I. Silva, Management Assistant - Grade III'),
(0, 6, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(169, 1, '2015-08-25', 'G.D. N.  De Silva', 'Engineering Assistant', '20,890 - 10 X 365 - 18 X 550 - 34,440', '23445', '2014-05-21', '365', '23810', '- select -', 'Mr. G.D. N. De Silva, Engineering Assistant - Grade II'),
(246, 1, '2015-01-16', 'W. R. S. C.  Ranathunga', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2013-06-01', '550', '25825', 'W. A. P.  Silva', 'Mr. W. R. S. C. Ranathunga, Research Engineer - Grade II'),
(138, 1, '2016-03-24', 'P. M. K. A. Bandara', 'Library Assistant - Grade', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '18990', '2014-12-18', '290', '19280', 'G. H. C. Jayarani', 'Mrs. P. M. K. A. Bandara, Library Assistant - Grade I'),
(191, 1, '2016-03-24', 'J Adassuriya', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '33780', '2014-11-11', '770', '34550', 'G. H. C. Jayarani', 'Mr. J Adassuriya, Research Scientist - Grade II'),
(127, 1, '2016-03-24', 'G. K. S. Perera', 'Lab Attendent - Grade III', '12,410 - 10 X 130 - 10 X 145 - 10 X 160 -12 X 170 - 18,800', '15450', '2014-12-03', '145', '15595', 'G. H. C. Jayarani', 'Mr. G. K. S. Perera, Lab Attendent - Grade III'),
(265, 1, '2015-02-02', 'P. Chandima Ramanayake', 'Office Aide - Grade III', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 - 17,845', '11930', '2014-10-03', '120', '12050', 'W. A. P.  Silva', 'Mr.. P. Chandima Ramanayake, Office Aide - Grade III'),
(70, 1, '2015-08-15', 'K  Ediriweera', 'Deputy Director General (', '44,755 - 12 X 1,310 - 60,475', '57855', '2014-08-01', '1310', '59165', '- select -', 'Mrs. K Ediriweera, Deputy Director General (Technical Operation)'),
(258, 1, '2016-03-28', 'S. R. J. S. Bandara', 'Technical Assistants', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '14610', '2014-07-10', '145', '14755', 'G. H. C. Jayarani', 'Mr. S. R. J. S. Bandara, Technical Assistants Grade III'),
(139, 1, '2016-05-12', 'N I  Medagangoda', 'Research Scientist', '34,550 - 10 X 925 - 43,800', '34550', '2014-04-09', '925', '35475', 'G. H. C. Jayarani', 'Mr. N I Medagangoda, Research Scientist'),
(59, 1, '2015-02-02', 'G. H. C. Jayarani', 'Assistant Director/ Deput', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '41105', '2014-12-07', '925', '42030', 'W. A. P.  Silva', 'Mrs.. G. H. C. Jayarani, Assistant Director/ Deputy Director Human Resources'),
(0, 7, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(190, 1, '2016-03-24', 'R. P.  Dasanayaka', 'System Analyst - Grade I', '34,550 - 10 X 925 - 43,800', '46575', '2014-12-01', '925', '47500', 'G. H. C. Jayarani', 'Mr. R. P. Dasanayaka, System Analyst - Grade I'),
(260, 1, '2016-03-24', 'H. D. N. Fernando', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13450', '2014-10-01', '145', '13595', 'G. H. C. Jayarani', 'Ms.. H. D. N. Fernando, Management Assistant - Grade III'),
(251, 1, '2015-03-13', 'W. R. W. M. Y. S. B. Bulumulla', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2014-08-15', '550', '25825', 'W. A. P.  Silva', 'Mr. W. R. W. M. Y. S. B. Bulumulla, Research Engineer - Grade II'),
(298, 3, '2016-03-28', 'Mahathelge Dilan Prasanga Peiris', 'Technical Assistant - Gra', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '14610', '2015-12-29', '145', '14755', 'G. H. C. Jayarani', 'Mr.. Mahathelge Dilan Prasanga Peiris, Technical Assistant - Grade III'),
(258, 2, '2016-03-28', 'S. R. J. S. Bandara', 'Technical Assistants  Gra', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '14755', '2015-07-10', '145', '14900', 'G. H. C. Jayarani', 'Mr. S. R. J. S. Bandara, Technical Assistants Grade III'),
(0, 8, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 9, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 10, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 11, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 12, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 13, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 14, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 15, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 16, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 17, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 18, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 19, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 20, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 21, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 22, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 23, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 24, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 25, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 26, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 27, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 28, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 29, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 30, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 31, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 32, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 33, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 34, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 35, '0000-00-00', 'L. R. N. Somathilake/>L. R. N. Somathilake </td><td hidden=', 'Senior Systems Analyst', '41,745 - 15 X 1,100 - 58,245', '49445', '2014-06-25', '1100', '50545', '', ''),
(0, 36, '0000-00-00', 'L. R. N. Somathilake/>L. R. N. Somathilake </td><td hidden=', 'Senior Systems Analyst', '41,745 - 15 X 1,100 - 58,245', '49445', '2014-06-25', '1100', '50545', '', ''),
(0, 37, '0000-00-00', 'N I  Medagangoda/>N I  Medagangoda </td><td hidden=', 'Research Scientist', '34,550 - 10 X 925 - 43,800', '34550', '2014-04-09', '925', '35475', '', ''),
(0, 38, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 39, '0000-00-00', 'L. R. N. Somathilake/>L. R. N. Somathilake </td><td hidden=', 'Senior Systems Analyst', '41,745 - 15 X 1,100 - 58,245', '49445', '2014-06-25', '1100', '50545', '', ''),
(36, 1, '2016-06-06', 'D. R. D. De Silva', 'Confidential Secretary', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '34250', '2014-03-01', '735', '34985', 'G. H. C. Jayarani', 'Mrs. D. R. D. De Silva, Confidential Secretary - Grade II'),
(7, 1, '2016-05-12', 'N B Micheal', 'Office Aide - Grade I', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 - 17,845', '18005', '2014-02-18', '160', '18165', 'G. H. C. Jayarani', 'Mr.. N B Micheal, Office Aide - Grade I'),
(0, 40, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(266, 1, '2016-03-24', 'G. M. Rodrigo', 'Office Aide - Grade III', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 - 17,845', '11930', '2014-10-09', '120', '12050', 'G. H. C. Jayarani', 'Mr.. G. M. Rodrigo, Office Aide - Grade III'),
(112, 1, '2016-05-31', 'B. A. Jayasinghe', 'Senior System/ Software E', '41,745 - 15 X 1,100 - 58,245', '45045', '2014-02-06', '1100', '46145', 'G. H. C. Jayarani', 'Mr. B. A. Jayasinghe, Senior System/ Software Engineer'),
(0, 41, '0000-00-00', 'B. A. Jayasinghe/>B. A. Jayasinghe </td><td hidden=', 'Senior System/ Software E', '41,745 - 15 X 1,100 - 58,245', '45045', '2014-02-06', '1100', '46145', '', ''),
(149, 1, '2016-05-31', 'J. P. D. S Athuraliya', 'Principal Research Engine', '44,030 - 12 X 1,310 - 59,750', '50580', '2014-02-03', '1310', '51890', 'G. H. C. Jayarani', 'Mrs. J. P. D. S Athuraliya, Principal Research Engineer'),
(199, 1, '2016-05-31', 'S. R. S. Rupasinghe', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13885', '2013-01-19', '145', '14030', 'G. H. C. Jayarani', 'Mr. S. R. S. Rupasinghe, Management Assistant - Grade III'),
(199, 3, '2016-05-31', 'S. R. S. Rupasinghe', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '14175', '2015-01-19', '145', '14320', 'G. H. C. Jayarani', 'Mr. S. R. S. Rupasinghe, Management Assistant - Grade III'),
(226, 1, '2015-03-13', 'J. S.  Koruwage', 'Technical Officer - Grade', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '16740', '2014-09-01', '170', '16910', 'W. A. P.  Silva', 'Mr. J. S. Koruwage, Technical Officer - Grade II'),
(225, 1, '2016-05-12', 'R. A. C. A. K.  Ranawaka', 'Technical Officer - Grade', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '16740', '2014-08-17', '170', '16910', 'G. H. C. Jayarani', 'Mr. R. A. C. A. K. Ranawaka, Technical Officer - Grade II'),
(132, 1, '2016-03-28', 'S. P.  Athuluwage', 'Computer Application Asst', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '17830', '2014-12-10', '290', '18120', 'G. H. C. Jayarani', 'Mr. S. P. Athuluwage, Computer Application Asstant - Grade II'),
(68, 1, '2016-03-24', 'N.N. Kumara', 'Lab Attendent - Grade I', '12,410 - 10 X 130 - 10 X 145 - 10 X 160 -12 X 170 - 18,800', '17270', '2014-09-12', '170', '17440', 'G. H. C. Jayarani', 'Mr. N.D.N. Kumara, Lab Attendent - Grade I'),
(251, 2, '2015-03-13', 'W. R. W. M. Y. S. B. Bulumulla', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25825', '2015-08-15', '550', '26375', 'W. A. P.  Silva', 'Mr. W. R. W. M. Y. S. B. Bulumulla, Research Engineer - Grade II'),
(280, 1, '2015-04-01', 'S. D. Shiromi Lakmali ', 'Software Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-02-05', '550', '25275', 'W. A. P.  Silva', 'Ms.. S. D. Shiromi Lakmali , Software Engineer - Grade II'),
(112, 2, '2016-05-31', 'B. A. Jayasinghe', 'Senior System/ Software E', '41,745 - 15 X 1,100 - 58,245', '46145', '2015-02-06', '1100', '47245', 'G. H. C. Jayarani', 'Mr. B. A. Jayasinghe, Senior System/ Software Engineer'),
(7, 2, '2016-05-12', 'N B Micheal', 'Office Aide - Grade I', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 - 17,845', '18165', '2015-02-18', '160', '18325', 'G. H. C. Jayarani', 'Mr.. N B Micheal, Office Aide - Grade I'),
(277, 1, '2016-07-02', 'M. P. R. Perera', 'Assistant Dirctor / Deput', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '25640', '2015-02-03', '665', '26305', 'G. H. C. Jayarani', 'Mr.. M. P. R. Perera, Assistant Director (Industrial Relations) Grade II'),
(149, 2, '2016-05-31', 'J. P. D. S Athuraliya', 'Principal Research Engine', '44,030 - 12 X 1,310 - 59,750', '51890', '2015-02-03', '1310', '53200', 'G. H. C. Jayarani', 'Mrs. J. P. D. S Athuraliya, Principal Research Engineer'),
(253, 1, '2016-05-31', 'W. A. K. Madumali', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13595', '2015-02-01', '145', '13740', 'G. H. C. Jayarani', 'Ms. W. A. K. Madumali, Management Assistant - Grade III'),
(274, 1, '2016-05-12', 'B. S. Marasinghe', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-01-27', '550', '25275', 'G. H. C. Jayarani', 'Mr.. B. S. Marasinghe, Research Scientist - Grade II'),
(276, 1, '2016-05-12', 'K. S. Roshan', 'Technical Assistant - Gra', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '14610', '2015-01-27', '145', '14755', 'G. H. C. Jayarani', 'Mr.. K. S. Roshan, Technical Assistant - Grade III'),
(268, 1, '2016-05-12', 'K. A. Sumudu L. Perera', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13450', '2015-01-08', '145', '13595', 'G. H. C. Jayarani', 'Ms.. K. A. Sumudu L. Perera, Management Assistant - Grade III'),
(273, 1, '2015-03-28', 'L  Vengadasalam', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-01-13', '550', '25275', 'W. A. P.  Silva', 'Mr.. L Vengadasalam, Research Engineer - Grade II'),
(36, 2, '2016-06-06', 'D. R. D. De Silva', 'Confidential Secretary', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '34985', '2015-03-01', '735', '35720', 'G. H. C. Jayarani', 'Mrs. D. R. D. De Silva, Confidential Secretary - Grade II'),
(269, 1, '2016-05-31', 'K. D. S. Awantha', 'Office Aide - Grade III', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 - 17,845', '11930', '2015-01-13', '120', '12050', 'G. H. C. Jayarani', 'Mr.. K. D. S. Awantha, Office Aide - Grade III'),
(0, 42, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(193, 1, '2016-05-31', 'V K Aluthge', 'Confidential Secretary', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '32780', '2015-03-01', '735', '33515', 'G. H. C. Jayarani', 'Mrs. . V K Aluthge, Confidential Secretary - Grade II'),
(0, 43, '0000-00-00', 'L. R. N. Somathilake/>L. R. N. Somathilake </td><td hidden=', 'Senior Systems Analyst', '41,745 - 15 X 1,100 - 58,245', '49445', '2014-06-25', '1100', '50545', '', ''),
(0, 44, '0000-00-00', 'L. R. N. Somathilake/>L. R. N. Somathilake </td><td hidden=', 'Senior Systems Analyst', '41,745 - 15 X 1,100 - 58,245', '49445', '2014-06-25', '1100', '50545', '', ''),
(0, 45, '0000-00-00', 'L. R. N. Somathilake/>L. R. N. Somathilake </td><td hidden=', 'Senior Systems Analyst', '41,745 - 15 X 1,100 - 58,245', '49445', '2014-06-25', '1100', '50545', '', ''),
(239, 1, '2016-04-19', 'M. L. Karunarathne', 'System Analyst - Grade II', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25825', '2014-12-05', '550', '26375', 'G. H. C. Jayarani', 'Ms.. M. L. Karunarathne, System Analyst - Grade II'),
(212, 1, '2016-03-24', 'E. P. P Fernando', 'Management Assistant (Sto', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '17250', '2014-02-05', '290', '17540', 'G. H. C. Jayarani', 'Mr. E. P. P Fernando, Management Assistant (Store Keeper) - Grade II'),
(0, 46, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(212, 2, '2016-03-24', 'E. P. P Fernando', 'Management Assistant (Sto', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '17540', '2015-02-05', '290', '17830', 'G. H. C. Jayarani', 'Mr. E. P. P Fernando, Management Assistant (Store Keeper) - Grade II'),
(0, 47, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(272, 1, '2016-05-12', 'J. P. Rajitha Prasanna', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-01-13', '550', '25275', 'G. H. C. Jayarani', 'Mr.. J. P. Rajitha Prasanna, Research Engineer - Grade II'),
(271, 1, '2016-05-12', 'V. K. O. N. Thalpawila', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-01-13', '550', '25275', 'G. H. C. Jayarani', 'Miss.. V. K. O. N. Thalpawila, Research Engineer - Grade II'),
(255, 2, '2015-07-15', 'N. A. A. Nadeesha Dilrukshi', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2015-05-15', '550', '25825', '- select -', 'Mrs.. N. A. A. Nadeesha Dilrukshi, Research Engineer - Grade II'),
(282, 1, '2016-05-12', 'R. A. D. K. Sampath', 'Electronic Engineer - Gra', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-02-17', '550', '25275', 'G. H. C. Jayarani', 'Mr.. R. A. D. K. Sampath, Electronic Engineer - Grade II'),
(256, 2, '2015-07-08', 'Vijayasothy V', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2015-05-15', '550', '25825', '- select -', 'Ms. Vijayasothy V, Research Engineer - Grade II'),
(0, 48, '0000-00-00', 'E. P. P Fernando/>E. P. P Fernando </td><td hidden=', 'Management Assistant (Sto', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '17540', '2015-02-05', '290', '17830', '', ''),
(0, 49, '0000-00-00', 'E. P. P Fernando/>E. P. P Fernando </td><td hidden=', 'Management Assistant (Sto', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '17540', '2015-02-05', '290', '17830', '', ''),
(180, 1, '2016-05-31', 'S. A.  Welikala', 'Senior Deputy Director In', '41,745 - 15 X 1,100 - 58,245', '41745', '2014-02-06', '1100', '42845', 'G. H. C. Jayarani', 'Mr. S. A. Welikala, Senior Deputy Director Industrialization'),
(5, 1, '2016-05-31', 'P.D. Champika Janashanthi', ' Senior Electronic Engine', '41,745 - 15 X 1,100 - 58,245', '54945', '2015-02-06', '1100', '56045', 'G. H. C. Jayarani', 'Mrs.. P.D. Champika Janashanthi, Senior Electronic Engineer'),
(192, 1, '2016-05-31', 'S.P.K.K.A Liyanage', ' Librarian', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '45730', '2015-04-03', '925', '46655', 'G. H. C. Jayarani', 'Mr. S.P.K.K.A Liyanage, Librarian - Grade I'),
(120, 1, '2016-05-12', 'J. K.  Jayawardena', 'Principle Research Engine', '44,030 - 12 X 1,310 - 59,750', '51890', '2015-02-06', '1310', '53200', 'G. H. C. Jayarani', 'Mr. J. K. Jayawardena, Principal Research Engineer'),
(215, 1, '2016-05-31', 'J. S. B.  Rathnayake', 'Internal Auditor', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '32045', '2015-03-07', '735', '32780', 'G. H. C. Jayarani', 'Mr. J. S. B. Rathnayake, Internal Auditor - Grade II'),
(116, 1, '2015-07-08', 'T. C.  Peiris', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '29410', '2015-04-03', '645', '30055', '- select -', 'Mr. T. C. Peiris, Research Scientist - Grade III'),
(278, 1, '2015-07-08', 'M.B. Thilakarathne', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-02-03', '550', '25275', '- select -', 'Mr.. M.B. Thilakarathne, Research Engineer - Grade II'),
(278, 2, '2015-07-08', 'M.B. Thilakarathne', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-02-03', '550', '25275', '- select -', 'Mr.. M.B. Thilakarathne, Research Engineer - Grade II'),
(139, 2, '2016-05-12', 'N I  Medagangoda', 'Research Scientist', '34,550 - 10 X 925 - 43,800', '35475', '2015-04-09', '925', '36400', 'G. H. C. Jayarani', 'Mr. N I Medagangoda, Research Scientist'),
(212, 3, '2016-03-24', 'E. P. P Fernando', 'Management Assistant (Sto', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '17830', '2016-02-05', '290', '18120', 'G. H. C. Jayarani', 'Mr. E. P. P Fernando, Management Assistant (Store Keeper) - Grade II'),
(212, 4, '2016-03-24', 'E. P. P Fernando', 'Management Assistant (Sto', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '17830', '2016-02-05', '290', '18120', 'G. H. C. Jayarani', 'Mr. E. P. P Fernando, Management Assistant (Store Keeper) - Grade II'),
(0, 57, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(190, 2, '2016-03-24', 'R. P.  Dasanayaka', 'System Analyst - Grade I', '34,550 - 10 X 925 - 43,800', '47500', '2015-12-01', '925', '48425', 'G. H. C. Jayarani', 'Mr. R. P. Dasanayaka, System Analyst - Grade I'),
(192, 2, '2016-05-31', 'S.P.K.K.A Liyanage', ' Librarian', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '46655', '2016-04-03', '925', '47580', 'G. H. C. Jayarani', 'Mr. S.P.K.K.A Liyanage, Librarian - Grade I'),
(168, 2, '2016-05-12', 'P. D. S.  Pushpakumara', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '27475', '2015-01-19', '645', '28120', 'G. H. C. Jayarani', 'Mr. P. D. S. Pushpakumara, Research Scientist - Grade III'),
(0, 50, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(168, 3, '2016-05-12', 'P. D. S.  Pushpakumara', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '27475', '2015-01-19', '645', '28120', 'G. H. C. Jayarani', 'Mr. P. D. S. Pushpakumara, Research Scientist - Grade III'),
(107, 2, '2015-09-01', 'L. R. N. Somathilake', 'Senior Systems Analyst', '41,745 - 15 X 1,100 - 58,245', '50545', '2015-06-25', '1100', '51645', '- select -', 'Mrs.. L. R. N. Somathilake, Senior Systems Analyst'),
(70, 3, '2015-08-15', 'K  Ediriweera', 'Deputy Director General (', '44,755 - 12 X 1,310 - 60,475', '59165', '2015-08-01', '1310', '60475', '- select -', 'Mrs. K Ediriweera, Deputy Director General (Technical Operation)'),
(168, 2, '2016-05-12', 'P. D. S.  Pushpakumara', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '27475', '2015-01-19', '645', '28120', 'G. H. C. Jayarani', 'Mr. P. D. S. Pushpakumara, Research Scientist - Grade III'),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '24540', '2016-05-21', '0', '24540', '', '');
INSERT INTO `hr_temp_salary_info` (`EmpNo`, `Order`, `PreparedDate`, `NameFull`, `Designation`, `SalScale`, `PresentSal`, `IncDate`, `IncValue`, `FinalSal`, `DeputyDeneral`, `cc`) VALUES
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '24540', '2016-05-21', '0', '24540', '', ''),
(125, 1, '2016-03-24', 'S W. C. K. Wijayawardena', 'Assistant Director/ Deput', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '37405', '2014-07-20', '925', '38330', 'G. H. C. Jayarani', 'Mr. S W. C. K. Wijayawardena, Deputy Director (Media) Grade I'),
(128, 1, '2016-07-18', 'E. B. D. P.  Jayadewa', 'Engineering Assistant', '20,890 - 10 X 365 - 18 X 550 - 34,440', '21985', '2014-05-21', '365', '22350', 'G. H. C. Jayarani', 'Mr. E. B. D. P. Jayadewa, Engineering Assistant - Grade II'),
(65, 2, '2015-07-20', 'J. A. K.  Jayakody', 'Administrative Office', '20,890 - 10 X 365 - 18 X 550 - 34,440', '23810', '2015-05-21', '365', '24175', '- select -', 'Mr. J. A. K. Jayakody, Administrative Office'),
(130, 1, '2016-07-02', 'S. A. A.  Siriwardhana', 'Engineering Assistant', '20,890 - 10 X 365 - 18 X 550 - 34,440', '24905', '2015-05-21', '365', '25270', 'G. H. C. Jayarani', 'Mr. S. A. A. Siriwardhana, Engineering Assistant - Grade II'),
(162, 2, '2016-07-18', 'P. K. P. Anuruddha', 'Engineering Assistant', '20,890 - 10 X 365 - 18 X 550 - 34,440', '24175', '2015-05-21', '365', '24540', 'G. H. C. Jayarani', 'Mr. P. K. P. Anuruddha, Engineering Assistant - Grade II'),
(147, 2, '2016-07-02', 'M. L. A. N.  Pushparani', 'Accounts Officer ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '23445', '2015-05-21', '365', '23810', 'G. H. C. Jayarani', 'Mrs. M. L. A. N. Pushparani, Accounts Officer - Grade II'),
(0, 51, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(257, 2, '2015-07-20', 'R. A. Gamini', 'Assistant Director / Depu', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '26305', '2015-06-17', '665', '26970', '- select -', 'Mr.. R. A. Gamini, Assistant Director / Deputy Director Administration'),
(107, 3, '2015-09-01', 'L. R. N. Somathilake', 'Senior Systems Analyst', '41,745 - 15 X 1,100 - 58,245', '50545', '2015-06-25', '1100', '51645', '- select -', 'Mrs.. L. R. N. Somathilake, Senior Systems Analyst'),
(257, 3, '2015-07-20', 'R. A. Gamini', 'Assistant Director / Depu', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '26305', '2015-06-17', '665', '26970', '- select -', 'Mr.. R. A. Gamini, Assistant Director / Deputy Director Administration'),
(192, 3, '2016-05-31', 'S.P.K.K.A Liyanage', ' Librarian', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '45730', '2015-04-03', '925', '46655', 'G. H. C. Jayarani', 'Mr. S.P.K.K.A Liyanage, Librarian - Grade I'),
(180, 2, '2016-05-31', 'S. A.  Welikala', 'Senior Deputy Director In', '41,745 - 15 X 1,100 - 58,245', '42845', '2015-02-06', '1100', '43945', 'G. H. C. Jayarani', 'Mr. S. A. Welikala, Senior Deputy Director Industrialization'),
(217, 2, '2015-08-14', 'P. S. Panawennage', 'Director General/Chief Ex', '47,245 - 12 X 1,310 - 62,965', '64275', '2015-06-03', '1310', '65585', '- select -', 'Mr.. P. S. Panawennage, Director General/Chief Executive Officer'),
(296, 1, '2016-03-28', 'Chameera Darshana Panamaldeniya', 'Technical Assistants  Gra', '', '0', '0000-00-00', '0', '0', 'G. H. C. Jayarani', 'Mr.. Chameera Darshana Panamaldeniya, Technical Assistants Grade III'),
(296, 2, '2016-03-28', 'Chameera Darshana Panamaldeniya', 'Technical Assistants  Gra', '', '0', '0000-00-00', '0', '0', 'G. H. C. Jayarani', 'Mr.. Chameera Darshana Panamaldeniya, Technical Assistants Grade III'),
(0, 52, '0000-00-00', '', '', '', '0', '0000-00-00', '0', '0', '', ''),
(0, 53, '0000-00-00', '', '', '', '0', '0000-00-00', '0', '0', '', ''),
(108, 1, '2016-07-02', 'T. M. S. S.  P.  Cooray', 'Management Assistant (Sec', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '25435', '2015-05-19', '345', '25780', 'G. H. C. Jayarani', 'Mrs. T. M. S. S. P. Cooray, Management Assistant (Secretary) - Grade I'),
(108, 2, '2016-07-02', 'T. M. S. S.  P.  Cooray', 'Management Assistant (Sec', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '25435', '2015-05-19', '345', '25780', 'G. H. C. Jayarani', 'Mrs. T. M. S. S. P. Cooray, Management Assistant (Secretary) - Grade I'),
(169, 2, '2015-08-25', 'G.D. N.  De Silva', 'Engineering Assistant  - ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '23810', '2015-05-21', '365', '24175', '- select -', 'Mr. G.D. N. De Silva, Engineering Assistant - Grade II'),
(169, 3, '2015-08-25', 'G.D. N.  De Silva', 'Engineering Assistant  - ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '23810', '2015-05-21', '365', '24175', '- select -', 'Mr. G.D. N. De Silva, Engineering Assistant - Grade II'),
(285, 1, '2016-07-18', 'A S Weerapperuma', 'Senior Deputy Director Fi', '41,745 - 15 X 1,100 - 58,245', '41745', '2015-06-02', '1100', '42845', 'G. H. C. Jayarani', 'Mr. A S Weerapperuma, Senior Deputy Director Finance'),
(75, 2, '2015-08-25', 'M. A. D. C. Medagama', 'Accountant  - Grade I', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '44805', '2015-06-18', '925', '45730', '- select -', 'Mrs. M. A. D. C. Medagama, Accountant - Grade I'),
(249, 2, '2015-08-25', 'U.D Niriella.', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25825', '2015-07-02', '550', '26375', '- select -', 'Mr. U.D Niriella., Research Engineer - Grade II'),
(70, 2, '2015-08-15', 'K  Ediriweera', 'Deputy Director General (', '44,755 - 12 X 1,310 - 60,475', '59165', '2015-08-01', '1310', '60475', '- select -', 'Mrs. K Ediriweera, Deputy Director General (Technical Operation)'),
(24, 1, '2016-04-19', 'S.N. Pasqual', 'Lab Attendent - Grade I', '12,410 - 10 X 130 - 10 X 145 - 10 X 160 -12 X 170 - 18,800', '17440', '2014-09-12', '170', '17610', 'G. H. C. Jayarani', 'Mr. S.N. Pasqual, Lab Attendent - Grade I'),
(202, 2, '2015-10-29', 'K. A. K.  Gunasekara', 'Technical Officer - Grade', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '19280', '2015-09-12', '290', '19570', '- select -', 'Mr. K. A. K. Gunasekara, Technical Officer - Grade II'),
(202, 3, '2015-10-29', 'K. A. K.  Gunasekara', 'Technical Officer - Grade', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '19280', '2015-09-12', '290', '19570', '- select -', 'Mr. K. A. K. Gunasekara, Technical Officer - Grade II'),
(146, 3, '2015-10-22', 'R. M. L. N.  Rathnayake', 'Senior Research Engineer', '41,745 - 15 X 1,100 - 58,245', '48345', '2015-09-01', '1100', '49445', '- select -', 'Mrs. R. M. L. N. Rathnayake, Senior Research Engineer'),
(142, 2, '2015-10-29', 'N. M.  Kandamby', 'Management Assistant (Sec', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '19570', '2015-09-05', '345', '19915', '- select -', 'Mrs. N. M. Kandamby, Management Assistant (Secretary) - Grade I'),
(143, 2, '2015-10-22', 'N P Ketipearachchi', 'Management Assistant (Sec', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '19570', '2015-09-03', '345', '19915', '- select -', 'Mrs.. N P Ketipearachchi, Management Assistant (Secretary) - Grade I'),
(188, 1, '2016-07-18', 'M. A. K.  Dharmalal', 'Driver - Grade II', '12,670 - 10 X 130 - 10 X 145 - 10 X 160 - 12 X 170 - 19,060', '14840', '2015-03-01', '145', '14985', 'G. H. C. Jayarani', 'Mr. M. A. K. Dharmalal, Driver - Grade II'),
(188, 2, '2016-07-18', 'M. A. K.  Dharmalal', 'Driver - Grade II', '12,670 - 10 X 130 - 10 X 145 - 10 X 160 - 12 X 170 - 19,060', '14840', '2015-03-01', '145', '14985', 'G. H. C. Jayarani', 'Mr. M. A. K. Dharmalal, Driver - Grade II'),
(125, 2, '2016-03-24', 'S W. C. K. Wijayawardena', 'Deputy Director (Media) G', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '38330', '2015-07-20', '925', '39255', 'G. H. C. Jayarani', 'Mr. S W. C. K. Wijayawardena, Deputy Director (Media) Grade I'),
(244, 2, '2016-03-10', 'A. R. M. Rila', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25825', '2015-06-01', '550', '26375', '- select -', 'Mr.. A. R. M. Rila, Research Scientist - Grade II'),
(200, 2, '2016-03-24', 'P. L. S.  Kumara', 'Plumber/Electrician - Gra', '12,670 - 10 X 130 - 10 X 145 - 10 X 160 - 12 X 170 - 19,060', '13580', '2015-05-21', '130', '13710', 'G. H. C. Jayarani', 'Mr. P. L. S. Kumara, Plumber/Electrician - Grade III'),
(216, 2, '2016-05-31', 'N. K. L. T. M. S.  Dias', 'Technical Officer - Grade', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '17080', '2015-04-21', '170', '17250', 'G. H. C. Jayarani', 'Mr. N. K. L. T. M. S. Dias, Technical Officer - Grade II'),
(199, 2, '2016-05-31', 'S. R. S. Rupasinghe', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '14030', '2014-01-19', '145', '14175', 'G. H. C. Jayarani', 'Mr. S. R. S. Rupasinghe, Management Assistant - Grade III'),
(216, 5, '2016-05-31', 'N. K. L. T. M. S.  Dias', 'Technical Officer - Grade', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '16910', '2014-04-21', '170', '17080', 'G. H. C. Jayarani', 'Mr. N. K. L. T. M. S. Dias, Technical Officer - Grade II'),
(59, 2, '0000-00-00', 'G. H. C. Jayarani', 'Deputy Director ( Human R', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '42030', '2015-12-07', '925', '42955', '', ''),
(59, 3, '0000-00-00', 'G. H. C. Jayarani', 'Deputy Director ( Human R', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '42030', '2015-12-07', '925', '42955', '', ''),
(291, 1, '2016-03-24', 'Weerasinghe Arachchilage Paviththra ', 'Management Assistant - Gr', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13450', '2015-11-03', '145', '13595', 'G. H. C. Jayarani', 'Ms.. Weerasinghe Arachchilage Paviththra , Management Assistant - Grade III (Receptionist/Telephone Operator)'),
(260, 2, '2016-03-24', 'H. D. N. Fernando', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13595', '2015-10-01', '145', '13740', 'G. H. C. Jayarani', 'Ms.. H. D. N. Fernando, Management Assistant - Grade III'),
(266, 2, '2016-03-24', 'G. M. Rodrigo', 'Office Aide - Grade III', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 - 17,845', '12050', '2015-10-09', '120', '12170', 'G. H. C. Jayarani', 'Mr.. G. M. Rodrigo, Office Aide - Grade III'),
(263, 2, '2016-03-24', 'M.. B. A. M. Dissanayake', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13595', '2015-10-01', '145', '13740', 'G. H. C. Jayarani', 'Ms.. M.. B. A. M. Dissanayake, Management Assistant - Grade III'),
(263, 3, '2016-03-24', 'M.. B. A. M. Dissanayake', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13595', '2015-10-01', '145', '13740', 'G. H. C. Jayarani', 'Ms.. M.. B. A. M. Dissanayake, Management Assistant - Grade III'),
(93, 1, '2016-05-12', 'R. A. S. S Gunasekara ', 'Senior Research Scientist', '41,745 - 15 X 1,100 - 58,245', '47245', '2015-02-06', '1100', '48345', 'G. H. C. Jayarani', 'Mr. R. A. S. S Gunasekara , Senior Research Scientist'),
(279, 1, '2016-05-31', 'L. A. C. P. Ranasinghe', 'Software Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-02-05', '550', '25275', 'G. H. C. Jayarani', 'Ms.. L. A. C. P. Ranasinghe, Software Engineer - Grade II'),
(126, 2, '2016-03-24', 'D.V. N. Silva', 'Lab Attendent - Grade III', '12,410 - 10 X 130 - 10 X 145 - 10 X 160 -12 X 170 - 18,800', '15595', '2015-12-03', '145', '15740', 'G. H. C. Jayarani', 'Mr.. D.V. N. Silva, Lab Attendent - Grade III'),
(191, 2, '2016-03-24', 'J Adassuriya', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '34550', '2015-11-11', '770', '35320', 'G. H. C. Jayarani', 'Mr. J Adassuriya, Research Scientist - Grade II'),
(67, 2, '2016-03-24', 'H. M. Sunil', 'Office Aide - Grade I', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 - 17,845', '17525', '2015-12-05', '160', '17685', 'G. H. C. Jayarani', 'Mr. H. M. Sunil, Office Aide - Grade I'),
(67, 3, '2016-03-24', 'H. M. Sunil', 'Office Aide - Grade I', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 - 17,845', '17525', '2015-12-05', '160', '17685', 'G. H. C. Jayarani', 'Mr. H. M. Sunil, Office Aide - Grade I'),
(132, 2, '2016-03-28', 'S. P.  Athuluwage', 'Computer Application Asst', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '18120', '2015-12-10', '290', '18410', 'G. H. C. Jayarani', 'Mr. S. P. Athuluwage, Computer Application Asstant - Grade II'),
(132, 3, '2016-03-28', 'S. P.  Athuluwage', 'Computer Application Asst', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '18120', '2015-12-10', '290', '18410', 'G. H. C. Jayarani', 'Mr. S. P. Athuluwage, Computer Application Asstant - Grade II'),
(138, 2, '2016-03-24', 'P. M. K. A. Bandara', 'Library Assistant - Grade', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '19280', '2015-12-18', '290', '19570', 'G. H. C. Jayarani', 'Mrs. P. M. K. A. Bandara, Library Assistant - Grade I'),
(290, 1, '2016-03-24', 'Ranawaka Mudiyanselage Sanoja Dilhani Madumala', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13450', '2015-11-03', '145', '13595', 'G. H. C. Jayarani', 'Ms. Ranawaka Mudiyanselage Sanoja Dilhani Madumala, Management Assistant - Grade III'),
(127, 2, '2016-03-24', 'G. K. S. Perera', 'Lab Attendent - Grade III', '12,410 - 10 X 130 - 10 X 145 - 10 X 160 -12 X 170 - 18,800', '15595', '2015-12-03', '145', '15740', 'G. H. C. Jayarani', 'Mr. G. K. S. Perera, Lab Attendent - Grade III'),
(259, 2, '2016-03-28', 'K. C. I. Silva', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13595', '2015-10-01', '145', '13740', 'G. H. C. Jayarani', 'Mrs . K. C. I. Silva, Management Assistant - Grade III'),
(286, 1, '2016-03-24', 'Kandangamuwe Pathirannahalage Dineshi Prabaha Pathirana', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13450', '2015-10-20', '145', '13595', 'G. H. C. Jayarani', 'Ms. Kandangamuwe Pathirannahalage Dineshi Prabaha Pathirana, Management Assistant - Grade III'),
(68, 2, '2016-03-24', 'N.D.N. Kumara', 'Lab Attendent - Grade I', '12,410 - 10 X 130 - 10 X 145 - 10 X 160 -12 X 170 - 18,800', '17440', '2015-09-12', '170', '17610', 'G. H. C. Jayarani', 'Mr. N.D.N. Kumara, Lab Attendent - Grade I'),
(0, 58, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(24, 3, '2016-04-19', 'S.N. Pasqual', 'Lab Attendent - Grade I', '12,410 - 10 X 130 - 10 X 145 - 10 X 160 -12 X 170 - 18,800', '17610', '2015-09-12', '170', '17780', 'G. H. C. Jayarani', 'Mr. S.N. Pasqual, Lab Attendent - Grade I'),
(298, 2, '2016-03-28', 'Mahathelge Dilan Prasanga Peiris', 'Technical Assistant - Gra', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '14610', '2015-12-29', '145', '14755', 'G. H. C. Jayarani', 'Mr.. Mahathelge Dilan Prasanga Peiris, Technical Assistant - Grade III'),
(298, 3, '2016-03-28', 'Mahathelge Dilan Prasanga Peiris', 'Technical Assistant - Gra', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '14610', '2015-12-29', '145', '14755', 'G. H. C. Jayarani', 'Mr.. Mahathelge Dilan Prasanga Peiris, Technical Assistant - Grade III'),
(258, 3, '2016-03-28', 'S. R. J. S. Bandara', 'Technical Assistants  Gra', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '14755', '2015-07-10', '145', '14900', 'G. H. C. Jayarani', 'Mr. S. R. J. S. Bandara, Technical Assistants Grade III'),
(292, 1, '2016-03-28', 'Wadumestrige Kamal Manjula Mahindapala', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-12-05', '550', '25275', 'G. H. C. Jayarani', 'Mr. . Wadumestrige Kamal Manjula Mahindapala, Research Engineer - Grade II'),
(292, 2, '2016-03-28', 'Wadumestrige Kamal Manjula Mahindapala', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-12-05', '550', '25275', 'G. H. C. Jayarani', 'Mr. . Wadumestrige Kamal Manjula Mahindapala, Research Engineer - Grade II'),
(294, 1, '2016-03-28', 'Prasanna Mahadevan', 'Research Engineer', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-12-01', '550', '25275', 'G. H. C. Jayarani', 'Mr. . Prasanna Mahadevan, Research Engineer'),
(294, 2, '2016-03-28', 'Prasanna Mahadevan', 'Research Engineer', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-12-01', '550', '25275', 'G. H. C. Jayarani', 'Mr. . Prasanna Mahadevan, Research Engineer'),
(296, 3, '2016-03-28', 'Chameera Darshana Panamaldeniya', 'Technical Assistants  Gra', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '14610', '2015-12-01', '145', '14755', 'G. H. C. Jayarani', 'Mr.. Chameera Darshana Panamaldeniya, Technical Assistants Grade III'),
(293, 1, '2016-03-28', 'Anurudde Nirmala Nanayakkara', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-12-01', '550', '25275', 'G. H. C. Jayarani', 'Mr.. Anurudde Nirmala Nanayakkara, Research Engineer - Grade II'),
(293, 2, '2016-03-28', 'Anurudde Nirmala Nanayakkara', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-12-01', '550', '25275', 'G. H. C. Jayarani', 'Mr.. Anurudde Nirmala Nanayakkara, Research Engineer - Grade II'),
(128, 2, '2016-07-18', 'E. B. D. P.  Jayadewa', 'Engineering Assistant  - ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '22350', '2015-05-21', '365', '22715', 'G. H. C. Jayarani', 'Mr. E. B. D. P. Jayadewa, Engineering Assistant - Grade II'),
(292, 3, '2016-03-28', 'Wadumestrige Kamal Manjula Mahindapala', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-12-05', '550', '25275', 'G. H. C. Jayarani', 'Mr. . Wadumestrige Kamal Manjula Mahindapala, Research Engineer - Grade II'),
(294, 3, '2016-03-28', 'Prasanna Mahadevan', 'Research Engineer', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '24725', '2015-12-01', '550', '25275', 'G. H. C. Jayarani', 'Mr. . Prasanna Mahadevan, Research Engineer'),
(0, 54, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(296, 4, '2016-03-28', 'Chameera Darshana Panamaldeniya', 'Technical Assistants  Gra', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '14610', '2015-12-01', '145', '14755', 'G. H. C. Jayarani', 'Mr.. Chameera Darshana Panamaldeniya, Technical Assistants Grade III'),
(107, 4, '0000-00-00', 'L. R. N. Somathilake', 'Senior Systems Analyst', '41,745 - 15 X 1,100 - 58,245', '50545', '2015-06-25', '1100', '51645', '', ''),
(0, 55, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 56, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(190, 3, '2016-03-24', 'R. P.  Dasanayaka', 'System Analyst - Grade I', '34,550 - 10 X 925 - 43,800', '47500', '2015-12-01', '925', '48425', 'G. H. C. Jayarani', 'Mr. R. P. Dasanayaka, System Analyst - Grade I'),
(24, 2, '2016-04-19', 'S.N. Pasqual', 'Lab Attendent - Grade I', '12,410 - 10 X 130 - 10 X 145 - 10 X 160 -12 X 170 - 18,800', '17610', '2015-09-12', '170', '17780', 'G. H. C. Jayarani', 'Mr. S.N. Pasqual, Lab Attendent - Grade I'),
(239, 2, '2016-04-19', 'M. L. Karunarathne', 'System Analyst - Grade II', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '26375', '2015-12-05', '550', '26925', 'G. H. C. Jayarani', 'Ms.. M. L. Karunarathne, System Analyst - Grade II'),
(239, 3, '2016-04-19', 'M. L. Karunarathne', 'System Analyst - Grade II', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '26375', '2015-12-05', '550', '26925', 'G. H. C. Jayarani', 'Ms.. M. L. Karunarathne, System Analyst - Grade II'),
(264, 3, '2016-03-28', 'P. Buddhika Warnakula', 'Driver - Grade III', '12,670 - 10 X 130 - 10 X 145 - 10 X 160 - 12 X 170 - 19,060', '12800', '2015-10-09', '130', '12930', 'G. H. C. Jayarani', 'Mr.. P. Buddhika Warnakula, Driver - Grade III'),
(264, 4, '2016-03-28', 'P. Buddhika Warnakula', 'Driver - Grade III', '12,670 - 10 X 130 - 10 X 145 - 10 X 160 - 12 X 170 - 19,060', '12800', '2015-10-09', '130', '12930', 'G. H. C. Jayarani', 'Mr.. P. Buddhika Warnakula, Driver - Grade III'),
(261, 2, '2016-04-19', 'P. D. T. De Silva', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13595', '2015-10-01', '145', '13740', 'G. H. C. Jayarani', 'Ms.. P. D. T. De Silva, Management Assistant - Grade III'),
(261, 3, '2016-04-19', 'P. D. T. De Silva', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13595', '2015-10-01', '145', '13740', 'G. H. C. Jayarani', 'Ms.. P. D. T. De Silva, Management Assistant - Grade III'),
(225, 2, '2016-05-12', 'R. A. C. A. K.  Ranawaka', 'Technical Officer - Grade', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '16910', '2015-08-17', '170', '17080', 'G. H. C. Jayarani', 'Mr. R. A. C. A. K. Ranawaka, Technical Officer - Grade II'),
(225, 3, '2016-05-12', 'R. A. C. A. K.  Ranawaka', 'Technical Officer - Grade', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '16910', '2015-08-17', '170', '17080', 'G. H. C. Jayarani', 'Mr. R. A. C. A. K. Ranawaka, Technical Officer - Grade II'),
(161, 1, '0000-00-00', 'P.P.K. Rodrigo', 'Driver - Grade II', '12,670 - 10 X 130 - 10 X 145 - 10 X 160 - 12 X 170 - 19,060', '14405', '2014-02-27', '145', '14550', '', ''),
(253, 2, '2016-05-31', 'W. A. K. Madumali', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13740', '2016-02-01', '145', '13885', 'G. H. C. Jayarani', 'Ms. W. A. K. Madumali, Management Assistant - Grade III'),
(253, 3, '2016-05-31', 'W. A. K. Madumali', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13740', '2016-02-01', '145', '13885', 'G. H. C. Jayarani', 'Ms. W. A. K. Madumali, Management Assistant - Grade III'),
(274, 2, '2016-05-12', 'B. S. Marasinghe', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2016-01-27', '550', '25825', 'G. H. C. Jayarani', 'Mr.. B. S. Marasinghe, Research Scientist - Grade II'),
(274, 3, '2016-05-12', 'B. S. Marasinghe', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2016-01-27', '550', '25825', 'G. H. C. Jayarani', 'Mr.. B. S. Marasinghe, Research Scientist - Grade II'),
(276, 2, '2016-05-12', 'K. S. Roshan', 'Technical Assistant - Gra', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '14755', '2016-01-27', '145', '14900', 'G. H. C. Jayarani', 'Mr.. K. S. Roshan, Technical Assistant - Grade III'),
(276, 3, '2016-05-12', 'K. S. Roshan', 'Technical Assistant - Gra', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '14755', '2016-01-27', '145', '14900', 'G. H. C. Jayarani', 'Mr.. K. S. Roshan, Technical Assistant - Grade III'),
(272, 2, '2016-05-12', 'J. P. Rajitha Prasanna', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2016-01-13', '550', '25825', 'G. H. C. Jayarani', 'Mr.. J. P. Rajitha Prasanna, Research Engineer - Grade II'),
(272, 3, '2016-05-12', 'J. P. Rajitha Prasanna', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2016-01-13', '550', '25825', 'G. H. C. Jayarani', 'Mr.. J. P. Rajitha Prasanna, Research Engineer - Grade II'),
(199, 4, '2016-05-31', 'S. R. S. Rupasinghe', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '14320', '2016-01-19', '145', '14465', 'G. H. C. Jayarani', 'Mr. S. R. S. Rupasinghe, Management Assistant - Grade III'),
(199, 5, '2016-05-31', 'S. R. S. Rupasinghe', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '14320', '2016-01-19', '145', '14465', 'G. H. C. Jayarani', 'Mr. S. R. S. Rupasinghe, Management Assistant - Grade III'),
(120, 2, '2016-05-12', 'J. K.  Jayawardena', 'Principal Research Engine', '44,030 - 12 X 1,310 - 59,750', '53200', '2016-02-06', '1310', '54510', 'G. H. C. Jayarani', 'Mr. J. K. Jayawardena, Principal Research Engineer'),
(120, 3, '2016-05-12', 'J. K.  Jayawardena', 'Principal Research Engine', '44,030 - 12 X 1,310 - 59,750', '53200', '2016-02-06', '1310', '54510', 'G. H. C. Jayarani', 'Mr. J. K. Jayawardena, Principal Research Engineer'),
(268, 2, '2016-05-12', 'K. A. Sumudu L. Perera', ' Management Assistant - G', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '13595', '2016-01-08', '145', '13740', 'G. H. C. Jayarani', 'Ms.. K. A. Sumudu L. Perera, Management Assistant - Grade III'),
(269, 2, '2016-05-31', 'K. D. S. Awantha', 'Office Aide - Grade III', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 - 17,845', '12050', '2016-01-13', '120', '12170', 'G. H. C. Jayarani', 'Mr.. K. D. S. Awantha, Office Aide - Grade III'),
(271, 2, '2016-05-12', 'V. K. O. N. Thalpawila', 'Research Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2016-01-13', '550', '25825', 'G. H. C. Jayarani', 'Miss.. V. K. O. N. Thalpawila, Research Engineer - Grade II'),
(168, 4, '2016-05-12', 'P. D. S.  Pushpakumara', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '28120', '2016-01-19', '645', '28765', 'G. H. C. Jayarani', 'Mr. P. D. S. Pushpakumara, Research Scientist - Grade III'),
(168, 5, '2016-05-12', 'P. D. S.  Pushpakumara', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '28120', '2016-01-19', '645', '28765', 'G. H. C. Jayarani', 'Mr. P. D. S. Pushpakumara, Research Scientist - Grade III'),
(112, 3, '2016-05-31', 'B. A. Jayasinghe', 'Senior System/ Software E', '41,745 - 15 X 1,100 - 58,245', '47245', '2016-02-06', '1100', '48345', 'G. H. C. Jayarani', 'Mr. B. A. Jayasinghe, Senior System/ Software Engineer'),
(112, 4, '2016-05-31', 'B. A. Jayasinghe', 'Senior System/ Software E', '41,745 - 15 X 1,100 - 58,245', '47245', '2016-02-06', '1100', '48345', 'G. H. C. Jayarani', 'Mr. B. A. Jayasinghe, Senior System/ Software Engineer'),
(168, 6, '2016-05-12', 'P. D. S.  Pushpakumara', 'Research Scientist - Grad', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '28120', '2016-01-19', '645', '28765', 'G. H. C. Jayarani', 'Mr. P. D. S. Pushpakumara, Research Scientist - Grade III'),
(0, 59, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(180, 3, '2016-05-31', 'S. A.  Welikala', 'Senior Deputy Director In', '41,745 - 15 X 1,100 - 58,245', '43945', '2016-02-06', '1100', '45045', 'G. H. C. Jayarani', 'Mr. S. A. Welikala, Senior Deputy Director Industrialization'),
(180, 4, '2016-05-31', 'S. A.  Welikala', 'Senior Deputy Director In', '41,745 - 15 X 1,100 - 58,245', '43945', '2016-02-06', '1100', '45045', 'G. H. C. Jayarani', 'Mr. S. A. Welikala, Senior Deputy Director Industrialization'),
(93, 2, '2016-05-12', 'R. A. S. S Gunasekara ', 'Senior Research Scientist', '41,745 - 15 X 1,100 - 58,245', '48345', '2016-02-06', '1100', '49445', 'G. H. C. Jayarani', 'Mr. R. A. S. S Gunasekara , Senior Research Scientist'),
(93, 3, '2016-05-12', 'R. A. S. S Gunasekara ', 'Senior Research Scientist', '41,745 - 15 X 1,100 - 58,245', '48345', '2016-02-06', '1100', '49445', 'G. H. C. Jayarani', 'Mr. R. A. S. S Gunasekara , Senior Research Scientist'),
(279, 2, '2016-05-31', 'L. A. C. P. Ranasinghe', 'Software Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2016-02-05', '550', '25825', 'G. H. C. Jayarani', 'Ms.. L. A. C. P. Ranasinghe, Software Engineer - Grade II'),
(279, 3, '2016-05-31', 'L. A. C. P. Ranasinghe', 'Software Engineer - Grade', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2016-02-05', '550', '25825', 'G. H. C. Jayarani', 'Ms.. L. A. C. P. Ranasinghe, Software Engineer - Grade II'),
(149, 3, '2016-05-31', 'J. P. D. S Athuraliya', 'Principal Research Engine', '44,030 - 12 X 1,310 - 59,750', '53200', '2016-02-03', '1310', '54510', 'G. H. C. Jayarani', 'Mrs. J. P. D. S Athuraliya, Principal Research Engineer'),
(149, 4, '2016-05-31', 'J. P. D. S Athuraliya', 'Principal Research Engine', '44,030 - 12 X 1,310 - 59,750', '53200', '2016-02-03', '1310', '54510', 'G. H. C. Jayarani', 'Mrs. J. P. D. S Athuraliya, Principal Research Engineer'),
(282, 2, '2016-05-12', 'R. A. D. K. Sampath', 'Electronic Engineer - Gra', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2016-02-17', '550', '25825', 'G. H. C. Jayarani', 'Mr.. R. A. D. K. Sampath, Electronic Engineer - Grade II'),
(282, 3, '2016-05-12', 'R. A. D. K. Sampath', 'Electronic Engineer - Gra', '24,725 - 5 X 550 - 5 X 645 - 15 X 770 - 42,250', '25275', '2016-02-17', '550', '25825', 'G. H. C. Jayarani', 'Mr.. R. A. D. K. Sampath, Electronic Engineer - Grade II'),
(215, 2, '2016-05-31', 'J. S. B.  Rathnayake', 'Internal Auditor', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '32045', '2016-03-07', '735', '32780', 'G. H. C. Jayarani', 'Mr. J. S. B. Rathnayake, Internal Auditor - Grade II'),
(215, 3, '2016-05-31', 'J. S. B.  Rathnayake', 'Internal Auditor', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '32045', '2016-03-07', '735', '32780', 'G. H. C. Jayarani', 'Mr. J. S. B. Rathnayake, Internal Auditor - Grade II'),
(216, 3, '2016-05-31', 'N. K. L. T. M. S.  Dias', 'Technical Officer - Grade', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '17250', '2016-04-21', '290', '17540', 'G. H. C. Jayarani', 'Mr. N. K. L. T. M. S. Dias, Technical Officer - Grade II'),
(216, 4, '2016-05-31', 'N. K. L. T. M. S.  Dias', 'Technical Officer - Grade', '14,610 - 10 X 145 - 7 X 170 - 4 X 290 - 20 X 345 - 25,310 	', '17250', '2016-04-21', '290', '17540', 'G. H. C. Jayarani', 'Mr. N. K. L. T. M. S. Dias, Technical Officer - Grade II'),
(139, 3, '2016-05-12', 'N I  Medagangoda', 'Research Scientist', '34,550 - 10 X 925 - 43,800', '36400', '2016-04-09', '925', '37325', 'G. H. C. Jayarani', 'Mr. N I Medagangoda, Research Scientist'),
(139, 4, '2016-05-12', 'N I  Medagangoda', 'Research Scientist', '34,550 - 10 X 925 - 43,800', '36400', '2016-04-09', '925', '37325', 'G. H. C. Jayarani', 'Mr. N I Medagangoda, Research Scientist'),
(0, 2, '0000-00-00', 'M. P. R. Perera', 'Assistant Director (Indus', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '26305', '2016-02-03', '665', '26970', '', ''),
(5, 2, '2016-05-31', 'P.D. Champika Janashanthi', ' Senior Electronic Engine', '41,745 - 15 X 1,100 - 58,245', '54945', '2015-02-06', '1100', '56045', 'G. H. C. Jayarani', 'Mrs.. P.D. Champika Janashanthi, Senior Electronic Engineer'),
(5, 3, '2016-05-31', 'P.D. Champika Janashanthi', ' Senior Electronic Engine', '41,745 - 15 X 1,100 - 58,245', '54945', '2015-02-06', '1100', '56045', 'G. H. C. Jayarani', 'Mrs.. P.D. Champika Janashanthi, Senior Electronic Engineer'),
(138, 3, '0000-00-00', 'P. M. K. A. Bandara', 'Library Assistant - Grade', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '19280', '2015-12-18', '290', '19570', '', ''),
(138, 4, '0000-00-00', 'P. M. K. A. Bandara', 'Library Assistant - Grade', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '19280', '2015-12-18', '290', '19570', '', ''),
(212, 5, '0000-00-00', 'E. P. P Fernando', 'Management Assistant (Sto', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '17830', '2016-02-05', '290', '18120', '', ''),
(212, 6, '0000-00-00', 'E. P. P Fernando', 'Management Assistant (Sto', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '17830', '2016-02-05', '290', '18120', '', ''),
(67, 4, '0000-00-00', 'H. M. Sunil', 'Office Aide - Grade I', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 - 17,845', '17525', '2015-12-05', '160', '17685', '', ''),
(67, 5, '0000-00-00', 'H. M. Sunil', 'Office Aide - Grade I', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 - 17,845', '17525', '2015-12-05', '160', '17685', '', ''),
(5, 4, '2016-05-31', 'P.D. Champika Janashanthi', ' Senior Electronic Engine', '41,745 - 15 X 1,100 - 58,245', '56045', '2016-02-06', '1100', '57145', 'G. H. C. Jayarani', 'Mrs.. P.D. Champika Janashanthi, Senior Electronic Engineer'),
(5, 5, '2016-05-31', 'P.D. Champika Janashanthi', ' Senior Electronic Engine', '41,745 - 15 X 1,100 - 58,245', '56045', '2016-02-06', '1100', '57145', 'G. H. C. Jayarani', 'Mrs.. P.D. Champika Janashanthi, Senior Electronic Engineer'),
(192, 4, '2016-05-31', 'S.P.K.K.A Liyanage', ' Librarian', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '46655', '2016-04-03', '925', '47580', 'G. H. C. Jayarani', 'Mr. S.P.K.K.A Liyanage, Librarian - Grade I'),
(0, 60, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(7, 3, '2016-05-12', 'N B Micheal', 'Office Aide - Grade I', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 ', '18325', '2016-02-18', '160', '18485', 'G. H. C. Jayarani', 'Mr.. N B Micheal, Office Aide - Grade I'),
(7, 3, '2016-05-12', 'N B Micheal', 'Office Aide - Grade I', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 ', '18325', '2016-02-18', '160', '18485', 'G. H. C. Jayarani', 'Mr.. N B Micheal, Office Aide - Grade I'),
(7, 5, '2016-05-12', 'N B Micheal', 'Office Aide - Grade I', '11,930 - 10 X 120 - 10 X 130 - 7 X 145 - 15 X 160 ', '18325', '2016-02-18', '160', '18485', 'G. H. C. Jayarani', 'Mr.. N B Micheal, Office Aide - Grade I'),
(0, 61, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 62, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 63, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(36, 3, '2016-06-06', 'D. R. D. De Silva', 'Confidential Secretary', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '35720', '2016-03-01', '735', '36455', 'G. H. C. Jayarani', 'Mrs. D. R. D. De Silva, Confidential Secretary - Grade II'),
(215, 4, '2016-05-31', 'J. S. B.  Rathnayake', 'Internal Auditor', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '32045', '2016-03-07', '735', '32780', 'G. H. C. Jayarani', 'Mr. J. S. B. Rathnayake, Internal Auditor - Grade II'),
(193, 2, '2016-05-31', 'V K Aluthge', 'Confidential Secretary', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '33515', '2016-03-01', '735', '34250', 'G. H. C. Jayarani', 'Mrs. . V K Aluthge, Confidential Secretary - Grade II'),
(0, 65, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(36, 4, '2016-06-06', 'D. R. D. De Silva', 'Confidential Secretary', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '35720', '2016-03-01', '735', '36455', 'G. H. C. Jayarani', 'Mrs. D. R. D. De Silva, Confidential Secretary - Grade II'),
(0, 64, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(193, 3, '2016-05-31', 'V K Aluthge', 'Confidential Secretary', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '33515', '2016-03-01', '735', '34250', 'G. H. C. Jayarani', 'Mrs. . V K Aluthge, Confidential Secretary - Grade II'),
(0, 66, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 2, '0000-00-00', 'M. P. R. Perera', 'Assistant Director (Indus', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '26305', '2016-02-03', '665', '26970', '', ''),
(128, 3, '2016-07-18', 'E. B. D. P.  Jayadewa', 'Engineering Assistant  - ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '22350', '2015-05-21', '365', '22715', 'G. H. C. Jayarani', 'Mr. E. B. D. P. Jayadewa, Engineering Assistant - Grade II'),
(0, 69, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 3, '0000-00-00', 'M. L. A. N.  Pushparani', 'Accounts Officer  -  Grad', '20,890 - 10 X 365 - 18 X 550 - 34,440', '23810', '2016-05-21', '365', '24175', '', ''),
(0, 3, '0000-00-00', 'M. L. A. N.  Pushparani', 'Accounts Officer  -  Grad', '20,890 - 10 X 365 - 18 X 550 - 34,440', '23810', '2016-05-21', '365', '24175', '', ''),
(0, 2, '0000-00-00', 'S. A. A.  Siriwardhana', 'Engineering Assistant  - ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '25270', '2016-05-21', '365', '25635', '', ''),
(0, 2, '0000-00-00', 'S. A. A.  Siriwardhana', 'Engineering Assistant  - ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '25270', '2016-05-21', '365', '25635', '', ''),
(0, 3, '0000-00-00', 'P. K. P. Anuruddha', 'Engineering Assistant  - ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '24540', '2016-05-21', '365', '24905', '', ''),
(0, 3, '0000-00-00', 'P. K. P. Anuruddha', 'Engineering Assistant  - ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '24540', '2016-05-21', '365', '24905', '', ''),
(0, 2, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26365', '2016-05-21', '365', '26730', '', ''),
(0, 2, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26365', '2016-05-21', '365', '26730', '', ''),
(0, 3, '0000-00-00', 'T. M. S. S.  P.  Cooray', 'Management Assistant (Sec', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '25780', '2016-05-19', '345', '26125', '', ''),
(0, 3, '0000-00-00', 'T. M. S. S.  P.  Cooray', 'Management Assistant (Sec', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '25780', '2016-05-19', '345', '26125', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 2, '0000-00-00', 'A S Weerapperuma', 'Senior Deputy Director Fi', '41,745 - 15 X 1,100 - 58,245', '42845', '2016-06-02', '1100', '43945', '', ''),
(0, 2, '0000-00-00', 'A S Weerapperuma', 'Senior Deputy Director Fi', '41,745 - 15 X 1,100 - 58,245', '42845', '2016-06-02', '1100', '43945', '', ''),
(285, 2, '2016-07-18', 'A S Weerapperuma', 'Senior Deputy Director Fi', '41,745 - 15 X 1,100 - 58,245', '42845', '2016-06-02', '1100', '43945', 'G. H. C. Jayarani', 'Mr. A S Weerapperuma, Senior Deputy Director Finance'),
(0, 86, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 3, '0000-00-00', 'A S Weerapperuma', 'Senior Deputy Director Fi', '41,745 - 15 X 1,100 - 58,245', '42845', '2016-06-02', '1100', '43945', '', ''),
(0, 3, '0000-00-00', 'A S Weerapperuma', 'Senior Deputy Director Fi', '41,745 - 15 X 1,100 - 58,245', '42845', '2016-06-02', '1100', '43945', '', ''),
(161, 2, '0000-00-00', 'P.P.K. Rodrigo', 'Driver - Grade II', '12,670 - 10 X 130 - 10 X 145 - 10 X 160 - 12 X 170 - 19,060', '14405', '2014-02-27', '145', '14550', '', ''),
(0, 89, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(188, 3, '2016-07-18', 'M. A. K.  Dharmalal', 'Driver - Grade II', '12,670 - 10 X 130 - 10 X 145 - 10 X 160 - 12 X 170 - 19,060', '14840', '2015-03-01', '145', '14985', 'G. H. C. Jayarani', 'Mr. M. A. K. Dharmalal, Driver - Grade II'),
(0, 90, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 1, '0000-00-00', 'H. C, Weerasekara', 'Confidential Secretary  -', '20,890 - 10 X 365 - 18 X 550 - 34,440', '26730', '2016-05-21', '365', '27095', '', ''),
(0, 2, '0000-00-00', 'S. A. A.  Siriwardhana', 'Engineering Assistant  - ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '25270', '2016-05-21', '365', '25635', '', ''),
(0, 2, '0000-00-00', 'S. A. A.  Siriwardhana', 'Engineering Assistant  - ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '25270', '2016-05-21', '365', '25635', '', ''),
(0, 3, '0000-00-00', 'T. M. S. S.  P.  Cooray', 'Management Assistant (Sec', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '25780', '2016-05-19', '345', '26125', '', ''),
(0, 3, '0000-00-00', 'T. M. S. S.  P.  Cooray', 'Management Assistant (Sec', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '25780', '2016-05-19', '345', '26125', '', ''),
(0, 2, '0000-00-00', 'M. P. R. Perera', 'Assistant Director (Indus', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '26305', '2016-02-03', '665', '26970', '', ''),
(0, 2, '0000-00-00', 'M. P. R. Perera', 'Assistant Director (Indus', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '26305', '2016-02-03', '665', '26970', '', ''),
(0, 3, '0000-00-00', 'M. L. A. N.  Pushparani', 'Accounts Officer  -  Grad', '20,890 - 10 X 365 - 18 X 550 - 34,440', '23810', '2016-05-21', '365', '24175', '', ''),
(0, 3, '0000-00-00', 'M. L. A. N.  Pushparani', 'Accounts Officer  -  Grad', '20,890 - 10 X 365 - 18 X 550 - 34,440', '23810', '2016-05-21', '365', '24175', '', ''),
(147, 3, '2016-07-02', 'M. L. A. N.  Pushparani', 'Accounts Officer', '20,890 - 10 X 365 - 18 X 550 - 34,440', '23810', '2016-05-21', '365', '24175', 'G. H. C. Jayarani', 'Mrs. M. L. A. N. Pushparani, Accounts Officer - Grade II'),
(277, 2, '2016-07-02', 'M. P. R. Perera', 'Assistant Dirctor / Deput', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '26305', '2016-02-03', '665', '26970', 'G. H. C. Jayarani', 'Mr.. M. P. R. Perera, Assistant Director (Industrial Relations) Grade II'),
(108, 3, '2016-07-02', 'T. M. S. S.  P.  Cooray', 'Management Assistant (Sec', '13,450 - 10X145 - 7X170 - 12X290 - 12X345 - 23,710', '25780', '2016-05-19', '345', '26125', 'G. H. C. Jayarani', 'Mrs. T. M. S. S. P. Cooray, Management Assistant (Secretary) - Grade I'),
(130, 2, '2016-07-02', 'S. A. A.  Siriwardhana', 'Engineering Assistant', '20,890 - 10 X 365 - 18 X 550 - 34,440', '25270', '2016-05-21', '365', '25635', 'G. H. C. Jayarani', 'Mr. S. A. A. Siriwardhana, Engineering Assistant - Grade II'),
(100, 1, '2016-07-02', 'H. C, Weerasekara', 'Confidential Secretary  -', '25,640 - 3 X 665 - 7 X 735 - 15 X 925 - 46,655', '26730', '2016-05-21', '365', '27095', 'G. H. C. Jayarani', 'Mrs. H. C, Weerasekara, Confidential Secretary - Grade II'),
(0, 3, '0000-00-00', 'A S Weerapperuma', 'Senior Deputy Director Fi', '41,745 - 15 X 1,100 - 58,245', '42845', '2016-06-02', '1100', '43945', '', ''),
(0, 3, '0000-00-00', 'A S Weerapperuma', 'Senior Deputy Director Fi', '41,745 - 15 X 1,100 - 58,245', '42845', '2016-06-02', '1100', '43945', '', ''),
(0, 3, '0000-00-00', 'P. K. P. Anuruddha', 'Engineering Assistant  - ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '24540', '2016-05-21', '365', '24905', '', ''),
(0, 3, '0000-00-00', 'P. K. P. Anuruddha', 'Engineering Assistant  - ', '20,890 - 10 X 365 - 18 X 550 - 34,440', '24540', '2016-05-21', '365', '24905', '', ''),
(162, 3, '2016-07-18', 'P. K. P. Anuruddha', 'Engineering Assistant', '20,890 - 10 X 365 - 18 X 550 - 34,440', '24540', '2016-05-21', '365', '24905', 'G. H. C. Jayarani', 'Mr. P. K. P. Anuruddha, Engineering Assistant - Grade II'),
(0, 136, '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `login_tbl`
--

CREATE TABLE `login_tbl` (
  `user_id` int(3) NOT NULL,
  `User_Name` varchar(15) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Type` varchar(1) NOT NULL,
  `updatedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_tbl`
--

INSERT INTO `login_tbl` (`user_id`, `User_Name`, `Password`, `Type`, `updatedate`) VALUES
(8, 'administrator', '21232f297a57a5a743894a0e4a801fc3', 'A', '2016-11-15 08:51:48'),
(17, 'Editor', 'd2f2297d6e829cd3493aa7de4416a18f', 'E', '2016-12-15 06:35:44'),
(18, 'Viewer', '4786f3282f04de5b5c7317c490c6d922', 'V', '2016-12-15 06:36:18'),
(19, 'Rasika', '44f437ced647ec3f40fa0841041871cd', 'V', '2016-12-16 09:18:07'),
(20, '294', '6883966fd8f918a4aa29be29d2c386fb', 'V', '2016-12-26 05:33:43'),
(21, '5', 'bbaeabb367a620899fd0350cec001269', 'E', '2016-12-26 05:34:14'),
(22, '7', '8f14e45fceea167a5a36dedd4bea2543', 'V', '2016-12-26 05:34:35'),
(23, '8', 'c9f0f895fb98ab9159f51fd0297e236d', 'V', '2016-12-26 05:35:12'),
(24, '24', '1ff1de774005f8da13f42943881c655f', 'V', '2016-12-26 05:35:35'),
(25, '36', '19ca14e7ea6328a42e0eb13d585e4c22', 'V', '2016-12-26 05:35:55'),
(26, '45', '6c8349cc7260ae62e3b1396831a8398f', 'V', '2016-12-26 05:36:12'),
(27, '53', 'd82c8d1619ad8176d665453cfb2e55f0', 'V', '2016-12-26 05:36:30'),
(28, '59', '093f65e080a295f8076b1c5722a46aa2', 'E', '2016-12-26 05:36:50'),
(29, '65', 'fc490ca45c00b1249bbe3554a4fdf6fb', 'V', '2016-12-26 05:37:08'),
(30, '67', '735b90b4568125ed6c3f678819b6e058', 'V', '2016-12-26 05:37:25'),
(31, '68', 'a3f390d88e4c41f2747bfa2f1b5f87db', 'V', '2016-12-26 05:37:40'),
(32, '70', '6dbf9f39310ee563a02cb82a3b5d2849', 'A', '2016-12-26 05:37:58'),
(33, '75', 'd09bf41544a3365a46c9077ebb5e35c3', 'V', '2016-12-26 05:38:15'),
(34, '93', '1a31f606d47b66ea0355a7f343ef378c', 'E', '2016-12-26 05:38:33'),
(35, '100', 'f899139df5e1059396431415e770c6dd', 'V', '2016-12-26 05:38:57'),
(36, '107', '44c830802fd8de30c37ce788ed84d2d0', 'A', '2016-12-26 05:39:19'),
(37, '108', 'a3c65c2974270fd093ee8a9bf8ae7d0b', 'V', '2016-12-26 05:39:40'),
(38, '112', '7f6ffaa6bb0b408017b62254211691b5', 'E', '2016-12-26 05:40:02'),
(39, '116', 'c45147dee729311ef5b5c3003946c48f', 'V', '2016-12-26 05:40:17'),
(40, '120', 'da4fb5c6e93e74d3df8527599fa62642', 'E', '2016-12-26 05:40:53'),
(41, '125', '3def184ad8f4755ff269862ea77393dd', 'V', '2016-12-26 05:41:04'),
(42, '126', '069059b7ef840f0c74a814ec9237b6ec', 'V', '2016-12-26 05:41:21'),
(43, '127', 'ec5decca5ed3d6b8079e2e7e7bacc9f2', 'V', '2016-12-26 05:41:34'),
(44, '128', '76dc611d6ebaafc66cc0879c71b5db5c', 'V', '2016-12-26 05:41:50'),
(45, '130', '9b8619251a19057cff70779273e95aa6', 'V', '2016-12-26 05:42:01'),
(46, '132', '65ded5353c5ee48d0b7d48c591b8f430', 'V', '2016-12-26 05:42:15'),
(47, '138', '013d407166ec4fa56eb1e1f8cbe183b9', 'V', '2016-12-26 05:42:28'),
(48, '139', 'e00da03b685a0dd18fb6a08af0923de0', 'E', '2016-12-26 05:42:43'),
(49, '142', 'a8baa56554f96369ab93e4f3bb068c22', 'V', '2016-12-26 05:43:00'),
(50, '143', '903ce9225fca3e988c2af215d4e544d3', 'V', '2016-12-26 05:43:52'),
(51, '146', 'a5e00132373a7031000fd987a3c9f87b', 'V', '2016-12-26 05:44:04'),
(52, '147', '8d5e957f297893487bd98fa830fa6413', 'V', '2016-12-26 05:44:18'),
(53, '149', 'f2217062e9a397a1dca429e7d70bc6ca', 'E', '2016-12-26 05:44:30'),
(54, '161', 'bd4c9ab730f5513206b999ec0d90d1fb', 'V', '2016-12-26 05:44:48'),
(55, '162', '82aa4b0af34c2313a562076992e50aa3', 'V', '2016-12-26 05:45:02'),
(56, '168', '006f52e9102a8d3be2fe5614f42ba989', 'V', '2016-12-26 05:45:16'),
(57, '169', '3636638817772e42b59d74cff571fbb3', 'V', '2016-12-26 05:45:33'),
(58, '180', '045117b0e0a11a242b9765e79cbf113f', 'E', '2016-12-26 05:45:50'),
(59, '188', '9dcb88e0137649590b755372b040afad', 'V', '2016-12-26 05:46:12'),
(60, '190', 'baf3266ba22f6eb7296459495cad45f6', 'E', '2016-12-26 05:46:28'),
(61, '191', '0aa1883c6411f7873cb83dacb17b0afc', 'E', '2016-12-26 05:46:45'),
(62, '192', '58a2fc6ed39fd083f55d4182bf88826d', 'E', '2016-12-26 05:47:05'),
(63, '193', 'bd686fd640be98efaae0091fa301e613', 'V', '2016-12-26 05:47:23'),
(64, '199', '84d9ee44e457ddef7f2c4f25dc8fa865', 'V', '2016-12-26 05:47:38'),
(65, '200', '3644a684f98ea8fe223c713b77189a77', 'V', '2016-12-26 05:47:50'),
(66, '202', '854d6fae5ee42911677c739ee1734486', 'V', '2016-12-26 05:48:06'),
(67, '207', '69adc1e107f7f7d035d7baf04342e1ca', 'V', '2016-12-26 05:48:31'),
(68, '209', 'b1d10e7bafa4421218a51b1e1f1b0ba2', 'V', '2016-12-26 05:48:48'),
(69, '212', '1534b76d325a8f591b52d302e7181331', 'V', '2016-12-26 05:49:04'),
(70, '213', '979d472a84804b9f647bc185a877a8b5', 'V', '2016-12-26 05:49:23'),
(71, '215', '3b8a614226a953a8cd9526fca6fe9ba5', 'V', '2016-12-26 05:49:41'),
(72, '216', '45fbc6d3e05ebd93369ce542e8f2322d', 'V', '2016-12-26 05:50:05'),
(73, '217', '63dc7ed1010d3c3b8269faf0ba7491d4', 'V', '2016-12-26 05:50:19'),
(74, '218', 'e96ed478dab8595a7dbda4cbcbee168f', 'V', '2016-12-26 05:50:31'),
(75, '225', 'd1c38a09acc34845c6be3a127a5aacaf', 'V', '2016-12-26 05:50:43'),
(76, '226', '9cfdf10e8fc047a44b08ed031e1f0ed1', 'V', '2016-12-26 05:50:58'),
(77, '236', '01161aaa0b6d1345dd8fe4e481144d84', 'V', '2016-12-26 05:51:38'),
(78, '237', '539fd53b59e3bb12d203f45a912eeaf2', 'V', '2016-12-26 05:52:02'),
(79, '238', 'ac1dd209cbcc5e5d1c6e28598e8cbbe8', 'V', '2016-12-26 05:52:24'),
(80, '239', '555d6702c950ecb729a966504af0a635', 'V', '2016-12-26 05:52:39'),
(81, '244', '9188905e74c28e489b44e954ec0b9bca', 'E', '2016-12-26 05:52:54'),
(82, '246', '38db3aed920cf82ab059bfccbd02be6a', 'V', '2016-12-26 05:53:11'),
(83, '249', '077e29b11be80ab57e1a2ecabb7da330', 'V', '2016-12-26 05:53:26'),
(84, '250', '6c9882bbac1c7093bd25041881277658', 'V', '2016-12-26 05:53:40'),
(85, '251', '19f3cd308f1455b3fa09a282e0d496f4', 'V', '2016-12-26 05:53:50'),
(86, '252', '03c6b06952c750899bb03d998e631860', 'V', '2016-12-26 05:54:04'),
(87, '253', 'c24cd76e1ce41366a4bbe8a49b02a028', 'V', '2016-12-26 05:54:28'),
(88, '254', 'c52f1bd66cc19d05628bd8bf27af3ad6', 'V', '2016-12-26 05:54:42'),
(89, '255', 'fe131d7f5a6b38b23cc967316c13dae2', 'V', '2016-12-26 05:54:56'),
(90, '256', 'f718499c1c8cef6730f9fd03c8125cab', 'V', '2016-12-26 05:55:33'),
(91, '257', 'd96409bf894217686ba124d7356686c9', 'V', '2016-12-26 05:55:44'),
(92, '258', '502e4a16930e414107ee22b6198c578f', 'V', '2016-12-26 05:56:29'),
(93, '259', 'cfa0860e83a4c3a763a7e62d825349f7', 'V', '2016-12-26 05:56:41'),
(94, '260', 'a4f23670e1833f3fdb077ca70bbd5d66', 'V', '2016-12-26 05:57:04'),
(95, '261', 'b1a59b315fc9a3002ce38bbe070ec3f5', 'V', '2016-12-26 05:57:23'),
(96, '262', '36660e59856b4de58a219bcf4e27eba3', 'V', '2016-12-26 05:58:44'),
(97, '263', '8c19f571e251e61cb8dd3612f26d5ecf', 'V', '2016-12-26 05:59:29'),
(98, '264', 'd6baf65e0b240ce177cf70da146c8dc8', 'V', '2016-12-26 06:00:04'),
(99, '265', 'e56954b4f6347e897f954495eab16a88', 'V', '2016-12-26 06:00:27'),
(100, '266', 'f7664060cc52bc6f3d620bcedc94a4b6', 'V', '2016-12-26 06:01:11'),
(101, '267', 'eda80a3d5b344bc40f3bc04f65b7a357', 'V', '2016-12-26 06:01:27'),
(102, '268', '8f121ce07d74717e0b1f21d122e04521', 'V', '2016-12-26 06:01:50'),
(103, '269', '06138bc5af6023646ede0e1f7c1eac75', 'V', '2016-12-26 06:02:37'),
(104, '270', '39059724f73a9969845dfe4146c5660e', 'V', '2016-12-26 06:02:53'),
(105, '271', '7f100b7b36092fb9b06dfb4fac360931', 'V', '2016-12-26 06:03:06'),
(108, '272', '7a614fd06c325499f1680b9896beedeb', 'V', '2016-12-26 06:03:37'),
(109, '273', '4734ba6f3de83d861c3176a6273cac6d', 'V', '2016-12-26 06:03:48'),
(110, '274', 'd947bf06a885db0d477d707121934ff8', 'V', '2016-12-26 06:04:01'),
(111, '275', '63923f49e5241343aa7acb6a06a751e7', 'V', '2016-12-26 06:04:14'),
(112, '276', 'db8e1af0cb3aca1ae2d0018624204529', 'V', '2016-12-26 06:04:31'),
(113, '277', '20f07591c6fcb220ffe637cda29bb3f6', 'V', '2016-12-26 06:04:43'),
(114, '278', '07cdfd23373b17c6b337251c22b7ea57', 'V', '2016-12-26 06:04:59'),
(115, '279', 'd395771085aab05244a4fb8fd91bf4ee', 'V', '2016-12-26 06:05:10'),
(116, '280', '92c8c96e4c37100777c7190b76d28233', 'V', '2016-12-26 06:05:25'),
(117, '281', 'e3796ae838835da0b6f6ea37bcf8bcb7', 'V', '2016-12-26 06:05:38'),
(118, '282', '6a9aeddfc689c1d0e3b9ccc3ab651bc5', 'V', '2016-12-26 06:05:55'),
(119, '283', '0f49c89d1e7298bb9930789c8ed59d48', 'V', '2016-12-26 06:06:10'),
(120, '285', '0e01938fc48a2cfb5f2217fbfb00722d', 'V', '2016-12-26 06:06:27'),
(121, '286', '16a5cdae362b8d27a1d8f8c7b78b4330', 'V', '2016-12-26 06:06:43'),
(122, '287', '918317b57931b6b7a7d29490fe5ec9f9', 'V', '2016-12-26 06:07:14'),
(123, '290', 'f90f2aca5c640289d0a29417bcb63a37', 'V', '2016-12-26 06:07:29'),
(124, '291', '9c838d2e45b2ad1094d42f4ef36764f6', 'V', '2016-12-26 06:08:22'),
(125, '292', '1700002963a49da13542e0726b7bb758', 'V', '2016-12-26 06:08:43'),
(126, '295', '49182f81e6a13cf5eaa496d51fea6406', 'V', '2016-12-26 06:09:09'),
(127, '298', '26e359e83860db1d11b6acca57d8ea88', 'V', '2016-12-26 06:09:23'),
(128, 'SK', '372d30dd2849813ef674855253900679', 'S', '2017-01-11 06:33:44');

-- --------------------------------------------------------

--
-- Table structure for table `login_tbl_leave`
--

CREATE TABLE `login_tbl_leave` (
  `Emp_No` int(11) NOT NULL,
  `Designation` varchar(25) NOT NULL,
  `Division` varchar(25) NOT NULL,
  `category` varchar(25) NOT NULL,
  `Password` text NOT NULL,
  `Emp_Typep` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_tbl_leave`
--

INSERT INTO `login_tbl_leave` (`Emp_No`, `Designation`, `Division`, `category`, `Password`, `Emp_Typep`) VALUES
(1, '', '', '', '698d51a19d8a121ce581499d7b701668', 'ADM'),
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
(70, '', '', '', '7cbbc409ec990f19c78c75bd1e06f215', 'ADM'),
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
-- Table structure for table `main_sub_division`
--

CREATE TABLE `main_sub_division` (
  `div_id` int(5) NOT NULL,
  `main_div_code` varchar(10) NOT NULL,
  `child_div_code` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_sub_division`
--

INSERT INTO `main_sub_division` (`div_id`, `main_div_code`, `child_div_code`) VALUES
(1, '', 28),
(2, '', 28),
(3, '', 29),
(4, '', 30),
(5, '', 29),
(6, '', 29),
(7, '', 28),
(8, '', 28),
(9, '', 28),
(10, '3', 28),
(11, '8', 29),
(12, '9', 28),
(13, '9', 30),
(14, '9', 29),
(15, '9', 29),
(16, '9', 29),
(17, '9', 28);

-- --------------------------------------------------------

--
-- Table structure for table `pc_action_tbl`
--

CREATE TABLE `pc_action_tbl` (
  `action_id` int(5) NOT NULL,
  `action_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_action_tbl`
--

INSERT INTO `pc_action_tbl` (`action_id`, `action_name`) VALUES
(1, 'action1'),
(2, 'action2'),
(3, 'action3'),
(4, 'action4'),
(5, 'action5'),
(6, 'action6');

-- --------------------------------------------------------

--
-- Table structure for table `pc_add_item`
--

CREATE TABLE `pc_add_item` (
  `item_code` int(10) NOT NULL,
  `description` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_add_item`
--

INSERT INTO `pc_add_item` (`item_code`, `description`) VALUES
(10, 'Air Conditioners'),
(11, 'Audio Visual Products(OHP,Multimedia projectors,sc...'),
(12, 'Batteries(Motor Vehicles,UPS,etc.)'),
(13, 'Camera-cameras(compact camers,DSLR camera,video ca...'),
(15, 'camera-CCTV camera & accessories (cameras,DVRs,NVR.'),
(17, 'computer-computer spare parts'),
(18, 'computer-Network Equipment & peripheral accessorie...'),
(19, 'computer-personal computers and laptops'),
(20, 'computer-personal computers and laptops'),
(22, 'mmmmmm');

-- --------------------------------------------------------

--
-- Table structure for table `pc_appoint_tec`
--

CREATE TABLE `pc_appoint_tec` (
  `File_no` varchar(25) NOT NULL,
  `EmpNo` int(10) NOT NULL,
  `type_id` int(1) NOT NULL,
  `Approve` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_appoint_tec`
--

INSERT INTO `pc_appoint_tec` (`File_no`, `EmpNo`, `type_id`, `Approve`) VALUES
('ACC/FN/01', 188, 2, 'Y'),
('ACC/FN/02', 217, 1, ''),
('Acc/FN/03', 72, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `pc_app_tec`
--

CREATE TABLE `pc_app_tec` (
  `pr_app_no` int(50) NOT NULL,
  `file_no` int(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `emp_no` int(50) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `emp_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_app_tec`
--

INSERT INTO `pc_app_tec` (`pr_app_no`, `file_no`, `description`, `emp_no`, `emp_name`, `emp_type`) VALUES
(16, 2, 'prabu', 1, 'System Administrator', 'Member'),
(17, 1, 'doti', 8, 'P. Thilakasiri', 'Chairmen'),
(18, 1, 'doti', 5, 'P. D. C.  Janashanthi', 'Chairmen');

-- --------------------------------------------------------

--
-- Table structure for table `pc_bid_doc`
--

CREATE TABLE `pc_bid_doc` (
  `doc_id` int(20) NOT NULL,
  `file_no` varchar(50) NOT NULL,
  `document` longblob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pc_budget_tbl`
--

CREATE TABLE `pc_budget_tbl` (
  `budg_no` int(11) NOT NULL,
  `Budg_descrip` varchar(50) NOT NULL,
  `budg_code` varchar(20) NOT NULL,
  `short_descrip` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_budget_tbl`
--

INSERT INTO `pc_budget_tbl` (`budg_no`, `Budg_descrip`, `budg_code`, `short_descrip`) VALUES
(1, 'Computers & Softwares', 'BU/CO', 'CO'),
(2, 'Office Equipment', 'BU/OE', 'OE'),
(3, 'Furniture and Fittings', 'BU/FF', 'FF'),
(4, 'Library Books', 'BU/LB', 'LB'),
(5, 'Buildings & Structures', 'BU/BS', 'BS'),
(6, 'Lab Equipment', 'BU/LE', 'LE'),
(7, 'Activities and programmes', 'BU/AP', 'AP'),
(8, 'Motor Vehicles', 'BU/MV', 'MV');

-- --------------------------------------------------------

--
-- Table structure for table `pc_bud_req_hod`
--

CREATE TABLE `pc_bud_req_hod` (
  `total_id` int(11) NOT NULL,
  `bud_year` int(4) NOT NULL,
  `bud_code` varchar(20) NOT NULL,
  `approved` char(1) NOT NULL,
  `total` double NOT NULL,
  `hod` int(4) NOT NULL,
  `appd_total` double NOT NULL,
  `appd_DDG` char(1) NOT NULL,
  `appd_DG` varchar(2) NOT NULL,
  `DG_appdtotal` varchar(10) NOT NULL,
  `appd_finance` varchar(1) NOT NULL,
  `appd_totalfinance` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_bud_req_hod`
--

INSERT INTO `pc_bud_req_hod` (`total_id`, `bud_year`, `bud_code`, `approved`, `total`, `hod`, `appd_total`, `appd_DDG`, `appd_DG`, `DG_appdtotal`, `appd_finance`, `appd_totalfinance`) VALUES
(1, 2017, 'BU/BS', 'Y', 129000, 93, 0, '', '', '', '', 0),
(2, 2017, 'BU/BS', 'Y', 254000, 257, 0, '', '', '', '', 0),
(3, 2017, 'BU/FF', 'Y', 4000, 257, 0, '', '', '', '', 0),
(4, 2017, 'BU/LE', 'Y', 1000, 5, 0, '', '', '', '', 0),
(5, 2017, 'BU/CO', 'Y', 300, 5, 0, '', '', '', '', 0),
(6, 2017, 'BU/AP', 'Y', 1000, 5, 0, '', '', '', '', 0),
(7, 2017, 'BU/BS', 'Y', 200, 5, 0, '', '', '', '', 0),
(8, 2017, 'BU/CO', 'Y', 550, 59, 0, '', '', '', '', 0),
(9, 2017, 'BU/LE', 'Y', 63200, 93, 0, '', '', '', '', 0),
(10, 2017, 'BU/CO', 'Y', 10800, 93, 0, '', '', '', '', 0),
(11, 2017, 'BU/FF', 'Y', 300, 93, 0, '', '', '', '', 0),
(12, 2017, 'BU/AP', 'Y', 6005, 93, 0, '', '', '', '', 0),
(13, 2017, 'BU/OE', 'Y', 3000, 120, 0, '', '', '', '', 0),
(14, 2017, 'BU/CO', 'Y', 500, 120, 0, '', '', '', '', 0),
(15, 2017, 'BU/LE', 'Y', 3000, 120, 0, '', '', '', '', 0),
(16, 2017, 'BU/BS', 'Y', 500, 120, 0, '', '', '', '', 0),
(17, 2017, 'BU/AP', 'Y', 1000, 120, 0, '', '', '', '', 0),
(18, 2017, 'BU/FF', 'Y', 25, 215, 0, '', '', '', '', 0),
(19, 2017, 'BU/CO', 'Y', 150, 149, 0, '', '', '', '', 0),
(20, 2017, 'BU/OE', 'Y', 300, 149, 0, '', '', '', '', 0),
(21, 2017, 'New', 'Y', 3000, 149, 0, '', '', '', '', 0),
(22, 2017, 'BU/AP', 'Y', 1000, 149, 0, '', '', '', '', 0),
(23, 2017, 'BU/AP', 'Y', 2100, 180, 0, '', '', '', '', 0),
(24, 2017, 'BU/CO', 'Y', 2200, 190, 0, '', '', '', '', 0),
(25, 2017, 'BU/AP', 'Y', 1000, 190, 0, '', '', '', '', 0),
(26, 2017, 'BU/LB', 'Y', 500, 192, 0, '', '', '', '', 0),
(27, 2017, 'BU/CO', 'Y', 270, 192, 0, '', '', '', '', 0),
(28, 2017, 'BU/CO', 'Y', 50, 285, 0, '', '', '', '', 0),
(29, 2017, 'BU/OE', 'Y', 25, 285, 0, '', '', '', '', 0),
(30, 2017, 'BU/FF', 'Y', 25, 285, 0, '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pc_bud_req_user`
--

CREATE TABLE `pc_bud_req_user` (
  `id` int(11) NOT NULL,
  `br_no` int(10) NOT NULL,
  `user` int(11) NOT NULL,
  `equ_detail` text NOT NULL,
  `purpose` text NOT NULL,
  `similar_equ` text NOT NULL,
  `reason` text NOT NULL,
  `value` double NOT NULL,
  `target_month` char(10) NOT NULL,
  `req_date` date NOT NULL,
  `bud_year` int(4) NOT NULL,
  `bud_code` varchar(20) NOT NULL,
  `sub_bud_code` varchar(15) NOT NULL,
  `approved` char(1) NOT NULL,
  `Recommend` char(1) NOT NULL,
  `Rec_DDG` char(1) NOT NULL,
  `Rec_DG` char(1) NOT NULL,
  `value_DDG` double NOT NULL,
  `value_DG` double NOT NULL,
  `balance` double NOT NULL,
  `value_fin` double NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'n'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_bud_req_user`
--

INSERT INTO `pc_bud_req_user` (`id`, `br_no`, `user`, `equ_detail`, `purpose`, `similar_equ`, `reason`, `value`, `target_month`, `req_date`, `bud_year`, `bud_code`, `sub_bud_code`, `approved`, `Recommend`, `Rec_DDG`, `Rec_DG`, `value_DDG`, `value_DG`, `balance`, `value_fin`, `status`) VALUES
(2, 1, 5, 'PLC', '', '', '', 0, 'March', '2017-01-03', 2017, 'BU/LE/ISD/17/2', '', 'Y', 'Y', '', '', 0, 0, 300, 300, 'n'),
(73, 66, 149, 'Research & Development', '', '', '', 0, 'July', '2017-01-06', 2017, 'BU/LE/ELE/17/2', '', '', '', '', '', 0, 0, 100, 100, 'n'),
(4, 2, 257, 'Modification of Building "C"', '', '', '', 3000, 'June', '2017-01-03', 2017, 'BU/BS/ADM/17/1', '', 'Y', 'Y', '', '', 0, 0, 2000, 2000, 'n'),
(5, 3, 257, 'Modification of Building "A"', '', '', '', 15000, 'June', '2017-01-03', 2017, 'BU/BS/ADM/17/2', '', 'Y', 'Y', '', '', 0, 0, 8500, 8500, 'n'),
(6, 4, 257, 'Audio Visual System for Auditorium "A"', '', '', '', 4000, 'September', '2017-01-03', 2017, 'BU/BS/ADM/17/3', '', 'Y', 'Y', '', '', 0, 0, 3000, 3000, 'n'),
(7, 5, 257, 'Modification of Auditorium - Building "C"', '', '', '', 2000, 'June', '2017-01-03', 2017, 'BU/BS/ADM/17/4', '', 'Y', 'Y', '', '', 0, 0, 2000, 2000, 'n'),
(8, 6, 257, 'Vehicle Purchase under Financial Leasing Method', '', '', '', 30000, 'December', '2017-01-03', 2017, 'BU/BS/ADM/17/5', '', 'Y', 'Y', '', '', 0, 0, 0, 0, 'n'),
(9, 7, 257, 'Prepare Basement of New Building', '', '', '', 200000, 'July', '2017-01-03', 2017, 'BU/BS/ADM/17/6', '', 'Y', 'Y', '', '', 0, 0, 0, 0, 'n'),
(10, 8, 93, 'Infrastructure Development of ISON Project (SAD)', '', '', '', 3000, 'December', '2017-01-03', 2017, 'BU/BS/AST/17/1', '', 'Y', 'Y', '', '', 0, 0, 2000, 2000, 'n'),
(11, 9, 93, 'Construction of Clean Room for Nano Satellite (SAD)', '', '', '', 3000, 'December', '2017-01-03', 2017, 'BU/BS/STD/17/1', '', 'Y', 'Y', '', '', 0, 0, 0, 0, 'n'),
(12, 10, 93, 'Infrastructure Development of Satellite Ground Station (SAD)', '', '', '', 120000, 'December', '2017-01-03', 2017, 'BU/BS/STA/17/1', '', 'Y', 'Y', '', '', 0, 0, 0, 0, 'n'),
(13, 11, 93, 'Infrastructure of National Astronomical Observatory (SAD)', '', '', '', 3000, 'December', '2017-01-03', 2017, 'BU/BS/AST/17/2', '', 'Y', 'Y', '', '', 0, 0, 0, 0, 'n'),
(14, 12, 257, 'Furniture for Auditorium', '', '', '', 4000, 'June', '2017-01-03', 2017, 'BU/FF/ADM/17/1', '', 'Y', 'Y', '', '', 0, 0, 3000, 3000, 'n'),
(15, 13, 59, 'Computer', '', '', '', 100, 'February', '2017-01-03', 2017, 'BU/CO/ADM/17/1', '', 'Y', 'Y', '', '', 0, 0, 100, 100, 'n'),
(16, 14, 59, 'RFID / ID Card Colour Printer', '', '', '', 450, 'January', '2017-01-03', 2017, 'BU/CO/ADM/17/2', '', 'Y', 'Y', '', '', 0, 0, 450, 450, 'n'),
(17, 15, 285, 'Computers', '', '', '', 50, 'July', '2017-01-03', 2017, 'BU/CO/FIN/17/1', '', 'Y', 'Y', '', '', 0, 0, 50, 50, 'n'),
(18, 16, 285, 'Office Equipment', '', '', '', 25, 'August', '2017-01-03', 2017, 'BU/OE/FIN/17/1', '', 'Y', 'Y', '', '', 0, 0, 25, 25, 'n'),
(19, 17, 285, 'Furniture & Fittings', '', '', '', 25, 'August', '2017-01-03', 2017, 'BU/FF/FIN/17/1', '', 'Y', 'Y', '', '', 0, 0, 25, 25, 'n'),
(21, 18, 192, 'Books - Part 01', '', '', '', 30, 'January', '2017-01-03', 2017, 'BU/AP/LIB/17/1', '', 'Y', 'Y', '', '', 0, 0, 30, 30, 'n'),
(22, 19, 192, 'Books - Part 02', '', '', '', 30, 'February', '2017-01-03', 2017, 'BU/AP/LIB/17/2', '', 'Y', 'Y', '', '', 0, 0, 50, 50, 'n'),
(23, 20, 192, 'Books - Part 03', '', '', '', 30, 'March', '2017-01-03', 2017, 'BU/AP/LIB/17/3', '', 'Y', 'Y', '', '', 0, 0, 50, 50, 'n'),
(24, 21, 192, 'Books - Part 04', '', '', '', 30, 'April', '2017-01-03', 2017, 'BU/AP/LIB/17/4', '', 'Y', 'Y', '', '', 0, 0, 50, 50, 'n'),
(25, 22, 192, 'Books - Part 05', '', '', '', 40, 'May', '2017-01-03', 2017, 'BU/AP/LIB/17/5', '', 'Y', 'Y', '', '', 0, 0, 50, 50, 'n'),
(26, 23, 192, 'Books - Part 06', '', '', '', 40, 'June', '2017-01-03', 2017, 'BU/AP/LIB/17/6', '', 'Y', 'Y', '', '', 0, 0, 50, 50, 'n'),
(27, 24, 192, 'Books - Part 07', '', '', '', 50, 'July', '2017-01-03', 2017, 'BU/AP/LIB/17/7', '', 'Y', 'Y', '', '', 0, 0, 50, 50, 'n'),
(28, 25, 192, 'Books - Part 08', '', '', '', 50, 'August', '2017-01-03', 2017, 'BU/AP/LIB/17/8', '', 'Y', 'Y', '', '', 0, 0, 50, 50, 'n'),
(29, 26, 192, 'Books - Part 09', '', '', '', 50, 'September', '2017-01-03', 2017, 'BU/AP/LIB/17/9', '', 'Y', 'Y', '', '', 0, 0, 50, 50, 'n'),
(30, 27, 192, 'Books - Part 10', '', '', '', 50, 'October', '2017-01-03', 2017, 'BU/AP/LIB/17/10', '', 'Y', 'Y', '', '', 0, 0, 50, 50, 'n'),
(31, 28, 192, 'Books - Part 11', '', '', '', 50, 'November', '2017-01-03', 2017, 'BU/AP/LIB/17/11', '', 'Y', 'Y', '', '', 0, 0, 50, 50, 'n'),
(32, 29, 192, 'Books - Part 12', '', '', '', 50, 'December', '2017-01-03', 2017, 'BU/AP/LIB/17/12', '', 'Y', 'Y', '', '', 0, 0, 50, 50, 'n'),
(33, 30, 192, '02 Nos. Computers for Computer Room', '', '', '', 250, 'March', '2017-01-03', 2017, 'BU/CO/LIB/17/1', '', 'Y', 'Y', '', '', 0, 0, 250, 250, 'n'),
(34, 31, 192, 'WiFi Router', '', '', '', 20, 'February', '2017-01-03', 2017, 'BU/CO/LIB/17/2', '', 'Y', 'Y', '', '', 0, 0, 20, 20, 'n'),
(35, 32, 149, 'PCs/Accessories/Peripherals', '', '', '', 150, 'July', '2017-01-03', 2017, 'BU/CO/ELE/17/1', '', 'Y', 'Y', '', '', 0, 0, 150, 150, 'n'),
(36, 33, 149, 'Office Equipment', '', '', '', 300, 'July', '2017-01-03', 2017, 'BU/OE/ELE/17/1', '', 'Y', 'Y', '', '', 0, 0, 200, 200, 'n'),
(37, 34, 149, 'Lab Equipment', '', '', '', 3000, 'July', '2017-01-03', 2017, 'BU/LE/ELE/17/1', '', 'Y', 'Y', '', '', 0, 0, 3000, 3000, 'n'),
(38, 35, 120, 'RF Radiation Testing Facility', '', '', '', 3000, 'April', '2017-01-03', 2017, 'BU/OE/COM/17/1', '', 'Y', 'Y', '', '', 0, 0, 3000, 3000, 'n'),
(39, 36, 120, 'Computers & Related Peripherals', '', '', '', 500, 'March', '2017-01-03', 2017, 'BU/CO/COM/17/1', '', 'Y', 'Y', '', '', 0, 0, 500, 500, 'n'),
(40, 37, 120, 'Development Tools (Mechatronics & Embedded Systems) ', '', '', '', 2000, 'May', '2017-01-03', 2017, 'BU/LE/COM/17/1', '', 'Y', 'Y', '', '', 0, 0, 3000, 3000, 'n'),
(41, 38, 120, 'Laboratary Repair & Upgrading', '', '', '', 500, 'April', '2017-01-03', 2017, 'BU/OE', '', 'Y', 'Y', '', '', 0, 0, 500, 500, 'n'),
(42, 39, 120, 'RF Equipment Calibration ', '', '', '', 1000, 'February', '2017-01-03', 2017, 'BU/LE/COM/17/2', '', 'Y', 'Y', '', '', 0, 0, 1000, 1000, 'n'),
(43, 40, 93, 'Satellite Ground Station Equipment', '', '', '', 10000, 'December', '2017-01-04', 2017, 'BU/LE/STA/17/1', '', 'Y', 'Y', '', '', 0, 0, 0, 0, 'n'),
(44, 41, 93, 'UAV Photogrammetry Software', '', '', '', 1800, 'December', '2017-01-04', 2017, 'BU/CO/STA/17/1', '', 'Y', 'Y', '', '', 0, 0, 1800, 1800, 'n'),
(45, 42, 93, 'GNSS Surveying System', '', '', '', 2500, 'December', '2017-01-04', 2017, 'BU/LE/STA/17/2', '', 'Y', 'Y', '', '', 0, 0, 2500, 2500, 'n'),
(46, 43, 93, 'Workstation Computer', '', '', '', 4000, 'December', '2017-01-04', 2017, 'BU/CO/STD/17/1', '', 'Y', 'Y', '', '', 0, 0, 3000, 3000, 'n'),
(47, 44, 93, 'Design & Analysis Software', '', '', '', 5000, 'December', '2017-01-04', 2017, 'BU/CO/STD/17/2', '', 'Y', 'Y', '', '', 0, 0, 3000, 3000, 'n'),
(48, 45, 93, 'Nano Satellite Project Equipment ', '', '', '', 50000, 'December', '2017-01-04', 2017, 'BU/LE/STD/17/1', '', 'Y', 'Y', '', '', 0, 0, 8500, 8500, 'n'),
(49, 46, 93, 'Furniture - Executive Tables & Chairs', '', '', '', 300, 'December', '2017-01-04', 2017, 'BU/FF/STD/17/1', '', 'Y', 'Y', '', '', 0, 0, 300, 300, 'n'),
(50, 47, 93, 'Diffraction Grating', '', '', '', 400, 'December', '2017-01-04', 2017, 'BU/LE/AST/17/1', '', 'Y', 'Y', '', '', 0, 0, 400, 400, 'n'),
(51, 48, 93, 'Optical Filters', '', '', '', 300, 'December', '2017-01-04', 2017, 'BU/LE/AST/17/2', '', 'Y', 'Y', '', '', 0, 0, 300, 300, 'n'),
(52, 49, 190, 'Computers & Accessories', '', '', '', 1800, 'March', '2017-01-04', 2017, 'BU/CO/ITD/17/1', '', 'Y', 'Y', '', '', 0, 0, 1800, 1800, 'n'),
(53, 50, 190, 'Project Based Equipment', '', '', '', 150, 'June', '2017-01-04', 2017, 'BU/CO/ITD/17/3', '', 'Y', 'Y', '', '', 0, 0, 150, 150, 'n'),
(54, 51, 190, 'Internal Network Maintenance', '', '', '', 250, 'January', '2017-01-04', 2017, 'BU/CO/ITD/17/2', '', 'Y', 'Y', '', '', 0, 0, 250, 250, 'n'),
(55, 52, 5, 'Test & Measuring Equipment and Accessories - Lamp Rack', '', '', '', 1000, 'August', '2017-01-04', 2017, 'BU/LE/ISD/17/1', '', 'Y', 'Y', '', '', 0, 0, 1000, 1000, 'n'),
(56, 53, 5, 'UPS', '', '', '', 200, 'August', '2017-01-04', 2017, 'BU/OE/ISD/17/1', '', 'Y', 'Y', '', '', 0, 0, 200, 200, 'n'),
(57, 54, 5, 'Printer', '', '', '', 100, 'July', '2017-01-04', 2017, 'BU/CO/ISD/17/2', '', 'Y', 'Y', '', '', 0, 0, 100, 100, 'n'),
(59, 55, 215, 'Computer Table & Chair', '', '', '', 25, 'February', '2017-01-04', 2017, 'BU/FF/IAD/17/1', '', 'Y', 'Y', '', '', 0, 0, 25, 25, 'n'),
(61, 56, 180, 'Capacity Building', '', '', '', 2100, 'December', '2017-01-04', 2017, 'BU/AP/TTD/17/1', '', 'Y', 'Y', '', '', 0, 0, 4000, 4000, 'n'),
(62, 57, 120, 'HR Capacity Development', '', '', '', 1000, 'May', '2017-01-04', 2017, 'BU/AP/COM/17/1', '', 'Y', 'Y', '', '', 0, 0, 1000, 1000, 'n'),
(63, 58, 149, 'Capacity Building though Foriegn Collaboration (In the area of test and measurement service ', '', '', '', 1000, 'December', '2017-01-04', 2017, 'BU/AP/ELE/17/1', '', 'Y', 'Y', '', '', 0, 0, 1000, 1000, 'n'),
(65, 59, 190, 'Human Resource Development', '', '', '', 1000, 'January', '2017-01-04', 2017, 'BU/AP/ITD/17/1', '', 'Y', 'Y', '', '', 0, 0, 1000, 1000, 'n'),
(66, 60, 5, 'Foreign Training for LMS/Calibration project with foreign collaboration/Funds', '', '', '', 1000, 'December', '2017-01-04', 2017, 'BU/AP/ISD/17/1', '', 'Y', 'Y', '', '', 0, 0, 700, 700, 'n'),
(68, 61, 93, 'Capacity Building Programs - Workshop & Consultancy in Space Technology Applications', '', '', '', 1000, 'December', '2017-01-04', 2017, 'BU/AP/STA/17/1', '', 'Y', 'Y', '', '', 0, 0, 1000, 1000, 'n'),
(69, 62, 93, 'Capacity Building Programes in Space Technology', '', '', '', 4755, 'December', '2017-01-04', 2017, 'BU/AP/STD/17/1', '', 'Y', 'Y', '', '', 0, 0, 0, 0, 'n'),
(81, 73, 93, 'Capacity building in Nanosatellite - Part 01', '', '', '', 0, 'July', '2017-03-06', 2017, 'BU/AP/AST/17/7', '', '', '', '', '', 0, 0, 5000, 5000, 'n'),
(71, 64, 93, 'Capacity Building Programs - Astronomy Teacher Training Program', '', '', '', 200, 'December', '2017-01-04', 2017, 'BU/AP/AST/17/1', '', 'Y', 'Y', '', '', 0, 0, 200, 200, 'n'),
(72, 65, 93, 'Capacity Building Programs - Water Rocket making workshop & competition', '', '', '', 50, 'December', '2017-01-04', 2017, 'BU/AP/AST/17/2', '', 'Y', 'Y', '', '', 0, 0, 50, 50, 'n'),
(74, 67, 120, 'Laboratory repair & Upgrading (COM)Â ', '', '', '', 0, 'March', '2017-03-06', 2017, 'BU/BS/COM/17/1', '', '', '', '', '', 0, 0, 2000, 2000, 'n'),
(75, 68, 93, 'Acquisition of Earth Groundstation Satelite Data Part 01', '', '', '', 0, 'June', '2017-03-06', 2017, 'BU/LE/AST/17/6', '', '', '', '', '', 0, 0, 1000, 1000, 'n'),
(76, 69, 93, 'Acquisition of Earth Groundstation Satelite Data Part 02', '', '', '', 0, 'October', '2017-03-06', 2017, 'BU/LE/AST/17/7', '', '', '', '', '', 0, 0, 1855, 1855, 'n'),
(77, 70, 93, '14" Telescope', '', '', '', 0, 'February', '2017-03-06', 2017, 'BU/LE/AST/17/8', '', '', '', '', '', 0, 0, 0, 0, 'n'),
(78, 71, 5, 'Furnitute & Fittings', '', '', '', 200, 'August', '2017-03-06', 2017, 'BU/FF/ISD/17/1', '', '', '', '', '', 0, 0, 200, 200, 'n'),
(79, 72, 93, 'Consultation Services For Designing of Ground Station - Part 01', '', '', '', 0, 'June', '2017-03-06', 2017, 'BU/AP/AST/17/6', '', '', '', '', '', 0, 0, 5000, 5000, 'n'),
(80, 73, 93, 'Consultation Services For Designing of Ground Station - Part 02', '', '', '', 0, 'October', '2017-03-06', 2017, 'BU/AP/AST/17/7', '', '', '', '', '', 0, 0, 5000, 5000, 'n'),
(82, 74, 93, 'Capacity building in Nanosatellite - Part 02', '', '', '', 0, 'November', '2017-03-06', 2017, 'BU/AP/AST/17/8', '', '', '', '', '', 0, 0, 7000, 7000, 'n');

-- --------------------------------------------------------

--
-- Table structure for table `pc_bud_req_user_old`
--

CREATE TABLE `pc_bud_req_user_old` (
  `id` int(11) NOT NULL,
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
  `approved` char(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_bud_req_user_old`
--

INSERT INTO `pc_bud_req_user_old` (`id`, `pr_no`, `user`, `equ_detail`, `purpose`, `similar_equ`, `reason`, `value`, `target_month`, `req_date`, `bud_year`, `bud_code`, `approved`) VALUES
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
(58, 1, 5, 'ww', 'ffaadd22', '77', 'bhh', 0, '0', '0000-00-00', 0, '0', 'Y'),
(59, 0, 0, '', '', '', '', 0, '', '0000-00-00', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pc_confirm_action`
--

CREATE TABLE `pc_confirm_action` (
  `confirm_id` int(4) NOT NULL,
  `file_no` varchar(10) NOT NULL,
  `action_from` varchar(10) NOT NULL,
  `action_to` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_confirm_action`
--

INSERT INTO `pc_confirm_action` (`confirm_id`, `file_no`, `action_from`, `action_to`) VALUES
(1, '1', '1', '2'),
(2, '2', '1', '2'),
(3, '1', '2', '3'),
(4, '2', '2', '1'),
(5, '1', '3', '4'),
(6, '1', '4', '5'),
(7, '1', '2', '3'),
(8, 'AC/P17W1', '1', '2'),
(9, 'AC/P17W1', '2', '3'),
(10, 'AC/P17W1', '3', '4');

-- --------------------------------------------------------

--
-- Table structure for table `pc_create_spec`
--

CREATE TABLE `pc_create_spec` (
  `spec_id` int(10) NOT NULL,
  `pr_no` int(10) NOT NULL,
  `equipment` int(10) NOT NULL,
  `technical` varchar(255) NOT NULL,
  `general` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_create_spec`
--

INSERT INTO `pc_create_spec` (`spec_id`, `pr_no`, `equipment`, `technical`, `general`) VALUES
(4, 10, 1, 'tedghgkhjkh\r\ngcxzgcugcz\r\nyuzgfhjgzsf\r\nmnbfjsdjff\r\noiuyigjkfgfkjdf', 'hkgkdsfgkf\r\nnbkdjsfgdsf\r\npoidfhsjfj\r\nwvhdfgysdgu\r\n'),
(3, 3, 2, 'trdcgmhgmb\r\nrtfgcvbnmbkjm\r\nwerdtfc\r\n\r\n', 'ghfjhj\r\ntghhg\r\ncxvbn\r\nrtryuihhju\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `pc_doc_type_tbl`
--

CREATE TABLE `pc_doc_type_tbl` (
  `doc_type_id` int(10) NOT NULL,
  `doc_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_doc_type_tbl`
--

INSERT INTO `pc_doc_type_tbl` (`doc_type_id`, `doc_type`) VALUES
(1, 'Letter'),
(2, 'Tender Document');

-- --------------------------------------------------------

--
-- Table structure for table `pc_file_tbl`
--

CREATE TABLE `pc_file_tbl` (
  `id` int(11) NOT NULL,
  `file_no` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `pr_no` int(11) NOT NULL,
  `pr_type_no` varchar(25) NOT NULL,
  `pr_method` int(11) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_file_tbl`
--

INSERT INTO `pc_file_tbl` (`id`, `file_no`, `year`, `pr_no`, `pr_type_no`, `pr_method`, `description`) VALUES
(27, '1', 17, 10, '1', 0, 'doti'),
(28, '2', 17, 10, '1', 0, 'prabu'),
(29, 'AC/P17W1', 17, 3, '2', 0, 'malshani'),
(30, 'AC/P17W3', 17, 0, '1', 0, ''),
(31, 'AC/P17W4', 17, 10, '1', 0, ''),
(32, 'AC/P17W5', 17, 3, '1', 0, ''),
(33, 'AC/P17S2', 17, 10, '2', 0, ''),
(34, 'AC/P17S3', 17, 3, '2', 0, ''),
(35, 'AC/P17S4', 17, 5, '2', 0, ''),
(36, 'AC/P17S1', 17, 10, '3', 0, ''),
(37, 'AC/P17S5', 17, 3, '2', 0, ''),
(38, 'AC/P17S6', 17, 5, '2', 0, ''),
(39, 'AC/P17W7', 17, 10, '2', 0, ''),
(40, 'AC/P17S8', 17, 10, '2', 0, ''),
(41, 'AC/P17W6', 17, 0, '1', 0, ''),
(42, 'AC/P17G9', 17, 10, '2', 0, ''),
(43, 'AC/P17S2', 17, 3, '3', 0, ''),
(44, 'AC/P17W7', 17, 10, '1', 0, ''),
(45, 'AC/P17S3', 17, 5, '3', 0, ''),
(46, 'AC/P17G10', 17, 3, '2', 0, ''),
(47, 'AC/P171', 17, 10, '--New Entry--', 0, ''),
(48, 'AC/P17G11', 17, 3, '2', 0, ''),
(49, 'AC/P17W8', 17, 10, '1', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `pc_pdf_tbl`
--

CREATE TABLE `pc_pdf_tbl` (
  `pdf_id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `pr_no` int(10) NOT NULL,
  `doc_type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_pdf_tbl`
--

INSERT INTO `pc_pdf_tbl` (`pdf_id`, `description`, `filename`, `pr_no`, `doc_type`) VALUES
(25, 'fghfyhgjyhb', 'letternw.pdf', 3, 'Letter'),
(23, 'doc1', 'Academic Calendar2017_v3.pdf', 10, 'Tender Document'),
(24, 'doc2', 'letternw.pdf', 4, 'Letter'),
(26, 'doc new', 'letternw.pdf', 6, '1'),
(27, 'vffgfh', 'ieee.pdf', 3, '1');

-- --------------------------------------------------------

--
-- Table structure for table `pc_procurement_method_tbl`
--

CREATE TABLE `pc_procurement_method_tbl` (
  `pro_id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_procurement_method_tbl`
--

INSERT INTO `pc_procurement_method_tbl` (`pro_id`, `description`) VALUES
(1, 'National Competitive Bidding (NCB)'),
(2, 'Limited National Bidding (LNB)'),
(3, 'Direct Procurement (DP)');

-- --------------------------------------------------------

--
-- Table structure for table `pc_pr_deny`
--

CREATE TABLE `pc_pr_deny` (
  `br_no` int(10) NOT NULL,
  `reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_pr_deny`
--

INSERT INTO `pc_pr_deny` (`br_no`, `reason`) VALUES
(1, ''),
(19, '');

-- --------------------------------------------------------

--
-- Table structure for table `pc_pr_dtls_tbl`
--

CREATE TABLE `pc_pr_dtls_tbl` (
  `pr_dtls_code` int(11) NOT NULL,
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
  `ap_code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_pr_dtls_tbl`
--

INSERT INTO `pc_pr_dtls_tbl` (`pr_dtls_code`, `pr_no`, `applicant`, `serial_no`, `DivisionCode`, `Name_officer`, `descrip`, `pr_date`, `quantity`, `pur_ type`, `purpose`, `DesigCode`, `Dtls_of_equipment`, `est_cost`, `act_cost`, `bud_pro_des`, `alter_source`, `provision_des`, `simiar_item`, `similar_des`, `head_rec`, `head_rec_date`, `head_rec_sta`, `rec_ddg`, `rec_ddg_date`, `rec_ddg_sta`, `autri_dg`, `autri_dg_date`, `autri_dg_sta`, `usage_no`, `req_fulfill`, `target_month`, `pro_code`, `pr_type_no`, `file_no`, `remarks`, `ap_code`) VALUES
(11, '', 93, 0, 0, '', '', '0000-00-00', 0, '', '          dssd        ', 0, '', 0, 0, '', '', '', 0, 'adsd', 0, '0000-00-00', '', 0, '0000-00-00', '', 0, '0000-00-00', '', 0, '', '', '', 0, '', NULL, ''),
(13, '3', 93, 0, 7, 'test', 'nfjfkfjk', '2016-11-08', 1, '', '    ddfd', 2, 'sss', 111, 0, '', 'fgfg', '   xdd ', 77, 'fgg', 0, '0000-00-00', '', 0, '0000-00-00', '', 0, '0000-00-00', '', 1, 'bh', 'October', '', 1, '2', NULL, ''),
(14, '', 93, 0, 0, '', '', '0000-00-00', 0, '', '          dssd        ', 0, '', 0, 0, '', '', '', 0, 'adsd', 0, '0000-00-00', '', 0, '0000-00-00', '', 0, '0000-00-00', '', 0, '', '', '', 0, '', NULL, ''),
(15, '5', 93, 0, 0, '', 'njdjfkdjfkdfdk', '2016-11-09', 0, '', '    ', 0, '', 0, 0, '', '', '    ', 0, '', 0, '0000-00-00', '', 0, '0000-00-00', '', 0, '0000-00-00', '', 0, '', 'August', '', 0, '1', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `pc_pr_type`
--

CREATE TABLE `pc_pr_type` (
  `pr_type_no` int(11) NOT NULL,
  `description` varchar(10) NOT NULL,
  `short_name` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_pr_type`
--

INSERT INTO `pc_pr_type` (`pr_type_no`, `description`, `short_name`) VALUES
(1, 'Works', 'W'),
(2, 'Goods', 'G'),
(3, 'Services', 'S');

-- --------------------------------------------------------

--
-- Table structure for table `pc_pur_request`
--

CREATE TABLE `pc_pur_request` (
  `per_id` int(10) NOT NULL,
  `pr_no` int(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `Year` int(11) NOT NULL,
  `min_requirement` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `Officer_name` varchar(255) NOT NULL,
  `Designation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_pur_request`
--

INSERT INTO `pc_pur_request` (`per_id`, `pr_no`, `description`, `Year`, `min_requirement`, `category`, `Officer_name`, `Designation`) VALUES
(2, 3, '  dhfj', 2015, 'rthtrj', 'CPU Specification', 'M.P.L. Chandrasiri', '10'),
(3, 6, '  bvnbbvm', 2016, 'fgjgfkhh', 'Monitor Specifications', '', ' 11'),
(14, 6, 'dsdsdsd', 2015, 'asasasa', 'Keyboard Specification', '', ' 11'),
(15, 10, '  lolol', 2016, 'kokoko', 'Mouse Specification', '', ' 7'),
(16, 4, 'wewewerere', 2017, 'mkmkmkm', 'CPU Specification', 'J. A. K.  Jayakody', '7'),
(17, 4, '  mmmmmm', 2017, 'nnnnnnnnnn\r\n', 'Monitor Specifications', '', ''),
(19, 5, '  jijohu', 2017, 'fgdhfdg', 'Terms & Specifications', 'G. D. N.  De Silva', '8'),
(20, 5, 'wewrwerwsgs', 2016, 'nbnbnbnb', 'Cartridge Specifications', '', ''),
(21, 1, '  werwrwt', 2015, 'rgdhdfgh', 'Printer Specifications', 'W. B. A. Weerawarnasuriya', '8');

-- --------------------------------------------------------

--
-- Table structure for table `pc_shdl_task_tbl`
--

CREATE TABLE `pc_shdl_task_tbl` (
  `sh_no` int(11) NOT NULL,
  `sh_des` varchar(25) NOT NULL,
  `date_range` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_shdl_task_tbl`
--

INSERT INTO `pc_shdl_task_tbl` (`sh_no`, `sh_des`, `date_range`) VALUES
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
-- Table structure for table `pc_spec`
--

CREATE TABLE `pc_spec` (
  `spec_id` int(10) NOT NULL,
  `prno` int(5) NOT NULL,
  `spec_name` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_spec`
--

INSERT INTO `pc_spec` (`spec_id`, `prno`, `spec_name`) VALUES
(1, 0, 'Software'),
(2, 0, 'Components'),
(3, 0, 'General Specifications'),
(6, 3, 'ljkjkjllk');

-- --------------------------------------------------------

--
-- Table structure for table `pc_spec_equipment`
--

CREATE TABLE `pc_spec_equipment` (
  `equip_id` int(10) NOT NULL,
  `equip_desc` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_spec_equipment`
--

INSERT INTO `pc_spec_equipment` (`equip_id`, `equip_desc`) VALUES
(1, 'Computer'),
(2, 'Printer');

-- --------------------------------------------------------

--
-- Table structure for table `pc_spec_main_cat`
--

CREATE TABLE `pc_spec_main_cat` (
  `main_id` int(10) NOT NULL,
  `main_desc` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_spec_main_cat`
--

INSERT INTO `pc_spec_main_cat` (`main_id`, `main_desc`) VALUES
(1, 'Technical'),
(2, 'Genaral');

-- --------------------------------------------------------

--
-- Table structure for table `pc_sub_action_tbl`
--

CREATE TABLE `pc_sub_action_tbl` (
  `id` int(10) NOT NULL,
  `desc` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_sub_action_tbl`
--

INSERT INTO `pc_sub_action_tbl` (`id`, `desc`) VALUES
(1, 'User'),
(2, 'Director of Communication'),
(3, 'Director of Electronics'),
(4, 'Acting Director ISD'),
(5, 'Acting Director IT'),
(6, 'Acting Director Space'),
(7, 'Senior Deputy Director IR'),
(8, 'Senior Deputy Director Finance'),
(9, 'AD(Admin)'),
(10, 'AD(IA)'),
(11, 'DD(Media)'),
(12, 'DD(LS)'),
(13, 'DDG(A&F)'),
(14, 'DDG(TO)');

-- --------------------------------------------------------

--
-- Table structure for table `pc_sub_spec`
--

CREATE TABLE `pc_sub_spec` (
  `sub_id` int(10) NOT NULL,
  `main_spec` int(10) NOT NULL,
  `sub_spec` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_sub_spec`
--

INSERT INTO `pc_sub_spec` (`sub_id`, `main_spec`, `sub_spec`) VALUES
(1, 1, 'Included software'),
(2, 2, 'gjghfhjgk');

-- --------------------------------------------------------

--
-- Table structure for table `pc_sub_specification`
--

CREATE TABLE `pc_sub_specification` (
  `id` int(10) NOT NULL,
  `equipment` int(10) NOT NULL,
  `main_spec` int(10) NOT NULL,
  `sub_spec1` varchar(200) DEFAULT NULL,
  `sub_spec2` varchar(200) DEFAULT NULL,
  `sub_spec3` varchar(200) DEFAULT NULL,
  `sub_spec4` varchar(200) DEFAULT NULL,
  `sub_spec5` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_sub_specification`
--

INSERT INTO `pc_sub_specification` (`id`, `equipment`, `main_spec`, `sub_spec1`, `sub_spec2`, `sub_spec3`, `sub_spec4`, `sub_spec5`) VALUES
(12, 2, 1, 'trdcgmhgmb', 'rtfgcvbnmbkjm', 'werdtfc', '', ''),
(11, 2, 2, 'ghfjhj', 'tghhg', 'cxvbn', 'rtryuihhju', ''),
(10, 1, 2, 'hkgkdsfgkf', 'nbkdjsfgdsf', 'poidfhsjfj', 'wvhdfgysdgu', ''),
(9, 1, 1, 'tedghgkhjkh', 'gcxzgcugcz', 'yuzgfhjgzsf', 'mnbfjsdjff', 'oiuyigjkfgfkjdf');

-- --------------------------------------------------------

--
-- Table structure for table `pc_supplier`
--

CREATE TABLE `pc_supplier` (
  `id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `tel` int(20) NOT NULL,
  `fax` int(20) NOT NULL,
  `crdt` varchar(1001) NOT NULL,
  `vcrdt` int(100) NOT NULL,
  `file_ref` int(20) NOT NULL,
  `web` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_supplier`
--

INSERT INTO `pc_supplier` (`id`, `name`, `address`, `tel`, `fax`, `crdt`, `vcrdt`, `file_ref`, `web`, `email`) VALUES
(64, 'dffgfg', 'fgfgfgf', 444, 32311, 'fgfgg', 4455, 44556666, 'bhnn', 'hghghhjh'),
(65, 'asada', 'dsdsds', 3433, 335, 'fhghg', 455, 5454, 'fgghgh', 'hghghg');

-- --------------------------------------------------------

--
-- Table structure for table `pc_supplier_item`
--

CREATE TABLE `pc_supplier_item` (
  `id` int(10) NOT NULL,
  `sup_name` varchar(100) NOT NULL,
  `sup_item` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_supplier_item`
--

INSERT INTO `pc_supplier_item` (`id`, `sup_name`, `sup_item`) VALUES
(12, 'dffgfg', '11'),
(13, 'dffgfg', '20'),
(14, 'asada', '12'),
(15, 'dffgfg', '11'),
(9, 'asada', '12'),
(10, 'dffgfg', '10'),
(11, 'asada', '19');

-- --------------------------------------------------------

--
-- Table structure for table `pc_transfer_bud`
--

CREATE TABLE `pc_transfer_bud` (
  `id` int(11) NOT NULL,
  `req_user` varchar(15) NOT NULL,
  `tra_user` varchar(15) NOT NULL,
  `bud_code_frm` varchar(20) NOT NULL,
  `bud_code_to` varchar(20) NOT NULL,
  `amount` double NOT NULL,
  `req_date` date NOT NULL,
  `tra_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pc_usage_dtls_tbl`
--

CREATE TABLE `pc_usage_dtls_tbl` (
  `usage_no` int(11) NOT NULL,
  `usg_descrip` varchar(100) NOT NULL,
  `usage_nm` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc_usage_dtls_tbl`
--

INSERT INTO `pc_usage_dtls_tbl` (`usage_no`, `usg_descrip`, `usage_nm`) VALUES
(1, 'Normal office works', 'Normal'),
(2, 'Project related works', 'Project');

-- --------------------------------------------------------

--
-- Table structure for table `pr_projects`
--

CREATE TABLE `pr_projects` (
  `serial_no` int(11) NOT NULL,
  `year` int(4) NOT NULL,
  `div_code` int(11) NOT NULL,
  `pt_code` int(11) NOT NULL,
  `description` varchar(6) NOT NULL,
  `code` varchar(19) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `apcode` varchar(10) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `ptype` varchar(20) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `confirm` varchar(1) NOT NULL DEFAULT 'n',
  `sk_code` varchar(15) NOT NULL,
  `p_close` varchar(1) NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pr_projects`
--

INSERT INTO `pr_projects` (`serial_no`, `year`, `div_code`, `pt_code`, `description`, `code`, `pname`, `apcode`, `startdate`, `enddate`, `ptype`, `cname`, `confirm`, `sk_code`, `p_close`) VALUES
(1, 2017, 8, 3, 'PLC1ST', '2017/ISD/COU/PLC1ST', 'Programmable Logic Controller Course 2017 1st', '5.1.1', '2017-01-02', '2017-02-24', 'Client based', 'Industry', 'y', '17IS001', 'y'),
(2, 2017, 8, 4, 'CALBRN', '2017/ISD/CAL/CALBRN', 'CALIBRAION 2017', '5.2..2', '2017-01-01', '2017-12-31', 'Client based', 'Industry', 'y', '17IS002', 'n'),
(3, 2017, 8, 7, 'LMStst', '2017/ISD/PFT/LMStst', 'Light Measurement', '5.2.1', '2017-01-01', '2017-12-31', 'Client based', 'Industry', 'y', '17IS003', 'n'),
(8, 2017, 9, 8, 'MISACC', '2017/ITD/PRJ/MISACC', 'Integrated MIS for ACCIMT', '4.3', '2017-01-02', '2017-12-29', 'Inhouse', 'ACCIMT', 'n', '', 'n'),
(9, 2017, 9, 8, 'BPUCOL', '2017/ITD/PRJ/BPUCOL', 'External Student Registration and Examination syst', '4.1.1', '2017-01-02', '2017-12-29', 'Client based', 'Buddhist and Pali university-Colombo', 'y', '', 'n'),
(10, 2017, 6, 7, 'BAT-Q1', '2017/ELE/PFT/BAT-Q1', 'Battery Testing-Q1', '1.3.1', '2017-01-01', '2017-03-31', 'Client based', 'Industry', 'y', '17EL001', 'n'),
(11, 2017, 6, 5, 'RMLEEL', '2017/ELE/IHS/RMLEEL', 'RepMainLE', '1.6', '2017-01-01', '2017-12-31', 'Inhouse', 'ACCIMT', 'y', '17EL002', 'n'),
(12, 2017, 9, 8, 'DROMON', '2017/ITD/PRJ/DROMON', 'Rainfall Data Collection System', '4.1.1', '2017-01-02', '2017-03-31', 'Client based', 'Department of Agrarian Development', 'n', '', 'n'),
(14, 2017, 6, 8, 'LFTTAB', '2017/ELE/PRJ/LFTTAB', 'Lift Table', '1.3', '2017-01-19', '2017-03-31', 'Inhouse', 'ACCIMT', 'y', '17EL003', 'n'),
(15, 2017, 6, 8, 'WSDLPU', '2017/ELE/PRJ/WSDLPU', 'Wireless Secured Data Logger', '1.1.2', '2017-01-01', '2017-12-31', 'Client based', 'Public Utilities Commission of Sri Lanka', 'y', '17EL004', 'n'),
(16, 2017, 6, 8, 'AISELE', '2017/ELE/PRJ/AISELE', 'Automated Irrigation System', '1.1.4', '2017-01-01', '2017-12-31', 'Inhouse', 'ACCIMT', 'y', '17EL005', 'n'),
(17, 2017, 6, 8, 'POEBDC', '2017/ELE/PRJ/POEBDC', 'POE based Digital Clock', '1.1.3', '2017-01-01', '2017-12-31', 'Inhouse', 'ACCIMT', 'y', '17EL006', 'n'),
(18, 2017, 6, 8, 'HPSACM', '2017/ELE/PRJ/HPSACM', 'High Performance Surge Absorber for Common Mode', '1.1.1', '2017-01-01', '2017-12-31', 'Inhouse', 'ACCIMT', 'y', '17EL007', 'n'),
(19, 2017, 16, 8, 'MIODSS', '2017/AST/PRJ/MIODSS', 'Mode Identification of Oscillations of Delta Scuti', '3.1.1', '2017-01-02', '2018-12-31', 'Inhouse', '', 'y', '', 'n'),
(20, 2017, 16, 8, 'SSUUMA', '2017/AST/PRJ/SSUUMA', 'Study and Investigate internal characteristics of ', '3.1.2', '2017-01-02', '2017-12-29', 'Inhouse', '', 'y', '', 'n'),
(21, 2017, 16, 8, 'CMSOTH', '2017/AST/PRJ/CMSOTH', 'Comet morphology studies on 41P/Tuttle-Giacobini-K', '3.1.3', '2017-01-02', '2017-12-29', 'Inhouse', '', 'y', '', 'n'),
(22, 2017, 16, 8, 'RNKMSD', '2017/AST/PRJ/RNKMSD', 'Research using NASA kepler mission science data', '3.1.4', '2017-01-02', '2017-12-29', 'Inhouse', '', 'y', '', 'n'),
(23, 2017, 16, 8, 'CRPWLU', '2017/AST/PRJ/CRPWLU', 'Collaborative Research Projects with local Univers', '3.1.5', '2017-01-02', '2017-06-30', 'Inhouse', 'University of Sri Jayawardenapura', 'n', '', 'n'),
(24, 2017, 16, 3, 'WOITPA', '2017/AST/COU/WOITPA', 'Workshop on introduction to Practical Astronomy', '3.2.1', '2017-12-01', '2017-12-29', 'Inhouse', '', 'y', '', 'n'),
(25, 2017, 16, 3, 'ASTTTP', '2017/AST/COU/ASTTTP', 'Astronomy teacher training program', '3.2.2', '2017-08-07', '2017-08-31', 'Inhouse', '', 'n', '', 'n'),
(26, 2017, 16, 2, 'EDUVAF', '2017/AST/EVT/EDUVAF', 'Educational visits to ACCIMT facilities', '3.3.1', '2017-02-02', '2017-02-02', 'Inhouse', '', 'y', '', 'n'),
(27, 2017, 16, 2, 'WRWWRC', '2017/AST/EVT/WRWWRC', 'Water rocket educational workshop & the - Water Ro', '3.3.2 ', '2017-02-02', '2017-02-02', 'Inhouse', '', 'n', '', 'n'),
(28, 2017, 11, 8, 'ROUAVI', '2017/STA/PRJ/ROUAVI', 'Research project  using on UAV imagery', '3.4.1', '2017-01-02', '2017-12-29', 'Collaborative', 'Department of Archeology', 'n', '', 'n'),
(29, 2017, 6, 8, 'SA/SPS', '2017/ELE/PRJ/SA/SPS', 'Research project  on Spectral Signatures ', '3.4.2', '2017-01-02', '2017-12-29', 'Collaborative', 'Department of Rice Research Institute, University ', 'n', '', 'n'),
(32, 2017, 11, 8, 'RICNCD', '2017/STA/PRJ/RICNCD', 'Regional and international collaborations for nati', '3.5.1', '2014-01-01', '2017-12-29', 'Collaborative', 'Department of Agriculture, Irrigation etc', 'n', '', 'n'),
(33, 2017, 11, 8, 'SPSIGB', '2017/STA/PRJ/SPSIGB', 'Spectral Signature Bank', '3.5.2', '2017-01-02', '2017-09-29', 'Inhouse', '', 'y', '', 'n'),
(34, 2017, 11, 3, 'WRSGIS', '2017/STA/COU/WRSGIS', 'workshop on introduction to RS/ GIS & Remote Sensi', '  3.6.1', '2017-07-03', '2017-07-28', 'Inhouse', '', 'n', '', 'n'),
(35, 2017, 11, 8, 'DEVGOP', '2017/STA/PRJ/DEVGOP', 'Development of a Geoportal', '3.7.1', '2017-01-02', '2017-12-29', 'Inhouse', '', 'y', '', 'n'),
(36, 2017, 11, 8, 'NATHUB', '2017/STA/PRJ/NATHUB', 'National Hub', '3.7.2', '2017-01-02', '2017-12-29', 'Inhouse', '', 'n', '', 'n'),
(37, 2017, 7, 8, 'NANSAT', '2017/STD/PRJ/NANSAT', 'Nano Satellite Programe', '3.8.1 ', '2016-10-17', '2019-12-27', 'Collaborative', 'Samara Aerospace State University ', 'y', '', 'n'),
(38, 2017, 7, 8, 'CBPFST', '2017/STD/PRJ/CBPFST', 'Capacity building programmes for Space Technologie', '3.8.2 ', '2017-01-02', '2017-12-29', 'Inhouse', '', 'n', '', 'n'),
(39, 2017, 16, 8, 'NAOISN', '2017/AST/PRJ/NAOISN', 'National Astronomical Observatory & ISON Project ', '3.9.1', '2017-01-02', '2017-12-29', 'Inhouse', '', 'n', '', 'n'),
(40, 2017, 9, 8, 'MAPPBC', '2017/ITD/PRJ/MAPPBC', 'Mobile App - Breast Cancer Care', '4.1.5', '2017-01-02', '2017-12-29', 'Collaborative', 'faculty of Medicine, University of Kelaniya', 'y', '', 'n'),
(41, 2017, 5, 3, 'PEC024', '2017/COM/COU/PEC024', 'Practical Electronic Course 24', '2.2.2', '2017-02-15', '2017-07-31', 'Client based', 'Community', 'y', '17CO001', 'n'),
(42, 2017, 9, 8, 'MAPPRD', '2017/ITD/PRJ/MAPPRD', 'Mobile Application for Research Data Collection', '4.1.5', '2017-06-01', '2017-12-31', 'Inhouse', 'University of Kelaniya', 'n', '', 'n'),
(43, 2017, 9, 8, 'DIMASY', '2017/ITD/PRJ/DIMASY', 'Disaster Management System', '4.1.7', '2017-01-01', '2017-12-31', 'Inhouse', 'ACCIMT', 'n', '', 'n'),
(44, 2017, 9, 8, 'BPUHOM', '2017/ITD/PRJ/BPUHOM', 'On-line System â€“ Buddhist & Pali University Internal Examination System (Special degree)', '4.1.1', '2017-01-01', '2017-12-31', 'Client based', 'Buddhist and Pali university-Colombo', 'n', '', 'n'),
(45, 2017, 9, 8, 'UOJACC', '2017/ITD/PRJ/UOJACC', 'University of Sri J-pura - Accounting System Additions', '4.1.1', '2017-01-01', '2017-12-31', 'Client based', 'University of Sri J-pura', 'n', '', 'n'),
(46, 2017, 9, 8, 'UOMACC', '2017/ITD/PRJ/UOMACC', 'University of Moratuwa - Accounting System Additions', '4.1.1', '2017-01-01', '2017-12-31', 'Client based', 'University of Moratuwa', 'n', '', 'n'),
(47, 2017, 9, 8, 'UOMMNT', '2017/ITD/PRJ/UOMMNT', 'Maintenance - University of Moratuwa (Accounts, Payroll & Consultancy)', '4.3.1.1', '2017-01-01', '2017-12-31', 'Client based', 'University of Moratuwa', 'n', '', 'n'),
(48, 2017, 9, 8, 'UOJMNT', '2017/ITD/PRJ/UOJMNT', 'Maintenance - University of Sri Jayewardenapua (Accounts)', '4.3.1.2', '2017-01-01', '2017-12-31', 'Client based', 'University of Sri Jayewardenapua ', 'n', '', 'n'),
(49, 2017, 9, 8, 'BPUMNT', '2017/ITD/PRJ/BPUMNT', 'Maintenance - â€¢	Buddhist & Pali University (On-line System)', '4.3.1.3', '2017-01-01', '2017-12-31', 'Client based', 'Buddhist & Pali University', 'n', '', 'n'),
(50, 2017, 9, 8, 'DLBMNT', '2017/ITD/PRJ/DLBMNT', 'Maintenance - Development Lotteries Board (Payroll)', '4.3.1.4', '2017-01-01', '2017-12-31', 'Client based', 'Development Lotteries Board', 'n', '', 'n'),
(51, 2017, 8, 5, 'Maintn', '2017/ISD/IHS/Maintn', 'ISD-Maintenance', '5.3', '2017-01-02', '2017-12-31', 'Inhouse', 'ISD-ACCIMT', 'y', '17IS004', 'n'),
(52, 2017, 14, 2, 'EXEN17', '2017/TTD/EVT/EXEN17', 'Exhibition Enterprise 2017', '6.1.1', '2017-03-27', '2017-05-31', 'Inhouse', '', 'n', '', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `pr_project_types`
--

CREATE TABLE `pr_project_types` (
  `pt_code` int(11) NOT NULL,
  `pt_short_des` varchar(50) NOT NULL,
  `pt_description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pr_project_types`
--

INSERT INTO `pr_project_types` (`pt_code`, `pt_short_des`, `pt_description`) VALUES
(1, 'CON', 'Test and Measurements'),
(2, 'EVT', 'Other Events programmes'),
(3, 'COU	', 'Courses'),
(4, 'CAL	', 'Calibration Jobs'),
(5, 'IHS', 'Inhouse services (Repairs, LAN maintenance))'),
(6, 'CRP	', 'Complex recovery projects'),
(7, 'PFT', 'Performance Testing Jobs'),
(8, 'PRJ', 'Projects(inhouse and Client based)');

-- --------------------------------------------------------

--
-- Table structure for table `pr_stores_tbl`
--

CREATE TABLE `pr_stores_tbl` (
  `st_id` int(11) NOT NULL,
  `serial_no` int(11) NOT NULL,
  `st_code` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pr_stores_tbl`
--

INSERT INTO `pr_stores_tbl` (`st_id`, `serial_no`, `st_code`) VALUES
(1, 1, ''),
(2, 1, 'sdss'),
(3, 1, 'sds');

-- --------------------------------------------------------

--
-- Table structure for table `reg_sup`
--

CREATE TABLE `reg_sup` (
  `item_code` int(10) NOT NULL,
  `description` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_sup`
--

INSERT INTO `reg_sup` (`item_code`, `description`) VALUES
(10, 'Air Conditioners'),
(11, 'Audio Visual Products(OHP,Multimedia projectors,sc...'),
(12, 'Batteries(Motor Vehicles,UPS,etc.)'),
(13, 'Camera-cameras(compact camers,DSLR camera,video ca...'),
(15, 'camera-CCTV camera & accessories (cameras,DVRs,NVR.'),
(17, 'computer-computer spare parts'),
(18, 'computer-Network Equipment & peripheral accessorie...'),
(19, 'computer-personal computers and laptops'),
(20, 'computer-personal computers and laptops');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `com_division`
--
ALTER TABLE `com_division`
  ADD PRIMARY KEY (`div_id`);

--
-- Indexes for table `deny_projects`
--
ALTER TABLE `deny_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation_tbl`
--
ALTER TABLE `designation_tbl`
  ADD PRIMARY KEY (`DesigCode`);

--
-- Indexes for table `division_tbl`
--
ALTER TABLE `division_tbl`
  ADD PRIMARY KEY (`DivisionCode`);

--
-- Indexes for table `emp_details_tbl`
--
ALTER TABLE `emp_details_tbl`
  ADD PRIMARY KEY (`EmpNo`),
  ADD KEY `DivisionCode` (`DivisionCode`),
  ADD KEY `DesigCode` (`DesigCode`),
  ADD KEY `EmpTypeCode` (`EmpTypeCode`),
  ADD KEY `CategoryCode` (`CategoryCode`);

--
-- Indexes for table `hr_desig_cadre`
--
ALTER TABLE `hr_desig_cadre`
  ADD PRIMARY KEY (`DesigCode`);

--
-- Indexes for table `hr_division_tbl`
--
ALTER TABLE `hr_division_tbl`
  ADD PRIMARY KEY (`DivisionCode`);

--
-- Indexes for table `hr_login_tbl`
--
ALTER TABLE `hr_login_tbl`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `hr_official_details`
--
ALTER TABLE `hr_official_details`
  ADD PRIMARY KEY (`EmpNo`),
  ADD KEY `DivisionCode` (`DivisionCode`),
  ADD KEY `DesigCode` (`DesigCode`);

--
-- Indexes for table `hr_personal_details`
--
ALTER TABLE `hr_personal_details`
  ADD PRIMARY KEY (`EmpNo`);

--
-- Indexes for table `hr_projects`
--
ALTER TABLE `hr_projects`
  ADD PRIMARY KEY (`serial_no`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `pt_code` (`pt_code`),
  ADD KEY `div_code` (`div_code`);

--
-- Indexes for table `hr_project_details`
--
ALTER TABLE `hr_project_details`
  ADD PRIMARY KEY (`serial_no`);

--
-- Indexes for table `hr_project_types`
--
ALTER TABLE `hr_project_types`
  ADD PRIMARY KEY (`pt_code`);

--
-- Indexes for table `hr_salary`
--
ALTER TABLE `hr_salary`
  ADD PRIMARY KEY (`SalaryCode`);

--
-- Indexes for table `hr_salary_details`
--
ALTER TABLE `hr_salary_details`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `hr_salary_scale_details`
--
ALTER TABLE `hr_salary_scale_details`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `hr_stores_tbl`
--
ALTER TABLE `hr_stores_tbl`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `login_tbl`
--
ALTER TABLE `login_tbl`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `login_tbl_leave`
--
ALTER TABLE `login_tbl_leave`
  ADD PRIMARY KEY (`Emp_No`);

--
-- Indexes for table `main_sub_division`
--
ALTER TABLE `main_sub_division`
  ADD PRIMARY KEY (`div_id`);

--
-- Indexes for table `pc_action_tbl`
--
ALTER TABLE `pc_action_tbl`
  ADD PRIMARY KEY (`action_id`);

--
-- Indexes for table `pc_add_item`
--
ALTER TABLE `pc_add_item`
  ADD PRIMARY KEY (`item_code`);

--
-- Indexes for table `pc_appoint_tec`
--
ALTER TABLE `pc_appoint_tec`
  ADD PRIMARY KEY (`File_no`),
  ADD UNIQUE KEY `File_no` (`File_no`);

--
-- Indexes for table `pc_app_tec`
--
ALTER TABLE `pc_app_tec`
  ADD PRIMARY KEY (`pr_app_no`);

--
-- Indexes for table `pc_bid_doc`
--
ALTER TABLE `pc_bid_doc`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `pc_budget_tbl`
--
ALTER TABLE `pc_budget_tbl`
  ADD PRIMARY KEY (`budg_no`);

--
-- Indexes for table `pc_bud_req_hod`
--
ALTER TABLE `pc_bud_req_hod`
  ADD PRIMARY KEY (`total_id`);

--
-- Indexes for table `pc_bud_req_user`
--
ALTER TABLE `pc_bud_req_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pc_bud_req_user_old`
--
ALTER TABLE `pc_bud_req_user_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pc_confirm_action`
--
ALTER TABLE `pc_confirm_action`
  ADD PRIMARY KEY (`confirm_id`);

--
-- Indexes for table `pc_create_spec`
--
ALTER TABLE `pc_create_spec`
  ADD PRIMARY KEY (`spec_id`);

--
-- Indexes for table `pc_doc_type_tbl`
--
ALTER TABLE `pc_doc_type_tbl`
  ADD PRIMARY KEY (`doc_type_id`);

--
-- Indexes for table `pc_file_tbl`
--
ALTER TABLE `pc_file_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pc_pdf_tbl`
--
ALTER TABLE `pc_pdf_tbl`
  ADD PRIMARY KEY (`pdf_id`);

--
-- Indexes for table `pc_procurement_method_tbl`
--
ALTER TABLE `pc_procurement_method_tbl`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `pc_pr_deny`
--
ALTER TABLE `pc_pr_deny`
  ADD PRIMARY KEY (`br_no`);

--
-- Indexes for table `pc_pr_dtls_tbl`
--
ALTER TABLE `pc_pr_dtls_tbl`
  ADD PRIMARY KEY (`pr_dtls_code`),
  ADD KEY `item_no` (`usage_no`,`pro_code`);

--
-- Indexes for table `pc_pr_type`
--
ALTER TABLE `pc_pr_type`
  ADD PRIMARY KEY (`pr_type_no`);

--
-- Indexes for table `pc_pur_request`
--
ALTER TABLE `pc_pur_request`
  ADD PRIMARY KEY (`per_id`);

--
-- Indexes for table `pc_shdl_task_tbl`
--
ALTER TABLE `pc_shdl_task_tbl`
  ADD PRIMARY KEY (`sh_no`);

--
-- Indexes for table `pc_spec`
--
ALTER TABLE `pc_spec`
  ADD PRIMARY KEY (`spec_id`);

--
-- Indexes for table `pc_spec_equipment`
--
ALTER TABLE `pc_spec_equipment`
  ADD PRIMARY KEY (`equip_id`);

--
-- Indexes for table `pc_spec_main_cat`
--
ALTER TABLE `pc_spec_main_cat`
  ADD PRIMARY KEY (`main_id`);

--
-- Indexes for table `pc_sub_action_tbl`
--
ALTER TABLE `pc_sub_action_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pc_sub_spec`
--
ALTER TABLE `pc_sub_spec`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `pc_sub_specification`
--
ALTER TABLE `pc_sub_specification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pc_supplier`
--
ALTER TABLE `pc_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pc_supplier_item`
--
ALTER TABLE `pc_supplier_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pc_transfer_bud`
--
ALTER TABLE `pc_transfer_bud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pc_usage_dtls_tbl`
--
ALTER TABLE `pc_usage_dtls_tbl`
  ADD PRIMARY KEY (`usage_no`);

--
-- Indexes for table `pr_projects`
--
ALTER TABLE `pr_projects`
  ADD PRIMARY KEY (`serial_no`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `pt_code` (`pt_code`),
  ADD KEY `div_code` (`div_code`);

--
-- Indexes for table `pr_project_types`
--
ALTER TABLE `pr_project_types`
  ADD PRIMARY KEY (`pt_code`);

--
-- Indexes for table `pr_stores_tbl`
--
ALTER TABLE `pr_stores_tbl`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `reg_sup`
--
ALTER TABLE `reg_sup`
  ADD PRIMARY KEY (`item_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `com_division`
--
ALTER TABLE `com_division`
  MODIFY `div_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `deny_projects`
--
ALTER TABLE `deny_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `designation_tbl`
--
ALTER TABLE `designation_tbl`
  MODIFY `DesigCode` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;
--
-- AUTO_INCREMENT for table `division_tbl`
--
ALTER TABLE `division_tbl`
  MODIFY `DivisionCode` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `hr_division_tbl`
--
ALTER TABLE `hr_division_tbl`
  MODIFY `DivisionCode` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `hr_login_tbl`
--
ALTER TABLE `hr_login_tbl`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `hr_official_details`
--
ALTER TABLE `hr_official_details`
  MODIFY `EmpNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;
--
-- AUTO_INCREMENT for table `hr_projects`
--
ALTER TABLE `hr_projects`
  MODIFY `serial_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `hr_project_types`
--
ALTER TABLE `hr_project_types`
  MODIFY `pt_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `hr_salary_details`
--
ALTER TABLE `hr_salary_details`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `hr_salary_scale_details`
--
ALTER TABLE `hr_salary_scale_details`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `hr_stores_tbl`
--
ALTER TABLE `hr_stores_tbl`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `login_tbl`
--
ALTER TABLE `login_tbl`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `main_sub_division`
--
ALTER TABLE `main_sub_division`
  MODIFY `div_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `pc_action_tbl`
--
ALTER TABLE `pc_action_tbl`
  MODIFY `action_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pc_add_item`
--
ALTER TABLE `pc_add_item`
  MODIFY `item_code` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `pc_app_tec`
--
ALTER TABLE `pc_app_tec`
  MODIFY `pr_app_no` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `pc_bid_doc`
--
ALTER TABLE `pc_bid_doc`
  MODIFY `doc_id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pc_budget_tbl`
--
ALTER TABLE `pc_budget_tbl`
  MODIFY `budg_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pc_bud_req_hod`
--
ALTER TABLE `pc_bud_req_hod`
  MODIFY `total_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `pc_bud_req_user`
--
ALTER TABLE `pc_bud_req_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `pc_bud_req_user_old`
--
ALTER TABLE `pc_bud_req_user_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `pc_confirm_action`
--
ALTER TABLE `pc_confirm_action`
  MODIFY `confirm_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `pc_create_spec`
--
ALTER TABLE `pc_create_spec`
  MODIFY `spec_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pc_doc_type_tbl`
--
ALTER TABLE `pc_doc_type_tbl`
  MODIFY `doc_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pc_file_tbl`
--
ALTER TABLE `pc_file_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `pc_pdf_tbl`
--
ALTER TABLE `pc_pdf_tbl`
  MODIFY `pdf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `pc_procurement_method_tbl`
--
ALTER TABLE `pc_procurement_method_tbl`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pc_pr_dtls_tbl`
--
ALTER TABLE `pc_pr_dtls_tbl`
  MODIFY `pr_dtls_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `pc_pr_type`
--
ALTER TABLE `pc_pr_type`
  MODIFY `pr_type_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pc_pur_request`
--
ALTER TABLE `pc_pur_request`
  MODIFY `per_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `pc_shdl_task_tbl`
--
ALTER TABLE `pc_shdl_task_tbl`
  MODIFY `sh_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `pc_spec`
--
ALTER TABLE `pc_spec`
  MODIFY `spec_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pc_spec_equipment`
--
ALTER TABLE `pc_spec_equipment`
  MODIFY `equip_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pc_spec_main_cat`
--
ALTER TABLE `pc_spec_main_cat`
  MODIFY `main_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pc_sub_action_tbl`
--
ALTER TABLE `pc_sub_action_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `pc_sub_spec`
--
ALTER TABLE `pc_sub_spec`
  MODIFY `sub_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pc_sub_specification`
--
ALTER TABLE `pc_sub_specification`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `pc_supplier`
--
ALTER TABLE `pc_supplier`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `pc_supplier_item`
--
ALTER TABLE `pc_supplier_item`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `pc_transfer_bud`
--
ALTER TABLE `pc_transfer_bud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pc_usage_dtls_tbl`
--
ALTER TABLE `pc_usage_dtls_tbl`
  MODIFY `usage_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pr_projects`
--
ALTER TABLE `pr_projects`
  MODIFY `serial_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `pr_project_types`
--
ALTER TABLE `pr_project_types`
  MODIFY `pt_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pr_stores_tbl`
--
ALTER TABLE `pr_stores_tbl`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `reg_sup`
--
ALTER TABLE `reg_sup`
  MODIFY `item_code` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
