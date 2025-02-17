-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2025 at 09:20 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `ReplyID` int(5) UNSIGNED ZEROFILL NOT NULL,
  `QuestionID` int(5) UNSIGNED ZEROFILL NOT NULL,
  `CreateDate` datetime NOT NULL,
  `Details` text NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `reply`
--

INSERT INTO `reply` (`ReplyID`, `QuestionID`, `CreateDate`, `Details`, `Name`) VALUES
(00001, 00012, '2025-02-10 08:26:30', 'ที่พูดมามันก็จริงนะพี่ชาย', 'น้องไผ่ขยี่ตูด'),
(00002, 00012, '2025-02-10 08:29:39', 'ลองดูคะ พี่', 'น้องไผ่ขยี่ตูด'),
(00003, 00001, '2025-02-10 08:32:49', 'จริงๆๆ นะ เออ', 'อิอิ');

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

-- --------------------------------------------------------

--
-- Table structure for table `webboard`
--

CREATE TABLE `webboard` (
  `QuestionID` int(5) UNSIGNED ZEROFILL NOT NULL,
  `CreateDate` datetime NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Details` text NOT NULL,
  `Name` varchar(50) NOT NULL,
  `View` int(5) NOT NULL,
  `Reply` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `webboard`
--

INSERT INTO `webboard` (`QuestionID`, `CreateDate`, `Question`, `Details`, `Name`, `View`, `Reply`) VALUES
(00001, '2025-02-10 07:51:26', 'อะหิๆๆๆๆ', 'ฟหกหฟกฟหก', 'ฟหกหฟก', 10, 1),
(00002, '2025-02-10 07:51:43', 'ฟหกฟหกฟห', 'ฟหกหฟกฟหก', 'ฟหกหฟก', 0, 0),
(00003, '2025-02-10 07:52:17', '$conn,Question', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Attachai', 0, 0),
(00004, '2025-02-10 08:11:59', 'asddasdas', 'asdasdsdd', 'assddssd', 0, 0),
(00005, '2025-02-10 08:12:03', 'asdasdadssdsd', 'sdsdasddsads', 'adsdasdsdsd', 0, 0),
(00006, '2025-02-10 08:12:11', 'dasadsadsads', 'dsssddsda', 'sassdasdssds', 0, 0),
(00007, '2025-02-10 08:12:15', 'asdfasdfsdaf', 'asdsaasdfasdasdfasdfd', 'asdfasdfasdf', 0, 0),
(00008, '2025-02-10 08:12:19', 'fsadfsadfdas', 'fasdfdsafadsf', 'dsafasdfs', 0, 0),
(00009, '2025-02-10 08:12:22', 'asdfsdaasd', 'dsafsadfasdf', 'asfsdad', 1, 0),
(00010, '2025-02-10 08:12:25', 'asdfsdfasdf', 'asdfsdafdasfd', 'safasdfdasf', 0, 0),
(00011, '2025-02-10 08:12:28', 'asdfdsafsdaf', 'sadfasdfasd', 'fsadfdas', 3, 0),
(00012, '2025-02-10 08:12:36', 'dasffdsasdfasfd', 'fasdfsdasadfsfaasfafs', 'sfaasasffsaafd', 7, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

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
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_ID`,`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`ReplyID`);

--
-- Indexes for table `t_order`
--
ALTER TABLE `t_order`
  ADD PRIMARY KEY (`order_ID`);

--
-- Indexes for table `webboard`
--
ALTER TABLE `webboard`
  ADD PRIMARY KEY (`QuestionID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `ReplyID` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `webboard`
--
ALTER TABLE `webboard`
  MODIFY `QuestionID` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
