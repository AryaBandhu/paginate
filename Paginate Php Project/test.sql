-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2022 at 05:40 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `pagination`
--

CREATE TABLE `pagination` (
  `id` int(11) NOT NULL,
  `rollNumber` int(50) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Branch` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pagination`
--

INSERT INTO `pagination` (`id`, `rollNumber`, `Name`, `Branch`, `City`) VALUES
(3, 1, 'Arya Bandhu', 'Computer Science', 'Baghpat'),
(4, 2, 'Ajay Kumar', 'Mechanical', 'Baraut'),
(5, 3, 'Vansh Katariya', 'Civil', 'Baraut'),
(6, 4, 'Sumit Kumar', 'Computer Science', 'Binoli'),
(7, 5, 'Hariom Mogha', 'Civil', 'Noida'),
(8, 6, 'Raj Kumar', 'Mechanical', 'Baraut'),
(9, 7, 'Ankit', 'Doctor', 'Goa'),
(10, 8, 'Chavi Tomer', 'Data Science', 'Delhi'),
(11, 9, 'Mohit Ray', 'None', 'Gwalikhara'),
(12, 10, 'Rakhi Panwar', 'GNM', 'Khekra'),
(13, 11, 'Aarif Malik', 'Computer Science', 'Baraut'),
(14, 12, 'jyoti Katariya', 'PCM', 'Tera'),
(15, 13, 'Rahul Panwar', 'B.Tech', 'Delhi'),
(16, 14, 'Annu Panwar', 'BA', 'Tera'),
(17, 15, 'Aayashi Mogha', 'PCM', 'Baraut'),
(18, 16, 'Nikita', 'Computer Science', 'Bijvada'),
(19, 17, 'Harry Poter', 'Magic', 'Goa'),
(20, 18, 'Abhishak Ray', 'B.A.', 'Teda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pagination`
--
ALTER TABLE `pagination`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pagination`
--
ALTER TABLE `pagination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
