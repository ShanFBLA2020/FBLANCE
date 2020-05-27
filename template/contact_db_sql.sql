-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2020 at 10:01 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contact`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllProducts` ()  BEGIN
    SELECT *  FROM servicehours;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `awardcriteria`
--

CREATE TABLE `awardcriteria` (
  `id` int(6) UNSIGNED NOT NULL,
  `awardname` varchar(100) NOT NULL,
  `effectivedate` date NOT NULL,
  `svchours` varchar(30) NOT NULL,
  `modifydate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `awardcriteria`
--

INSERT INTO `awardcriteria` (`id`, `awardname`, `effectivedate`, `svchours`, `modifydate`) VALUES
(1, 'Gold Award', '2020-01-01', '501', '2020-05-27 04:15:49'),
(2, 'Silver Award', '2020-01-01', '300', '2020-03-08 15:07:04'),
(4, 'Bronze Award', '2020-01-01', '150', '2020-03-08 21:11:56');

-- --------------------------------------------------------

--
-- Table structure for table `contactme`
--

CREATE TABLE `contactme` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `reachmeon` varchar(20) DEFAULT NULL,
  `subject` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactme`
--

INSERT INTO `contactme` (`id`, `name`, `email`, `phone`, `reachmeon`, `subject`) VALUES
(2, 'siva', 'siva@gmail.com', NULL, NULL, NULL),
(3, 'siva', 'siva@gmail.com', '9083420001', 'email', 'testing'),
(4, 'Siva1', 'siva1@gmail.com', '9083420001', 'email', 'Testing'),
(5, 'Siva1', 'siva1@gmail.com', '9083420001', 'email', 'Testing'),
(6, 'Siva1', 'siva1@gmail.com', '9083420001', 'email', 'Testing'),
(7, 'Siva1', 'siva1@gmail.com', '9083420001', 'email', 'Testing'),
(8, 'siva', 'siva@gmail.com', '2013430001', 'phone', 'Testing');

-- --------------------------------------------------------

--
-- Table structure for table `servicehours`
--

CREATE TABLE `servicehours` (
  `id` int(6) UNSIGNED NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `servicedate` date NOT NULL,
  `servicehours` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `servicehours`
--

INSERT INTO `servicehours` (`id`, `student_id`, `servicedate`, `servicehours`) VALUES
(26, 32, '2020-05-25', 10),
(27, 32, '2020-04-25', 10),
(28, 32, '2020-04-22', 310),
(29, 32, '2020-03-25', 200),
(30, 32, '2020-02-25', 130),
(31, 32, '2020-01-25', 100),
(32, 32, '2019-12-25', 90),
(33, 32, '2019-11-25', 300),
(34, 32, '2019-10-25', 210),
(35, 32, '2019-09-25', 111),
(36, 32, '2019-08-25', 120),
(37, 32, '2019-07-25', 75),
(38, 32, '2019-06-25', 100),
(39, 32, '2020-06-26', 15),
(40, 32, '2020-06-27', 15),
(41, 32, '2020-06-25', 15),
(42, 32, '2020-06-24', 15),
(43, 33, '2020-06-27', 6),
(44, 33, '2020-05-25', 10),
(45, 33, '2020-09-21', 22),
(46, 33, '2020-01-11', 200),
(47, 33, '2020-07-31', 200),
(48, 34, '2020-08-21', 100),
(49, 34, '2020-07-29', 100),
(50, 34, '2020-03-17', 99),
(51, 35, '2020-09-21', 4),
(52, 33, '2020-05-11', 2),
(53, 32, '2020-05-07', 6),
(54, 32, '2020-05-06', 2),
(55, 35, '2020-03-12', 2),
(56, 35, '2020-05-28', 6),
(57, 35, '2020-05-04', 2);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(200) DEFAULT NULL,
  `student_number` varchar(15) DEFAULT NULL,
  `student_grade` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `student_number`, `student_grade`) VALUES
(32, 'Shanmuka Sadhu', '118202', '9th Grade'),
(33, 'Mike Jones', '210239', '10th Grade'),
(34, 'Brain Anderson', '314343', '11th Grade'),
(35, 'Paul Smith', '413420', '12th Grade');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(3, 'siva1', '$2y$10$Dju31YsbxP4dX/THwSS6d.VRlqKOrg9Df4OFwY8Neazu9Bfg/BH4u', '2020-03-01 12:28:26'),
(13, 's@gmail.com', '$2y$10$RIwez3UszluaQ9n8G5VkWOsFhqtyX35dx7V9z/hdnZmg1EgaHo0xu', '2020-05-27 13:26:53'),
(14, 's2@gmail.com', '$2y$10$clx5r69yvu0sqzxl01TMCeLhH2/L3F3oaP2eObpQY2.ZhVdejAXsK', '2020-05-27 13:57:51'),
(15, 's3@gmail.com', '$2y$10$WWEweKEpETnMFFv/Da5XWOl4iOC4oOLa1Dl7pPc1BekEYFECet3.C', '2020-05-27 14:10:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `awardcriteria`
--
ALTER TABLE `awardcriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactme`
--
ALTER TABLE `contactme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servicehours`
--
ALTER TABLE `servicehours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `awardcriteria`
--
ALTER TABLE `awardcriteria`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contactme`
--
ALTER TABLE `contactme`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `servicehours`
--
ALTER TABLE `servicehours`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
