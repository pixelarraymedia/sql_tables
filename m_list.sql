-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2022 at 11:04 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `messages`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_list`
--

CREATE TABLE `m_list` (
  `uid` int(10) UNSIGNED NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp(),
  `s` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_list`
--

INSERT INTO `m_list` (`uid`, `dt`, `s`) VALUES
(1, '2022-06-12 11:42:19', 'test msg'),
(2, '2022-06-12 11:42:19', 'test msg 2'),
(3, '2022-06-12 11:42:44', 'okay now we can add some '),
(4, '2022-06-12 11:42:44', 'Another message to displa'),
(5, '2022-06-12 11:43:32', 'why error'),
(6, '2022-06-12 11:43:32', 'why error'),
(7, '2022-06-12 11:43:56', 'nevermind'),
(8, '2022-06-12 11:43:56', 'got it covered');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_list`
--
ALTER TABLE `m_list`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_list`
--
ALTER TABLE `m_list`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
