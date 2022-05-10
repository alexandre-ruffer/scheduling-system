-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2022 at 10:49 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `insertion`
--
CREATE DATABASE IF NOT EXISTS `insertion` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `insertion`;

-- --------------------------------------------------------

--
-- Table structure for table `addtable`
--

CREATE TABLE `addtable` (
  `id` int(11) NOT NULL,
  `faculty` varchar(250) NOT NULL,
  `course` varchar(250) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `room` varchar(250) NOT NULL,
  `start_time` varchar(250) NOT NULL,
  `end_time` varchar(250) NOT NULL,
  `building` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `addtable`:
--

--
-- Dumping data for table `addtable`
--

INSERT INTO `addtable` (`id`, `faculty`, `course`, `subject`, `room`, `start_time`, `end_time`, `building`) VALUES
(8, 'Engineering', 'Computer Science', 'Computer Programming 1', 'SB14', '07:00 am', '08:00 am', '1A'),
(9, 'Management Studies', 'Web Development', 'Digital Design', 'DM28', '09:00 am', '11:00 am', '2A'),
(11, 'Natural Science', 'The History of Ancient Philosophy', 'Freedom and Equality Across Borders', 'PK22', '11:00 am', '14:00 pm', '3A'),
(12, 'Engineering', 'Computer Science', 'Computer Programming 1', 'SB14', '16:00 pm', '18:00 pm', '1B');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `admin`:
--

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'demo', 'demo'),
(3, 'admin', 'admin'),
(4, 'zimbora', 'zimbora'),
(5, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `id` int(11) NOT NULL,
  `building` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `buildings`:
--

--
-- Dumping data for table `buildings`
--

INSERT INTO `buildings` (`id`, `building`) VALUES
(19, '1A'),
(20, '1B'),
(21, '2A'),
(23, '2B'),
(24, '3A'),
(25, '3B');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_code` varchar(259) NOT NULL,
  `course_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `course`:
--

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_code`, `course_name`) VALUES
(2, 'BSCS', 'Computer Science'),
(3, 'CS55', 'Computer Engineering '),
(6, 'CS02', 'Computer Security '),
(9, 'WD51', 'Web Development'),
(10, '5051', 'Hardware and Networking'),
(11, '6002', 'Advance Wordpress'),
(12, 'ME55', 'Micro Economics'),
(13, 'ST00', 'Stock Trading'),
(14, 'MA85', 'Macro Economics'),
(15, 'AP55', 'The History of Ancient Philosophy'),
(16, 'BC25', 'Biological Anthropology Course'),
(17, 'BE05', 'Higher Program in Business Management');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `faculty` varchar(250) NOT NULL,
  `course` varchar(250) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `room` varchar(250) NOT NULL,
  `start_time` varchar(250) NOT NULL,
  `end_time` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `data`:
--

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `faculty_id` int(11) NOT NULL,
  `faculty_name` varchar(250) NOT NULL,
  `designation` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `faculty`:
--

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `faculty_name`, `designation`) VALUES
(14, 'Engineering', 'CS-OJT Coordinator'),
(16, 'Information Technology', 'Computer Security'),
(17, 'Management Studies', 'Elective 3'),
(19, 'Philosophy', 'Demo2'),
(20, 'Natural Science', 'Demo3'),
(21, 'Commerce', 'Demo4');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `room` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `rooms`:
--

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room`) VALUES
(3, 'SB14'),
(8, 'CP09'),
(9, 'SB11'),
(10, 'CP19'),
(11, 'DM28'),
(12, 'NB15'),
(13, 'SS36'),
(14, 'PK22'),
(15, 'Zara');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(250) NOT NULL,
  `subject_description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `subject`:
--

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_description`) VALUES
(2, 'CS19', 'Computer Programming 1'),
(3, 'CP02', 'Computer Simulation'),
(5, 'DM15', 'Digital Design'),
(6, 'WP01', 'Web Programming 1'),
(8, 'NA08', 'Network Analyst'),
(9, 'SM85', 'Databases'),
(10, 'OP55', 'OOP C++'),
(11, 'AS86', 'Microprocessor and Assembly Language'),
(12, 'MM80', 'Discrete Mathematics'),
(13, 'NM65', ' 	Marketing Management'),
(14, 'SD01', 'System Analysis and Design'),
(15, 'EE54', 'Economics'),
(16, 'PO69', ' Freedom and Equality Across Borders '),
(17, 'PH88', ' The Philosophy of Philosophy '),
(18, 'BI09', 'Biology'),
(19, 'BU56', 'Business Studies');

-- --------------------------------------------------------

--
-- Table structure for table `timer`
--

CREATE TABLE `timer` (
  `id` int(11) NOT NULL,
  `start_time` varchar(250) NOT NULL,
  `end_time` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `timer`:
--

--
-- Dumping data for table `timer`
--

INSERT INTO `timer` (`id`, `start_time`, `end_time`) VALUES
(16, '07:00 am', '08:00 am'),
(17, '08:00 am', '09:00 am'),
(18, '09:00 am', '10:00 am'),
(19, '10:00 am', '11:00 am'),
(20, '11:00 am', '12:00 pm'),
(21, '12:00 pm', '13:00 pm'),
(22, '13:00 pm', '14:00 pm'),
(23, '14:00 pm', '15:00 pm'),
(24, '15:00 pm', '16:00 pm'),
(25, '16:00 pm', '17:00 pm'),
(26, '17:00 pm', '18:00 pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addtable`
--
ALTER TABLE `addtable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `timer`
--
ALTER TABLE `timer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addtable`
--
ALTER TABLE `addtable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `timer`
--
ALTER TABLE `timer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
