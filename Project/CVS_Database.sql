-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 01, 2022 at 06:25 AM
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
-- Database: `CVS_Database`
--

-- --------------------------------------------------------

--
-- Table structure for table `Discount`
--

CREATE TABLE `Discount` (
  `Discount_Code` int(4) NOT NULL,
  `Discount_Rate` varchar(3) NOT NULL,
  `Category` varchar(8) NOT NULL,
  `Member_ID` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Discount`
--

INSERT INTO `Discount` (`Discount_Code`, `Discount_Rate`, `Category`, `Member_ID`) VALUES
(1150, '5%', 'Small', 111111),
(1250, '5%', 'Small', 1888887),
(1350, '5%', 'Small', 2222220),
(1450, '5%', 'Small', 1666665),
(1550, '5%', 'Small', 1444443),
(1650, '5%', 'Small', 555555),
(1750, '10%', 'Medium', 999999),
(1850, '10%', 'Medium', 222222),
(1950, '10%', 'Medium', 888888),
(2050, '10%', 'Medium', 1111110),
(2150, '10%', 'Medium', 1999998),
(2250, '15%', 'Large', 1777776),
(2350, '15%', 'Large', 1555554),
(2450, '15%', 'Large', 777777),
(2550, '15%', 'Large', 1333332),
(2650, '20%', 'Jumbo', 1222221),
(2750, '20%', 'Jumbo', 333333),
(2850, '25%', 'Ultimate', 666666),
(2950, '25%', 'Ultimate', 444444),
(3050, '30%', 'Special', 2111109),
(3150, '20%', 'Jumbo', 111111),
(3250, '20%', 'Jumbo', 222222),
(3350, '25%', 'Ultimate', 1111110),
(3450, '25%', 'Ultimate', 1444443),
(3550, '30%', 'Special', 1777776);

-- --------------------------------------------------------

--
-- Table structure for table `In_Person_Order`
--

CREATE TABLE `In_Person_Order` (
  `P_Order_ID` int(4) NOT NULL,
  `Store_ID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `In_Person_Order`
--

INSERT INTO `In_Person_Order` (`P_Order_ID`, `Store_ID`) VALUES
(2005, 99901),
(2017, 99901),
(2019, 99901),
(2007, 99902),
(2008, 99902),
(2011, 99902),
(2001, 99903),
(2010, 99903),
(2012, 99903),
(2002, 99904),
(2013, 99904),
(2014, 99905),
(2016, 99905),
(2003, 99906),
(2009, 99906),
(2018, 99906),
(2000, 99907),
(2015, 99907),
(2004, 99908),
(2006, 99908);

-- --------------------------------------------------------

--
-- Table structure for table `In_Person_Order_Contains_Product`
--

CREATE TABLE `In_Person_Order_Contains_Product` (
  `P_Order_ID` int(4) NOT NULL,
  `Product_ID` int(2) NOT NULL,
  `Quantity` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `In_Person_Order_Contains_Product`
--

INSERT INTO `In_Person_Order_Contains_Product` (`P_Order_ID`, `Product_ID`, `Quantity`) VALUES
(2000, 13, 1),
(2000, 15, 6),
(2000, 22, 4),
(2000, 28, 2),
(2001, 12, 5),
(2001, 22, 3),
(2001, 25, 3),
(2002, 13, 3),
(2003, 24, 2),
(2004, 12, 3),
(2004, 16, 6),
(2004, 27, 3),
(2004, 34, 2),
(2005, 19, 2),
(2005, 28, 1),
(2006, 11, 5),
(2006, 13, 4),
(2006, 19, 5),
(2006, 20, 1),
(2006, 25, 5),
(2006, 34, 3),
(2007, 11, 2),
(2007, 15, 1),
(2007, 24, 2),
(2008, 27, 2),
(2009, 32, 4),
(2010, 13, 2),
(2010, 15, 5),
(2010, 16, 2),
(2010, 18, 6),
(2010, 21, 5),
(2010, 22, 1),
(2010, 23, 3),
(2010, 28, 3),
(2011, 17, 6),
(2011, 19, 2),
(2011, 22, 3),
(2011, 26, 2),
(2011, 30, 6),
(2012, 12, 6),
(2012, 15, 4),
(2012, 16, 3),
(2012, 17, 4),
(2012, 18, 4),
(2012, 21, 6),
(2012, 22, 1),
(2012, 29, 2),
(2012, 30, 4),
(2013, 11, 2),
(2014, 19, 2),
(2014, 22, 3),
(2014, 24, 6),
(2015, 13, 1),
(2015, 16, 3),
(2016, 11, 5),
(2016, 12, 4),
(2016, 13, 1),
(2016, 17, 2),
(2016, 19, 2),
(2016, 20, 2),
(2016, 23, 2),
(2016, 30, 2),
(2016, 33, 1),
(2016, 34, 1),
(2017, 13, 6),
(2017, 16, 2),
(2017, 21, 4),
(2018, 11, 1),
(2018, 13, 6),
(2018, 17, 2),
(2018, 24, 4),
(2018, 32, 1),
(2019, 14, 5),
(2019, 25, 2),
(2019, 34, 3);

-- --------------------------------------------------------

--
-- Table structure for table `Member`
--

CREATE TABLE `Member` (
  `Member_ID` int(7) NOT NULL,
  `Customer_Name` varchar(15) NOT NULL,
  `Address` varchar(19) NOT NULL,
  `Email` varchar(19) NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `DOB` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Member`
--

INSERT INTO `Member` (`Member_ID`, `Customer_Name`, `Address`, `Email`, `Phone`, `DOB`) VALUES
(111111, 'Michael Leery', '583 Baker Street', '7366@mailreturn.com', '229-200-4187', '3/19/41'),
(222222, 'Joey Sourre', '632 Elm Close', '7340@mailreturn.com', '229-205-9717', '12/16/44'),
(333333, 'Aubrey Mitchell', '359 St John Street', '1325@mailreturn.com', '229-215-2325', '11/13/45'),
(444444, 'Hattie Webb', '115 Church Walk', '9962@mailreturn.com', '404-288-7181', '9/1/48'),
(555555, 'Patty Collier', '886 Meadow Court', '9720@mailreturn.com', '404-302-1946', '8/5/49'),
(666666, 'Wilson May', '462 Magnolia Close', '4346@mailreturn.com', '404-296-7077', '11/13/55'),
(777777, 'Jake Harrison', '245 Laburnum Avenue', '1580@mailreturn.com', '404-302-1947', '11/6/56'),
(888888, 'Carool Greer', '687 Vale Road', '8421@mailreturn.com', '404-296-7078', '8/16/57'),
(999999, 'Ernesto Taylor', '911 North Drive', '8681@mailreturn.com', '404-302-1948', '10/23/65'),
(1111110, 'Rudy Garrett', '981 Malvern Road', '4424@mailreturn.com', '404-296-7079', '10/8/70'),
(1222221, 'Naomi Lewis', '761 Keats Close', '7098@mailreturn.com', '404-302-1949', '10/20/70'),
(1333332, 'Marvin Hart', '704 The Drive', '3845@mailreturn.com', '404-296-7080', '3/19/77'),
(1444443, 'Taylor Austin', '24 Queens Road', '7186@mailreturn.com', '404-302-1950', '10/2/78'),
(1555554, 'Wilma James', '161 Nursery Gardens', '737@mailreturn.com', '404-296-7081', '7/5/81'),
(1666665, 'Jose Cannon', '654 Dorset Road', '4503@mailreturn.com', '404-302-1951', '2/19/83'),
(1777776, 'Jackie Mendez', '228 Westgate', '427@mailreturn.com', '404-296-7082', '6/24/89'),
(1888887, 'Ricardo Stewart', '242 Burnside', '4242@mailreturn.com', '404-302-1952', '2/5/91'),
(1999998, 'Stanley Schultz', '269 Bracken Close', '9118@mailreturn.com', '404-296-7083', '7/18/94'),
(2111109, 'Joann Logan', '304 York Road', '4796@mailreturn.com', '404-302-1953', '2/24/95'),
(2222220, 'Ross Evans', '112 Palmerston Road', '938@mailreturn.com', '404-296-7084', '7/26/98');

-- --------------------------------------------------------

--
-- Table structure for table `Online_Order`
--

CREATE TABLE `Online_Order` (
  `O_Order_ID` varchar(4) NOT NULL,
  `Delivery_Date` varchar(8) NOT NULL,
  `Item_Quantity` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Online_Order`
--

INSERT INTO `Online_Order` (`O_Order_ID`, `Delivery_Date`, `Item_Quantity`) VALUES
('', '', ''),
('1000', '2/11/21', '2'),
('1001', '4/29/21', '10'),
('1002', '12/21/21', '8'),
('1003', '6/7/22', '3'),
('1004', '11/7/22', '4'),
('1005', '12/1/22', '8');

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

CREATE TABLE `Orders` (
  `Order_ID` int(4) DEFAULT NULL,
  `Order_Date` varchar(8) DEFAULT NULL,
  `Order_Type` varchar(9) DEFAULT NULL,
  `Member_ID` int(7) DEFAULT NULL,
  `Discount_Code` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Orders`
--

INSERT INTO `Orders` (`Order_ID`, `Order_Date`, `Order_Type`, `Member_ID`, `Discount_Code`) VALUES
(1000, '2/6/21', 'Online', 111111, 1150),
(1001, '4/25/21', 'Online', 555555, 1650),
(1002, '12/18/21', 'Online', 1999998, 2150),
(1003, '6/4/22', 'Online', 333333, 2750),
(1004, '11/3/22', 'Online', 1444443, 3450),
(1005, '11/29/22', 'Online', 111111, 3150),
(2000, '12/25/18', 'In Person', 1666665, 1450),
(2001, '1/3/19', 'In Person', 1222221, 2650),
(2002, '2/27/19', 'In Person', 333333, 2750),
(2003, '6/25/19', 'In Person', 111111, 3150),
(2004, '10/28/19', 'In Person', 1222221, 2650),
(2005, '12/9/19', 'In Person', 2222220, 1350),
(2006, '1/20/20', 'In Person', 222222, 3250),
(2007, '5/8/20', 'In Person', 111111, 1150),
(2008, '7/17/20', 'In Person', 1666665, 1450),
(2009, '3/10/21', 'In Person', 1444443, 1550),
(2010, '5/26/21', 'In Person', 333333, 2750),
(2011, '8/2/21', 'In Person', 1111110, 2050),
(2012, '9/28/21', 'In Person', 666666, 2850),
(2013, '12/13/21', 'In Person', 1555554, 1250),
(2014, '12/27/21', 'In Person', 1555554, 2350),
(2015, '2/3/22', 'In Person', 444444, 2950),
(2016, '4/19/22', 'In Person', 1444443, 3450),
(2017, '5/5/22', 'In Person', 555555, 1650),
(2018, '9/28/22', 'In Person', 1333332, 2550),
(2019, '11/17/22', 'In Person', 1777776, 3550);

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE `Product` (
  `Product_ID` int(2) NOT NULL,
  `Product_Name` varchar(31) NOT NULL,
  `Product_Price` decimal(5,2) NOT NULL,
  `Product_Category` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`Product_ID`, `Product_Name`, `Product_Price`, `Product_Category`) VALUES
(11, 'CeraVe Moisturizer', '17.99', 'Beauty Care'),
(12, 'Vaseline Petroleum Jelly', '3.99', 'Beauty Care'),
(13, 'Neutrogena Body Oil', '21.79', 'Beauty Care'),
(14, 'Aquaphor Skin Protectant', '22.49', 'Beauty Care'),
(15, 'Arm Sling', '17.49', 'Health'),
(16, 'Ivermectin Lotion 4OZ', '33.49', 'Health'),
(17, 'Surgical Face Mask (50ct)', '29.99', 'Health'),
(18, 'Cortizone Anti-Itch Creme', '5.99', 'Health'),
(19, 'Mederma Scar Gel 2OZ', '39.49', 'Health'),
(20, 'ZzzQuil Sleep Aid (50ct)', '19.49', 'Health'),
(21, 'Claritin Allergy Relief', '49.99', 'Health'),
(22, 'Ace Sport Ankle Stabilizer', '25.49', 'Health'),
(23, 'Cool Mist Humidifier', '101.99', 'Health'),
(24, 'Lil\'Critters Gummy Vitamins', '19.99', 'Vitamins'),
(25, 'Women\'s Multivitamin', '21.79', 'Vitamins'),
(26, 'Nature\'s Bounty Super B Complex', '16.99', 'Vitamins'),
(27, 'Whey Protein Powder', '29.99', 'Diet & Nutrition'),
(28, 'Weight Loss Pills (120ct)', '77.99', 'Diet & Nutrition'),
(29, 'Pulse Oximeter', '49.99', 'Diet & Nutrition'),
(30, 'Ensure Max Protein Shake', '12.49', 'Diet & Nutrition'),
(31, 'Old Spice Deodorant', '15.79', 'Personal Care'),
(32, 'Gilette Men\'s Razor (12ct)', '49.99', 'Personal Care'),
(33, 'Revlon Hair Dryer and Volumizer', '39.99', 'Personal Care'),
(34, 'Dove Body Wash', '13.99', 'Personal Care');

-- --------------------------------------------------------

--
-- Table structure for table `Store`
--

CREATE TABLE `Store` (
  `Store_ID` int(5) NOT NULL,
  `Street` varchar(21) NOT NULL,
  `City` varchar(11) NOT NULL,
  `State` varchar(2) NOT NULL,
  `Zip_Code` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Store`
--

INSERT INTO `Store` (`Store_ID`, `Street`, `City`, `State`, `Zip_Code`) VALUES
(99901, '8595 Ridgeway', 'Atlanta', 'GA', 30033),
(99902, '1525 Beechwood Avenue', 'Alpharetta', 'GA', 30022),
(99903, '9873 5th Street', 'Macon', 'GA', 31021),
(99904, '8930 Brown Street', 'Augusta', 'GA', 32976),
(99905, '5901 Grange Close', 'Atlanta', 'GA', 30301),
(99906, '8416 Swallow Close', 'Johns Creek', 'GA', 30032),
(99907, '5387 Station Lane', 'Columbus', 'GA', 31056),
(99908, '149 Willow Drive', 'Gainesville', 'GA', 30046);

-- --------------------------------------------------------

--
-- Table structure for table `Store_Holds_Product`
--

CREATE TABLE `Store_Holds_Product` (
  `Store_ID` int(5) NOT NULL,
  `Product_ID` int(2) NOT NULL,
  `Remaining_Stock` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Store_Holds_Product`
--

INSERT INTO `Store_Holds_Product` (`Store_ID`, `Product_ID`, `Remaining_Stock`) VALUES
(99901, 11, 4),
(99901, 12, 0),
(99901, 13, 6),
(99901, 14, 9),
(99901, 15, 9),
(99901, 16, 9),
(99901, 17, 8),
(99901, 18, 0),
(99901, 19, 2),
(99901, 20, 14),
(99901, 21, 10),
(99901, 22, 3),
(99901, 23, 15),
(99901, 24, 14),
(99901, 25, 19),
(99901, 26, 0),
(99901, 27, 10),
(99901, 28, 0),
(99901, 29, 2),
(99901, 30, 7),
(99901, 31, 6),
(99901, 32, 2),
(99901, 33, 2),
(99901, 34, 4),
(99902, 11, 14),
(99902, 12, 17),
(99902, 13, 4),
(99902, 14, 19),
(99902, 15, 13),
(99902, 16, 4),
(99902, 17, 5),
(99902, 18, 0),
(99902, 19, 0),
(99902, 20, 11),
(99902, 21, 7),
(99902, 22, 5),
(99902, 23, 19),
(99902, 24, 19),
(99902, 25, 3),
(99902, 26, 12),
(99902, 27, 12),
(99902, 28, 4),
(99902, 29, 0),
(99902, 30, 0),
(99902, 31, 11),
(99902, 32, 19),
(99902, 33, 0),
(99902, 34, 9),
(99903, 11, 17),
(99903, 12, 20),
(99903, 13, 3),
(99903, 14, 6),
(99903, 15, 1),
(99903, 16, 15),
(99903, 17, 9),
(99903, 18, 1),
(99903, 19, 6),
(99903, 20, 18),
(99903, 21, 4),
(99903, 22, 15),
(99903, 23, 10),
(99903, 24, 13),
(99903, 25, 14),
(99903, 26, 10),
(99903, 27, 9),
(99903, 28, 3),
(99903, 29, 3),
(99903, 30, 20),
(99903, 31, 7),
(99903, 32, 14),
(99903, 33, 10),
(99903, 34, 8),
(99904, 11, 9),
(99904, 12, 6),
(99904, 13, 1),
(99904, 14, 18),
(99904, 15, 12),
(99904, 16, 1),
(99904, 17, 0),
(99904, 18, 10),
(99904, 19, 5),
(99904, 20, 15),
(99904, 21, 0),
(99904, 22, 4),
(99904, 23, 14),
(99904, 24, 9),
(99904, 25, 16),
(99904, 26, 11),
(99904, 27, 11),
(99904, 28, 12),
(99904, 29, 9),
(99904, 30, 0),
(99904, 31, 0),
(99904, 32, 5),
(99904, 33, 17),
(99904, 34, 18),
(99905, 11, 11),
(99905, 12, 15),
(99905, 13, 16),
(99905, 14, 20),
(99905, 15, 4),
(99905, 16, 20),
(99905, 17, 13),
(99905, 18, 10),
(99905, 19, 4),
(99905, 20, 8),
(99905, 21, 13),
(99905, 22, 2),
(99905, 23, 13),
(99905, 24, 6),
(99905, 25, 3),
(99905, 26, 19),
(99905, 27, 8),
(99905, 28, 5),
(99905, 29, 11),
(99905, 30, 15),
(99905, 31, 3),
(99905, 32, 19),
(99905, 33, 0),
(99905, 34, 8),
(99906, 11, 11),
(99906, 12, 2),
(99906, 13, 11),
(99906, 14, 5),
(99906, 15, 10),
(99906, 16, 8),
(99906, 17, 6),
(99906, 18, 9),
(99906, 19, 17),
(99906, 20, 5),
(99906, 21, 6),
(99906, 22, 12),
(99906, 23, 9),
(99906, 24, 3),
(99906, 25, 0),
(99906, 26, 3),
(99906, 27, 2),
(99906, 28, 0),
(99906, 29, 9),
(99906, 30, 15),
(99906, 31, 7),
(99906, 32, 13),
(99906, 33, 8),
(99906, 34, 10),
(99907, 11, 14),
(99907, 12, 17),
(99907, 13, 0),
(99907, 14, 6),
(99907, 15, 11),
(99907, 16, 15),
(99907, 17, 7),
(99907, 18, 5),
(99907, 19, 5),
(99907, 20, 1),
(99907, 21, 4),
(99907, 22, 8),
(99907, 23, 1),
(99907, 24, 5),
(99907, 25, 9),
(99907, 26, 4),
(99907, 27, 11),
(99907, 28, 16),
(99907, 29, 9),
(99907, 30, 0),
(99907, 31, 2),
(99907, 32, 11),
(99907, 33, 6),
(99907, 34, 11),
(99908, 11, 4),
(99908, 12, 5),
(99908, 13, 0),
(99908, 14, 7),
(99908, 15, 11),
(99908, 16, 10),
(99908, 17, 4),
(99908, 18, 9),
(99908, 19, 5),
(99908, 20, 1),
(99908, 21, 9),
(99908, 22, 19),
(99908, 23, 18),
(99908, 24, 7),
(99908, 25, 16),
(99908, 26, 0),
(99908, 27, 6),
(99908, 28, 8),
(99908, 29, 0),
(99908, 30, 13),
(99908, 31, 7),
(99908, 32, 1),
(99908, 33, 13),
(99908, 34, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Discount`
--
ALTER TABLE `Discount`
  ADD PRIMARY KEY (`Discount_Code`),
  ADD UNIQUE KEY `Discount_Code` (`Discount_Code`),
  ADD KEY `Member_Constraint` (`Member_ID`);

--
-- Indexes for table `In_Person_Order`
--
ALTER TABLE `In_Person_Order`
  ADD PRIMARY KEY (`P_Order_ID`),
  ADD UNIQUE KEY `P_Order_ID` (`P_Order_ID`),
  ADD KEY `inperson_store` (`Store_ID`);

--
-- Indexes for table `In_Person_Order_Contains_Product`
--
ALTER TABLE `In_Person_Order_Contains_Product`
  ADD PRIMARY KEY (`P_Order_ID`,`Product_ID`),
  ADD KEY `IPOCP_Product_ID` (`Product_ID`);

--
-- Indexes for table `Member`
--
ALTER TABLE `Member`
  ADD PRIMARY KEY (`Member_ID`),
  ADD UNIQUE KEY `Member_ID` (`Member_ID`);

--
-- Indexes for table `Online_Order`
--
ALTER TABLE `Online_Order`
  ADD PRIMARY KEY (`O_Order_ID`),
  ADD UNIQUE KEY `O_Order_ID` (`O_Order_ID`);

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`Product_ID`),
  ADD UNIQUE KEY `Product_ID` (`Product_ID`);

--
-- Indexes for table `Store`
--
ALTER TABLE `Store`
  ADD PRIMARY KEY (`Store_ID`),
  ADD UNIQUE KEY `Store_ID` (`Store_ID`);

--
-- Indexes for table `Store_Holds_Product`
--
ALTER TABLE `Store_Holds_Product`
  ADD PRIMARY KEY (`Store_ID`,`Product_ID`),
  ADD KEY `storeHoldProduct_Product_ID` (`Product_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Discount`
--
ALTER TABLE `Discount`
  ADD CONSTRAINT `Member_Constraint` FOREIGN KEY (`Member_ID`) REFERENCES `Member` (`Member_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `In_Person_Order`
--
ALTER TABLE `In_Person_Order`
  ADD CONSTRAINT `inperson_store` FOREIGN KEY (`Store_ID`) REFERENCES `Store` (`Store_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `In_Person_Order_Contains_Product`
--
ALTER TABLE `In_Person_Order_Contains_Product`
  ADD CONSTRAINT `IPOCP_P_Order_ID` FOREIGN KEY (`P_Order_ID`) REFERENCES `In_Person_Order` (`P_Order_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `IPOCP_Product_ID` FOREIGN KEY (`Product_ID`) REFERENCES `Product` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Store_Holds_Product`
--
ALTER TABLE `Store_Holds_Product`
  ADD CONSTRAINT `storeHoldProduct_Product_ID` FOREIGN KEY (`Product_ID`) REFERENCES `Product` (`Product_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `storeHoldProduct_Store_ID` FOREIGN KEY (`Store_ID`) REFERENCES `Store` (`Store_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
