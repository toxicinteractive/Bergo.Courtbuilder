-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2017 at 03:25 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bergo_court_builder`
--

-- --------------------------------------------------------

--
-- Table structure for table `default_field_dimensions`
--

CREATE TABLE `default_field_dimensions` (
  `id` int(3) NOT NULL,
  `field_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_width` float DEFAULT NULL,
  `field_height` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `default_field_dimensions`
--

INSERT INTO `default_field_dimensions` (`id`, `field_name`, `field_width`, `field_height`) VALUES
(1, 'basketmini', 9.4, 8.4),
(2, 'badminton', 13.4, 6.1),
(3, 'handball', 40, 20),
(4, 'volleyball', 18, 9),
(5, 'basketball', 28, 15),
(6, 'basketball3x3', 14, 15),
(7, 'fivesidesoccer', 38, 18),
(8, 'floorball', 40, 20),
(9, 'hockey', 60, 30),
(10, 'netball', 30.5, 15.3),
(11, 'pickleball', 13.4, 6.1),
(12, 'tennis', 24, 11),
(13, 'padeltennis', 20, 10);

-- --------------------------------------------------------

--
-- Table structure for table `interested_visitors`
--

CREATE TABLE `interested_visitors` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fake_id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selectedField` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selectedTile` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selectedMainField` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selectedOptionalField` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selectedOptionalField2` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pattern` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lights` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hoops` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `units` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fence` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `goals` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lineColorMainField` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fieldColorMainField` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyColorMainField` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aroundColorMainField` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edgesColorMainField` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fieldView` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainLenght` float DEFAULT NULL,
  `mainWidth` float DEFAULT NULL,
  `aroundLeft` float DEFAULT NULL,
  `aroundRight` float DEFAULT NULL,
  `aroundUp` float DEFAULT NULL,
  `aroundDown` float DEFAULT NULL,
  `lineColorOpt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fieldColorOpt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyColorOpt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rotateOptField` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fieldOptionWidth` float DEFAULT NULL,
  `fieldOptionHeight` float DEFAULT NULL,
  `fieldOptionLeftRight` float DEFAULT NULL,
  `fieldOptionUpDown` float DEFAULT NULL,
  `lineColorOpt2` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fieldColorOpt2` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyColorOpt2` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rotateOptField2` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fieldOptionWidth2` float DEFAULT NULL,
  `fieldOptionHeight2` float DEFAULT NULL,
  `fieldOptionLeftRight2` float DEFAULT NULL,
  `fieldOptionUpDown2` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interested_visitors`
--

INSERT INTO `interested_visitors` (`id`, `fake_id`, `name`, `company`, `phone`, `email`, `message`, `country`, `selectedField`, `selectedTile`, `selectedMainField`, `selectedOptionalField`, `selectedOptionalField2`, `pattern`, `lights`, `hoops`, `units`, `fence`, `goals`, `lineColorMainField`, `fieldColorMainField`, `keyColorMainField`, `aroundColorMainField`, `edgesColorMainField`, `fieldView`, `mainLenght`, `mainWidth`, `aroundLeft`, `aroundRight`, `aroundUp`, `aroundDown`, `lineColorOpt`, `fieldColorOpt`, `keyColorOpt`, `rotateOptField`, `fieldOptionWidth`, `fieldOptionHeight`, `fieldOptionLeftRight`, `fieldOptionUpDown`, `lineColorOpt2`, `fieldColorOpt2`, `keyColorOpt2`, `rotateOptField2`, `fieldOptionWidth2`, `fieldOptionHeight2`, `fieldOptionLeftRight2`, `fieldOptionUpDown2`) VALUES
('db04387a6878f04d6818e9fd70d892de', 6, '', '', '', '', '', 'Sweden', 'Outdoor', 'multisport-tile', 'handball', 'basketball', 'SecondnoneSelected', 'off', 'off', 'off', 'off', 'off', 'off', 'rgb(255, 255, 255)', 'rgb(72, 102, 126)', 'rgb(174, 174, 184)', 'rgb(75, 87, 95)', 'rgb(254, 208, 17)', '3d', 40, 20, 1, 1, 1, 1, 'rgb(213, 237, 243)', 'rgb(0, 54, 104)', 'rgb(254, 208, 17)', '90', 20, 12, 24, -4, 'rgb(190, 211, 223)', 'rgba(255, 255, 255, 0)', 'rgb(254, 208, 17)', '0', 0, 0, 0, 0),
('401aeb557c26365930ae1c0c537f043a', 4, '', '', '', '', '', 'Sweden', 'Outdoor', 'multisport-tile', 'handball', 'basketball', 'SecondnoneSelected', 'off', 'off', 'off', 'off', 'off', 'off', 'rgb(255, 255, 255)', 'rgb(72, 102, 126)', 'rgb(174, 174, 184)', 'rgb(75, 87, 95)', 'rgb(254, 208, 17)', '3d', 40, 20, 1, 1, 1, 1, 'rgb(213, 237, 243)', 'rgb(0, 106, 179)', 'rgb(254, 208, 17)', '90', 20, 12, 10, 10, 'rgb(190, 211, 223)', 'rgba(255, 255, 255, 0)', 'rgb(254, 208, 17)', '0', 0, 0, 0, 0),
('0787a586028db5159367e898bc7c2130', 5, '', '', '', '', '', 'Sweden', 'Outdoor', 'multisport-tile', 'handball', 'basketball', 'SecondnoneSelected', 'off', 'off', 'off', 'off', 'off', 'off', 'rgb(255, 255, 255)', 'rgb(72, 102, 126)', 'rgb(174, 174, 184)', 'rgb(75, 87, 95)', 'rgb(254, 208, 17)', '3d', 40, 20, 1, 1, 1, 1, 'rgb(213, 237, 243)', 'rgb(0, 54, 104)', 'rgb(254, 208, 17)', '0', 20, 12, 20, 0, 'rgb(190, 211, 223)', 'rgba(255, 255, 255, 0)', 'rgb(254, 208, 17)', '0', 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `default_field_dimensions`
--
ALTER TABLE `default_field_dimensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interested_visitors`
--
ALTER TABLE `interested_visitors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fake_id` (`fake_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `default_field_dimensions`
--
ALTER TABLE `default_field_dimensions`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `interested_visitors`
--
ALTER TABLE `interested_visitors`
  MODIFY `fake_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
