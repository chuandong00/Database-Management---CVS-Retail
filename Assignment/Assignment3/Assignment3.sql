-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2022 at 10:30 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homework database`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerSSN` varchar(11) NOT NULL,
  `CustomerName` varchar(20) DEFAULT NULL,
  `Job` varchar(50) DEFAULT NULL,
  `DateOfBirth` datetime DEFAULT NULL,
  `Zip` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerSSN`, `CustomerName`, `Job`, `DateOfBirth`, `Zip`) VALUES
('111-11-1111', 'Tim Duncan', 'Consultant', '1978-01-22 00:00:00', '30032'),
('222-22-2222', 'Luka Doncic', 'Photographer', '1999-02-28 00:00:00', '30080'),
('333-33-3333', 'Jimmy Butler', 'Programmer', '1989-09-14 00:00:00', '30032'),
('444-44-4444', 'David Robinson', 'CEO', '1966-08-03 00:00:00', '30050'),
('555-55-5555', 'LeBron James', 'Artist', '1984-12-30 00:00:00', '30015');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` varchar(9) NOT NULL,
  `ProductName` varchar(20) DEFAULT NULL,
  `Quantity` int(11) DEFAULT 0,
  `Price` decimal(19,2) DEFAULT 0.00
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `ProductName`, `Quantity`, `Price`) VALUES
('111111111', 'Celeron Processor', 300, '300.00'),
('222222222', '1TB Kingston Memory', 200, '34.00'),
('333224444', '10TB Hard Drive', 50, '200.00'),
('444444444', '46\" Monitor', 90, '500.00'),
('555555555', '54\" Monitor', 100, '600.00');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TransactionID` int(11) NOT NULL,
  `ProductID` varchar(9) DEFAULT NULL,
  `CustomerSSN` varchar(11) DEFAULT NULL,
  `TransactionDate` datetime DEFAULT NULL,
  `TransactionQuantity` int(11) NOT NULL,
  `GrandTotal` decimal(19,2) DEFAULT 0.00
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`TransactionID`, `ProductID`, `CustomerSSN`, `TransactionDate`, `TransactionQuantity`, `GrandTotal`) VALUES
(1, '111111111', '111-11-1111', '2018-12-18 00:00:00', 3, '900.00'),
(2, '222222222', '222-22-2222', '2018-12-20 00:00:00', 1, '34.00'),
(3, '222222222', '222-22-2222', '2019-01-30 00:00:00', 3, '102.00'),
(4, '333224444', '333-33-3333', '2019-02-15 00:00:00', 2, '400.00'),
(5, '222222222', '222-22-2222', '2019-03-01 00:00:00', 5, '170.00'),
(6, '111111111', '111-11-1111', '2019-03-08 00:00:00', -2, '-600.00'),
(7, '111111111', '222-22-2222', '2019-03-10 00:00:00', 1, '300.00'),
(8, '444444444', '444-44-4444', '2019-03-14 00:00:00', 4, '2000.00'),
(25, '333224444', '444-44-4444', '2019-04-10 00:00:00', 1, '200.00'),
(37, '333224444', '111-11-1111', '2019-05-01 00:00:00', 1, '200.00'),
(38, '111111111', '111-11-1111', '2019-05-05 00:00:00', 2, '600.00'),
(39, '222222222', '333-33-3333', '2019-05-18 00:00:00', 1, '34.00'),
(40, '111111111', '333-33-3333', '2020-01-03 00:00:00', 1, '300.00'),
(54, '555555555', '444-44-4444', '2020-10-03 00:00:00', 1, '600.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerSSN`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `TransactionID` (`TransactionID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TransactionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
