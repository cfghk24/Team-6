-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-10-18 08:57:06
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `backend`
--

-- --------------------------------------------------------

--
-- 資料表結構 `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `posts_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `comment`
--

INSERT INTO `comment` (`comment_id`, `posts_id`, `user_id`, `content`) VALUES
(1, 1, 2, 'Really enjoyed the workshop!'),
(2, 2, 3, 'The painting class was fantastic.'),
(3, 3, 4, 'Digital art class was very informative.'),
(4, 4, 5, 'Photography basics were well explained.'),
(5, 5, 6, 'Sculpting workshop was a lot of fun.'),
(6, 6, 7, 'Music production class was very insightful.'),
(7, 7, 8, 'Dance and movement session was great.'),
(8, 8, 9, 'Theater acting class was very engaging.'),
(9, 9, 10, 'Creative coding was very interesting.'),
(10, 10, 11, 'Crafting with recycled materials was very creative.');

-- --------------------------------------------------------

--
-- 資料表結構 `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `fee` double DEFAULT NULL,
  `mentor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `event`
--

INSERT INTO `event` (`event_id`, `title`, `desc`, `fee`, `mentor`) VALUES
(1, 'Creative Writing Workshop', 'Enhance your writing skills with fun exercises.', 20, 'Alice Johnson'),
(2, 'Painting for Beginners', 'Learn the basics of painting with acrylics.', 25, 'Bob Smith'),
(3, 'Digital Art Class', 'Explore digital art techniques using tablets.', 30, 'Carol Lee'),
(4, 'Photography Basics', 'Master the fundamentals of photography.', 15, 'David Brown'),
(5, 'Sculpting Workshop', 'Create sculptures using clay.', 35, 'Eve Davis'),
(6, 'Music Production 101', 'Introduction to music production and editing.', 40, 'Frank Wilson'),
(7, 'Dance and Movement', 'Express yourself through dance.', 20, 'Grace Martinez'),
(8, 'Theater Acting Class', 'Learn the basics of acting and stage presence.', 50, 'Henry Taylor'),
(9, 'Creative Coding', 'Combine coding with creativity to make art.', 45, 'Ivy Kim'),
(10, 'Crafting with Recycled Materials', 'Create art using recycled materials.', 10, 'Jack White');

-- --------------------------------------------------------

--
-- 資料表結構 `event_users`
--

CREATE TABLE `event_users` (
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `enroll_time` date DEFAULT NULL,
  `participent` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `event_users`
--

INSERT INTO `event_users` (`event_id`, `user_id`, `enroll_time`, `participent`) VALUES
(1, 1, '2024-01-01', 1),
(1, 3, '2024-01-01', 1),
(1, 5, '2024-01-01', 1),
(1, 7, '2024-01-01', 1),
(1, 9, '2024-01-01', 1),
(1, 11, '2024-01-01', 1),
(1, 13, '2024-01-01', 1),
(1, 15, '2024-01-01', 1),
(1, 17, '2024-01-01', 1),
(1, 19, '2024-01-01', 1),
(1, 21, '2024-01-01', 1),
(1, 23, '2024-01-01', 1),
(1, 25, '2024-01-01', 1),
(1, 27, '2024-01-01', 1),
(1, 29, '2024-01-01', 1),
(1, 31, '2024-01-01', 1),
(1, 33, '2024-01-01', 1),
(1, 35, '2024-01-01', 1),
(1, 37, '2024-01-01', 1),
(1, 39, '2024-01-01', 1),
(2, 2, '2024-01-02', 1),
(2, 4, '2024-01-02', 1),
(2, 6, '2024-01-02', 1),
(2, 8, '2024-01-02', 1),
(2, 10, '2024-01-02', 1),
(2, 12, '2024-01-02', 1),
(2, 14, '2024-01-02', 1),
(2, 16, '2024-01-02', 1),
(2, 18, '2024-01-02', 1),
(2, 20, '2024-01-02', 1),
(2, 22, '2024-01-02', 1),
(2, 24, '2024-01-02', 1),
(2, 26, '2024-01-02', 1),
(2, 28, '2024-01-02', 1),
(2, 30, '2024-01-02', 1),
(2, 32, '2024-01-02', 1),
(2, 34, '2024-01-02', 1),
(2, 36, '2024-01-02', 1),
(2, 38, '2024-01-02', 1),
(2, 40, '2024-01-02', 1),
(3, 1, '2024-01-03', 1),
(3, 2, '2024-01-03', 1),
(3, 3, '2024-01-03', 1),
(3, 4, '2024-01-03', 1),
(3, 5, '2024-01-03', 1),
(3, 6, '2024-01-03', 1),
(3, 7, '2024-01-03', 1),
(3, 8, '2024-01-03', 1),
(3, 9, '2024-01-03', 1),
(3, 10, '2024-01-03', 1),
(3, 11, '2024-01-03', 1),
(3, 12, '2024-01-03', 1),
(3, 13, '2024-01-03', 1),
(3, 14, '2024-01-03', 1),
(3, 15, '2024-01-03', 1),
(3, 16, '2024-01-03', 1),
(3, 17, '2024-01-03', 1),
(3, 18, '2024-01-03', 1),
(3, 19, '2024-01-03', 1),
(3, 20, '2024-01-03', 1),
(3, 21, '2024-01-03', 1),
(3, 22, '2024-01-03', 1),
(3, 23, '2024-01-03', 1),
(3, 24, '2024-01-03', 1),
(3, 25, '2024-01-03', 1),
(3, 26, '2024-01-03', 1),
(3, 27, '2024-01-03', 1),
(3, 28, '2024-01-03', 1),
(3, 29, '2024-01-03', 1),
(3, 30, '2024-01-03', 1),
(3, 31, '2024-01-03', 1),
(3, 32, '2024-01-03', 1),
(3, 33, '2024-01-03', 1),
(3, 34, '2024-01-03', 1),
(3, 35, '2024-01-03', 1),
(3, 36, '2024-01-03', 1),
(3, 37, '2024-01-03', 1),
(3, 38, '2024-01-03', 1),
(3, 39, '2024-01-03', 1),
(3, 40, '2024-01-03', 1),
(4, 1, '2024-01-04', 1),
(4, 3, '2024-01-04', 1),
(4, 5, '2024-01-04', 1),
(4, 7, '2024-01-04', 1),
(4, 9, '2024-01-04', 1),
(4, 11, '2024-01-04', 1),
(4, 13, '2024-01-04', 1),
(4, 15, '2024-01-04', 1),
(4, 17, '2024-01-04', 1),
(4, 19, '2024-01-04', 1),
(4, 21, '2024-01-04', 1),
(4, 23, '2024-01-04', 1),
(4, 25, '2024-01-04', 1),
(4, 27, '2024-01-04', 1),
(4, 29, '2024-01-04', 1),
(4, 31, '2024-01-04', 1),
(4, 33, '2024-01-04', 1),
(4, 35, '2024-01-04', 1),
(4, 37, '2024-01-04', 1),
(4, 39, '2024-01-04', 1),
(5, 2, '2024-01-05', 1),
(5, 4, '2024-01-05', 1),
(5, 6, '2024-01-05', 1),
(5, 8, '2024-01-05', 1),
(5, 10, '2024-01-05', 1),
(5, 12, '2024-01-05', 1),
(5, 14, '2024-01-05', 1),
(5, 16, '2024-01-05', 1),
(5, 18, '2024-01-05', 1),
(5, 20, '2024-01-05', 1),
(5, 22, '2024-01-05', 1),
(5, 24, '2024-01-05', 1),
(5, 26, '2024-01-05', 1),
(5, 28, '2024-01-05', 1),
(5, 30, '2024-01-05', 1),
(5, 32, '2024-01-05', 1),
(5, 34, '2024-01-05', 1),
(5, 36, '2024-01-05', 1),
(5, 38, '2024-01-05', 1),
(5, 40, '2024-01-05', 1),
(6, 1, '2024-01-06', 1),
(6, 3, '2024-01-06', 1),
(6, 5, '2024-01-06', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `posts`
--

CREATE TABLE `posts` (
  `posts_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `like` int(11) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `click` int(11) DEFAULT NULL,
  `shares` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `posts`
--

INSERT INTO `posts` (`posts_id`, `user_id`, `date`, `like`, `desc`, `click`, `shares`) VALUES
(1, 1, '2024-01-01', 10, 'Great workshop on creative writing!', 100, 5),
(2, 2, '2024-01-02', 20, 'Loved the painting class.', 200, 10),
(3, 3, '2024-01-03', 30, 'Digital art class was amazing.', 300, 15),
(4, 4, '2024-01-04', 40, 'Learned a lot in the photography basics.', 400, 20),
(5, 5, '2024-01-05', 50, 'Sculpting workshop was fun.', 500, 25),
(6, 6, '2024-01-06', 60, 'Music production class was insightful.', 600, 30),
(7, 7, '2024-01-07', 70, 'Enjoyed the dance and movement session.', 700, 35),
(8, 8, '2024-01-08', 80, 'Theater acting class was great.', 800, 40),
(9, 9, '2024-01-09', 90, 'Creative coding was very interesting.', 900, 45),
(10, 10, '2024-01-10', 100, 'Crafting with recycled materials was creative.', 1000, 50),
(11, 11, '2024-01-11', 110, 'Fantastic creative writing workshop.', 1100, 55),
(12, 12, '2024-01-12', 120, 'Painting class was very relaxing.', 1200, 60),
(13, 13, '2024-01-13', 130, 'Loved the digital art techniques.', 1300, 65),
(14, 14, '2024-01-14', 140, 'Photography basics were very helpful.', 1400, 70),
(15, 15, '2024-01-15', 150, 'Sculpting workshop was a great experience.', 1500, 75);

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `Dob` date DEFAULT NULL,
  `Profession` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`user_id`, `Dob`, `Profession`, `district`) VALUES
(1, '1980-01-01', 'Parent', 'Central'),
(2, '1990-02-14', 'Public Adult', 'North'),
(3, '2005-03-30', 'Secondary Student', 'East'),
(4, '1985-04-25', 'Parent', 'West'),
(5, '1995-05-15', 'Public Adult', 'South'),
(6, '2006-06-10', 'Secondary Student', 'Central'),
(7, '1983-07-20', 'Parent', 'North'),
(8, '1991-08-05', 'Public Adult', 'East'),
(9, '2004-09-12', 'Secondary Student', 'West'),
(10, '1989-10-22', 'Parent', 'South'),
(11, '1980-11-11', 'Parent', 'Central'),
(12, '1990-12-01', 'Public Adult', 'North'),
(13, '2005-01-19', 'Secondary Student', 'East'),
(14, '1985-02-28', 'Parent', 'West'),
(15, '1995-03-17', 'Public Adult', 'South'),
(16, '2006-04-06', 'Secondary Student', 'Central'),
(17, '1983-05-25', 'Parent', 'North'),
(18, '1991-06-14', 'Public Adult', 'East'),
(19, '2004-07-03', 'Secondary Student', 'West'),
(20, '1989-08-22', 'Parent', 'South'),
(21, '1980-09-11', 'Parent', 'Central'),
(22, '1990-10-30', 'Public Adult', 'North'),
(23, '2005-11-19', 'Secondary Student', 'East'),
(24, '1985-12-08', 'Parent', 'West'),
(25, '1995-01-27', 'Public Adult', 'South'),
(26, '2006-02-16', 'Secondary Student', 'Central'),
(27, '1983-03-07', 'Parent', 'North'),
(28, '1991-04-26', 'Public Adult', 'East'),
(29, '2004-05-15', 'Secondary Student', 'West'),
(30, '1989-06-04', 'Parent', 'South'),
(31, '1980-07-23', 'Parent', 'Central'),
(32, '1990-08-12', 'Public Adult', 'North'),
(33, '2005-09-01', 'Secondary Student', 'East'),
(34, '1985-10-20', 'Parent', 'West'),
(35, '1995-11-09', 'Public Adult', 'South'),
(36, '2006-12-28', 'Secondary Student', 'Central'),
(37, '1983-01-17', 'Parent', 'North'),
(38, '1991-02-06', 'Public Adult', 'East'),
(39, '2004-03-27', 'Secondary Student', 'West'),
(40, '1989-04-16', 'Parent', 'South'),
(41, '1980-05-05', 'Parent', 'Central'),
(42, '1990-06-24', 'Public Adult', 'North'),
(43, '2005-07-13', 'Secondary Student', 'East'),
(44, '1985-08-02', 'Parent', 'West'),
(45, '1995-09-21', 'Public Adult', 'South'),
(46, '2006-10-10', 'Secondary Student', 'Central'),
(47, '1983-11-29', 'Parent', 'North'),
(48, '1991-12-18', 'Public Adult', 'East'),
(49, '2004-01-07', 'Secondary Student', 'West'),
(50, '1989-02-26', 'Parent', 'South');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `posts_id` (`posts_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 資料表索引 `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- 資料表索引 `event_users`
--
ALTER TABLE `event_users`
  ADD PRIMARY KEY (`event_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 資料表索引 `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`posts_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`posts_id`) REFERENCES `posts` (`posts_id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- 資料表的限制式 `event_users`
--
ALTER TABLE `event_users`
  ADD CONSTRAINT `event_users_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`),
  ADD CONSTRAINT `event_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- 資料表的限制式 `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
