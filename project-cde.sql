-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2023 at 12:08 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project-cde`
--

-- --------------------------------------------------------

--
-- Table structure for table `guide`
--

CREATE TABLE `guide` (
  `guideid` varchar(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `college` varchar(50) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `phoneno` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guide`
--

INSERT INTO `guide` (`guideid`, `name`, `designation`, `college`, `emailid`, `phoneno`) VALUES
('ga001', 'Annadurai A', 'Assistant Professor', 'Madras Institute of Technology, Chromepet', 'annadurai.aprof@gmail.com', '9574121368'),
('gf001', 'Dhanapal G', 'Faculty ', 'College of Engineering, Guindy', 'Dhana.faculty@gmail.com', '9844121114'),
('gp001', 'Vijay B', 'Professor', 'Center of Distance Education, Guindy', 'vijay.prof@gmail.com', '8759642315');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `regno` varchar(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `phoneno` varchar(10) NOT NULL,
  `studycentre` varchar(100) NOT NULL,
  `course` varchar(50) NOT NULL,
  `specialization` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`regno`, `name`, `emailid`, `phoneno`, `studycentre`, `course`, `specialization`) VALUES
('2022421001', 'Arun D', 'arun.mba@gmail.com', '9840121212', 'Centre for Distance Education, Guindy', 'MBA', 'General Management'),
('2022431001', 'Ajay A', 'ajay.mca@gmail.com', '9842112553', 'College of Engineering, Guindy', 'MCA', ''),
('2022432001', 'Ajith R', 'ajith.mcs@gmail.com', '9852634147', 'Madras Institute of Technology, Chromepet', 'MCS', '');

-- --------------------------------------------------------

--
-- Table structure for table `studlogin`
--

CREATE TABLE `studlogin` (
  `id` int(11) NOT NULL,
  `regno` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studlogin`
--

INSERT INTO `studlogin` (`id`, `regno`, `email`, `pwd`, `time`) VALUES
(17, '2022421001', 'arun.mba@gmail.com', '12345', '2023-07-04 17:43:09'),
(18, '2022431001', 'ajay.mca@gmail.com', '12345678', '2023-07-04 18:25:51'),
(19, '2022432001', 'ajith.mcs@gmail.com', '12345678', '2023-07-04 19:24:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guide`
--
ALTER TABLE `guide`
  ADD PRIMARY KEY (`guideid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`regno`);

--
-- Indexes for table `studlogin`
--
ALTER TABLE `studlogin`
  ADD PRIMARY KEY (`id`,`regno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `studlogin`
--
ALTER TABLE `studlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
