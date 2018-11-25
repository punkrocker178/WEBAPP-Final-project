-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2018 at 07:10 PM
-- Server version: 8.0.12
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rap_phim`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `password` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`email`, `password`) VALUES
('admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
('admin2@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
('hieuga111@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `ID` int(11) NOT NULL,
  `Name` varchar(80) COLLATE utf8_vietnamese_ci NOT NULL,
  `Description` text COLLATE utf8_vietnamese_ci NOT NULL,
  `Duration` int(11) NOT NULL,
  `images` text COLLATE utf8_vietnamese_ci NOT NULL,
  `youtubeID` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`ID`, `Name`, `Description`, `Duration`, `images`, `youtubeID`) VALUES
(1, 'Avengers: Infinity War', '', 120, 'images/movie/AvengersResized.jpg', 'QwievZ1Tx-8'),
(2, 'Venom', '', 115, 'images/movie/venom.jpg', 'xLCn88bfW1o'),
(3, 'Predator', '', 90, 'images/movie/predator.jpg', 'WaG1KZqrLvM'),
(4, 'John Wick', '', 110, 'images/movie/johnWick.jpg', 'C0BMx-qxsP4'),
(5, 'The Nun', '', 95, 'images/movie/thenun.jpg', ''),
(6, 'Logan', '', 123, 'images/movie/logan.jpg', 'Div0iP65aZo');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Name` text COLLATE utf8_vietnamese_ci NOT NULL,
  `GioiTinh` int(11) NOT NULL,
  `NgaySinh` date NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Name`, `GioiTinh`, `NgaySinh`, `email`) VALUES
('Hieu', 1, '2018-11-04', 'admin@gmail.com'),
('Hieu2', 1, '2018-11-01', 'admin2@gmail.com'),
('HieuLeNgoc', 1, '2009-01-02', 'hieuga111@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD KEY `email` (`email`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `fk_account_user` FOREIGN KEY (`email`) REFERENCES `user` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
