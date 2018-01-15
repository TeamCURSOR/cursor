-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2018 at 07:48 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
  `description` text NOT NULL,
  `event_type` enum('talks','debates','workshop','competition','exebition','hackathon','meets','other') NOT NULL,
  `media_id` varchar(20) DEFAULT NULL,
  `reg_fee_info` text,
  `requirements` text,
  `last_reg_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `grp_id`, `title`, `description`, `event_type`, `media_id`, `reg_fee_info`, `requirements`, `last_reg_date`) VALUES
(1, 1, 'code it', '', 'competition', '1567', 'Registration fees 50/- per team(of 2 members)\r\nRegister online and get a discount of 10/-', NULL, NULL),
(2, 1, 'Treasure Hunt', '', 'competition', '1568', 'Registration fees 50/-\r\nPer Team(2 members)', NULL, NULL),
(3, 1, 'Darts', '', 'competition', '1569', 'Registration fees 20/- for 1st 3 tries\r\n10 for subsequent tries', NULL, NULL),
(4, 1, 'Photographia', '', 'competition', '1570', 'Themes \r\nFramed \r\nRusted\r\n10/- per entry \r\n(unlimited entries)\r\nsubmit entries at registration desk before 4:30 PM', NULL, NULL),
(5, 1, 'Speed Typing', '', 'competition', '1566', 'Registration Fee 10/- per try', NULL, NULL),
(9, NULL, 'Arduino Workshop', 'Learn How to Use arduino board and sensors', 'workshop', '1573', '', NULL, NULL);

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
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `grp_id` varchar(30) DEFAULT NULL,
  `media_id` int(11) NOT NULL,
  `media_name` text NOT NULL,
  `media_type` varchar(20) NOT NULL,
  `media_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`grp_id`, `media_id`, `media_name`, `media_type`, `media_path`) VALUES
('ai_svg', 1414, 'ABOUT_US.svg', 'image/svg+xml', 'images\\ai_svg'),
('ai_svg', 1415, 'ABOUT_US_05.svg', 'image/svg+xml', 'images\\ai_svg'),
('ai_svg', 1416, 'COMING_SOON.svg', 'image/svg+xml', 'images\\ai_svg'),
('ai_svg', 1417, 'COMING_SOON_05.svg', 'image/svg+xml', 'images\\ai_svg'),
('ai_svg', 1418, 'CONTACT.svg', 'image/svg+xml', 'images\\ai_svg'),
('ai_svg', 1419, 'CONTACT_05.svg', 'image/svg+xml', 'images\\ai_svg'),
('ai_svg', 1420, 'CONTACT_US.svg', 'image/svg+xml', 'images\\ai_svg'),
('ai_svg', 1421, 'CONTACT_US_05.svg', 'image/svg+xml', 'images\\ai_svg'),
('ai_svg', 1422, 'EVENTS.svg', 'image/svg+xml', 'images\\ai_svg'),
('ai_svg', 1423, 'EVENTS_05.svg', 'image/svg+xml', 'images\\ai_svg'),
('ai_svg', 1424, 'GALLARY.svg', 'image/svg+xml', 'images\\ai_svg'),
('ai_svg', 1425, 'GALLARY_05.svg', 'image/svg+xml', 'images\\ai_svg'),
('ai_svg', 1426, 'GALLERY_05.svg', 'image/svg+xml', 'images\\ai_svg'),
('ai_svg', 1427, 'KEEP IN TOUCH.svg', 'image/svg+xml', 'images\\ai_svg'),
('ai_svg', 1428, 'KEEP_IN_TOUCH_05.svg', 'image/svg+xml', 'images\\ai_svg'),
('ai_svg', 1429, 'MEMBERS.svg', 'image/svg+xml', 'images\\ai_svg'),
('ai_svg', 1430, 'MEMBERS_05.svg', 'image/svg+xml', 'images\\ai_svg'),
('ai_svg', 1431, 'NEWS.svg', 'image/svg+xml', 'images\\ai_svg'),
('ai_svg', 1432, 'NEWS_05.svg', 'image/svg+xml', 'images\\ai_svg'),
('ai_svg', 1433, 'NEWS_1.svg', 'image/svg+xml', 'images\\ai_svg'),
('ai_svg', 1434, 'NEWS_1_05.svg', 'image/svg+xml', 'images\\ai_svg'),
('ai_svg', 1435, 'a.svg', 'image/svg+xml', 'images\\ai_svg'),
('ai_svg', 1436, 'cursor.svg', 'image/svg+xml', 'images\\ai_svg'),
('ai_svg', 1437, 'cursor_05.svg', 'image/svg+xml', 'images\\ai_svg'),
('ai_svg', 1438, 'error_img.svg', 'image/svg+xml', 'images\\ai_svg'),
('ai_svg', 1439, 'starbucks.svg', 'image/svg+xml', 'images\\ai_svg'),
('codies', 1440, 'c18.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1441, 'c19.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1442, 'c20.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1443, 'c21.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1444, 'c22.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1445, 'c23.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1446, 'c24.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1447, 'c25.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1448, 'c26.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1449, 'c27.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1450, 'c28.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1451, 'c29.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1452, 'c30.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1453, 'c31.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1454, 'c32.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1455, 'c33.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1456, 'c34.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1457, 'c35.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1458, 'c36.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1459, 'c37.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1460, 'c38.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1461, 'c39.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1462, 'c40.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1463, 'c41.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1464, 'c42.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1465, 'c43.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1466, 'c44.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1467, 'c45.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1468, 'c46.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1469, 'c47.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1470, 'c48.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1471, 'c49.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1472, 'c50.jpg', 'image/jpeg', 'images\\codies'),
('codies', 1473, 'c51.jpg', 'image/jpeg', 'images\\codies'),
('council_inaugration2017', 1474, 'DSC_6017.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1475, 'DSC_6023.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1476, 'DSC_6024.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1477, 'DSC_6026.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1478, 'DSC_6027.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1479, 'DSC_6029.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1480, 'DSC_6030.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1481, 'DSC_6031.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1482, 'DSC_6032.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1483, 'DSC_6033.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1484, 'DSC_6034.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1485, 'DSC_6039.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1486, 'DSC_6040.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1487, 'DSC_6041.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1488, 'DSC_6043.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1489, 'DSC_6044.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1490, 'DSC_6045.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1491, 'DSC_6046.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1492, 'DSC_6048.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1493, 'DSC_6049.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1494, 'DSC_6050.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1495, 'DSC_6051.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1496, 'DSC_6052.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1497, 'DSC_6053.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1498, 'DSC_6054.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1499, 'DSC_6055.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1500, 'DSC_6056.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1501, 'DSC_6057.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1502, 'DSC_6058.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1503, 'DSC_6059.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1504, 'DSC_6060.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1505, 'DSC_6061.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1506, 'DSC_6062.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1507, 'DSC_6063.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1508, 'DSC_6064.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1509, 'DSC_6065.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1510, 'DSC_6066.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1511, 'DSC_6067.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1512, 'DSC_6068.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1513, 'DSC_6069.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1514, 'DSC_6070.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1515, 'DSC_6071.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1516, 'DSC_6072.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1517, 'DSC_6073.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1518, 'DSC_6074.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1519, 'DSC_6075.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1520, 'DSC_6076.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1521, 'DSC_6077.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1522, 'DSC_6078.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1523, 'DSC_6079.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1524, 'DSC_6080.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1525, 'DSC_6081.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1526, 'DSC_6082.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1527, 'DSC_6083.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1528, 'DSC_6084.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1529, 'DSC_6085.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1530, 'DSC_6086.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1531, 'DSC_6087.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1532, 'DSC_6088.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1533, 'DSC_6089.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1534, 'DSC_6090.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1535, 'DSC_6091.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1536, 'DSC_6092.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1537, 'DSC_6093.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1538, 'DSC_6094.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1539, 'DSC_6095.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1540, 'DSC_6096.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1541, 'DSC_6097.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1542, 'DSC_6098.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1543, 'DSC_6099.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1544, 'DSC_6100.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1545, 'DSC_6103.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1546, 'DSC_6107.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1547, 'DSC_6108.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1548, 'DSC_6109.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1549, 'DSC_6110.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1550, 'DSC_6111.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1551, 'DSC_6112.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1552, 'DSC_6113.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1553, 'DSC_6114.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1554, 'DSC_6115.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1555, 'DSC_6116.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1556, 'DSC_6117.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1557, 'DSC_6118.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1558, 'DSC_6119.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1559, 'DSC_6120.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1560, 'DSC_6121.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1561, 'DSC_6132.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1562, 'DSC_6133.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1563, 'DSC_6144.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('council_inaugration2017', 1564, 'DSC_6146.jpg', 'image/jpeg', 'images\\council_inaugration2017'),
('events', 1565, '1.jpg', 'image/jpeg', 'images\\events'),
('events', 1566, '2.jpg', 'image/jpeg', 'images\\events'),
('events', 1567, '3.jpg', 'image/jpeg', 'images\\events'),
('events', 1568, '4.jpg', 'image/jpeg', 'images\\events'),
('events', 1569, '5.jpg', 'image/jpeg', 'images\\events'),
('events', 1570, '6.jpg', 'image/jpeg', 'images\\events'),
('events', 1571, '7.jpg', 'image/jpeg', 'images\\events'),
('events', 1572, '8.jpg', 'image/jpeg', 'images\\events'),
('events', 1573, '9.jpg', 'image/jpeg', 'images\\events'),
('htmlworkshop2016', 1574, 'c1.jpg', 'image/jpeg', 'images\\htmlworkshop2016'),
('htmlworkshop2016', 1575, 'c10.jpg', 'image/jpeg', 'images\\htmlworkshop2016'),
('htmlworkshop2016', 1576, 'c11.jpg', 'image/jpeg', 'images\\htmlworkshop2016'),
('htmlworkshop2016', 1577, 'c12.jpg', 'image/jpeg', 'images\\htmlworkshop2016'),
('htmlworkshop2016', 1578, 'c13.jpg', 'image/jpeg', 'images\\htmlworkshop2016'),
('htmlworkshop2016', 1579, 'c14.jpg', 'image/jpeg', 'images\\htmlworkshop2016'),
('htmlworkshop2016', 1580, 'c2.jpg', 'image/jpeg', 'images\\htmlworkshop2016'),
('htmlworkshop2016', 1581, 'c3.jpg', 'image/jpeg', 'images\\htmlworkshop2016'),
('htmlworkshop2016', 1582, 'c4.jpg', 'image/jpeg', 'images\\htmlworkshop2016'),
('htmlworkshop2016', 1583, 'c6.jpg', 'image/jpeg', 'images\\htmlworkshop2016'),
('htmlworkshop2016', 1584, 'c7.jpg', 'image/jpeg', 'images\\htmlworkshop2016'),
('htmlworkshop2016', 1585, 'c8.jpg', 'image/jpeg', 'images\\htmlworkshop2016'),
('htmlworkshop2016', 1586, 'c9.jpg', 'image/jpeg', 'images\\htmlworkshop2016'),
('news_photos', 1587, 'arduino.JPG', 'image/jpeg', 'images\\news_photos'),
('news_photos', 1588, 'codies.jpg', 'image/jpeg', 'images\\news_photos'),
('news_photos', 1589, 'codies2.jpg', 'image/jpeg', 'images\\news_photos'),
('news_photos', 1590, 'council_installation2017_18.jpg', 'image/jpeg', 'images\\news_photos'),
('news_photos', 1591, 'cursor.JPG', 'image/jpeg', 'images\\news_photos'),
('news_photos', 1592, 'geekwiz.jpg', 'image/jpeg', 'images\\news_photos'),
('news_photos', 1593, 'html.jpg', 'image/jpeg', 'images\\news_photos'),
('news_photos', 1594, 'python.png', 'image/png', 'images\\news_photos'),
('pythonwrkshop2016', 1595, 'c15.jpg', 'image/jpeg', 'images\\pythonwrkshop2016'),
('pythonwrkshop2016', 1596, 'c16.jpg', 'image/jpeg', 'images\\pythonwrkshop2016'),
('pythonwrkshop2016', 1597, 'c17.jpg', 'image/jpeg', 'images\\pythonwrkshop2016'),
('pythonwrkshop2016', 1598, 'c5.jpg', 'image/jpeg', 'images\\pythonwrkshop2016'),
('undefined', 1599, 'comp_dep.JPG', 'image/jpeg', 'images\\undefined'),
('undefined', 1600, 'comp_dept.jpg', 'image/jpeg', 'images\\undefined'),
('undefined', 1601, 'comp_dept_bw.jpg', 'image/jpeg', 'images\\undefined'),
('undefined', 1602, 'comp_dept_bw2.jpg', 'image/jpeg', 'images\\undefined'),
('undefined', 1603, 'cursor.svg', 'text/plain', 'images\\undefined'),
('undefined', 1604, 'cursor1 - Copy.svg', 'image/svg+xml', 'images\\undefined'),
('undefined', 1605, 'cursor1.svg', 'image/svg+xml', 'images\\undefined'),
('undefined', 1606, 'cursor_logo.svg', 'image/svg+xml', 'images\\undefined'),
('undefined', 1607, 'cursor_members.jpg', 'image/jpeg', 'images\\undefined'),
('undefined', 1608, 'cursor_members1.jpg', 'image/jpeg', 'images\\undefined'),
('undefined', 1609, 'hqdefault.jpg', 'image/jpeg', 'images\\undefined');

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
(1, 'Cursor Installation', 'for the year 2016-17.', 'The installation of student’s council of Computer Department, Goa College of Engineering-Farmagudi was held on 24th August 2016 at the ETC Department Seminar Hall.', 'images/news_photos/cursor.JPG', '2016-08-24 15:01:38', 'newsPage/cursor.php'),
(2, 'Codies 2016', 'Intercollege coding contest.', 'The computer engineering department of Goa College of Engineering, Farmagudi conducted a technical event CODIES on 10th of October 2016. The event was organized to test students across the state on their knowledge in C , C++ and Java.', 'images/news_photos/codies.jpg', '2016-10-10 10:03:00', 'newsPage/codies.php'),
(3, 'HTML workshop', 'Conducted by Cursor.', 'The computer engineering department of Goa College of Engineering, Farmagudi conducted a one-day technical workshop on 24th of September 2016.', 'images/news_photos/html.jpg', '2016-09-24 15:03:37', 'newsPage/htmlworkshop.php'),
(4, 'Python Workshop', 'Organised by Cursor.', '\n\nTeam Cursor - the student\'s council of Computer Department of Goa College of Engineering- Farmagudi organized a three day workshop on 26th January to 28th January.', 'images/news_photos/python.png', '2017-01-28 14:05:07', 'newsPage/python.php'),
(5, 'Geekwiz', 'At Rosary College, Navelim', 'Goa college of Engineering would like to congratulate Prasad Honavar and Shashank Shetye Saudagar from Computer department for securing the first place in National level technical quiz-Geekwiz 2016. The quiz was organised by the Department of Computer Applications of Rosary College,Navelim on 26th August 2016.  ', 'images/news_photos/geekwiz.jpg', '2016-08-28 03:05:07', 'newsPage/geekwiz.php'),
(6, 'CURSOR INAUGURATION', ' 2017-18', 'The ceremonious installation of new students\' council, CURSOR of Computer department, Goa College of Engineering, Farmagudi was held at the IT department seminar hall on Tuesday, 12 th September 2017.', 'images/news_photos/council_installation2017_18.jpg', '2017-09-13 04:08:38', 'newsPage/Installation2017_18.php'),
(7, 'ARDUINO WORKSHOP', 'HELD AT GEC BY CURSOR', 'Team CURSOR, the student council of computer department, Goa college of Engineering, Farmagudi organized a two day Arduino workshop. It was conducted by three second year students Shonal Fernandes, Rohan Shirodkar from the Computer Department  and Jeremiah Rebello from the Electronic Engineering department.', 'images/news_photos/arduino.JPG', '2017-09-18 04:08:38', 'newsPage/arduino.php');

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
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `media_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1610;

--
-- AUTO_INCREMENT for table `news_article`
--
ALTER TABLE `news_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
