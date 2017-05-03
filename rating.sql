-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2017 at 07:50 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rating`
--

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `title`) VALUES
(1, 'my roll'),
(2, 'out of roll'),
(3, 'morning data'),
(4, 'cool list');

-- --------------------------------------------------------

--
-- Table structure for table `title_rating`
--

CREATE TABLE `title_rating` (
  `id` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title_rating`
--

INSERT INTO `title_rating` (`id`, `title_id`, `rating`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 5),
(7, 1, 5),
(8, 3, 3),
(9, 3, 4),
(10, 3, 4),
(11, 3, 4),
(12, 3, 5),
(13, 1, 3),
(14, 1, 5),
(15, 1, 2),
(16, 1, 2),
(17, 1, 1),
(18, 1, 3),
(19, 1, 3),
(20, 1, 5),
(21, 1, 4),
(22, 1, 2),
(23, 1, 1),
(24, 1, 2),
(25, 1, 3),
(26, 1, 4),
(27, 1, 5),
(28, 1, 3),
(29, 1, 2),
(30, 1, 2),
(31, 1, 4),
(32, 1, 3),
(33, 1, 4),
(34, 1, 4),
(35, 1, 4),
(36, 4, 2),
(37, 4, 3),
(38, 4, 1),
(39, 4, 3),
(40, 4, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_rating`
--
ALTER TABLE `title_rating`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `title_rating`
--
ALTER TABLE `title_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
