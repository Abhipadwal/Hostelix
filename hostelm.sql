-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 05, 2024 at 03:47 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostelm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'admin@gmail.com', '1234', '2023-09-30 13:43:26', '2023-09-30');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_sn` varchar(255) DEFAULT NULL,
  `course_fn` varchar(255) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, '1', 'Btech', 'Btech', '2023-10-02 12:26:43'),
(2, '45', 'E&tC', 'E&tC', '2023-11-06 07:39:39');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int NOT NULL,
  `roomno` int DEFAULT NULL,
  `seater` int DEFAULT NULL,
  `feespm` int DEFAULT NULL,
  `foodstatus` int DEFAULT NULL,
  `stayfrom` date DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `course` varchar(500) DEFAULT NULL,
  `regno` int DEFAULT NULL,
  `firstName` varchar(500) DEFAULT NULL,
  `middleName` varchar(500) DEFAULT NULL,
  `lastName` varchar(500) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `contactno` bigint DEFAULT NULL,
  `emailid` varchar(500) DEFAULT NULL,
  `egycontactno` bigint DEFAULT NULL,
  `guardianName` varchar(500) DEFAULT NULL,
  `guardianRelation` varchar(500) DEFAULT NULL,
  `guardianContactno` bigint DEFAULT NULL,
  `corresAddress` varchar(500) DEFAULT NULL,
  `corresCity` varchar(500) DEFAULT NULL,
  `corresState` varchar(500) DEFAULT NULL,
  `corresPincode` int DEFAULT NULL,
  `pmntAddress` varchar(500) DEFAULT NULL,
  `pmntCity` varchar(500) DEFAULT NULL,
  `pmnatetState` varchar(500) DEFAULT NULL,
  `pmntPincode` int DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCity`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(2, 1, 1, 5, 0, '2023-10-03', 9, 'Btech', 13, 'Jay', 'yogesh', 'nannaware', 'male', 7896541230, 'jay@gmail.com', 78965413230, 'Yogesh', 'yourself', 51518711815, 'Pochinki', 'Battleground', 'Mizoram', 548, 'Pochinki', 'Battleground', 'Mizoram', 548, '2023-10-03 07:26:04', NULL),
(3, 1, 1, 5, 0, '2023-11-05', 9, 'Btech', 1, 'Abhijeet', '', 'Padwal', 'male', 7896541230, 'abhi@gmail.com', 65464565465, 'abhijeet', 'yourself', 3214569870, 'pune', 'pune', 'Maharashtra', 41204, 'pune', 'pune', 'Maharashtra', 41204, '2023-11-05 13:06:34', NULL),
(4, 1, 1, 5, 0, '2023-11-06', 10, 'Btech', 0, 'Mayur', '', 'Gaik', '', 0, 'mayur@12', 78965413230, 'Yogesh', 'yourself', 3214569870, 'pune', 'pune', 'Maharashtra', 32, 'pune', 'pune', 'Maharashtra', 32, '2023-11-06 05:41:02', NULL),
(6, 2, 3, 5000, 0, '2023-11-07', 4, 'E&tC', 2, 'Yogesh', 'Jay', 'Pande', 'male', 9874563211, 'yogesh@gmail.com', 78965413230, 'abhijeet', 'yourself', 3214569870, 'pune', 'pune', 'Maharashtra', 54, 'pune', 'pune', 'Maharashtra', 54, '2023-11-06 08:06:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int NOT NULL,
  `seater` int DEFAULT NULL,
  `room_no` int DEFAULT NULL,
  `fees` int DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(1, 1, 1, 5, '2023-10-01 14:25:53'),
(2, 3, 2, 5000, '2023-11-06 07:38:55');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int NOT NULL,
  `State` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Comments` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`, `Comments`) VALUES
(1, 'Andhra Pradesh', ''),
(2, 'Arunachal Pradesh', ''),
(3, 'Assam', ''),
(4, 'Bihar', ''),
(5, 'Chhattisgarh', ''),
(6, 'Goa', ''),
(7, 'Gujarat', ''),
(8, 'Haryana', ''),
(9, 'Himachal Pradesh', ''),
(10, 'Jharkhand', ''),
(11, 'Karnataka', ''),
(12, 'Kerala', ''),
(13, 'Madhya Pradesh', ''),
(14, 'Maharashtra', ''),
(15, 'Manipur', ''),
(16, 'Meghalaya', ''),
(17, 'Mizoram', ''),
(18, 'Nagaland', ''),
(19, 'Odisha', ''),
(20, 'Punjab', ''),
(21, 'Rajasthan', ''),
(22, 'Sikkim', ''),
(23, 'Tamil Nadu', ''),
(24, 'Telangana', ''),
(25, 'Tripura', ''),
(26, 'Uttar Pradesh', ''),
(27, 'Uttarakhand', ''),
(28, 'West Bengal', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `regNo` varchar(20) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `middleName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `gender` enum('male','female','others') DEFAULT NULL,
  `contactNo` varchar(15) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` datetime DEFAULT NULL,
  `passUdateDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `updationDate`, `passUdateDate`) VALUES
(3, '2', 'Yogesh', 'Jay', 'Pande', 'male', '9874563211', 'yogesh@gmail.com', '$2y$10$.kKGF6dUcqbEw.YS3cf1Nu75AQHoyGcgfMjMyfoGkVOBPFN6PsSmm', '2023-10-01 15:44:28', NULL),
(4, '1', 'Abhijeet', '', 'Padwal', 'male', '7896541230', 'abhi@gmail.com', '$2y$10$gtXdJdTKYJ8qsNP3HAkebuL0BYNP9/uAtiO4f0l4RLtx5lXZBRxou', '2023-10-01 15:43:02', NULL),
(10, NULL, NULL, NULL, NULL, NULL, NULL, 'parth1@gmail.com', '$2y$10$gsIL.yTGhYBqXbZbwRXT7ONyrSDI/2MB2qwwWyLWgXwr4ChfuqUD6', NULL, NULL),
(12, NULL, NULL, NULL, NULL, NULL, NULL, 'abhijeet@gmail.com', '$2y$10$LsheoywOKfncviG6VkQwmu0FjN8/Qjr61s42E4is07WTC9zQxpbHS', NULL, NULL),
(13, '13', 'Jay', 'yogesh', 'nannaware', 'male', '7896541230', 'jay@gmail.com', '$2y$10$qm0QD292CGGK1QCmhIQlaOCwhYouTQsyruZrsP8HurZiZgu4pxgau', NULL, NULL),
(29, '200', 'Mayur', 'Jay', 'Gaik', 'male', '9874563211', 'mayur@12', '$2y$10$9rjHfiz3Gq2runueM3/31u2ojBR6h5f7ZSFHXpljczAPtoqhMmb8a', '2023-11-06 06:41:35', NULL),
(30, NULL, 'om', NULL, 'tidke', NULL, NULL, 'om@gmail.com', '$2y$10$o4LmCtjMcWX5DSpMyICXcOXfEfofyTa78iEFjP322SWnAlnjOvBQi', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emailid` (`emailid`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `registration`
--
ALTER TABLE `registration`
  ADD CONSTRAINT `registration_ibfk_1` FOREIGN KEY (`emailid`) REFERENCES `users` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
