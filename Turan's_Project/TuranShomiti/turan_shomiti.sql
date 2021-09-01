-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2020 at 08:32 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `turan_shomiti`
--

-- --------------------------------------------------------

--
-- Table structure for table `another_account`
--

CREATE TABLE `another_account` (
  `id` int(11) NOT NULL,
  `an_name` varchar(20) NOT NULL,
  `an_account` int(11) NOT NULL,
  `an_savings` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `another_account`
--

INSERT INTO `another_account` (`id`, `an_name`, `an_account`, `an_savings`) VALUES
(1, 'Ta', 9, 0),
(2, 'Ta', 9, 0),
(3, 'Ta', 9, 0),
(4, 'Ta', 9, 0),
(5, 'Ta', 90, 12),
(6, 'Ta', 4555, 2345666),
(7, 'turan', 5, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `phone`, `email`) VALUES
(1, 'bishawjitmo', '0167485231'),
(2, 'mhturanmoha', '01966572363'),
(3, 'mhturanmoha', '01966572363'),
(4, 'mhturanmoha', '01966572363'),
(5, 'og@ta.bd', '01999999645');

-- --------------------------------------------------------

--
-- Table structure for table `loan_account`
--

CREATE TABLE `loan_account` (
  `id` int(11) NOT NULL,
  `account_no` int(11) NOT NULL,
  `saving` int(11) NOT NULL,
  `loan` int(11) NOT NULL,
  `payable_loan` int(11) NOT NULL,
  `interest` varchar(20) NOT NULL,
  `loan_date` date NOT NULL,
  `duration` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `permanent_address`
--

CREATE TABLE `permanent_address` (
  `id` int(11) NOT NULL,
  `village` text NOT NULL,
  `post_office` text NOT NULL,
  `police_station` text NOT NULL,
  `district` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permanent_address`
--

INSERT INTO `permanent_address` (`id`, `village`, `post_office`, `police_station`, `district`) VALUES
(1, '0', '0', '0', '0'),
(2, 'Gnm ai', 'Ma flnb', 'V', 'N au y'),
(3, 'Gnm ai', 'Ma flnb', 'V', 'N au y'),
(4, 'Gnm ai', 'Ma flnb', 'V', 'N au y'),
(5, 'Auhafnntouaha', 'F  h', 'Ootla au oa', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `personal_infos`
--

CREATE TABLE `personal_infos` (
  `id` int(11) NOT NULL,
  `full_name` varchar(20) NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `m_name` varchar(20) NOT NULL,
  `b_date` text NOT NULL,
  `religion` varchar(10) NOT NULL,
  `nationality` varchar(20) NOT NULL,
  `n_id` int(11) NOT NULL,
  `occupation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personal_infos`
--

INSERT INTO `personal_infos` (`id`, `full_name`, `f_name`, `m_name`, `b_date`, `religion`, `nationality`, `n_id`, `occupation`) VALUES
(1, 'Agaemtm', 'Aoa tppgmym', 'RDthhaotaaamar', '1942-06-02', 'Nnt ou a n', 'AraUgawhaa laf', 23432434, ''),
(2, 'Vahrtkaaaa th', 'Lhauvvnkm', 'qwderfwe', '1997-11-04', 'Gt  mmk mh', 'Nlgb  aia', 3454262, ''),
(3, 'AtO', 'Eonin', 'Tnhhk  maaAhtsn', '1991-09-18', 'O ghaaannu', 'Aml', 1111111, 'Otlmo  vRaRuaei'),
(4, 'AtO', 'Eonin', 'Tnhhk  maaAhtsn', '1991-09-18', 'O ghaaannu', 'Aml', 1111111, 'Otlmo  vRaRuaei'),
(5, 'AtO', 'Eonin', 'Tnhhk  maaAhtsn', '1991-09-18', 'O ghaaannu', 'Aml', 1111111, 'Otlmo  vRaRuaei'),
(6, 'mamun', 'k', 'h', '2001-06-22', 'Islam', 'Bangladesh', 2147483647, 'student'),
(7, 'mamun', 'k', 'h', '2001-06-22', 'Islam', 'Bangladesh', 2147483647, 'student');

-- --------------------------------------------------------

--
-- Table structure for table `present_address`
--

CREATE TABLE `present_address` (
  `id` int(11) NOT NULL,
  `village` varchar(20) NOT NULL,
  `post_office` varchar(20) NOT NULL,
  `police_station` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `present_address`
--

INSERT INTO `present_address` (`id`, `village`, `post_office`, `police_station`, `district`) VALUES
(1, 'Mhmtha', 'Aba', 'He bU', 'Ma'),
(2, 'Nak aaaal rf', 'Oi', 'Fmthhm', 'R ige');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `another_account`
--
ALTER TABLE `another_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_account`
--
ALTER TABLE `loan_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permanent_address`
--
ALTER TABLE `permanent_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_infos`
--
ALTER TABLE `personal_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `present_address`
--
ALTER TABLE `present_address`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `another_account`
--
ALTER TABLE `another_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loan_account`
--
ALTER TABLE `loan_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permanent_address`
--
ALTER TABLE `permanent_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_infos`
--
ALTER TABLE `personal_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `present_address`
--
ALTER TABLE `present_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
