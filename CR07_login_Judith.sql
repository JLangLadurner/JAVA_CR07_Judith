-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 20, 2019 at 09:13 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CR07_login_Judith`
--

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(5),
(5);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role`) VALUES
(1, 'STUD');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `active` int(11) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `active`, `course`, `email`, `last_name`, `name`, `password`, `role`) VALUES
(1, 1, 'Java', 'stone@email.com', 'Stone', 'Rosetta', '$2a$10$VptohkD55Vu3vewG0ZV1kOQkIuDOBFXN9tuDk0vaQY87bMW9BpdZq', NULL),
(2, 1, 'Full Stack', 'bismark@email.com', 'Bismark', 'Otto', '$2a$10$LwVjMD/cKJJ5X9uRS0AV9.NeAjRyTfEWSeqdMHeDrvZ06PQnCl88e', 0),
(3, 1, 'JS Basic', 'tut@email.com', 'Tut', 'Olga', '$2a$10$onw5xGYrYfgWVS4s66Q4geSc3WTytKaC5m8kbklHXV6MY.2r98v8K', 0),
(4, 1, 'HTML Basic', 'good@email.com', 'Good', 'Klara', '$2a$10$wF72RbHIPeVQd.EZ.VKMsOUKce5Zb7udW0EvENeE7J37UC2jGiw96', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_role`
--

CREATE TABLE `student_role` (
  `student_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_role`
--

INSERT INTO `student_role` (`student_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_role`
--
ALTER TABLE `student_role`
  ADD PRIMARY KEY (`student_id`,`role_id`),
  ADD KEY `FKh0f7jbwhm89klnapolxxkhcat` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
