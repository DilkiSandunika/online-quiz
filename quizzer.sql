-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2019 at 08:31 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizzer`
--

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE `choices` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(4) NOT NULL DEFAULT '0',
  `choice` text COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`id`, `question_number`, `is_correct`, `choice`) VALUES
(17, 1, 0, 'Galle'),
(18, 1, 1, 'Colombo'),
(19, 1, 0, 'Kotte'),
(20, 1, 0, 'Jaffna'),
(21, 1, 0, 'Kalutara'),
(22, 2, 0, 'Samanala Kanda'),
(23, 2, 0, 'Knuckles'),
(24, 2, 1, 'Piduruthalagala'),
(25, 2, 0, 'Hawagala'),
(26, 2, 0, 'Ritigala'),
(27, 3, 0, '45'),
(28, 3, 0, '25'),
(29, 3, 0, '12'),
(30, 3, 1, '10'),
(31, 3, 0, '2'),
(32, 4, 1, '5'),
(33, 4, 0, '2'),
(34, 4, 0, '4'),
(35, 4, 0, '1'),
(36, 4, 0, '6'),
(37, 5, 0, '56'),
(38, 5, 1, '45'),
(39, 5, 0, '25'),
(40, 5, 0, '16'),
(41, 5, 0, '55'),
(42, 6, 0, '56'),
(43, 6, 0, '8'),
(44, 6, 0, '9'),
(45, 6, 1, '7'),
(46, 6, 0, '5'),
(47, 7, 0, '5'),
(48, 7, 1, '3'),
(49, 7, 0, '6'),
(50, 7, 0, '8'),
(51, 7, 0, '9');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_number` int(11) NOT NULL,
  `question` text COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_number`, `question`) VALUES
(1, 'What is the capital of Sri Lanka'),
(2, 'Highest mountain in Sri Lanka'),
(3, 'Answer of 5+5?'),
(4, '8-3?'),
(5, '5*9?'),
(6, '4+2+1?'),
(7, '1+2?');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `choices`
--
ALTER TABLE `choices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `choices`
--
ALTER TABLE `choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
