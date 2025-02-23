-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2025 at 03:04 PM
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
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(100) NOT NULL,
  `employee_sex` varchar(6) NOT NULL,
  `employee_tle` varchar(15) NOT NULL,
  `employee_address` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_name`, `employee_sex`, `employee_tle`, `employee_address`) VALUES
(1, 'John', 'Male', '0817891234', '451 prajinburi'),
(2, 'Somsri', 'Male', '0899891234', '12 moo1 rungsit'),
(3, 'Somsak', 'Male', '0909365127', '23/2 phaholyotin'),
(4, 'Somchai', 'Female', '0903678216', '11/1 rungsit'),
(5, 'Sommai', 'Male', '0909123745', '123/1 ladpakao');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_ID` varchar(100) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`order_ID`, `product_id`, `price`) VALUES
('2015-05-1510:41:56', '11111', 87000),
('2015-05-1510:43:15', '11132', 87000),
('2015-05-1603:21:55', '111234', 340000),
('2015-05-1603:30:38', '111235', 1300000),
('2015-05-1604:39:21', '11234', 1300000),
('2015-05-1604:41:59', '11239', 1300000),
('2015-05-1608:10:45', '11236', 1500000),
('2015-05-1608:12:36', '11237', 87000),
('2015-05-1608:15:43', '11238', 87000),
('2015-05-1608:21:43', '125', 87000),
('2015-05-1608:23:11', '125', 87000),
('2015-05-1608:32:06', '126', 340000),
('2015-05-1608:40:05', '129', 87000),
('2015-05-1608:40:05', '312', 87000),
('2015-05-1608:54:47', '313', 87000);

-- --------------------------------------------------------

--
-- Table structure for table `t_order`
--

CREATE TABLE `t_order` (
  `order_ID` varchar(100) NOT NULL,
  `order_date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `t_order`
--

INSERT INTO `t_order` (`order_ID`, `order_date`, `customer_id`, `employee_id`) VALUES
(' 2015-05-1604:39:21', '2015-05-16', 1, 1),
(' 2015-05-1604:41:59', '2015-05-16', 1, 1),
('2015-05-1510:41:56', '2015-05-15', 1, 1),
('2015-05-1510:43:15', '2015-05-15', 1, 2),
('2015-05-1603:21:55', '2015-05-16', 1, 1),
('2015-05-1603:30:38', '2015-05-16', 1, 1),
('2015-05-1608:10:45', '2015-05-16', 2, 2),
('2015-05-1608:12:36', '2015-05-16', 1, 1),
('2015-05-1608:15:43', '2015-05-16', 1, 1),
('2015-05-1608:21:43', '2015-05-16', 1, 1),
('2015-05-1608:23:11', '2015-05-16', 1, 1),
('2015-05-1608:32:06', '2015-05-16', 1, 1),
('2015-05-1608:40:05', '2015-05-16', 1, 1),
('2015-05-1608:54:47', '2015-05-16', 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_ID`,`product_id`);

--
-- Indexes for table `t_order`
--
ALTER TABLE `t_order`
  ADD PRIMARY KEY (`order_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
