-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 03:42 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sis_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_history`
--

CREATE TABLE `academic_history` (
  `id` int(30) NOT NULL,
  `student_id` int(30) NOT NULL,
  `course_id` int(30) NOT NULL,
  `semester` varchar(200) NOT NULL,
  `year` varchar(200) NOT NULL,
  `school_year` text NOT NULL,
  `status` int(10) NOT NULL DEFAULT 1 COMMENT '1= New,\r\n2= Regular,\r\n3= Returnee,\r\n4= Transferee',
  `end_status` tinyint(3) NOT NULL DEFAULT 0 COMMENT '0=pending,\r\n1=Completed,\r\n2=Dropout,\r\n3=failed,\r\n4=Transferred-out,\r\n5=Graduated',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `academic_history`
--

INSERT INTO `academic_history` (`id`, `student_id`, `course_id`, `semester`, `year`, `school_year`, `status`, `end_status`, `date_created`, `date_updated`) VALUES
(1, 1, 11, 'First Semester', '1st Year', '2018-2019', 1, 1, '2022-01-27 13:02:36', '2022-01-27 13:22:31'),
(2, 1, 11, 'Second Semester', '1st Year', '2018-2019', 2, 1, '2022-01-27 13:22:24', '2022-01-27 13:22:44'),
(3, 1, 11, 'Third Semester', '1st Year', '2018-2019', 2, 1, '2022-01-27 13:23:32', NULL),
(5, 1, 11, 'First Semester', '2nd Year', '2019-2020', 2, 1, '2022-01-27 13:28:01', NULL),
(6, 1, 11, 'Second Semester', '2nd Year', '2019-2020', 2, 1, '2022-01-27 13:28:26', NULL),
(7, 1, 11, 'Third Semester', '2nd Year', '2019-2020', 2, 2, '2022-01-27 13:28:52', NULL),
(8, 4, 16, 'First Semester', '2023', '2022', 1, 0, '2023-11-27 21:37:43', NULL),
(9, 5, 13, 'First Semester', '2023', '2022', 1, 1, '2023-11-27 21:49:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_list`
--

CREATE TABLE `course_list` (
  `id` int(30) NOT NULL,
  `department_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_list`
--

INSERT INTO `course_list` (`id`, `department_id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 2, 'BSIT', 'Bachelor of Science in Information Technology', 1, 1, '2022-01-27 10:03:25', '2023-11-27 14:35:09'),
(2, 4, 'HUMSS', 'Humanities and Social Sciences', 1, 0, '2022-01-27 10:06:43', '2023-11-27 15:46:18'),
(3, 5, 'GAS', 'General Academic Strand', 1, 0, '2022-01-27 10:07:21', '2023-11-27 15:48:27'),
(4, 4, 'MAEd', 'Master of Arts in Education', 1, 1, '2022-01-27 10:07:52', '2023-11-27 14:35:13'),
(5, 4, 'PhD Educ', 'Doctor of Philosophy in Education', 1, 1, '2022-01-27 10:08:21', '2023-11-27 13:19:26'),
(6, 2, 'ICT', 'Information and Communications Technology', 1, 0, '2022-01-27 10:08:48', '2023-11-27 15:54:06'),
(7, 1, 'MSCE', 'Master of Science in Civil Engineering', 1, 1, '2022-01-27 10:09:00', '2023-11-27 14:35:21'),
(8, 1, 'SPS', 'special program in sports', 1, 0, '2022-01-27 10:09:35', '2023-11-27 21:32:54'),
(9, 1, 'MS ChE', 'Master of Science in Chemical Engineering', 1, 1, '2022-01-27 10:10:16', '2023-11-27 14:35:19'),
(10, 1, 'DEngg ChE', 'Doctor of Engineering (Chemical Engineering)', 1, 1, '2022-01-27 10:10:39', '2023-11-27 14:35:11'),
(11, 11, 'ICT', 'Information and Communications Technology', 1, 0, '2022-01-27 10:12:23', '2023-11-27 15:48:51'),
(12, 1, 'MSCS', 'Master of Science in Computer Science', 1, 1, '2022-01-27 10:12:35', '2023-11-27 13:19:22'),
(13, 7, 'Reg', 'Regular', 1, 0, '2023-11-27 15:50:52', '2023-11-27 21:43:48'),
(14, 12, 'S.T.E', 'Science, Technology, Engineering, and Mathematics', 1, 0, '2023-11-27 15:51:10', '2023-11-27 22:03:15'),
(15, 8, 'ABM', 'Accountancy, Business, and Management', 1, 0, '2023-11-27 15:51:42', NULL),
(16, 3, 'SPA', 'special program in arts', 1, 0, '2023-11-27 15:52:36', '2023-11-27 21:35:44'),
(17, 9, 'STEM ', 'Science, Technology, Engineering, and Mathematics', 1, 0, '2023-11-27 15:57:55', NULL),
(18, 10, 'HUMSS', 'Humanities and Social Sciences', 1, 0, '2023-11-27 15:58:52', NULL),
(19, 12, 'STEM', 'Science, Technology, Engineering, and Mathematics', 1, 0, '2023-11-27 16:01:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department_list`
--

CREATE TABLE `department_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_list`
--

INSERT INTO `department_list` (`id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'SPS', 'special program in sports', 1, 0, '2022-01-27 09:22:31', '2023-11-27 21:31:07'),
(2, 'Prog/Dev', 'Programming and Software Development ', 1, 0, '2022-01-27 09:22:54', '2023-11-27 14:24:03'),
(3, 'SPA', 'special program in arts', 1, 0, '2022-01-27 09:23:20', '2023-11-27 21:34:59'),
(4, 'HUMSS', ' Humanities and Social Sciences ', 1, 0, '2022-01-27 09:25:42', '2023-11-27 21:50:37'),
(5, 'GenAc', ' General Academics ', 1, 1, '2022-01-27 09:26:35', '2023-11-27 21:46:25'),
(6, 'Sample101', 'Deleted Department', 1, 1, '2022-01-27 09:27:17', '2022-01-27 09:27:28'),
(7, 'BEC', 'Regular', 1, 0, '2023-11-27 14:37:00', '2023-11-27 21:41:26'),
(8, 'Entrep', ' Entrepreneurship', 1, 1, '2023-11-27 14:37:27', '2023-11-27 21:46:03'),
(9, 'Math', 'Mathematics', 1, 1, '2023-11-27 14:37:44', '2023-11-27 21:46:29'),
(10, 'SocSci', 'Social Sciences ', 1, 0, '2023-11-27 14:38:00', NULL),
(11, 'NetAdmin', 'Network Administration ', 1, 1, '2023-11-27 14:38:18', '2023-11-27 21:46:36'),
(12, 'STE', 'science technology engineering ', 1, 0, '2023-11-27 14:38:43', '2023-11-27 21:50:04'),
(13, 'FIN', 'Finance ', 1, 1, '2023-11-27 14:39:17', '2023-11-27 21:46:07'),
(14, 'SP-ICT', 'information communication technology ', 1, 0, '2023-11-27 22:07:23', NULL),
(15, 'ABM', 'Accountancy, Business and Management ', 1, 0, '2023-11-27 22:08:29', NULL),
(16, 'STEM', 'Science, Technology, Engineering, and Mathematics', 1, 0, '2023-11-27 22:09:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_list`
--

CREATE TABLE `student_list` (
  `id` int(30) NOT NULL,
  `roll` varchar(100) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` varchar(100) NOT NULL,
  `contact` text NOT NULL,
  `present_address` text NOT NULL,
  `permanent_address` text NOT NULL,
  `dob` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_list`
--

INSERT INTO `student_list` (`id`, `roll`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `present_address`, `permanent_address`, `dob`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, '231415061007', 'Mark', 'D', 'Cooper', 'Male', '09123456789', 'This my sample present address.', 'This my sample permanent address.', '2007-06-23', 1, 0, '2022-01-27 11:14:07', '2022-01-28 08:50:13'),
(3, '012345678', 'rayne ', 'crispino', 'qqqq', 'Male', '0192828222', 'dine lang sa bahay', 'abcd di ko na alam', '2008-02-03', 1, 0, '2023-11-27 21:25:17', NULL),
(4, '14422452452432', 'LUNA', 'ABBSBBSBS', 'DCFVY5JU', 'Female', '2345667', 'BHDDEDE', 'GULOD', '2222-01-02', 0, 0, '2023-11-27 21:37:04', '2023-11-27 21:38:10'),
(5, '202020202', 'anna', 'cruz', 'cutiee', 'Female', '2292929292', 'brgy di mahanap ewan ko ba kung saan eoon', 'baka jan lang muna', '2019-02-09', 1, 0, '2023-11-27 21:48:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Name  Searcher Web'),
(6, 'short_name', 'Data info'),
(11, 'logo', 'uploads/logo-1701091615.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1701091615.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'Name searcher ', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatar-1.png?v=1701091669', NULL, 1, 1, '2021-01-20 14:02:37', '2023-11-27 21:27:49'),
(8, 'SJHHD', NULL, 'chavezJFIHDFD', 'DSD', '4744ddea876b11dcb1d169fadf494418', 'uploads/avatar-8.png?v=1643185259', NULL, 1, 1, '2022-01-26 16:20:59', '2023-11-27 22:09:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_history`
--
ALTER TABLE `academic_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `course_list`
--
ALTER TABLE `course_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_history`
--
ALTER TABLE `academic_history`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `course_list`
--
ALTER TABLE `course_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `department_list`
--
ALTER TABLE `department_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `student_list`
--
ALTER TABLE `student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic_history`
--
ALTER TABLE `academic_history`
  ADD CONSTRAINT `academic_history_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `academic_history_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_list`
--
ALTER TABLE `course_list`
  ADD CONSTRAINT `course_list_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
