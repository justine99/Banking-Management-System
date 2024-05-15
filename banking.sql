-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2023 at 02:55 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking`
--

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `Time` varchar(20) NOT NULL,
  `Date` varchar(20) NOT NULL,
  `TransactionId` int(20) NOT NULL,
  `Aname` varchar(20) NOT NULL,
  `Anumber` int(20) NOT NULL,
  `Phone` int(15) NOT NULL,
  `Balance` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`Time`, `Date`, `TransactionId`, `Aname`, `Anumber`, `Phone`, `Balance`) VALUES
('06:59 PM', '24-6-2023', 288532, 'ALIJOHN', 12345678, 786542332, 2000000),
('02:46 PM', '23-6-2023', 322034, 'DavidKifua', 99999999, 786666666, 1474000),
('12:49 PM', '25-6-2023', 801940, 'BOB', 22222222, 756342566, 3700000);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `Time` varchar(20) NOT NULL,
  `Date` varchar(20) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `Phone` int(10) NOT NULL,
  `Aname` varchar(20) NOT NULL,
  `Anumber` int(30) NOT NULL,
  `Pin` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`Time`, `Date`, `Fname`, `Lname`, `Phone`, `Aname`, `Anumber`, `Pin`) VALUES
('12:47 PM', '25/6/2023', 'BOB', 'MUYA', 765432131, 'BOB', 22222222, 5555),
('07:56 PM', '24/6/2023', 'David', 'Kifua', 765434444, 'Davidkifua', 44444444, 0),
('08:07 PM', '24/6/2023', 'Abdallah', 'Kaputi', 675543244, 'KaputiOg', 55555555, 1111),
('', '', 'PATRICK', 'JENGE', 765555555, 'PATRICKJENGE', 77777777, 7777);

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `Time` varchar(20) NOT NULL,
  `Date` varchar(20) NOT NULL,
  `TransactionId` int(20) NOT NULL,
  `SenderAccount` int(20) NOT NULL,
  `ReceiverAccount` int(20) NOT NULL,
  `Amount` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`Time`, `Date`, `TransactionId`, `SenderAccount`, `ReceiverAccount`, `Amount`) VALUES
('10:06 AM', '27-6-2023', 172547, 22222222, 99999999, 300000),
('06:51 PM', '23-6-2023', 184357, 99999999, 56666666, 45),
('03:35 PM', '23-6-2023', 304076, 99999999, 78888888, 5600),
('12:33 PM', '25-6-2023', 624513, 55555555, 77777777, 100000),
('12:28 PM', '25-6-2023', 634866, 77777777, 44444444, 30000000),
('12:43 PM', '25-6-2023', 768433, 55555555, 77777777, 40000),
('06:49 PM', '23-6-2023', 822360, 99999999, 77777777, 774800),
('06:54 PM', '23-6-2023', 897312, 99999999, 78888888, 800000),
('12:36 PM', '25-6-2023', 984380, 55555555, 77777777, 500000);

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `Time` varchar(20) NOT NULL,
  `Date` varchar(10) NOT NULL,
  `TransactionId` int(20) NOT NULL,
  `Anumber` int(20) NOT NULL,
  `Aname` varchar(50) NOT NULL,
  `BalanceBeforeWithdraw` int(20) NOT NULL,
  `WithdrawAmount` int(20) NOT NULL,
  `Phone` int(20) NOT NULL,
  `RemainBalance` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`Time`, `Date`, `TransactionId`, `Anumber`, `Aname`, `BalanceBeforeWithdraw`, `WithdrawAmount`, `Phone`, `RemainBalance`) VALUES
('12:10 PM', '25-6-2023', 17958, 77777777, 'Juma', 3000000, 200000, 765555555, 2800000),
('07:05 PM', '23-6-2023', 93008, 99999999, 'DavidKifua', 1180000, 6000, 786666666, 1174000),
('07:02 PM', '24-6-2023', 99008, 12345678, 'ALIJOHN', 3000000, 1000000, 786542332, 2000000),
('01:44 PM', '25-6-2023', 311079, 55555555, 'Justinekifua', 3300000, 50000, 765435656, 3250000),
('12:45 PM', '25-6-2023', 491408, 55555555, 'Justinekifua', 3360000, 60000, 765435656, 3300000),
('06:07 PM', '23-6-2023', 527920, 99999999, 'DavidKifua', 2857845, 3000, 786666666, 2854845),
('12:14 PM', '25-6-2023', 568281, 77777777, 'Juma', 2800000, 500000, 765555555, 2300000),
('06:08 PM', '23-6-2023', 738558, 99999999, 'DavidKifua', 2854845, 80000, 786666666, 2774845),
('02:51 PM', '25-6-2023', 759019, 22222222, 'BOB', 8000000, 4000000, 756342566, 4000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`TransactionId`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`Anumber`),
  ADD UNIQUE KEY `Pin` (`Pin`),
  ADD UNIQUE KEY `Pin_2` (`Pin`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`TransactionId`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`TransactionId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
