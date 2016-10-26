-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2016 at 03:56 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yo`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee_info`
--

CREATE TABLE `employee_info` (
  `serial_id` int(11) NOT NULL,
  `employee_id` varchar(50) DEFAULT NULL,
  `employee_firstname` varchar(50) DEFAULT NULL,
  `employee_lastname` varchar(50) DEFAULT NULL,
  `employee_photo` varchar(50) DEFAULT NULL,
  `employee_designation` varchar(50) DEFAULT NULL,
  `employee_department` varchar(50) DEFAULT NULL,
  `employee_dob` varchar(50) DEFAULT NULL,
  `employee_NID` varchar(50) DEFAULT NULL,
  `employee_leave` int(11) DEFAULT NULL,
  `employee_salary` float DEFAULT NULL,
  `employee_phone` varchar(50) DEFAULT NULL,
  `employee_address` varchar(50) DEFAULT NULL,
  `login_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_info`
--

INSERT INTO `employee_info` (`serial_id`, `employee_id`, `employee_firstname`, `employee_lastname`, `employee_photo`, `employee_designation`, `employee_department`, `employee_dob`, `employee_NID`, `employee_leave`, `employee_salary`, `employee_phone`, `employee_address`, `login_id`) VALUES
(1, '123rrs', 'nazir', 'ahmmed', 'uploads/Lighthouse.jpg', 'super admin', 'Administration', '10/21/2016', '420', 28, 28000, '01687554', 'barmuda', '123rrs'),
(11, '90832587', 'sumu', 'mahmud', 'uploads/brushless_convert.JPG', 'operator', 'Employee', '06/14/2016', NULL, NULL, 15000, '01814054', 'bd', '90832587'),
(12, '725c2d09', 's', 's', 'uploads/cart_icon.png', 'admin', 'Administration', '07/04/2016', NULL, NULL, 20000, '0191097', 'austria', '725c2d09'),
(13, 'd17c2fc3', 'add', 'add', 'uploads/Koala.jpg', 'operator', 'Employee', '', NULL, NULL, 15000, '+9992260815', 'africa', 'd17c2fc3'),
(14, 'c69c565e', 'Sakib', 'Vai', 'uploads/S.jpg', NULL, 'Administration', '04/05/2016', NULL, NULL, NULL, '01747912', 'Bangladesh', 'c69c565e'),
(15, '9c5d3fd5', 'Nazir', 'Ahmmed', 'uploads/VUBON.jpg', NULL, 'Management', '10/21/2016', NULL, NULL, NULL, '01688554', 'Lalbag', '9c5d3fd5'),
(16, 'f16f3fd5', 'Tuhin', 'Vai', 'uploads/tuhin.jpg', NULL, 'Employee', '08/01/2016', NULL, NULL, NULL, '01687499', 'Dhaka', 'f16f3fd5');

-- --------------------------------------------------------

--
-- Table structure for table `employee_service_info`
--

CREATE TABLE `employee_service_info` (
  `serial_id` int(11) NOT NULL,
  `service_date` varchar(30) DEFAULT NULL,
  `login_time` varchar(20) DEFAULT NULL,
  `logout_time` varchar(20) DEFAULT '',
  `late_reason` varchar(255) DEFAULT NULL,
  `early_reason` varchar(255) DEFAULT NULL,
  `over_time` int(11) DEFAULT NULL,
  `less_time` int(11) DEFAULT NULL,
  `daily_salary` float DEFAULT NULL,
  `asked_leave` varchar(21) DEFAULT NULL,
  `leave_reason` text,
  `approve_overtime` tinyint(1) DEFAULT '0',
  `approve_leave` tinyint(1) DEFAULT '0',
  `login_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_service_info`
--

INSERT INTO `employee_service_info` (`serial_id`, `service_date`, `login_time`, `logout_time`, `late_reason`, `early_reason`, `over_time`, `less_time`, `daily_salary`, `asked_leave`, `leave_reason`, `approve_overtime`, `approve_leave`, `login_id`) VALUES
(11, '08/06/2016', '12:35:01am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0, '123rrs'),
(12, '09/06/2016', '12:38:15am', '11:02:23pm', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0, '123rrs'),
(13, '09/06/2016', '03:56:24am', '12:49:03am', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0, '90832587'),
(14, '09/06/2016', '04:07:22am', '', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0, 'd17c2fc3'),
(15, '10/06/2016', '02:54:38am', '08:55:54pm', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0, '123rrs'),
(16, '11/06/2016', '12:56:02am', '07:15:41am', '', NULL, NULL, NULL, NULL, NULL, '', 0, 0, '123rrs'),
(17, '11/06/2016', '05:28:07am', '01:30:45am', '', NULL, NULL, NULL, NULL, NULL, '', 0, 0, '725c2d09'),
(18, '13/06/2016', '11:19:57pm', '11:20:47pm', 'no', NULL, NULL, NULL, NULL, NULL, '', 0, 0, '123rrs'),
(19, '15/06/2016', '12:40:20am', '04:42:24am', 'yo', NULL, NULL, NULL, NULL, NULL, '', 0, 0, '123rrs'),
(20, '16/06/2016', '10:50:28am', '12:37:05pm', 'nononon', NULL, NULL, NULL, NULL, NULL, '', 0, 0, '123rrs'),
(21, '16/06/2016', '10:51:47am', '10:52:12am', 'yesss', NULL, NULL, NULL, NULL, NULL, '', 0, 0, '725c2d09'),
(22, '17/06/2016', '01:32:56am', '11:04:07pm', 'yo no sorry', NULL, NULL, NULL, NULL, '20-06-2016,22-06-2016', 'i need it man', 0, 0, '123rrs'),
(24, '17/06/2016', '08:16:27pm', '09:54:18pm', 'sorry', NULL, NULL, NULL, NULL, '20-06-2016,25-06-2016', 'no reason', 0, 2, '90832587'),
(25, '17/06/2016', '10:51:09pm', '10:57:11pm', 'sorry man', NULL, NULL, NULL, NULL, '18-06-2016,19-06-2016', 'i have my reasons', 0, 1, 'd17c2fc3'),
(36, '18/06/2016', '9:00:00am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 4, 'd17c2fc3'),
(37, '19/06/2016', '9:00:00am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 4, 'd17c2fc3'),
(38, '03/07/2016', '03:21:48am', '03:21:55am', NULL, 'xfg', NULL, NULL, NULL, NULL, '', 0, 0, '123rrs'),
(115, '06/07/2016', '08:08:24 AM', '08:08:48 AM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '90832587'),
(117, '06/07/2016', '08:08:39 AM', '08:08:59 AM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '725c2d09'),
(121, '06/07/2016', '08:25:23 AM', '08:38:58 AM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'd17c2fc3'),
(122, '07/07/2016', '06:33:35 AM', '06:33:56 AM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '90832587'),
(123, '07/07/2016', '06:34:07 AM', '06:34:58 AM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '725c2d09'),
(124, '07/07/2016', '11:56:01 AM', '11:59:03 AM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'd17c2fc3'),
(127, '12/07/2016', '02:22:21 AM', '02:22:31 AM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '9c5d3fd5'),
(134, '26/08/2016', '20:32:14 PM', '20:34:39 PM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'f16f3fd5'),
(135, '26/08/2016', '09:33:41 PM', '10:03:01 PM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '9c5d3fd5'),
(136, '26/08/2016', '10:03:08 PM', '10:04:08 PM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'c69c565e'),
(137, '27/08/2016', '02:44:19 AM', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '9c5d3fd5'),
(138, '27/08/2016', '02:45:34 AM', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'f16f3fd5');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_unique_id` varchar(20) NOT NULL,
  `employee_email` varchar(100) DEFAULT NULL,
  `employee_password` varchar(150) NOT NULL,
  `employee_role` varchar(50) DEFAULT NULL,
  `employee_status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_unique_id`, `employee_email`, `employee_password`, `employee_role`, `employee_status`) VALUES
('123rrs', 'admin@g.com', '21232f297a57a5a743894a0e4a801fc3', 'super admin', 1),
('725c2d09', 'goodvubo@gmail.com', '004a2dc31dea0c514e8ab6d4a9d2f3b1', 'admin', 1),
('90832587', 'sumu@g.com', 'a223f3fec3c0d51f40869e68af87c6df', 'operator', 1),
('9c5d3fd5', 'vubon@g.com', '151d18eb7d1acfbdefb8da9a76cc38ad', NULL, 1),
('c69c565e', 'sakib.cse@gmail.com', '2e0f8da76641999656b58351040a5d01', NULL, 1),
('d17c2fc3', 'add@g.com', '34ec78fcc91ffb1e54cd85e4a0924332', 'operator', 1),
('f16f3fd5', 'tuhin@vai.com', 'b43ae3359bac8c4fa6c4a58f0ee16e5e', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_info`
--
ALTER TABLE `employee_info`
  ADD PRIMARY KEY (`serial_id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `employee_service_info`
--
ALTER TABLE `employee_service_info`
  ADD PRIMARY KEY (`serial_id`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_unique_id`),
  ADD UNIQUE KEY `employee_email` (`employee_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee_info`
--
ALTER TABLE `employee_info`
  MODIFY `serial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `employee_service_info`
--
ALTER TABLE `employee_service_info`
  MODIFY `serial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_info`
--
ALTER TABLE `employee_info`
  ADD CONSTRAINT `employee_info_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `login` (`login_unique_id`);

--
-- Constraints for table `employee_service_info`
--
ALTER TABLE `employee_service_info`
  ADD CONSTRAINT `employee_service_info_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `login` (`login_unique_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
