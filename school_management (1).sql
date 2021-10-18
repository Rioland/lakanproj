-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2021 at 12:45 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `examination`
--

CREATE TABLE `examination` (
  `id` int(100) NOT NULL,
  `schl_name` varchar(100) DEFAULT NULL,
  `session` varchar(50) DEFAULT NULL,
  `Subject` varchar(30) DEFAULT NULL,
  `Class` varchar(30) DEFAULT NULL,
  `Arm` varchar(30) DEFAULT NULL,
  `Time` varchar(30) DEFAULT NULL,
  `Questions` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(100) NOT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `Phone_no` varchar(40) DEFAULT NULL,
  `Username` varchar(40) DEFAULT NULL,
  `Password` varchar(40) DEFAULT NULL,
  `Gender` varchar(40) DEFAULT NULL,
  `Position` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `Name`, `Email`, `Phone_no`, `Username`, `Password`, `Gender`, `Position`) VALUES
(5, 'Steven Mark', 'steven19@gmail.com', '0845342332', 'steven12', '1234', 'Male', 'Staff'),
(86, 'AKINRINMADE PRAISE', 'praiseakinrinmade@gmail.com', '07067779397', 'SAVANT123', 'praisejimmy', 'Male', 'Admin'),
(87, 'praise', 'praise@gmail.com', '07067779397', 'praizzy16', '1234', 'Male', 'Admin'),
(88, 'praise', 'praise@gmail.com', '07067779397', 'praizzy16', '1234', 'Male', 'Admin'),
(89, 'praise', 'praise@gmail.com', '07067779397', 'praizzy16', '1234', 'Male', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `schl_info`
--

CREATE TABLE `schl_info` (
  `id` int(50) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Motto` varchar(30) DEFAULT NULL,
  `Creation_date` date DEFAULT NULL,
  `Type_of_schl` varchar(30) DEFAULT NULL,
  `Level` varchar(30) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `no_of_classes` varchar(50) DEFAULT NULL,
  `no_of_staffs` varchar(50) DEFAULT NULL,
  `no_of_students` varchar(50) DEFAULT NULL,
  `Postal code` varchar(50) DEFAULT NULL,
  `Management_name` varchar(50) DEFAULT NULL,
  `Management_phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schl_info`
--

INSERT INTO `schl_info` (`id`, `Name`, `Motto`, `Creation_date`, `Type_of_schl`, `Level`, `Address`, `no_of_classes`, `no_of_staffs`, `no_of_students`, `Postal code`, `Management_name`, `Management_phone`) VALUES
(13, 'GREATER TOMORROW COLLEGE', 'ARMED WITH THE TRUTH', NULL, 'Private', 'Secondary', 'ARIGIDI AKOKO', '12', '80', '600', '102943', 'LAWAL', '0708959432');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(100) NOT NULL,
  `Employee_no` varchar(100) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `DOA` date DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `Department` varchar(40) DEFAULT NULL,
  `phone_no` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `post_of_office` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `Employee_no`, `fname`, `DOB`, `DOA`, `gender`, `type`, `Department`, `phone_no`, `address`, `email`, `post_of_office`) VALUES
(7, '004', 'Jerome Steven', '1967-08-13', '2021-08-07', 'Male', 'Teaching', 'ICT', '0803579657', 'Ikare', 'jerome@gmail.com', 'Mthematics Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(100) NOT NULL,
  `admission_no` varchar(50) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `date_of_admission` date DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `grade` varchar(50) DEFAULT NULL,
  `arm` varchar(20) DEFAULT NULL,
  `phone_no` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `pphone` varchar(50) DEFAULT NULL,
  `pemail` varchar(50) DEFAULT NULL,
  `paddress` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `admission_no`, `fname`, `date_of_birth`, `date_of_admission`, `gender`, `grade`, `arm`, `phone_no`, `address`, `pname`, `pphone`, `pemail`, `paddress`) VALUES
(8, '006', 'AJAYI SAMUEL', '2006-01-14', '2017-09-04', 'Male', 'Ss1', 'D', '081956785', 'AKURE', 'AJAYI', '09067239432', 'ajayi@gmail.com', 'AKURE');

-- --------------------------------------------------------

--
-- Table structure for table `test_question`
--

CREATE TABLE `test_question` (
  `id` int(100) NOT NULL,
  `school_name` varchar(50) DEFAULT NULL,
  `session` varchar(50) DEFAULT NULL,
  `subject` varchar(20) DEFAULT NULL,
  `grade` varchar(20) DEFAULT NULL,
  `arm` varchar(20) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `quest` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test_question`
--

INSERT INTO `test_question` (`id`, `school_name`, `session`, `subject`, `grade`, `arm`, `time`, `quest`) VALUES
(2, 'GREATER TOMORROW COLLEGE', '3RD TERM ACADEMIC SESSION 2020/2021', 'PHE', 'Js1', 'A', '1HR', 'select correct option and submit in peace\n\n1.Which of the following is an equipement for basketball\na.stick\nb.ball\nc.bat\nd.egg'),
(3, 'GRETER TOMORROW COLLEGE', 'THIRD TERM ACADEMIC SESSION 2020/2021', 'FRENCH', 'Js1', 'A', '1HR', 'Answer all questions here\n\n1.What is bag in French?\na.La bag\nb.La sac\nc.Le sac\nd.Lo table');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `id` int(100) NOT NULL,
  `Day` varchar(40) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Period` varchar(40) DEFAULT NULL,
  `Grade` varchar(40) DEFAULT NULL,
  `Arm` varchar(40) DEFAULT NULL,
  `Time` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`id`, `Day`, `Subject`, `Period`, `Grade`, `Arm`, `Time`) VALUES
(2, 'Monday', 'Mathematics', '1st', 'Js1', 'A', '9:00'),
(3, 'Tuesday', 'English', '2nd', 'Js1', 'A', '9:40 '),
(4, 'Monday', 'French', '1st', 'Js1', 'B', '9:00-9:40'),
(5, 'Monday', 'PHE', '1st', 'Js1', 'A', '9:00-10:00'),
(6, 'Monday', 'CIVICS', '1st', 'Js1', 'A', '12:00-12:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `examination`
--
ALTER TABLE `examination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schl_info`
--
ALTER TABLE `schl_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_question`
--
ALTER TABLE `test_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `examination`
--
ALTER TABLE `examination`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `schl_info`
--
ALTER TABLE `schl_info`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `test_question`
--
ALTER TABLE `test_question`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
