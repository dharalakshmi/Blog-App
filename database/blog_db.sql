-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2025 at 06:39 AM
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
-- Database: `social_networking_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment_list`
--

CREATE TABLE `comment_list` (
  `id` int(30) NOT NULL,
  `post_id` int(30) NOT NULL,
  `member_id` int(30) NOT NULL,
  `message` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment_list`
--

INSERT INTO `comment_list` (`id`, `post_id`, `member_id`, `message`, `date_created`, `date_updated`) VALUES
(7, 6, 5, 'congratulations Tanvi ', '2025-05-11 22:06:10', '2025-05-11 22:06:10'),
(8, 5, 5, 'Nice, its really useful content', '2025-05-11 22:06:36', '2025-05-11 22:06:36'),
(9, 12, 5, 'Hello Raja welcome to website blog', '2025-05-11 23:54:22', '2025-05-11 23:54:22'),
(10, 11, 6, 'Good project', '2025-05-12 08:50:02', '2025-05-12 08:50:02'),
(11, 10, 6, 'Nice', '2025-05-12 08:50:15', '2025-05-12 08:50:15'),
(12, 8, 6, 'Yaa enjoyed alot', '2025-05-12 08:50:34', '2025-05-12 08:50:34'),
(13, 11, 11, 'Well done Dhara, Keep it up', '2025-05-12 08:55:07', '2025-05-12 08:55:07'),
(14, 10, 11, 'Ahaa Nice Dhara ', '2025-05-12 08:55:26', '2025-05-12 08:55:26'),
(15, 8, 11, 'Missed you Guys', '2025-05-12 08:55:40', '2025-05-12 08:55:40'),
(16, 7, 11, 'Wow Mysur Palace', '2025-05-12 08:56:15', '2025-05-12 08:56:15'),
(17, 7, 12, 'Nice post', '2025-05-12 10:28:04', '2025-05-12 10:28:04'),
(18, 11, 14, 'nice', '2025-05-12 14:43:46', '2025-05-12 14:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `like_list`
--

CREATE TABLE `like_list` (
  `post_id` int(30) NOT NULL,
  `member_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `like_list`
--

INSERT INTO `like_list` (`post_id`, `member_id`) VALUES
(1, 2),
(6, 7),
(6, 6),
(5, 6),
(7, 5),
(8, 5),
(6, 5),
(5, 5),
(9, 8),
(10, 5),
(11, 5),
(12, 9),
(12, 5),
(13, 10),
(13, 6),
(11, 6),
(10, 6),
(8, 6),
(7, 6),
(11, 11),
(7, 11),
(11, 12),
(10, 12),
(8, 12),
(7, 12),
(13, 7),
(12, 7),
(14, 13),
(10, 13),
(8, 13),
(15, 14),
(11, 14),
(10, 14),
(16, 5);

-- --------------------------------------------------------

--
-- Table structure for table `member_list`
--

CREATE TABLE `member_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Pending, 1=Approved, 2 = Denied, 3=Blocked',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member_list`
--

INSERT INTO `member_list` (`id`, `firstname`, `middlename`, `lastname`, `email`, `password`, `avatar`, `status`, `date_created`, `date_updated`) VALUES
(2, 'Claire', 'C', 'Blake', 'cblake@sample.com', '542d2760db6928e65bd10de7c16bb82c', 'uploads/member/2.png?v=1652497791', 0, '2022-05-14 11:09:38', '2022-05-14 11:09:51'),
(5, 'Dhara', 'Lakshmi', 'Kusumanchi', 'dharalakshmi436@gmail.com', 'af3efcc291e95d602cd6c7abfcaf6848', 'uploads/member/5.png?v=1747019926', 0, '2025-05-10 22:23:58', '2025-05-12 08:48:46'),
(6, 'Rohit', '', 'Nunnaguppala', 'rohit@gmail.com', '1db2cd81f19741d67e4c7aef245a689e', 'uploads/member/6.png?v=1746980344', 0, '2025-05-11 21:49:04', '2025-05-11 21:49:04'),
(7, 'Tanvi', '', 'Yalakanti', 'tanvi@gmail.com', 'bc8d941ea06bd8a07d87471c5e607b47', 'uploads/member/7.png?v=1746980711', 0, '2025-05-11 21:55:11', '2025-05-11 21:55:11'),
(8, 'Varnika', 'Narayani', 'Mudumali', 'varnika@gmail.com', '22807e926588bf7889eb7c4312224e27', 'uploads/member/8.png?v=1746982082', 0, '2025-05-11 22:18:01', '2025-05-11 22:18:02'),
(9, 'Raja', 'Row', 'Mukillini', 'raja@gmail.com', 'ee70da5c423d0938d626d74301539542', 'uploads/member/9.png?v=1746987718', 0, '2025-05-11 23:51:58', '2025-05-11 23:51:58'),
(10, 'Nidheena', '', 'Kallakuri', 'nidheena@gmail.com', '76bd227f6a5fca2579667e4365e8639b', 'uploads/member/10.png?v=1747019737', 0, '2025-05-12 08:45:37', '2025-05-12 08:45:37'),
(11, 'Akhila', '', 'Tirrumalaraju', 'akhila@gmail.com', '3db61eca39c3a99e344f9b043fecd554', 'uploads/member/11.png?v=1747020158', 0, '2025-05-12 08:52:38', '2025-05-12 08:52:38'),
(12, 'Srujan', '', 'Valupadasu', 'srujan@gmail.com', 'fa4be545e8139fabf055f03620730a21', 'uploads/member/12.png?v=1747025734', 0, '2025-05-12 10:25:34', '2025-05-12 10:25:34'),
(13, 'Anaswara', '', 'Reji', 'anu@gmail.com', '9904fd42e4977d5815b5d5679a935ed5', 'uploads/member/13.png?v=1747031164', 0, '2025-05-12 11:56:04', '2025-05-12 11:56:04'),
(14, 'Meena', 'Belwal', '', 'meena@gmail.com', '7b1c9ad95718f5560b7774012f415778', 'uploads/member/14.png?v=1747041111', 0, '2025-05-12 14:41:51', '2025-05-12 14:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `member_meta`
--

CREATE TABLE `member_meta` (
  `member_id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member_meta`
--

INSERT INTO `member_meta` (`member_id`, `meta_field`, `meta_value`) VALUES
(2, 'gender', 'Male'),
(2, 'dob', '1997-06-23'),
(2, 'contact', '09877778899'),
(2, 'address', 'Sample Address'),
(2, 'relation_status', 'Married'),
(2, 'studied_at', 'Sample'),
(2, 'working_at', 'Sample'),
(2, 'about_me', 'Nunc a sollicitudin metus. Phasellus sapien turpis, volutpat nec eleifend at, auctor elementum massa. Fusce nec ligula odio. Aliquam rutrum dui ipsum, nec sagittis est laoreet et. Duis molestie tempus nibh sed imperdiet. Mauris nec felis laoreet, vehicula dui id, porta dui. Donec quis consequat arcu, at finibus quam. Donec porta auctor vehicula.'),
(5, 'gender', 'Female'),
(5, 'dob', '2005-06-14'),
(5, 'contact', '9145739167'),
(5, 'address', 'Choodasandra, Bengaluru'),
(5, 'relation_status', 'Single'),
(5, 'studied_at', 'Studying at Amrita Vishwa Vidhyapeetham, Bengaluru'),
(5, 'working_at', 'Btech'),
(5, 'about_me', 'I like watching movies'),
(13, 'gender', 'Female'),
(13, 'dob', '2004-04-18'),
(13, 'contact', ''),
(13, 'address', ''),
(13, 'relation_status', 'Single'),
(13, 'studied_at', ''),
(13, 'working_at', ''),
(13, 'about_me', '');

-- --------------------------------------------------------

--
-- Table structure for table `post_list`
--

CREATE TABLE `post_list` (
  `id` int(30) NOT NULL,
  `member_id` int(30) NOT NULL,
  `caption` text NOT NULL,
  `upload_path` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_list`
--

INSERT INTO `post_list` (`id`, `member_id`, `caption`, `upload_path`, `date_created`, `date_updated`) VALUES
(1, 2, 'Sample Post', 'uploads/posts/202205140001/', '2025-03-14 13:53:54', '2025-03-14 13:53:54'),
(2, 2, 'Test 123', 'uploads/posts/202205140002/', '2025-04-14 13:57:44', '2025-04-14 13:57:44'),
(5, 6, 'hey, read this ', 'uploads/posts/202505120001/', '2025-05-11 21:50:25', '2025-05-11 21:50:25'),
(6, 7, 'I joined in Amrita College, Bangalore', 'uploads/posts/202505120002/', '2025-05-11 21:56:07', '2025-05-11 21:56:07'),
(7, 5, 'Weekend Vibes', 'uploads/posts/202505120003/', '2025-05-11 22:04:00', '2025-05-11 22:04:00'),
(8, 5, 'This is how we enjoyed ', 'uploads/posts/202505120004/', '2025-05-11 22:05:33', '2025-05-11 22:05:33'),
(9, 8, 'This is how i communicate and collabrote with others', 'uploads/posts/202505120005/', '2025-05-11 22:22:06', '2025-05-11 22:22:06'),
(10, 5, 'Enjoyed a lot in this reasearch work', 'uploads/posts/202505120006/', '2025-05-11 23:28:17', '2025-05-11 23:28:17'),
(11, 5, 'This an demo of my ds project', 'uploads/posts/202505120007/', '2025-05-11 23:50:24', '2025-05-11 23:50:24'),
(12, 9, 'Hey Iam new user', 'uploads/posts/202505120008/', '2025-05-11 23:53:20', '2025-05-11 23:53:20'),
(13, 10, 'Hey prends, Happy Krishnastami', 'uploads/posts/202505120009/', '2025-05-12 08:47:02', '2025-05-12 08:47:02'),
(14, 13, 'This is my work done in data science', 'uploads/posts/202505120010/', '2025-05-12 11:56:41', '2025-05-12 11:56:41'),
(15, 14, 'one of the output of ds', 'uploads/posts/202505120011/', '2025-05-12 14:42:29', '2025-05-12 14:42:29'),
(16, 5, 'ganesha', 'uploads/posts/202505170001/', '2025-05-17 00:57:59', '2025-05-17 00:57:59');

-- --------------------------------------------------------

--
-- Table structure for table `request_list`
--

CREATE TABLE `request_list` (
  `id` int(30) NOT NULL,
  `member_id` int(30) NOT NULL,
  `ask_member_id` int(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request_list`
--

INSERT INTO `request_list` (`id`, `member_id`, `ask_member_id`, `status`, `date_created`, `date_updated`) VALUES
(6, 7, 5, 1, '2025-05-11 21:56:26', '2025-05-11 22:03:30'),
(7, 7, 6, 1, '2025-05-11 21:56:41', '2025-05-11 21:57:39'),
(8, 6, 5, 1, '2025-05-11 21:57:49', '2025-05-11 22:03:29'),
(9, 8, 5, 1, '2025-05-11 22:18:33', '2025-05-11 22:23:10'),
(10, 8, 7, 1, '2025-05-11 22:22:49', '2025-05-12 11:22:01'),
(11, 9, 5, 1, '2025-05-11 23:52:15', '2025-05-11 23:53:40'),
(12, 9, 7, 1, '2025-05-11 23:52:26', '2025-05-12 11:22:00'),
(13, 10, 7, 1, '2025-05-12 08:47:34', '2025-05-12 11:21:59'),
(14, 10, 6, 1, '2025-05-12 08:47:52', '2025-05-12 08:49:35'),
(15, 10, 9, 0, '2025-05-12 08:48:07', '2025-05-12 08:48:07'),
(16, 5, 10, 1, '2025-05-12 08:49:10', '2025-05-12 14:33:09'),
(17, 11, 5, 1, '2025-05-12 08:52:59', '2025-05-12 08:54:21'),
(18, 11, 7, 1, '2025-05-12 08:53:09', '2025-05-12 11:21:58'),
(19, 11, 6, 0, '2025-05-12 08:53:21', '2025-05-12 08:53:21'),
(20, 11, 9, 0, '2025-05-12 08:53:33', '2025-05-12 08:53:33'),
(21, 11, 8, 1, '2025-05-12 08:53:43', '2025-05-12 11:27:05'),
(22, 12, 5, 1, '2025-05-12 10:26:09', '2025-05-12 10:27:23'),
(23, 7, 12, 0, '2025-05-12 11:24:31', '2025-05-12 11:24:31'),
(24, 11, 12, 0, '2025-05-12 11:24:57', '2025-05-12 11:24:57'),
(25, 6, 12, 0, '2025-05-12 11:25:26', '2025-05-12 11:25:26'),
(26, 9, 12, 0, '2025-05-12 11:25:55', '2025-05-12 11:25:55'),
(27, 10, 12, 0, '2025-05-12 11:26:23', '2025-05-12 11:26:23'),
(28, 8, 12, 0, '2025-05-12 11:26:56', '2025-05-12 11:26:56'),
(29, 13, 5, 1, '2025-05-12 11:57:21', '2025-05-12 11:57:55'),
(30, 13, 12, 0, '2025-05-12 11:57:30', '2025-05-12 11:57:30'),
(31, 13, 7, 0, '2025-05-12 11:57:39', '2025-05-12 11:57:39'),
(32, 14, 5, 1, '2025-05-12 14:42:48', '2025-05-12 14:43:22'),
(33, 14, 7, 0, '2025-05-12 14:42:56', '2025-05-12 14:42:56'),
(34, 14, 12, 0, '2025-05-12 14:43:04', '2025-05-12 14:43:04');

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
(1, 'name', 'Full Stack Blogging Platform'),
(6, 'short_name', 'Blog'),
(11, 'logo', 'uploads/logo.png?v=1652491306'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover.png?v=1652491310');

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
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Team_21', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatars/1.png?v=1649834664', NULL, 1, '2021-01-20 14:02:37', '2025-05-11 01:27:33'),
(5, 'Dhara', '', '', 'dhara', '9c86d448e84d4ba23eb089e0b5160207', 'uploads/avatars/5.png?v=1652514879', NULL, 2, '2022-05-14 15:54:39', '2025-05-11 22:28:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment_list`
--
ALTER TABLE `comment_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `like_list`
--
ALTER TABLE `like_list`
  ADD KEY `post_id` (`post_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `member_list`
--
ALTER TABLE `member_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_meta`
--
ALTER TABLE `member_meta`
  ADD KEY `individual_id` (`member_id`);

--
-- Indexes for table `post_list`
--
ALTER TABLE `post_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `request_list`
--
ALTER TABLE `request_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `ask_member_id` (`ask_member_id`);

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
-- AUTO_INCREMENT for table `comment_list`
--
ALTER TABLE `comment_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `member_list`
--
ALTER TABLE `member_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `post_list`
--
ALTER TABLE `post_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `request_list`
--
ALTER TABLE `request_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment_list`
--
ALTER TABLE `comment_list`
  ADD CONSTRAINT `member_id_fk_cl` FOREIGN KEY (`member_id`) REFERENCES `member_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `post_id_fk_cl` FOREIGN KEY (`post_id`) REFERENCES `post_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `like_list`
--
ALTER TABLE `like_list`
  ADD CONSTRAINT `member_id_fk_ll` FOREIGN KEY (`member_id`) REFERENCES `member_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `post_id_fk_ll` FOREIGN KEY (`post_id`) REFERENCES `post_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `member_meta`
--
ALTER TABLE `member_meta`
  ADD CONSTRAINT `member_id_fk_mm` FOREIGN KEY (`member_id`) REFERENCES `member_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `post_list`
--
ALTER TABLE `post_list`
  ADD CONSTRAINT `member_id_fk_pl` FOREIGN KEY (`member_id`) REFERENCES `member_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `request_list`
--
ALTER TABLE `request_list`
  ADD CONSTRAINT `member_id_fk_rl` FOREIGN KEY (`member_id`) REFERENCES `member_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `member_id_fk_rl2` FOREIGN KEY (`ask_member_id`) REFERENCES `member_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
