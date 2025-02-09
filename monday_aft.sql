-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2025 at 11:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `monday_aft`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_addr` varchar(250) NOT NULL,
  `cust_mobiltel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_name`, `cust_addr`, `cust_mobiltel`) VALUES
(19, 'john', '15rr', '0837751546'),
(20, 'Max', '15rr', '0837751546'),
(21, 'Guy', '15rr', '0837751546'),
(22, 'Paker', '15rr', '0837751546'),
(23, 'TEST', '15rr', '0837751546'),
(24, 'HIGSds', '15rr', '0837751546');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `FilesID` int(4) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `FilesName` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files2`
--

CREATE TABLE `files2` (
  `FilesID` int(4) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `FilesName` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(5) UNSIGNED ZEROFILL NOT NULL,
  `OrderDate` datetime NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Tel` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `OrderDate`, `Name`, `Address`, `Tel`, `Email`) VALUES
(00001, '2013-08-30 09:59:13', 'Rungsan Suwannahong', '39 RMUTT Thailand', '0211245647', 'rungsansu@gmail.com'),
(00002, '2013-08-30 10:15:03', 'Rungsan Suwannahong', '39 RMUTT Thailand', '0211245647', 'rungsansu@gmail.com'),
(00013, '2025-02-03 09:41:24', 'Attachai', '169/293 aasasdasTesting', '0993251457', 'wwe543216@hotmail.com'),
(00015, '2025-02-09 11:46:14', 'Attachai Singthong', 'asdasdasads', '09932413', '1165105050447@mail.rmutt.ac.th'),
(00016, '2025-02-09 11:48:27', 'Testing123', 'asdfasfasdf', '09932413', '1165105050447@mail.rmutt.ac.th');

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `DetailID` int(5) NOT NULL,
  `OrderID` int(5) UNSIGNED ZEROFILL NOT NULL,
  `ProductID` int(4) NOT NULL,
  `Qty` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`DetailID`, `OrderID`, `ProductID`, `Qty`) VALUES
(1, 00001, 4, 1),
(2, 00002, 3, 3),
(3, 00002, 1, 1),
(4, 00002, 4, 1),
(10, 00013, 1, 1),
(11, 00015, 2, 32),
(12, 00015, 1, 12),
(13, 00016, 4, 2),
(14, 00016, 2, 12);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(4) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `Price` double NOT NULL,
  `Picture` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `ProductName`, `Price`, `Picture`) VALUES
(1, 'Product 1', 100, 'coke.jpg'),
(2, 'Product 2', 200, 'perfume.jpg'),
(3, 'Product 3', 300, 'shoe.jpg'),
(4, 'Product 4', 400, 'watch.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`FilesID`);

--
-- Indexes for table `files2`
--
ALTER TABLE `files2`
  ADD PRIMARY KEY (`FilesID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`DetailID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `FilesID` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files2`
--
ALTER TABLE `files2`
  MODIFY `FilesID` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `DetailID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
