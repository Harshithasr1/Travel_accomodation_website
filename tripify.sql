-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2022 at 11:52 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emart`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill_details_table`
--

CREATE TABLE `bill_details_table` (
  `bill_details_id` int(11) NOT NULL,
  `bill_id` int(20) NOT NULL,
  `flight_no` varchar(20) DEFAULT NULL,
  `hotel_no` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill_details_table`
--

INSERT INTO `bill_details_table` (`bill_details_id`, `bill_id`, `flight_no`, `hotel_no`) VALUES
(891, 780, 'AA0321', NULL),
(892, 781, 'DL2811', NULL),
(893, 782, NULL, 2),
(894, 783, NULL, 4),
(895, 783, 'UA1136', NULL),
(896, 784, 'WN3045', NULL),
(897, 785, 'NK1400', NULL),
(898, 786, 'UA1136', NULL),
(899, 787, 'AA0321', NULL),
(900, 788, NULL, 1),
(901, 789, NULL, 2),
(902, 790, 'AA0321', NULL),
(903, 791, 'UA1136', NULL),
(904, 792, 'AA0321', NULL),
(905, 793, 'AA0321', NULL),
(906, 794, 'AA0321', NULL),
(907, 795, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bill_table`
--

CREATE TABLE `bill_table` (
  `bill_id` int(20) NOT NULL,
  `buyer_signup_id` int(20) NOT NULL,
  `bill_type` varchar(20) NOT NULL,
  `bill_date` date NOT NULL,
  `bill_remarks` varchar(20) NOT NULL,
  `bill_amount` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill_table`
--

INSERT INTO `bill_table` (`bill_id`, `buyer_signup_id`, `bill_type`, `bill_date`, `bill_remarks`, `bill_amount`) VALUES
(780, 3, 'credit', '2022-12-02', '', 598),
(781, 3, 'credit', '2022-12-03', '', 690),
(782, 3, 'credit', '2022-12-03', '', 862),
(783, 3, 'credit', '2022-12-03', '', 966),
(784, 3, 'credit', '2022-12-03', '', 517),
(785, 2, 'credit', '2022-12-03', '', 575),
(786, 3, 'credit', '2022-12-03', '', 448),
(787, 3, 'credit', '2022-12-03', '', 598),
(788, 4, 'credit', '2022-12-03', '', 805),
(789, 4, 'credit', '2022-12-03', '', 862),
(790, 4, 'credit', '2022-12-03', '', 598),
(791, 2, 'credit', '2022-12-03', '', 348),
(792, 4, 'credit', '2022-12-03', '', 598),
(793, 4, 'credit', '2022-12-03', '', 498),
(794, 4, 'credit', '2022-12-04', '', 1196),
(795, 4, 'credit', '2022-12-04', '', 1610);

-- --------------------------------------------------------

--
-- Table structure for table `buyer_signup_table`
--

CREATE TABLE `buyer_signup_table` (
  `buyer_id` int(30) NOT NULL,
  `buyer_username` varchar(30) NOT NULL,
  `buyer_email` varchar(30) NOT NULL,
  `buyer_mobile` bigint(30) NOT NULL,
  `buyer_date` date NOT NULL,
  `buyer_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buyer_signup_table`
--

INSERT INTO `buyer_signup_table` (`buyer_id`, `buyer_username`, `buyer_email`, `buyer_mobile`, `buyer_date`, `buyer_password`) VALUES
(201, 'sravya', 'sravya@gmail.com', 987456321, '2020-02-04', '123'),
(202, 'sindhu', 'sindhu@gmail.com', 986547312, '2020-02-03', '456'),
(203, '', '', 12345, '2020-01-09', ''),
(204, 'a', '2', 2, '2020-03-03', '1'),
(205, 'prudhvi', 'info', 123, '2020-03-23', '123'),
(206, 'rajesha', '123', 123, '2020-03-04', '123'),
(207, 'kalyan04', 'jzdjncksdc', 58457845, '2022-11-21', 'Kalyan@0428'),
(208, 'abc', 'abc', 124, '2022-11-27', 'abc'),
(209, '1', 'ac', 12, '2022-11-28', '1'),
(210, 'va', '12', 12, '2022-12-08', '1');

-- --------------------------------------------------------

--
-- Table structure for table `category_table`
--

CREATE TABLE `category_table` (
  `category_id` int(20) NOT NULL,
  `category_name` varchar(20) NOT NULL,
  `category_brief` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_table`
--

INSERT INTO `category_table` (`category_id`, `category_name`, `category_brief`) VALUES
(301, 'footwear', 'for foot'),
(302, 'electronic appliance', 'tv'),
(303, 'mobiles', 'electronic devices');

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE `deals` (
  `flight_name` varchar(50) NOT NULL,
  `flight_no` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `depart_time` varchar(10) NOT NULL,
  `arrival_time` varchar(10) NOT NULL,
  `duration` varchar(15) NOT NULL,
  `cost` int(10) NOT NULL,
  `flight_type` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `miles` int(10) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deals`
--

INSERT INTO `deals` (`flight_name`, `flight_no`, `source`, `destination`, `date`, `depart_time`, `arrival_time`, `duration`, `cost`, `flight_type`, `status`, `miles`, `type`) VALUES
('American Airlines', 'AA4685', 'Dallas', 'New York', '2022-12-03', '4:00PM', '9:53PM', '4h 53min', 100, 'Domestic', 'In-Flight ', 1368, 'flight'),
('Southwest', 'WN1234', 'Dallas ', 'New York', '2022-12-03', '5:00PM', '9:29PM', '3h 26min', 93, 'Domestic', 'Delayed', 1368, 'flight'),
('United', 'UA1792', 'Dallas ', 'New York', '2022-12-03', '2:10PM', '6:10PM', '4hrs', 90, 'Domestic', 'Arrived', 1368, 'flight'),
('Spirit', 'NK4343', 'Dallas ', 'New York', '2022-12-03', '7:05PM', '11:30PM', '4hrs 25min', 110, 'Domestic', 'In-Flight ', 1368, 'flight'),
('Delta', 'DL2868 ', 'Dallas ', 'New York', '2022-12-03', '5:30AM', '9:00AM', '3hrs 30min', 130, 'Domestic', 'Delayed', 1368, 'flight'),
('American Airlines', 'AA4686', 'Houston ', 'Atlanta', '2022-12-15', '5:00AM', '8:00AM', '3hrs', 60, 'Domestic', 'Arrived', 700, 'flight'),
('Southwest', 'WN2120', 'Houston ', 'Atlanta', '2022-12-15', '8:00AM', '10:30AM', '2hrs 30min', 75, 'Domestic', 'In-Flight ', 700, 'flight'),
('United', 'UA1706', 'Houston ', 'Atlanta', '2022-12-15', '12:00PM', '3:00PM', '3hrs', 95, 'Domestic', 'Delayed', 700, 'flight'),
('Spirit', 'NK1022', 'Houston ', 'Atlanta', '2022-12-15', '1:00PM', '3:30PM', '2hrs 30min', 99, 'Domestic', 'Arrived', 700, 'flight'),
('Delta', 'DL3885', 'Houston ', 'Atlanta', '2022-12-15', '6:00PM', '9:00PM', '3hrs', 120, 'Domestic', 'In-Flight ', 700, 'flight'),
('American Airlines', 'AA2567', 'Austin', 'Chicago', '2022-12-19', '4:00AM', '8:00AM', '4hrs', 77, 'Domestic', 'Delayed', 978, 'flight'),
('Southwest', 'WN3414', 'Austin', 'Chicago', '2022-12-19', '10:00AM', '1:30AM', '3hrs 30min', 90, 'Domestic', 'Arrived', 978, 'flight'),
('United', 'UA1748', 'Austin', 'Chicago', '2022-12-19', '2:00PM', '5:00PM', '2hrs', 89, 'Domestic', 'In-Flight ', 978, 'flight'),
('Spirit', 'NK1848', 'Austin', 'Chicago', '2022-12-19', '4:00pm', '7:00PM', '3hrs', 130, 'Domestic', 'Delayed', 978, 'flight'),
('Delta', 'DL3697', 'Austin', 'Chicago', '2022-12-19', '9:00PM', '12:00AM', '3hrs', 110, 'Domestic', 'Arrived', 978, 'flight'),
('American Airlines', 'AA1705', 'Berlin', 'Washington', '2022-12-24', '5:00AM', '10:00AM', '5hrs', 50, 'Domestic', 'In-Flight ', 4161, 'flight'),
('Southwest', 'WN1794', 'Berlin', 'Washington', '2022-12-24', '7:00AM', '11:00AM', '4hrs', 60, 'Domestic', 'Delayed', 4161, 'flight'),
('United', 'UA1657', 'Berlin', 'Washington', '2022-12-24', '1:00PM', '5:00PM', '4hrs', 90, 'Domestic', 'Arrived', 4161, 'flight'),
('Spirit', 'NK1360', 'Berlin', 'Washington', '2022-12-24', '3:00PM', '8:00PM', '5hrs', 74, 'Domestic', 'In-Flight ', 4161, 'flight'),
('Delta', 'DL4014', 'Berlin', 'Washington', '2022-12-24', '8:00PM', '1:00AM', '5hrs', 88, 'Domestic', 'Delayed', 4161, 'flight'),
('American Airlines', 'AA1276', 'Denver', 'Los Angeles', '2022-12-10', '3:30AM', '5:30AM', '2hrs', 100, 'Domestic', 'Arrived', 830, 'flight'),
('Southwest', 'WN1980', 'Denver', 'Los Angeles', '2022-12-10', '6:00AM', '8:30AM', '2hrs 30min', 111, 'Domestic', 'In-Flight ', 830, 'flight'),
('United', 'UA1231', 'Denver', 'Los Angeles', '2022-12-10', '10:00AM', '12:30PM', '2hrs 30min', 123, 'Domestic', 'Arrived', 830, 'flight'),
('Spirit', 'NK1509', 'Denver', 'Los Angeles', '2022-12-10', '3:00PM', '5:30PM', '2hrs 30min', 94, 'Domestic', 'Delayed', 830, 'flight'),
('Delta', 'DL5590', 'Denver', 'Los Angeles', '2022-12-10', '7:00PM', '9:30PM', '2hrs 30min', 130, 'Domestic', 'Arrived', 830, 'flight'),
('Qatar', 'QA235', 'Chicago', 'Doha', '2022-12-12', '3:30PM', '7:30PM', '16hrs', 1230, 'International', 'In-Flight ', 7113, 'flight'),
('Emirates', 'EK522', 'Chicago', 'Doha', '2022-12-12', '6:00PM', '10:30PM', '16hrs 30mis', 1100, 'International', 'In-Flight ', 7113, 'flight'),
('Etihad', 'EY150', 'Chicago', 'Doha', '2022-12-12', '12:00PM', '3:00PM', '15hrs 30mins', 1200, 'International', 'In-Flight ', 7113, 'flight'),
('Lufthansa', 'LH523', 'Chicago', 'Doha', '2022-12-12', '4:30PM', '9:00PM', '16hrs 30mis', 1250, 'International', 'Arrived', 7113, 'flight');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_table`
--

CREATE TABLE `feedback_table` (
  `user_id` int(5) NOT NULL,
  `message` varchar(100) NOT NULL,
  `rating` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback_table`
--

INSERT INTO `feedback_table` (`user_id`, `message`, `rating`) VALUES
(1, 'dsml', 1),
(2, 'Excellent', 1),
(3, 'good', 1);

-- --------------------------------------------------------

--
-- Table structure for table `flight_details`
--

CREATE TABLE `flight_details` (
  `flight_name` varchar(50) NOT NULL,
  `flight_no` varchar(50) NOT NULL,
  `source` varchar(70) NOT NULL,
  `destination` varchar(70) NOT NULL,
  `date` date NOT NULL,
  `depart_time` varchar(10) NOT NULL,
  `arrival_time` varchar(10) NOT NULL,
  `duration` varchar(30) NOT NULL,
  `cost` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flight_details`
--

INSERT INTO `flight_details` (`flight_name`, `flight_no`, `source`, `destination`, `date`, `depart_time`, `arrival_time`, `duration`, `cost`) VALUES
('American', 'AA0321', 'Austin', 'Atlanta', '2022-12-15', '5:00PM', '8:15PM', '2.3hrs', 520),
('American', 'AA1077', 'Dallas', 'Miami', '2022-12-20', '4:00PM', '7:00PM', '3hrs', 510),
('American', 'AA1331', 'Miami', 'Dallas', '2022-12-24', '3:00PM', '6:30PM', '3.5hrs', 450),
('American', 'AA1373', 'Atlanta', 'Austin', '2022-12-22', '12:00PM', '4:00PM', '4hrs', 580),
('American', 'AA1548', 'Chicago', 'Seattle', '2022-12-22', '8:00PM', '1:00AM', '5hrs', 310),
('American', 'AA1653', 'Denver', 'Los Angels', '2022-12-26', '4:00PM', '6:00PM', '2hrs', 250),
('American', 'AA1757', 'Seattle', 'Chicago', '2022-12-16', '3:00AM', '9:00PM', '6hrs', 390),
('American', 'AA2967', 'Los Angels', 'Denver', '2022-12-18', '4:30PM', '7:00PM', '2.5hrs', 290),
('Delta', 'DL1060', 'Chicago', 'Seattle', '2022-12-22', '12:00AM', '6:00AM', '6hrs', 490),
('Delta', 'DL1500', 'Seattle', 'Chicago', '2022-12-16', '10:00PM', '3:00AM', '5hrs', 400),
('Delta', 'DL1702', 'Dallas', 'Miami', '2022-12-20', '9:00PM', '12:30AM', '3.5hrs', 400),
('Delta', 'DL1929', 'Denver', 'Los Angels', '2022-12-26', '9:00PM', '11:30PM', '2.5hrs', 350),
('Delta', 'DL2100', 'Atlanta', 'Austin', '2022-12-22', '7:00AM', '11:00AM', '4hrs', 650),
('Delta', 'DL2563', 'Miami', 'Dallas', '2022-12-24', '9:00PM', '12:30AM', '3.5hrs', 230),
('Delta', 'DL2811', 'Austin', 'Atlanta', '2022-12-15', '8:00PM', '10:00PM', '2hrs', 600),
('Delta', 'DL2848', 'Los Angels', 'Denver', '2022-12-18', '7:30PM', '10:00PM', '2.5hrs', 310),
('Spirit', 'NK1212', 'Seattle', 'Chicago', '2022-12-16', '10:00AM', '3:30AM', '5.5hrs', 290),
('Spirit', 'NK1298', 'Dallas', 'Miami', '2022-12-20', '9:00AM', '12:00PM', '3hrs', 650),
('Spirit', 'NK1400', 'Austin', 'Atlanta', '2022-12-15', '8:00AM', '10:30AM', '2.5hrs', 500),
('Spirit', 'NK1793', 'Chicago', 'Seattle', '2022-12-22', '11:00AM', '5:30PM', '6.5hrs', 390),
('Spirit', 'NK2308', 'Atlanta', 'Austin', '2022-12-22', '4:00AM', '7:30AM', '3.5hrs', 470),
('Spirit', 'NK2645', 'Los Angels', 'Denver', '2022-12-18', '4:00AM', '6:30AM', '2.5hrs', 190),
('Spirit', 'NK2747', 'Miami', 'Dallas', '2022-12-24', '9:00AM', '12:30PM', '3.5hrs', 590),
('Spirit', 'NK2900', 'Denver', 'Los Angels', '2022-12-26', '8:15AM', '11:15AM', '3hrs', 200),
('United ', 'UA1010', 'Miami', 'Dallas', '2022-12-24', '12:00PM', '4:00PM', '4hrs', 600),
('United ', 'UA1136', 'Austin', 'Atlanta', '2022-12-15', '12:00PM', '4:00PM', '4hrs', 390),
('United ', 'UA1289', 'Atlanta', 'Austin', '2022-12-22', '5:30PM', '9:30PM', '4hrs', 590),
('United ', 'UA1737', 'Los Angels', 'Denver', '2022-12-18', '1:00PM', '3:30PM', '3hrs', 250),
('United ', 'UA2448', 'Dallas', 'Miami', '2022-12-20', '7:00AM', '11:00AM', '4hrs', 440),
('United ', 'UA2490', 'Denver', 'Los Angels', '2022-12-26', '2:30PM', '5:00PM', '2.5hrs', 270),
('United ', 'UA2637', 'Seattle', 'Chicago', '2022-12-16', '1:00AM', '7:00PM', '6hrs', 350),
('United ', 'UA2943', 'Chicago', 'Seattle', '2022-12-22', '2:00PM', '7:00PM', '5hrs', 420),
('Southwest', 'WN1123', 'Chicago', 'Seattle', '2022-12-22', '7:00AM', '12:00PM', '5hrs', 500),
('Southwest', 'WN1563', 'Atlanta', 'Austin', '2022-12-22', '3:30AM', '7:00AM', '3.5hrs', 450),
('Southwest', 'WN1564', 'Seattle', 'Chicago', '2022-12-16', '6:00AM', '11:00AM', '5hrs', 450),
('Southwest', 'WN2279', 'Denver', 'Los Angels', '2022-12-26', '6:30AM', '8:30PM', '2hrs', 320),
('Southwest', 'WN2850', 'Miami', 'Dallas', '2022-12-24', '5:30AM', '9:00AM', '3.5hrs', 550),
('Southwest', 'WN3045', 'Austin', 'Atlanta', '2022-12-15', '6:00AM', '9:00AM', '3hrs', 450),
('Southwest', 'WN3183', 'Dallas', 'Miami', '2022-12-20', '5:00AM', '8:00AM', '3hrs', 350),
('Southwest', 'WN3656', 'Los Angels', 'Denver', '2022-12-18', '8:00AM', '10:00AM', '2hrs', 300);

-- --------------------------------------------------------

--
-- Table structure for table `flight_table`
--

CREATE TABLE `flight_table` (
  `flight_name` varchar(50) NOT NULL,
  `flight_no` varchar(50) NOT NULL,
  `source` varchar(70) NOT NULL,
  `destination` varchar(70) NOT NULL,
  `date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `depart_time` varchar(10) NOT NULL,
  `arrival_time` varchar(10) NOT NULL,
  `duration` varchar(30) NOT NULL,
  `cost` int(30) NOT NULL,
  `flight_type` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `miles` int(50) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flight_table`
--

INSERT INTO `flight_table` (`flight_name`, `flight_no`, `source`, `destination`, `date`, `return_date`, `depart_time`, `arrival_time`, `duration`, `cost`, `flight_type`, `status`, `miles`, `type`) VALUES
('American', 'AA0321', 'Austin', 'Atlanta', '2022-12-15', NULL, '5:00PM', '8:15PM', '2.3hrs', 520, 'domestic', 'In-flight', 15000, 'flight'),
('American', 'AA1077', 'Dallas', 'Miami', '2022-12-20', NULL, '4:00PM', '7:00PM', '3hrs', 510, 'domestic', 'arrived', 50000, 'flight'),
('American', 'AA1331', 'Miami', 'Dallas', '2022-12-24', NULL, '3:00PM', '6:30PM', '3.5hrs', 450, 'domestic', 'In-flight', 52000, 'flight'),
('American', 'AA1373', 'Atlanta', 'Austin', '2022-12-22', NULL, '12:00PM', '4:00PM', '4hrs', 580, 'domestic', 'In-flight', 16000, 'flight'),
('American', 'AA1548', 'Chicago', 'Seattle', '2022-12-22', NULL, '8:00PM', '1:00AM', '5hrs', 310, 'domestic', 'arrived', 11700, 'flight'),
('American', 'AA1653', 'Denver', 'Los Angels', '2022-12-26', NULL, '4:00PM', '6:00PM', '2hrs', 250, 'domestic', 'delayed', 7100, 'flight'),
('American', 'AA1757', 'Seattle', 'Chicago', '2022-12-16', NULL, '3:00AM', '9:00PM', '6hrs', 390, 'domestic', 'delayed', 11500, 'flight'),
('American', 'AA2967', 'Los Angels', 'Denver', '2022-12-18', NULL, '4:30PM', '7:00PM', '2.5hrs', 290, 'domestic', 'In-flight', 6900, 'flight'),
('Delta', 'DL1060', 'Chicago', 'Seattle', '2022-12-22', NULL, '12:00AM', '6:00AM', '6hrs', 490, 'domestic', 'delayed', 11700, 'flight'),
('Delta', 'DL1500', 'Seattle', 'Chicago', '2022-12-16', NULL, '10:00PM', '3:00AM', '5hrs', 400, 'domestic', 'In-flight', 11500, 'flight'),
('Delta', 'DL1702', 'Dallas', 'Miami', '2022-12-20', NULL, '9:00PM', '12:30AM', '3.5hrs', 400, 'domestic', 'delayed', 50000, 'flight'),
('Delta', 'DL1929', 'Denver', 'Los Angels', '2022-12-26', NULL, '9:00PM', '11:30PM', '2.5hrs', 350, 'domestic', 'In-flight', 7100, 'flight'),
('Delta', 'DL2100', 'Atlanta', 'Austin', '2022-12-22', NULL, '7:00AM', '11:00AM', '4hrs', 650, 'domestic', 'delayed', 16000, 'flight'),
('Delta', 'DL2563', 'Miami', 'Dallas', '2022-12-24', NULL, '9:00PM', '12:30AM', '3.5hrs', 230, 'domestic', 'arrived', 52000, 'flight'),
('Delta', 'DL2811', 'Austin', 'Atlanta', '2022-12-15', NULL, '8:00PM', '10:00PM', '2hrs', 600, 'domestic', 'arrived', 15000, 'flight'),
('Delta', 'DL2848', 'Los Angels', 'Denver', '2022-12-18', NULL, '7:30PM', '10:00PM', '2.5hrs', 310, 'domestic', 'arrived', 6900, 'flight'),
('Emirates', 'EK632', 'Dallas', 'Doha', '2022-12-15', NULL, '12:30PM', '5:00PM', '16hrs 30min', 2200, 'International', 'arrived', 8000, 'flight'),
('Etihad', 'EY190', 'Dallas', 'Doha', '2022-12-15', NULL, '1:00PM', '1:00PM', '12hrs', 2500, 'International', 'delayed', 8000, 'flight'),
('Lufthansa', 'LH729', 'Dallas', 'Doha', '2022-12-15', NULL, '10:00AM', '2:00PM', '16hrs', 1890, 'International', 'arrived', 8000, 'flight'),
('Spirit', 'NK1212', 'Seattle', 'Chicago', '2022-12-16', NULL, '10:00AM', '3:30AM', '5.5hrs', 290, 'domestic', 'In-flight', 11500, 'flight'),
('Spirit', 'NK1298', 'Dallas', 'Miami', '2022-12-20', NULL, '9:00AM', '12:00PM', '3hrs', 650, 'domestic', 'delayed', 50000, 'flight'),
('Spirit', 'NK1400', 'Austin', 'Atlanta', '2022-12-15', NULL, '8:00AM', '10:30AM', '2.5hrs', 500, 'domestic', 'arrived', 15000, 'flight'),
('Spirit', 'NK1793', 'Chicago', 'Seattle', '2022-12-22', NULL, '11:00AM', '5:30PM', '6.5hrs', 390, 'domestic', 'delayed', 11700, 'flight'),
('Spirit', 'NK2308', 'Atlanta', 'Austin', '2022-12-22', NULL, '4:00AM', '7:30AM', '3.5hrs', 470, 'domestic', 'delayed', 16000, 'flight'),
('Spirit', 'NK2645', 'Los Angels', 'Denver', '2022-12-18', NULL, '4:00AM', '6:30AM', '2.5hrs', 190, 'domestic', 'arrived', 6900, 'flight'),
('Spirit', 'NK2747', 'Miami', 'Dallas', '2022-12-24', NULL, '9:00AM', '12:30PM', '3.5hrs', 590, 'domestic', 'arrived', 52000, 'flight'),
('Spirit', 'NK2900', 'Denver', 'Los Angels', '2022-12-26', NULL, '8:15AM', '11:15AM', '3hrs', 200, 'domestic', 'In-flight', 7100, 'flight+hotel'),
('Qatar', 'QA2849', 'Dallas', 'Doha', '2022-12-15', NULL, '2:30PM', '8:30PM', '18hrs', 2000, 'International', 'In-flight', 8000, 'flight'),
('United ', 'UA1010', 'Miami', 'Dallas', '2022-12-24', NULL, '12:00PM', '4:00PM', '4hrs', 600, 'domestic', 'delayed', 52000, 'flight'),
('United ', 'UA1136', 'Austin', 'Atlanta', '2022-12-15', NULL, '12:00PM', '4:00PM', '4hrs', 390, 'domestic', 'delayed', 15000, 'flight'),
('United ', 'UA1289', 'Atlanta', 'Austin', '2022-12-22', NULL, '5:30PM', '9:30PM', '4hrs', 590, 'domestic', 'In-flight', 16000, 'flight'),
('United ', 'UA1737', 'Los Angels', 'Denver', '2022-12-18', NULL, '1:00PM', '3:30PM', '3hrs', 250, 'domestic', 'delayed', 6900, 'flight'),
('United ', 'UA2448', 'Dallas', 'Miami', '2022-12-20', NULL, '7:00AM', '11:00AM', '4hrs', 440, 'domestic', 'In-flight', 50000, 'flight'),
('United ', 'UA2490', 'Denver', 'Los Angels', '2022-12-26', NULL, '2:30PM', '5:00PM', '2.5hrs', 270, 'domestic', 'arrived', 7100, 'flight'),
('United ', 'UA2637', 'Seattle', 'Chicago', '2022-12-16', NULL, '1:00AM', '7:00PM', '6hrs', 350, 'domestic', 'arrived', 11500, 'flight'),
('United ', 'UA2943', 'Chicago', 'Seattle', '2022-12-22', NULL, '2:00PM', '7:00PM', '5hrs', 420, 'domestic', 'In-flight', 11700, 'flight'),
('Southwest', 'WN1123', 'Chicago', 'Seattle', '2022-12-22', NULL, '7:00AM', '12:00PM', '5hrs', 500, 'domestic', 'arrived', 11700, 'flight'),
('Southwest', 'WN1563', 'Atlanta', 'Austin', '2022-12-22', NULL, '3:30AM', '7:00AM', '3.5hrs', 450, 'domestic', 'arrived', 16000, 'flight'),
('Southwest', 'WN1564', 'Seattle', 'Chicago', '2022-12-16', NULL, '6:00AM', '11:00AM', '5hrs', 450, 'domestic', 'delayed', 11500, 'flight'),
('Southwest', 'WN2279', 'Denver', 'Los Angels', '2022-12-26', NULL, '6:30AM', '8:30PM', '2hrs', 320, 'domestic', 'delayed', 7100, 'flight'),
('Southwest', 'WN2850', 'Miami', 'Dallas', '2022-12-24', NULL, '5:30AM', '9:00AM', '3.5hrs', 550, 'domestic', 'In-flight', 52000, 'flight'),
('Southwest', 'WN3045', 'Austin', 'Atlanta', '2022-12-15', NULL, '6:00AM', '9:00AM', '3hrs', 450, 'domestic', 'In-flight', 15000, 'flight'),
('Southwest', 'WN3183', 'Dallas', 'Miami', '2022-12-20', NULL, '5:00AM', '8:00AM', '3hrs', 350, 'domestic', 'arrived', 50000, 'flight+hotel'),
('Southwest', 'WN3656', 'Los Angels', 'Denver', '2022-12-18', NULL, '8:00AM', '10:00AM', '2hrs', 300, 'domestic', 'In-flight', 6900, 'flight');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_details`
--

CREATE TABLE `hotel_details` (
  `hotel_name` varchar(70) NOT NULL,
  `place` varchar(50) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `price` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `ratings` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_details`
--

INSERT INTO `hotel_details` (`hotel_name`, `place`, `check_in`, `check_out`, `price`, `address`, `phone_no`, `ratings`) VALUES
('Mint House Austin - South Congress', 'Austin', '2022-12-15', '2022-12-22', '700', 'South Austin, Austin', '5124758965', '8.1'),
('Omni Barton ', 'Austin', '2022-12-15', '2022-12-22', '750', 'East austin, Austin', '7852653648', '8.6'),
('Sentral East Austin', 'Austin', '2022-12-15', '2022-12-22', '400', 'Downtown Austin, Austin', '5214365895', '9.2'),
('Hyatt House', 'Austin', '2022-12-15', '2022-12-22', '450', 'Downtown Austin, Austin', '7896535184', '8.9'),
('The Carpenter Hotel', 'Austin', '2022-12-15', '2022-12-22', '500', 'South Austin, Austin', '5486384699', '8.8'),
('Reverb by Hard Rock', 'Atlanta', '2022-12-15', '2022-12-22', '600', 'Midtown Atlanta, Atlanta', '9568133565', '9.2'),
('Hyatt Regency Atlanta', 'Atlanta', '2022-12-15', '2022-12-22', '350', 'Downtown Atlanta, Atlanta', '6584238733', '8.6'),
('Comfort Inn Atlanta', 'Atlanta', '2022-12-15', '2022-12-22', '550', 'Cobb Galleria, Atlanta', '8625423566', '8.1'),
('Midtown Retreat ', 'Atlanta', '2022-12-15', '2022-12-22', '400', 'College park, Atlanta', '3651814998', '8.7'),
('The Georgian Terrace', 'Atlanta', '2022-12-15', '2022-12-22', '700', 'Buckhead - North Atlanta, Atlanta', '6589318488', '8'),
('Hyatt Regency Dallas', 'Dallas', '2022-12-20', '2022-12-24', '800', 'Downtown Dallas, Dallas', '6589318488', '9.4'),
('Sonder at commerce', 'Dallas', '2022-12-20', '2022-12-24', '850', 'Main Street District, Dallas', '5431985898', '8.5'),
('Alexis Hotel & Banquets', 'Dallas', '2022-12-20', '2022-12-24', '700', 'Arts District, Dallas', '8569548723', '7.1'),
('The Lumen ', 'Dallas', '2022-12-20', '2022-12-24', '750', 'Main Street District, Dallas', '9753239598', '7.6'),
('The Beeman Hotel', 'Dallas', '2022-12-20', '2022-12-24', '600', 'Downtown Dallas, Dallas', '3265448789', '8.3'),
('Kimpton Hotel', 'Miami', '2022-12-20', '2022-12-24', '400', 'Downtown Miami, Miami', '6556568498', '8.3'),
('The Elser Hotel', 'Miami', '2022-12-20', '2022-12-24', '450', 'Brickell, Miami', '7989564647', '9.4'),
('Mint House Miami ', 'Miami', '2022-12-20', '2022-12-24', '600', 'Miami Springs, Miami', '6685798651', '8.9'),
('Hilton Garden', 'Miami', '2022-12-20', '2022-12-24', '620', 'Downtown Miami, Miami', '9798539589', '8.6'),
('YVE Hotel', 'Miami', '2022-12-20', '2022-12-24', '490', 'Brickell, Miami', '5163589798', '7.4'),
('The Mediterranean', 'Seattle', '2022-12-16', '2022-12-22', '500', 'Queen Anne, Seattle', '714-372-6097', '8.6'),
('Sonder at solis', 'Seattle', '2022-12-16', '2022-12-22', '390', 'Capitol Hill, Seattle', '224-347-1926', '8.7'),
('Warwick seattle', 'Seattle', '2022-12-16', '2022-12-22', '450', 'Bell town, seattle', '217-873-2892', '7.2'),
('Lotte Hotel Seattle', 'Seattle', '2022-12-16', '2022-12-22', '630', 'Seattle central Business District, Seattle', '940-946-4607', '8.5'),
('IHG Hotel', 'Seattle', '2022-12-16', '2022-12-22', '665', 'Seattle central Business District, Seattle', '4697729280', '8.3'),
('Congress Plaza', 'Chicago', '2022-12-16', '2022-12-22', '500', 'Magninficient Mile, Chicago', '3099669960', '8.8'),
('Sonder The opal', 'Chicago', '2022-12-16', '2022-12-22', '620', 'Chicago loop, Chicago', '9069449364', '7.2'),
('Hotel Felix', 'Chicago', '2022-12-16', '2022-12-22', '390', 'Streeterville, Chicago', '5615366395', '7.2'),
('The Hoxton', 'Chicago', '2022-12-16', '2022-12-22', '450', 'River North, Chicago', '7179456059', '8.4'),
('Hilton Chicago', 'Chicago', '2022-12-16', '2022-12-22', '410', 'Chicago loop, Chicago', '3105459953', '8.1'),
('The Metric', 'Los Angels', '2022-12-18', '2022-12-26', '300', 'LAX Area, Los Angels', '(360) 682-5538', '8.8'),
('The Adler', 'Los Angels', '2022-12-18', '2022-12-26', '700', 'Downtown LA, Los Angels', '(541) 746-1076', '7.9'),
('Ace hotel', 'Los Angels', '2022-12-18', '2022-12-26', '750', 'Hollywood, Los Angels', '(406) 468-2434', '8.1'),
('AKA Beverly Hills', 'Los Angels', '2022-12-18', '2002-12-26', '800', 'Beverly Hills, Los Angels', '(765) 482-3922', '9.4'),
('Bayside Hotel', 'Los Angels', '2022-12-18', '2002-12-26', '850', 'Santa Monica, Los Angels', '(702) 829-5454', '8.3'),
('Sonder Zuni', 'Denver', '2022-12-18', '2022-12-26', '500', 'Lo-Hi, Denver', '(475) 371-3581', '8.8'),
('Grand Hyatt ', 'Denver', '2022-12-18', '2022-12-26', '600', 'Downtown Denver, Denver', '(289) 901-1324', '8.9'),
('The source hotel ', 'Denver', '2022-12-18', '2022-12-26', '650', 'River North Art District, Denver', '(982) 562-2724', '8.2'),
('Comfort Inn Denver ', 'Denver', '2022-12-18', '2022-12-26', '750', 'Stapleton, Denver', '(818) 919-1731', '8.2'),
('South River residences', 'Denver', '2022-12-18', '2022-12-26', '550', 'Lo-Do, Denver', '(759) 829-7878', '8.2');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_table`
--

CREATE TABLE `hotel_table` (
  `hotel_name` varchar(70) NOT NULL,
  `hotel_no` int(10) NOT NULL,
  `source` varchar(10) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `depart_time` varchar(10) NOT NULL,
  `arrival_time` varchar(10) NOT NULL,
  `duration` varchar(30) NOT NULL,
  `cost` int(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `ratings` varchar(10) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel_table`
--

INSERT INTO `hotel_table` (`hotel_name`, `hotel_no`, `source`, `destination`, `check_in`, `check_out`, `depart_time`, `arrival_time`, `duration`, `cost`, `address`, `phone_no`, `ratings`, `type`) VALUES
('Mint House Austin - South Congress', 1, '', 'Austin', '2022-12-15', '2022-12-22', '', '', '', 700, 'South Austin, Austin', '5124758965', '8.1', 'hotel'),
('Omni Barton ', 2, '', 'Austin', '2022-12-15', '2022-12-22', '', '', '', 750, 'East austin, Austin', '7852653648', '8.6', 'hotel'),
('Sentral East Austin', 3, '', 'Austin', '2022-12-15', '2022-12-22', '', '', '', 400, 'Downtown Austin, Austin', '5214365895', '9.2', 'hotel'),
('Hyatt House', 4, '', 'Austin', '2022-12-15', '2022-12-22', '', '', '', 450, 'Downtown Austin, Austin', '7896535184', '8.9', 'hotel'),
('The Carpenter Hotel', 5, '', 'Austin', '2022-12-15', '2022-12-22', '', '', '', 500, 'South Austin, Austin', '5486384699', '8.8', 'hotel'),
('Reverb by Hard Rock', 6, '', 'Atlanta', '2022-12-15', '2022-12-22', '', '', '', 600, 'Midtown Atlanta, Atlanta', '9568133565', '9.2', 'hotel'),
('Hyatt Regency Atlanta', 7, '', 'Atlanta', '2022-12-15', '2022-12-22', '', '', '', 350, 'Downtown Atlanta, Atlanta', '6584238733', '8.6', 'hotel'),
('Comfort Inn Atlanta', 8, '', 'Atlanta', '2022-12-15', '2022-12-22', '', '', '', 550, 'Cobb Galleria, Atlanta', '8625423566', '8.1', 'hotel'),
('Midtown Retreat ', 9, '', 'Atlanta', '2022-12-15', '2022-12-22', '', '', '', 400, 'College park, Atlanta', '3651814998', '8.7', 'hotel'),
('The Georgian Terrace', 10, '', 'Atlanta', '2022-12-15', '2022-12-22', '', '', '', 700, 'Buckhead - North Atlanta, Atlanta', '6589318488', '8', 'hotel'),
('Hyatt Regency Dallas', 11, '', 'Dallas', '2022-12-20', '2022-12-24', '', '', '', 800, 'Downtown Dallas, Dallas', '6589318488', '9.4', 'hotel'),
('Sonder at commerce', 12, '', 'Dallas', '2022-12-20', '2022-12-24', '', '', '', 850, 'Main Street District, Dallas', '5431985898', '8.5', 'hotel'),
('Alexis Hotel & Banquets', 13, '', 'Dallas', '2022-12-20', '2022-12-24', '', '', '', 700, 'Arts District, Dallas', '8569548723', '7.1', 'hotel'),
('The Lumen ', 14, '', 'Dallas', '2022-12-20', '2022-12-24', '', '', '', 750, 'Main Street District, Dallas', '9753239598', '7.6', 'hotel'),
('The Beeman Hotel', 15, '', 'Dallas', '2022-12-20', '2022-12-24', '', '', '', 600, 'Downtown Dallas, Dallas', '3265448789', '8.3', 'hotel'),
('Kimpton Hotel', 16, '', 'Miami', '2022-12-20', '2022-12-24', '', '', '', 400, 'Downtown Miami, Miami', '6556568498', '8.3', 'hotel'),
('The Elser Hotel', 17, '', 'Miami', '2022-12-20', '2022-12-24', '', '', '', 450, 'Brickell, Miami', '7989564647', '9.4', 'hotel'),
('Mint House Miami ', 18, '', 'Miami', '2022-12-20', '2022-12-24', '', '', '', 600, 'Miami Springs, Miami', '6685798651', '8.9', 'hotel'),
('Hilton Garden', 19, '', 'Miami', '2022-12-20', '2022-12-24', '', '', '', 620, 'Downtown Miami, Miami', '9798539589', '8.6', 'hotel'),
('YVE Hotel', 20, '', 'Miami', '2022-12-20', '2022-12-24', '', '', '', 490, 'Brickell, Miami', '5163589798', '7.4', 'hotel'),
('The Mediterranean', 21, '', 'Seattle', '2022-12-16', '2022-12-22', '', '', '', 500, 'Queen Anne, Seattle', '714-372-6097', '8.6', 'hotel'),
('Sonder at solis', 22, '', 'Seattle', '2022-12-16', '2022-12-22', '', '', '', 390, 'Capitol Hill, Seattle', '224-347-1926', '8.7', 'hotel'),
('Warwick seattle', 23, '', 'Seattle', '2022-12-16', '2022-12-22', '', '', '', 450, 'Bell town, seattle', '217-873-2892', '7.2', 'hotel'),
('Lotte Hotel Seattle', 24, '', 'Seattle', '2022-12-16', '2022-12-22', '', '', '', 630, 'Seattle central Business District, Seattle', '940-946-4607', '8.5', 'hotel'),
('IHG Hotel', 25, '', 'Seattle', '2022-12-16', '2022-12-22', '', '', '', 665, 'Seattle central Business District, Seattle', '4697729280', '8.3', 'hotel'),
('Congress Plaza', 26, '', 'Chicago', '2022-12-16', '2022-12-22', '', '', '', 500, 'Magninficient Mile, Chicago', '3099669960', '8.8', 'hotel'),
('Sonder The opal', 27, '', 'Chicago', '2022-12-16', '2022-12-22', '', '', '', 620, 'Chicago loop, Chicago', '9069449364', '7.2', 'hotel'),
('Hotel Felix', 28, '', 'Chicago', '2022-12-16', '2022-12-22', '', '', '', 390, 'Streeterville, Chicago', '5615366395', '7.2', 'hotel'),
('The Hoxton', 29, '', 'Chicago', '2022-12-16', '2022-12-22', '', '', '', 450, 'River North, Chicago', '7179456059', '8.4', 'hotel'),
('Hilton Chicago', 30, '', 'Chicago', '2022-12-16', '2022-12-22', '', '', '', 410, 'Chicago loop, Chicago', '3105459953', '8.1', 'hotel'),
('The Metric', 31, '', 'Los Angels', '2022-12-18', '2022-12-26', '', '', '', 300, 'LAX Area, Los Angels', '(360) 682-5538', '8.8', 'hotel'),
('The Adler', 32, '', 'Los Angels', '2022-12-18', '2022-12-26', '', '', '', 700, 'Downtown LA, Los Angels', '(541) 746-1076', '7.9', 'hotel'),
('Ace hotel', 33, '', 'Los Angels', '2022-12-18', '2022-12-26', '', '', '', 750, 'Hollywood, Los Angels', '(406) 468-2434', '8.1', 'hotel'),
('AKA Beverly Hills', 34, '', 'Los Angels', '2022-12-18', '2002-12-26', '', '', '', 800, 'Beverly Hills, Los Angels', '(765) 482-3922', '9.4', 'hotel'),
('Bayside Hotel', 35, '', 'Los Angels', '2022-12-18', '2002-12-26', '', '', '', 850, 'Santa Monica, Los Angels', '(702) 829-5454', '8.3', 'hotel'),
('Sonder Zuni', 36, '', 'Denver', '2022-12-18', '2022-12-26', '', '', '', 500, 'Lo-Hi, Denver', '(475) 371-3581', '8.8', 'hotel'),
('Grand Hyatt ', 37, '', 'Denver', '2022-12-18', '2022-12-26', '', '', '', 600, 'Downtown Denver, Denver', '(289) 901-1324', '8.9', 'hotel'),
('The source hotel ', 38, '', 'Denver', '2022-12-18', '2022-12-26', '', '', '', 650, 'River North Art District, Denver', '(982) 562-2724', '8.2', 'hotel'),
('Comfort Inn Denver ', 39, '', 'Denver', '2022-12-18', '2022-12-26', '', '', '', 750, 'Stapleton, Denver', '(818) 919-1731', '8.2', 'hotel'),
('South River residences', 40, '', 'Denver', '2022-12-18', '2022-12-26', '', '', '', 550, 'Lo-Do, Denver', '(759) 829-7878', '8.2', 'hotel');

-- --------------------------------------------------------

--
-- Table structure for table `item_table`
--

CREATE TABLE `item_table` (
  `item_id` int(20) NOT NULL,
  `item_name` varchar(20) NOT NULL,
  `item_image` varchar(200) NOT NULL,
  `item_price` int(20) NOT NULL,
  `item_stock` int(20) NOT NULL,
  `item_description` varchar(200) NOT NULL,
  `subcategory_id` int(20) NOT NULL,
  `item_remarks` varchar(20) NOT NULL,
  `seller_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item_table`
--

INSERT INTO `item_table` (`item_id`, `item_name`, `item_image`, `item_price`, `item_stock`, `item_description`, `subcategory_id`, `item_remarks`, `seller_id`) VALUES
(204, 'Shoes', 'https://images.unsplash.com/photo-1491553895911-0055eca6402d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80', 1000, 5, '', 401, 'very good ', 102),
(501, 'sony', 'https://5.imimg.com/data5/RT/DE/RQ/SELLER-65447592/sony-bravia-led-tv-500x500.jpg', 80000, 20, '4K for everyone with best in class picture quality and Dolby + DTS HD audio for complete cinematic experience, comes with supporting applications like Netflix, Prime Video, Hotstar.', 402, 'good', 101),
(502, 'bata', 'https://assets.charmboard.com/images/w_1920,h_1080/x_383,y_397,w_971,h_549,c_crop,f_auto,q_auto,e_sharpen/h_541/im/lc/859214/bata-in-sushant-kriti-x-bata-bata-india-2018.jpg', 100, 10, 'Experience great comfort walking in this pair of Black Casual Shoes from the house of BATA Featuring a contemporary refined design with exceptional comfort', 401, 'average', 102),
(503, 'OnePlus 7', 'https://fdn.gsmarena.com/imgroot/reviews/19/oneplus-7/lifestyle/-727w2/gsmarena_006.jpg', 35000, 3, 'OnePlus 7 smartphone has a Optic AMOLED display. It measures 157.7 mm x 74.8 mm x 8.2 mm and weighs 182 grams. The screen has a resolution of 1080 x 2340 pixels and 402 ppi pixel density. ', 403, 'very good ', 102),
(504, 'Mac Os', 'https://images.unsplash.com/photo-1517694712202-14dd9538aa97?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80', 60000, 3, '', 404, 'very good ', 102),
(505, 'Samsung', 'https://images.unsplash.com/photo-1544866092-1935c5ef2a8f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1055&q=80', 10000, 2, '', 404, 'very good ', 101),
(506, 'Sony', 'https://images.unsplash.com/flagged/photo-1551954810-43cd6aef5b1f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1190&q=80', 80000, 3, '', 402, 'very good ', 101),
(507, 'Lenovo ', 'https://images.unsplash.com/photo-1527864550417-7fd91fc51a46?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1047&q=80', 900, 5, 'Mouse', 404, 'very good ', 102),
(508, 'KeyBoard', 'https://images.unsplash.com/photo-1541140532154-b024d705b90a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=676&q=80', 500, 10, 'Intel keyboards', 404, 'very good ', 101),
(509, 'Casuals', 'https://images.unsplash.com/photo-1534233650908-b471f2350922?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1189&q=80', 2000, 10, 'comfort', 401, 'very good ', 101);

-- --------------------------------------------------------

--
-- Table structure for table `seller_signup_table`
--

CREATE TABLE `seller_signup_table` (
  `seller_id` int(30) NOT NULL,
  `seller_username` varchar(30) NOT NULL,
  `seller_password` varchar(30) NOT NULL,
  `seller_company` varchar(30) NOT NULL,
  `seller_brief` varchar(30) NOT NULL,
  `seller_gst` int(30) NOT NULL,
  `seller_address` varchar(30) NOT NULL,
  `seller_email` varchar(30) NOT NULL,
  `seller_contact` int(30) NOT NULL,
  `seller_website` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller_signup_table`
--

INSERT INTO `seller_signup_table` (`seller_id`, `seller_username`, `seller_password`, `seller_company`, `seller_brief`, `seller_gst`, `seller_address`, `seller_email`, `seller_contact`, `seller_website`) VALUES
(101, 'sindhu', '123', 'Cts', 'Very Good', 100, 'hyderabad', 'abc@gmail.com', 1232456788, 'www.abc.com'),
(102, 'prudhvi', '123', 'cts', 'Good coder', 147, 'hyderabad', 'pro@gmail.com', 125478963, 'www.prudhvi.com');

-- --------------------------------------------------------

--
-- Table structure for table `signup_table`
--

CREATE TABLE `signup_table` (
  `signup_id` int(3) NOT NULL,
  `firstname` varchar(15) NOT NULL,
  `middlename` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `creditcardtype` varchar(15) NOT NULL,
  `cardnumber` int(16) NOT NULL,
  `expiration` varchar(15) NOT NULL,
  `cvv` int(3) NOT NULL,
  `miles` int(20) NOT NULL DEFAULT 0,
  `feedback` varchar(100) NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup_table`
--

INSERT INTO `signup_table` (`signup_id`, `firstname`, `middlename`, `lastname`, `address`, `email`, `username`, `password`, `creditcardtype`, `cardnumber`, `expiration`, `cvv`, `miles`, `feedback`) VALUES
(1, '', '', '', '', '', '', '', '', 0, '', 0, 0, ' '),
(2, 'a', 'a', 'a', '', 'aa', '1', '1', 'sa', 12, '12/1', 0, 55000, ' '),
(3, 'k', '', '', '', 'abc@gmail.com', 'k', '1', 'master', 1234456677, '12/09', 0, 495000, ' '),
(4, 'nav', 'nav', 'nav', '', '', 'nav', 'nav', '', 0, '', 0, 35000, ' ');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category_table`
--

CREATE TABLE `sub_category_table` (
  `subcategory_id` int(20) NOT NULL,
  `subcategory_name` varchar(20) NOT NULL,
  `category_id` int(20) NOT NULL,
  `subcategory_brief` varchar(20) NOT NULL,
  `subcategory_gst` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_category_table`
--

INSERT INTO `sub_category_table` (`subcategory_id`, `subcategory_name`, `category_id`, `subcategory_brief`, `subcategory_gst`) VALUES
(401, 'sandals', 301, 'for foott', 125),
(402, 'tv', 302, 'watch tv', 147),
(403, 'one plus', 303, '64gb', 10),
(404, 'Devices', 302, 'laptops', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill_details_table`
--
ALTER TABLE `bill_details_table`
  ADD PRIMARY KEY (`bill_details_id`),
  ADD KEY `bill_id` (`bill_id`),
  ADD KEY `flight_no` (`flight_no`),
  ADD KEY `hotel_no` (`hotel_no`);

--
-- Indexes for table `bill_table`
--
ALTER TABLE `bill_table`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `buyer_id` (`buyer_signup_id`);

--
-- Indexes for table `buyer_signup_table`
--
ALTER TABLE `buyer_signup_table`
  ADD PRIMARY KEY (`buyer_id`);

--
-- Indexes for table `category_table`
--
ALTER TABLE `category_table`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `feedback_table`
--
ALTER TABLE `feedback_table`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `flight_details`
--
ALTER TABLE `flight_details`
  ADD PRIMARY KEY (`flight_no`);

--
-- Indexes for table `flight_table`
--
ALTER TABLE `flight_table`
  ADD PRIMARY KEY (`flight_no`);

--
-- Indexes for table `hotel_table`
--
ALTER TABLE `hotel_table`
  ADD PRIMARY KEY (`hotel_no`);

--
-- Indexes for table `item_table`
--
ALTER TABLE `item_table`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `subcategory_id` (`subcategory_id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `seller_signup_table`
--
ALTER TABLE `seller_signup_table`
  ADD PRIMARY KEY (`seller_id`);

--
-- Indexes for table `signup_table`
--
ALTER TABLE `signup_table`
  ADD PRIMARY KEY (`signup_id`);

--
-- Indexes for table `sub_category_table`
--
ALTER TABLE `sub_category_table`
  ADD PRIMARY KEY (`subcategory_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill_details_table`
--
ALTER TABLE `bill_details_table`
  MODIFY `bill_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=908;

--
-- AUTO_INCREMENT for table `bill_table`
--
ALTER TABLE `bill_table`
  MODIFY `bill_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=796;

--
-- AUTO_INCREMENT for table `buyer_signup_table`
--
ALTER TABLE `buyer_signup_table`
  MODIFY `buyer_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `feedback_table`
--
ALTER TABLE `feedback_table`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hotel_table`
--
ALTER TABLE `hotel_table`
  MODIFY `hotel_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `signup_table`
--
ALTER TABLE `signup_table`
  MODIFY `signup_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill_details_table`
--
ALTER TABLE `bill_details_table`
  ADD CONSTRAINT `bill_details_table_ibfk_1` FOREIGN KEY (`bill_id`) REFERENCES `bill_table` (`bill_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bill_details_table_ibfk_2` FOREIGN KEY (`flight_no`) REFERENCES `flight_table` (`flight_no`),
  ADD CONSTRAINT `bill_details_table_ibfk_3` FOREIGN KEY (`hotel_no`) REFERENCES `hotel_table` (`hotel_no`);

--
-- Constraints for table `bill_table`
--
ALTER TABLE `bill_table`
  ADD CONSTRAINT `bill_table_ibfk_1` FOREIGN KEY (`buyer_signup_id`) REFERENCES `signup_table` (`signup_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `item_table`
--
ALTER TABLE `item_table`
  ADD CONSTRAINT `item_table_ibfk_1` FOREIGN KEY (`subcategory_id`) REFERENCES `sub_category_table` (`subcategory_id`),
  ADD CONSTRAINT `item_table_ibfk_2` FOREIGN KEY (`seller_id`) REFERENCES `seller_signup_table` (`seller_id`);

--
-- Constraints for table `sub_category_table`
--
ALTER TABLE `sub_category_table`
  ADD CONSTRAINT `sub_category_table_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_table` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
