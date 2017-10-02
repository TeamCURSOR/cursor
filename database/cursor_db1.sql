-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2017 at 11:56 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cursor_db1`
--

-- --------------------------------------------------------

--
-- Table structure for table `coordinator`
--

CREATE TABLE `coordinator` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `contact_no` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coordinator`
--

INSERT INTO `coordinator` (`id`, `name`, `contact_no`) VALUES
(1, 'Shalaka kulkarni', '9158059298'),
(2, 'Shreya sail', '8806053303'),
(3, 'Nandan Prabhudesai', '98504873'),
(4, 'Rushikesh Prabhudesai', '9096658295'),
(5, 'Anand Khandalekar', '7028785438'),
(6, 'Anay Naik', '9423180235'),
(7, 'Pranav Silimkhan', '9420740342'),
(8, 'Sampan Naik', '8975002451'),
(9, 'vishal Sharma', '9405948380');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `grp_id` int(11) DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `event_type` enum('talks','debates','workshop','competition','exebition','hackathon','meets','other') NOT NULL,
  `photo_link` text,
  `info` text,
  `requirements` text,
  `last_reg_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `grp_id`, `title`, `event_type`, `photo_link`, `info`, `requirements`, `last_reg_date`) VALUES
(1, 1, 'code it', 'competition', 'images/3.jpg', 'Registration fees 50/- per team(of 2 members)\r\nRegister online and get a discount of 10/-', NULL, NULL),
(2, 1, 'Treasure Hunt', 'competition', 'images/4.jpg', 'Registration fees 50/-\r\nPer Team(2 members)', NULL, NULL),
(3, 1, 'Darts', 'competition', 'images/5.jpg', 'Registration fees 20/- for 1st 3 tries\r\n10 for subsequent tries', NULL, NULL),
(4, 1, 'Photographia', 'competition', 'images/6.jpg', 'Themes \r\nFramed \r\nRusted\r\n10/- per entry \r\n(unlimited entries)\r\nsubmit entries at registration desk before 4:30 PM', NULL, NULL),
(5, 1, 'Speed Typing', 'competition', 'images/2.jpg', 'Registration Fee 10/- per try', NULL, NULL),
(9, NULL, 'Arduino Workshop', 'workshop', 'images/9.jpg', 'Learn How to Use arduino board\r\nand sensors', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_coordinator`
--

CREATE TABLE `event_coordinator` (
  `event_id` int(11) NOT NULL,
  `coordinator_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_coordinator`
--

INSERT INTO `event_coordinator` (`event_id`, `coordinator_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9);

-- --------------------------------------------------------

--
-- Table structure for table `event_sponsor`
--

CREATE TABLE `event_sponsor` (
  `event_id` int(11) NOT NULL,
  `sponsor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `host`
--

CREATE TABLE `host` (
  `id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `event_id` int(11) NOT NULL,
  `photo_link` text NOT NULL,
  `info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `grp_id` int(11) DEFAULT NULL,
  `media_id` int(11) NOT NULL,
  `media_name` text NOT NULL,
  `media_type` varchar(20) NOT NULL,
  `media_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`grp_id`, `media_id`, `media_name`, `media_type`, `media_path`) VALUES
(1, 1, '1.jpg', 'image/jpeg', 'images'),
(1, 2, '2.jpg', 'image/jpeg', 'images'),
(1, 3, '3.jpg', 'image/jpeg', 'images'),
(1, 4, '4.jpg', 'image/jpeg', 'images'),
(1, 5, '5.jpg', 'image/jpeg', 'images'),
(1, 6, '6.jpg', 'image/jpeg', 'images'),
(1, 7, '7.jpg', 'image/jpeg', 'images'),
(1, 8, '8.jpg', 'image/jpeg', 'images'),
(1, 9, '9.jpg', 'image/jpeg', 'images'),
(1004, 10, 'c1.jpg', 'image/jpeg', 'images'),
(1004, 11, 'c10.jpg', 'image/jpeg', 'images'),
(1004, 12, 'c11.jpg', 'image/jpeg', 'images'),
(1004, 13, 'c12.jpg', 'image/jpeg', 'images'),
(1004, 14, 'c13.jpg', 'image/jpeg', 'images'),
(1004, 15, 'c14.jpg', 'image/jpeg', 'images'),
(1004, 16, 'c15.jpg', 'image/jpeg', 'images'),
(1003, 17, 'c16.jpg', 'image/jpeg', 'images'),
(1003, 18, 'c17.jpg', 'image/jpeg', 'images'),
(1003, 19, 'c18.jpg', 'image/jpeg', 'images'),
(1003, 20, 'c19.jpg', 'image/jpeg', 'images'),
(1004, 21, 'c2.jpg', 'image/jpeg', 'images'),
(1003, 22, 'c20.jpg', 'image/jpeg', 'images'),
(1003, 23, 'c21.jpg', 'image/jpeg', 'images'),
(1003, 24, 'c22.jpg', 'image/jpeg', 'images'),
(1003, 25, 'c23.jpg', 'image/jpeg', 'images'),
(1003, 26, 'c24.jpg', 'image/jpeg', 'images'),
(1003, 27, 'c25.jpg', 'image/jpeg', 'images'),
(1003, 28, 'c26.jpg', 'image/jpeg', 'images'),
(1003, 29, 'c27.jpg', 'image/jpeg', 'images'),
(1003, 30, 'c28.jpg', 'image/jpeg', 'images'),
(1003, 31, 'c29.jpg', 'image/jpeg', 'images'),
(1004, 32, 'c3.jpg', 'image/jpeg', 'images'),
(1003, 33, 'c30.jpg', 'image/jpeg', 'images'),
(1002, 34, 'c31.jpg', 'image/jpeg', 'images'),
(1002, 35, 'c32.jpg', 'image/jpeg', 'images'),
(1002, 36, 'c33.jpg', 'image/jpeg', 'images'),
(1002, 37, 'c34.jpg', 'image/jpeg', 'images'),
(1002, 38, 'c35.jpg', 'image/jpeg', 'images'),
(1002, 39, 'c36.jpg', 'image/jpeg', 'images'),
(1002, 40, 'c37.jpg', 'image/jpeg', 'images'),
(1002, 41, 'c38.jpg', 'image/jpeg', 'images'),
(1002, 42, 'c39.jpg', 'image/jpeg', 'images'),
(1004, 43, 'c4.jpg', 'image/jpeg', 'images'),
(1002, 44, 'c40.jpg', 'image/jpeg', 'images'),
(1002, 45, 'c41.jpg', 'image/jpeg', 'images'),
(1002, 46, 'c42.jpg', 'image/jpeg', 'images'),
(1002, 47, 'c43.jpg', 'image/jpeg', 'images'),
(1002, 48, 'c44.jpg', 'image/jpeg', 'images'),
(1002, 49, 'c45.jpg', 'image/jpeg', 'images'),
(1002, 50, 'c46.jpg', 'image/jpeg', 'images'),
(1002, 51, 'c47.jpg', 'image/jpeg', 'images'),
(1002, 52, 'c48.jpg', 'image/jpeg', 'images'),
(1002, 53, 'c49.jpg', 'image/jpeg', 'images'),
(1004, 54, 'c5.jpg', 'image/jpeg', 'images'),
(1002, 55, 'c50.jpg', 'image/jpeg', 'images'),
(1002, 56, 'c51.jpg', 'image/jpeg', 'images'),
(1004, 57, 'c6.jpg', 'image/jpeg', 'images'),
(1004, 58, 'c7.jpg', 'image/jpeg', 'images'),
(1004, 59, 'c8.jpg', 'image/jpeg', 'images'),
(1004, 60, 'c9.jpg', 'image/jpeg', 'images'),
(NULL, 61, 'comp_dep.JPG', 'image/jpeg', 'images'),
(NULL, 62, 'comp_dept.jpg', 'image/jpeg', 'images'),
(NULL, 63, 'comp_dept_bw.jpg', 'image/jpeg', 'images'),
(NULL, 64, 'comp_dept_bw2.jpg', 'image/jpeg', 'images'),
(NULL, 65, 'cursor.svg', 'text/plain', 'images'),
(NULL, 66, 'cursor1 - Copy.svg', 'image/svg+xml', 'images'),
(NULL, 67, 'cursor1.svg', 'image/svg+xml', 'images'),
(NULL, 68, 'cursor_logo.svg', 'image/svg+xml', 'images'),
(NULL, 69, 'cursor_members.jpg', 'image/jpeg', 'images'),
(102, 71, 'codies.jpg', 'image/jpeg', 'img'),
(102, 72, 'codies2.jpg', 'image/jpeg', 'img'),
(103, 73, 'cursor.JPG', 'image/jpeg', 'img'),
(104, 74, 'geekwiz.jpg', 'image/jpeg', 'img'),
(105, 75, 'html.jpg', 'image/jpeg', 'img'),
(106, 76, 'python.png', 'image/png', 'img');

-- --------------------------------------------------------

--
-- Table structure for table `news_article`
--

CREATE TABLE `news_article` (
  `id` int(11) NOT NULL,
  `heading` text NOT NULL,
  `subheading` text NOT NULL,
  `description` text NOT NULL,
  `image_link` text NOT NULL,
  `publish_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `news_content_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_article`
--

INSERT INTO `news_article` (`id`, `heading`, `subheading`, `description`, `image_link`, `publish_datetime`, `news_content_link`) VALUES
(1, 'Cursor Installation', 'for the year 2016-17.', 'The installation of student’s council of Computer Department, Goa College of Engineering-Farmagudi was held on 24th August 2016 at the ETC Department Seminar Hall.', 'img/cursor.JPG', '2016-08-24 15:01:38', 'newsPage/cursor.html'),
(2, 'Codies 2k17', 'Intercollege coding contest.', 'The computer engineering department of Goa College of Engineering, Farmagudi conducted a technical event CODIES on 10th of October 2016. The event was organized to test students across the state on their knowledge in C , C++ and Java.', 'img/codies.jpg', '2016-10-10 10:03:00', 'newsPage/codies.html'),
(3, 'HTML workshop', 'Conducted by Cursor.', 'The computer engineering department of Goa College of Engineering, Farmagudi conducted a one-day technical workshop on 24th of September 2016.', 'img/html.jpg', '2016-09-24 15:03:37', 'newsPage/htmlworkshop.html'),
(4, 'Python Workshop', 'Organised by Cursor.', 'This grid is an attempt to make something nice that works on touch devices. Ignoring hover states when they\'re not available etc.', 'img/python.png', '2017-01-28 14:05:07', 'newsPage/python.html'),
(5, 'Geekwiz', 'At Rosary College, Navelim', 'Goa college of Engineering would like to congratulate Prasad Honavar and Shashank Shetye Saudagar from Computer department for securing the first place in National level technical quiz-Geekwiz 2016. The quiz was organised by the Department of Computer Applications of Rosary College,Navelim on 26th August 2016.  ', 'img/geekwiz.jpg', '2016-08-28 03:05:07', 'newsPage/geekwiz.html');

-- --------------------------------------------------------

--
-- Table structure for table `qna`
--

CREATE TABLE `qna` (
  `eventid` int(11) NOT NULL,
  `qn` text NOT NULL,
  `ans` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `eventid` int(11) NOT NULL,
  `date` date NOT NULL,
  `venue` varchar(60) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schedule_time`
--

CREATE TABLE `schedule_time` (
  `schedule_id` int(11) NOT NULL,
  `time` time NOT NULL,
  `plan` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sponsor`
--

CREATE TABLE `sponsor` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `info` text NOT NULL,
  `logo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coordinator`
--
ALTER TABLE `coordinator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `host`
--
ALTER TABLE `host`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`media_id`);

--
-- Indexes for table `news_article`
--
ALTER TABLE `news_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsor`
--
ALTER TABLE `sponsor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coordinator`
--
ALTER TABLE `coordinator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `host`
--
ALTER TABLE `host`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `media_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `news_article`
--
ALTER TABLE `news_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sponsor`
--
ALTER TABLE `sponsor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
