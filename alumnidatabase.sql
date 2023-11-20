-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2023 at 02:30 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aluminidatabase`
--
CREATE DATABASE IF NOT EXISTS `aluminidatabase` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `aluminidatabase`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `Fullname` varchar(120) NOT NULL,
  `Designation` varchar(20) NOT NULL,
  `Position` varchar(50) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Fullname`, `Designation`, `Position`, `Email`, `Password`, `image`) VALUES
('Ms.S.Sinduja', 'AP/CSE', 'Alumni Coordinator', 'sindujas@gmail.com', '123456', 'sindujamam.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `aluminidata`
--

DROP TABLE IF EXISTS `aluminidata`;
CREATE TABLE `aluminidata` (
  `Firstname` varchar(40) NOT NULL,
  `Lastname` varchar(40) NOT NULL,
  `Dob` varchar(20) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Batch` varchar(30) NOT NULL,
  `Department` varchar(20) NOT NULL,
  `Status` varchar(40) NOT NULL,
  `clgorcmpname` varchar(100) NOT NULL,
  `Currentlocation` varchar(100) NOT NULL,
  `Mobileno` varchar(20) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `Password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aluminidata`
--

INSERT INTO `aluminidata` (`Firstname`, `Lastname`, `Dob`, `Email`, `Batch`, `Department`, `Status`, `clgorcmpname`, `Currentlocation`, `Mobileno`, `Address`, `Password`) VALUES
('Shalini', 'Chakkarapani', '2003-10-16', 'shalinichakkarapani@gmail.com', '2020-2024', 'BE.CSE', 'Working', 'Google', 'Bangalore', '85556612333', 'Chengam', '123456'),
('Poorviga', 'B', '12/12/2002', 'poorvi@gmail.com', '2020-2024', 'BE.CSE', 'student', 'VCEW', 'Namakkal', '8956423144', 'Kodaikanal', '123456'),
('Prarthana', 'T', '2002-10-13', 'prarthanat@gmail.com', '2020-2024', 'BE.CSE', 'Working', 'Google', 'Bangalore', '8554866622', 'Hosur', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `campusvisit`
--

DROP TABLE IF EXISTS `campusvisit`;
CREATE TABLE `campusvisit` (
  `Fullname` varchar(100) NOT NULL,
  `Batch` varchar(10) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `mobileno` varchar(20) NOT NULL,
  `dateofvisit` varchar(50) NOT NULL,
  `reason` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `campusvisit`
--

INSERT INTO `campusvisit` (`Fullname`, `Batch`, `dept`, `mobileno`, `dateofvisit`, `reason`) VALUES
('ShaliniChakkarapani', '2020-2024', 'BE.CSE', '9025091649', '2023-10-18', 'Event');

-- --------------------------------------------------------

--
-- Table structure for table `funddata`
--

DROP TABLE IF EXISTS `funddata`;
CREATE TABLE `funddata` (
  `Name` varchar(100) NOT NULL,
  `Batch` varchar(38) NOT NULL,
  `Department` varchar(20) NOT NULL,
  `file` varchar(220) NOT NULL,
  `type` varchar(20) NOT NULL,
  `size` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `funddata`
--

INSERT INTO `funddata` (`Name`, `Batch`, `Department`, `file`, `type`, `size`) VALUES
('Shalini Chakkarapani', '', '', '20.jpeg', 'image/jpeg', '6538800'),
('Shalini Chakkarapani', '2020-2024', 'BE.CSE', '20.jpeg', 'image/jpeg', '6538800'),
('Shalini Chakkarapani', '2020-2024', 'BE.CSE', '11.jpg', 'image/jpeg', '1041866');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `Batch` varchar(30) NOT NULL,
  `Department` varchar(38) NOT NULL,
  `id` int(200) NOT NULL,
  `file` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `Category` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`Batch`, `Department`, `id`, `file`, `type`, `size`, `Category`) VALUES
('2020-2024', 'BE.CSE', 12, '05.jpg', 'image/jpeg', '1479380', 'Clgfest'),
('2020-2024', 'BE.CSE', 13, '20.jpeg', 'image/jpeg', '6538800', 'Events'),
('2020-2024', 'BE.CSE', 14, 'Alumini.jpg', 'image/jpeg', '195483', 'Clgfest'),
('2020-2024', 'BE.CSE', 15, 'alum3.png', 'image/png', '847802', 'Events'),
('2020-2024', 'BE.CSE', 16, '11.jpg', 'image/jpeg', '1041866', 'Clgfest'),
('2020-2024', 'BE.CSE', 17, 'img1.jpeg', 'image/jpeg', '403430', 'Events'),
('2020-2024', 'BE.CSE', 18, 'img2.jpeg', 'image/jpeg', '460821', 'Events'),
('2020-2024', 'BE.CSE', 19, 'img3.jpeg', 'image/jpeg', '457072', 'Events'),
('2020-2024', 'BE.CSE', 20, 'img4.jpeg', 'image/jpeg', '374493', 'Events'),
('2020-2024', 'BE.CSE', 21, 'img5.jpeg', 'image/jpeg', '185863', 'Events'),
('2020-2024', 'BE.CSE', 22, 'img6.jpeg', 'image/jpeg', '133753', 'Clgfest'),
('2020-2024', 'BE.CSE', 23, 'img7.jpeg', 'image/jpeg', '98359', 'Clgfest'),
('2020-2024', 'BE.CSE', 24, 'img8.jpeg', 'image/jpeg', '95524', 'Clgfest'),
('2020-2024', 'BE.CSE', 25, 'img9.jpeg', 'image/jpeg', '139812', 'Events');

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

DROP TABLE IF EXISTS `query`;
CREATE TABLE `query` (
  `Fullname` varchar(50) NOT NULL,
  `Batch` varchar(20) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `Mobileno` varchar(20) NOT NULL,
  `query` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `query`
--

INSERT INTO `query` (`Fullname`, `Batch`, `dept`, `Mobileno`, `query`) VALUES
('ShaliniChakkarapani', '2020-2024', 'BE.CSE', '', 'I have a query'),
('ShaliniChakkarapani', '2020-2024', 'BE.CSE', '85556612333', 'i have a quuery please contact mr');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
