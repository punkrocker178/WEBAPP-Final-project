-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2018 at 05:31 AM
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
-- Database: `project_rapphim`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `role_id` varchar(4) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `password` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`email`, `role_id`, `password`) VALUES
('666.noobno@gmail.com', 'user', '81dc9bdb52d04dc20036dbd8313ed055'),
('acer@gmail.com', 'user', '202cb962ac59075b964b07152d234b70'),
('admin@gmail.com', 'staf', '81dc9bdb52d04dc20036dbd8313ed055'),
('admin2@gmail.com', 'staf', '81dc9bdb52d04dc20036dbd8313ed055'),
('andiez@gmail.com', 'user', '202cb962ac59075b964b07152d234b70'),
('angelofdeath@gmail.com', 'user', '81dc9bdb52d04dc20036dbd8313ed055'),
('anh1@gmail.com', 'user', '827ccb0eea8a706c4c34a16891f84e7b'),
('anhvu@gmail.com', 'user', '827ccb0eea8a706c4c34a16891f84e7b'),
('blizzardnorth@gmail.com', 'user', '81dc9bdb52d04dc20036dbd8313ed055'),
('bryviupczd_1544329706@tfbnw.net', 'user', '33ef37db24f3a27fb520847dcd549e9f'),
('cuong93@gmail.com', 'user', '827ccb0eea8a706c4c34a16891f84e7b'),
('daoPham93@gmail.com', 'user', '827ccb0eea8a706c4c34a16891f84e7b'),
('dattrieu@gmail.com', 'user', '827ccb0eea8a706c4c34a16891f84e7b'),
('dieu@gmail.com', 'staf', '827ccb0eea8a706c4c34a16891f84e7b'),
('germantank@gmail.com', 'user', '81dc9bdb52d04dc20036dbd8313ed055'),
('hai1@gmail.com', 'staf', '827ccb0eea8a706c4c34a16891f84e7b'),
('hale@gmail.com', 'user', '827ccb0eea8a706c4c34a16891f84e7b'),
('hao@gmail.com', 'staf', '827ccb0eea8a706c4c34a16891f84e7b'),
('hien@gmail.com', 'user', '827ccb0eea8a706c4c34a16891f84e7b'),
('hieuga111@gmail.com', 'user', '81dc9bdb52d04dc20036dbd8313ed055'),
('hieuVu@gmail.com', 'user', '827ccb0eea8a706c4c34a16891f84e7b'),
('hoa@gmail.com', 'staf', '827ccb0eea8a706c4c34a16891f84e7b'),
('ibmthinkpad@gmail.com', 'user', '81dc9bdb52d04dc20036dbd8313ed055'),
('kaizer172@gmail.com', 'user', '81dc9bdb52d04dc20036dbd8313ed055'),
('linhkute@gmail.com', 'user', '81dc9bdb52d04dc20036dbd8313ed055'),
('mario@gmail.com', 'user', '202cb962ac59075b964b07152d234b70'),
('maroon5@gmail.com', 'user', '202cb962ac59075b964b07152d234b70'),
('open_lvfpmst_user@tfbnw.net', 'user', 'f8b0b924ebd7046dbfa85a856e4682c8'),
('satpaladin@gmail.com', 'user', '81dc9bdb52d04dc20036dbd8313ed055'),
('test@gmail.com', 'user', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `accountoriginal`
--

CREATE TABLE `accountoriginal` (
  `username` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `accountoriginal`
--

INSERT INTO `accountoriginal` (`username`, `password`) VALUES
('NV0001', '202cb962ac59075b964b07152d234b70'),
('NV0002', '202cb962ac59075b964b07152d234b70'),
('NV0003', '202cb962ac59075b964b07152d234b70'),
('NV0004', '202cb962ac59075b964b07152d234b70'),
('NV0005', '202cb962ac59075b964b07152d234b70'),
('NV0006', '202cb962ac59075b964b07152d234b70'),
('NV0007', '202cb962ac59075b964b07152d234b70'),
('NV0008', '202cb962ac59075b964b07152d234b70'),
('NV0009', '202cb962ac59075b964b07152d234b70'),
('NV0010', '202cb962ac59075b964b07152d234b70'),
('NV0011', '202cb962ac59075b964b07152d234b70'),
('NV0012', '202cb962ac59075b964b07152d234b70'),
('NV0013', '202cb962ac59075b964b07152d234b70'),
('NV0014', '202cb962ac59075b964b07152d234b70'),
('NV0015', '202cb962ac59075b964b07152d234b70'),
('NV0016', '202cb962ac59075b964b07152d234b70'),
('NV0017', '202cb962ac59075b964b07152d234b70'),
('NV0018', '202cb962ac59075b964b07152d234b70'),
('NV0019', '202cb962ac59075b964b07152d234b70'),
('NV0020', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `dinhdang`
--

CREATE TABLE `dinhdang` (
  `ma_dinh_dang` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dinhdang`
--

INSERT INTO `dinhdang` (`ma_dinh_dang`, `mo_ta`) VALUES
('2D', 'Định dạng phim thường'),
('3D', 'Định dạng phim sắc nét, hình ảnh sống động'),
('4D', 'Định dạng phim cực sắt nét, mang điện ảnh ra thế giới thực!');

-- --------------------------------------------------------

--
-- Table structure for table `ghe`
--

CREATE TABLE `ghe` (
  `ma_ghe` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ma_loai` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_trang_thai` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_rap` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ghe`
--

INSERT INTO `ghe` (`ma_ghe`, `ma_loai`, `ma_trang_thai`, `ma_rap`) VALUES
('A1', 'BT', 'CTC', 'RAP01'),
('A1', 'BT', 'CTC', 'RAP02'),
('A1', 'BT', 'CTC', 'RAP03'),
('A1', 'BT', 'CTC', 'RAP04'),
('A1', 'BT', 'CTC', 'RAP05'),
('A1', 'BT', 'CTC', 'RAP06'),
('A10', 'BT', 'CTC', 'RAP01'),
('A10', 'BT', 'CTC', 'RAP02'),
('A10', 'BT', 'CTC', 'RAP03'),
('A10', 'BT', 'CTC', 'RAP04'),
('A10', 'BT', 'CTC', 'RAP05'),
('A10', 'BT', 'CTC', 'RAP06'),
('A2', 'BT', 'CTC', 'RAP01'),
('A2', 'BT', 'CTC', 'RAP02'),
('A2', 'BT', 'CTC', 'RAP03'),
('A2', 'BT', 'CTC', 'RAP04'),
('A2', 'BT', 'CTC', 'RAP05'),
('A2', 'BT', 'CTC', 'RAP06'),
('A3', 'BT', 'CTC', 'RAP01'),
('A3', 'BT', 'CTC', 'RAP02'),
('A3', 'BT', 'CTC', 'RAP03'),
('A3', 'BT', 'CTC', 'RAP04'),
('A3', 'BT', 'CTC', 'RAP05'),
('A3', 'BT', 'CTC', 'RAP06'),
('A4', 'BT', 'CTC', 'RAP01'),
('A4', 'BT', 'CTC', 'RAP02'),
('A4', 'BT', 'CTC', 'RAP03'),
('A4', 'BT', 'CTC', 'RAP04'),
('A4', 'BT', 'CTC', 'RAP05'),
('A4', 'BT', 'CTC', 'RAP06'),
('A5', 'BT', 'CTC', 'RAP01'),
('A5', 'BT', 'CTC', 'RAP02'),
('A5', 'BT', 'CTC', 'RAP03'),
('A5', 'BT', 'CTC', 'RAP04'),
('A5', 'BT', 'CTC', 'RAP05'),
('A5', 'BT', 'CTC', 'RAP06'),
('A6', 'BT', 'CTC', 'RAP01'),
('A6', 'BT', 'CTC', 'RAP02'),
('A6', 'BT', 'CTC', 'RAP03'),
('A6', 'BT', 'CTC', 'RAP04'),
('A6', 'BT', 'CTC', 'RAP05'),
('A6', 'BT', 'CTC', 'RAP06'),
('A7', 'BT', 'CTC', 'RAP01'),
('A7', 'BT', 'CTC', 'RAP02'),
('A7', 'BT', 'CTC', 'RAP03'),
('A7', 'BT', 'CTC', 'RAP04'),
('A7', 'BT', 'CTC', 'RAP05'),
('A7', 'BT', 'CTC', 'RAP06'),
('A8', 'BT', 'CTC', 'RAP01'),
('A8', 'BT', 'CTC', 'RAP02'),
('A8', 'BT', 'CTC', 'RAP03'),
('A8', 'BT', 'CTC', 'RAP04'),
('A8', 'BT', 'CTC', 'RAP05'),
('A8', 'BT', 'CTC', 'RAP06'),
('A9', 'BT', 'CTC', 'RAP01'),
('A9', 'BT', 'CTC', 'RAP02'),
('A9', 'BT', 'CTC', 'RAP03'),
('A9', 'BT', 'CTC', 'RAP04'),
('A9', 'BT', 'CTC', 'RAP05'),
('A9', 'BT', 'CTC', 'RAP06'),
('B1', 'BT', 'CTC', 'RAP01'),
('B1', 'BT', 'CTC', 'RAP02'),
('B1', 'BT', 'CTC', 'RAP03'),
('B1', 'BT', 'CTC', 'RAP04'),
('B1', 'BT', 'CTC', 'RAP05'),
('B1', 'BT', 'CTC', 'RAP06'),
('B10', 'BT', 'CTC', 'RAP01'),
('B10', 'BT', 'CTC', 'RAP02'),
('B10', 'BT', 'CTC', 'RAP03'),
('B10', 'BT', 'CTC', 'RAP04'),
('B10', 'BT', 'CTC', 'RAP05'),
('B10', 'BT', 'CTC', 'RAP06'),
('B2', 'BT', 'CTC', 'RAP01'),
('B2', 'BT', 'CTC', 'RAP02'),
('B2', 'BT', 'CTC', 'RAP03'),
('B2', 'BT', 'CTC', 'RAP04'),
('B2', 'BT', 'CTC', 'RAP05'),
('B2', 'BT', 'CTC', 'RAP06'),
('B3', 'BT', 'CTC', 'RAP01'),
('B3', 'BT', 'CTC', 'RAP02'),
('B3', 'BT', 'CTC', 'RAP03'),
('B3', 'BT', 'CTC', 'RAP04'),
('B3', 'BT', 'CTC', 'RAP05'),
('B3', 'BT', 'CTC', 'RAP06'),
('B4', 'BT', 'CTC', 'RAP01'),
('B4', 'BT', 'CTC', 'RAP02'),
('B4', 'BT', 'CTC', 'RAP03'),
('B4', 'BT', 'CTC', 'RAP04'),
('B4', 'BT', 'CTC', 'RAP05'),
('B4', 'BT', 'CTC', 'RAP06'),
('B5', 'BT', 'CTC', 'RAP01'),
('B5', 'BT', 'CTC', 'RAP02'),
('B5', 'BT', 'CTC', 'RAP03'),
('B5', 'BT', 'CTC', 'RAP04'),
('B5', 'BT', 'CTC', 'RAP05'),
('B5', 'BT', 'CTC', 'RAP06'),
('B6', 'BT', 'CTC', 'RAP01'),
('B6', 'BT', 'CTC', 'RAP02'),
('B6', 'BT', 'CTC', 'RAP03'),
('B6', 'BT', 'CTC', 'RAP04'),
('B6', 'BT', 'CTC', 'RAP05'),
('B6', 'BT', 'CTC', 'RAP06'),
('B7', 'BT', 'CTC', 'RAP01'),
('B7', 'BT', 'CTC', 'RAP02'),
('B7', 'BT', 'CTC', 'RAP03'),
('B7', 'BT', 'CTC', 'RAP04'),
('B7', 'BT', 'CTC', 'RAP05'),
('B7', 'BT', 'CTC', 'RAP06'),
('B8', 'BT', 'CTC', 'RAP01'),
('B8', 'BT', 'CTC', 'RAP02'),
('B8', 'BT', 'CTC', 'RAP03'),
('B8', 'BT', 'CTC', 'RAP04'),
('B8', 'BT', 'CTC', 'RAP05'),
('B8', 'BT', 'CTC', 'RAP06'),
('B9', 'BT', 'CTC', 'RAP01'),
('B9', 'BT', 'CTC', 'RAP02'),
('B9', 'BT', 'CTC', 'RAP03'),
('B9', 'BT', 'CTC', 'RAP04'),
('B9', 'BT', 'CTC', 'RAP05'),
('B9', 'BT', 'CTC', 'RAP06'),
('C1', 'BT', 'CTC', 'RAP01'),
('C1', 'BT', 'CTC', 'RAP02'),
('C1', 'BT', 'CTC', 'RAP03'),
('C1', 'BT', 'CTC', 'RAP04'),
('C1', 'BT', 'CTC', 'RAP05'),
('C1', 'BT', 'CTC', 'RAP06'),
('C10', 'BT', 'CTC', 'RAP01'),
('C10', 'BT', 'CTC', 'RAP02'),
('C10', 'BT', 'CTC', 'RAP03'),
('C10', 'BT', 'CTC', 'RAP04'),
('C10', 'BT', 'CTC', 'RAP05'),
('C10', 'BT', 'CTC', 'RAP06'),
('C2', 'BT', 'CTC', 'RAP01'),
('C2', 'BT', 'CTC', 'RAP02'),
('C2', 'BT', 'CTC', 'RAP03'),
('C2', 'BT', 'CTC', 'RAP04'),
('C2', 'BT', 'CTC', 'RAP05'),
('C2', 'BT', 'CTC', 'RAP06'),
('C3', 'BT', 'CTC', 'RAP01'),
('C3', 'BT', 'CTC', 'RAP02'),
('C3', 'BT', 'CTC', 'RAP03'),
('C3', 'BT', 'CTC', 'RAP04'),
('C3', 'BT', 'CTC', 'RAP05'),
('C3', 'BT', 'CTC', 'RAP06'),
('C4', 'BT', 'CTC', 'RAP01'),
('C4', 'BT', 'CTC', 'RAP02'),
('C4', 'BT', 'CTC', 'RAP03'),
('C4', 'BT', 'CTC', 'RAP04'),
('C4', 'BT', 'CTC', 'RAP05'),
('C4', 'BT', 'CTC', 'RAP06'),
('C5', 'BT', 'CTC', 'RAP01'),
('C5', 'BT', 'CTC', 'RAP02'),
('C5', 'BT', 'CTC', 'RAP03'),
('C5', 'BT', 'CTC', 'RAP04'),
('C5', 'BT', 'CTC', 'RAP05'),
('C5', 'BT', 'CTC', 'RAP06'),
('C6', 'BT', 'CTC', 'RAP01'),
('C6', 'BT', 'CTC', 'RAP02'),
('C6', 'BT', 'CTC', 'RAP03'),
('C6', 'BT', 'CTC', 'RAP04'),
('C6', 'BT', 'CTC', 'RAP05'),
('C6', 'BT', 'CTC', 'RAP06'),
('C7', 'BT', 'CTC', 'RAP01'),
('C7', 'BT', 'CTC', 'RAP02'),
('C7', 'BT', 'CTC', 'RAP03'),
('C7', 'BT', 'CTC', 'RAP04'),
('C7', 'BT', 'CTC', 'RAP05'),
('C7', 'BT', 'CTC', 'RAP06'),
('C8', 'BT', 'CTC', 'RAP01'),
('C8', 'BT', 'CTC', 'RAP02'),
('C8', 'BT', 'CTC', 'RAP03'),
('C8', 'BT', 'CTC', 'RAP04'),
('C8', 'BT', 'CTC', 'RAP05'),
('C8', 'BT', 'CTC', 'RAP06'),
('C9', 'BT', 'CTC', 'RAP01'),
('C9', 'BT', 'CTC', 'RAP02'),
('C9', 'BT', 'CTC', 'RAP03'),
('C9', 'BT', 'CTC', 'RAP04'),
('C9', 'BT', 'CTC', 'RAP05'),
('C9', 'BT', 'CTC', 'RAP06'),
('D1', 'BT', 'CTC', 'RAP01'),
('D1', 'BT', 'CTC', 'RAP02'),
('D1', 'BT', 'CTC', 'RAP03'),
('D1', 'BT', 'CTC', 'RAP04'),
('D1', 'BT', 'CTC', 'RAP05'),
('D1', 'BT', 'CTC', 'RAP06'),
('D10', 'BT', 'CTC', 'RAP01'),
('D10', 'BT', 'CTC', 'RAP02'),
('D10', 'BT', 'CTC', 'RAP03'),
('D10', 'BT', 'CTC', 'RAP04'),
('D10', 'BT', 'CTC', 'RAP05'),
('D10', 'BT', 'CTC', 'RAP06'),
('D2', 'BT', 'CTC', 'RAP01'),
('D2', 'BT', 'CTC', 'RAP02'),
('D2', 'BT', 'CTC', 'RAP03'),
('D2', 'BT', 'CTC', 'RAP04'),
('D2', 'BT', 'CTC', 'RAP05'),
('D2', 'BT', 'CTC', 'RAP06'),
('D3', 'BT', 'CTC', 'RAP01'),
('D3', 'BT', 'CTC', 'RAP02'),
('D3', 'BT', 'CTC', 'RAP03'),
('D3', 'BT', 'CTC', 'RAP04'),
('D3', 'BT', 'CTC', 'RAP05'),
('D3', 'BT', 'CTC', 'RAP06'),
('D4', 'BT', 'CTC', 'RAP01'),
('D4', 'BT', 'CTC', 'RAP02'),
('D4', 'BT', 'CTC', 'RAP03'),
('D4', 'BT', 'CTC', 'RAP04'),
('D4', 'BT', 'CTC', 'RAP05'),
('D4', 'BT', 'CTC', 'RAP06'),
('D5', 'BT', 'CTC', 'RAP01'),
('D5', 'BT', 'CTC', 'RAP02'),
('D5', 'BT', 'CTC', 'RAP03'),
('D5', 'BT', 'CTC', 'RAP04'),
('D5', 'BT', 'CTC', 'RAP05'),
('D5', 'BT', 'CTC', 'RAP06'),
('D6', 'BT', 'CTC', 'RAP01'),
('D6', 'BT', 'CTC', 'RAP02'),
('D6', 'BT', 'CTC', 'RAP03'),
('D6', 'BT', 'CTC', 'RAP04'),
('D6', 'BT', 'CTC', 'RAP05'),
('D6', 'BT', 'CTC', 'RAP06'),
('D7', 'BT', 'CTC', 'RAP01'),
('D7', 'BT', 'CTC', 'RAP02'),
('D7', 'BT', 'CTC', 'RAP03'),
('D7', 'BT', 'CTC', 'RAP04'),
('D7', 'BT', 'CTC', 'RAP05'),
('D7', 'BT', 'CTC', 'RAP06'),
('D8', 'BT', 'CTC', 'RAP01'),
('D8', 'BT', 'CTC', 'RAP02'),
('D8', 'BT', 'CTC', 'RAP03'),
('D8', 'BT', 'CTC', 'RAP04'),
('D8', 'BT', 'CTC', 'RAP05'),
('D8', 'BT', 'CTC', 'RAP06'),
('D9', 'BT', 'CTC', 'RAP01'),
('D9', 'BT', 'CTC', 'RAP02'),
('D9', 'BT', 'CTC', 'RAP03'),
('D9', 'BT', 'CTC', 'RAP04'),
('D9', 'BT', 'CTC', 'RAP05'),
('D9', 'BT', 'CTC', 'RAP06'),
('E1', 'VIP', 'CTC', 'RAP01'),
('E1', 'VIP', 'CTC', 'RAP02'),
('E1', 'VIP', 'CTC', 'RAP03'),
('E1', 'VIP', 'CTC', 'RAP04'),
('E1', 'VIP', 'CTC', 'RAP05'),
('E10', 'VIP', 'CTC', 'RAP01'),
('E10', 'VIP', 'CTC', 'RAP02'),
('E10', 'VIP', 'CTC', 'RAP03'),
('E10', 'VIP', 'CTC', 'RAP04'),
('E10', 'VIP', 'CTC', 'RAP05'),
('E2', 'VIP', 'CTC', 'RAP01'),
('E2', 'VIP', 'CTC', 'RAP02'),
('E2', 'VIP', 'CTC', 'RAP03'),
('E2', 'VIP', 'CTC', 'RAP04'),
('E2', 'VIP', 'CTC', 'RAP05'),
('E3', 'VIP', 'CTC', 'RAP01'),
('E3', 'VIP', 'CTC', 'RAP02'),
('E3', 'VIP', 'CTC', 'RAP03'),
('E3', 'VIP', 'CTC', 'RAP04'),
('E3', 'VIP', 'CTC', 'RAP05'),
('E4', 'VIP', 'CTC', 'RAP01'),
('E4', 'VIP', 'CTC', 'RAP02'),
('E4', 'VIP', 'CTC', 'RAP03'),
('E4', 'VIP', 'CTC', 'RAP04'),
('E4', 'VIP', 'CTC', 'RAP05'),
('E5', 'VIP', 'CTC', 'RAP01'),
('E5', 'VIP', 'CTC', 'RAP02'),
('E5', 'VIP', 'CTC', 'RAP03'),
('E5', 'VIP', 'CTC', 'RAP04'),
('E5', 'VIP', 'CTC', 'RAP05'),
('E6', 'VIP', 'CTC', 'RAP01'),
('E6', 'VIP', 'CTC', 'RAP02'),
('E6', 'VIP', 'CTC', 'RAP03'),
('E6', 'VIP', 'CTC', 'RAP04'),
('E6', 'VIP', 'CTC', 'RAP05'),
('E7', 'VIP', 'CTC', 'RAP01'),
('E7', 'VIP', 'CTC', 'RAP02'),
('E7', 'VIP', 'CTC', 'RAP03'),
('E7', 'VIP', 'CTC', 'RAP04'),
('E7', 'VIP', 'CTC', 'RAP05'),
('E8', 'VIP', 'CTC', 'RAP01'),
('E8', 'VIP', 'CTC', 'RAP02'),
('E8', 'VIP', 'CTC', 'RAP03'),
('E8', 'VIP', 'CTC', 'RAP04'),
('E8', 'VIP', 'CTC', 'RAP05'),
('E9', 'VIP', 'CTC', 'RAP01'),
('E9', 'VIP', 'CTC', 'RAP02'),
('E9', 'VIP', 'CTC', 'RAP03'),
('E9', 'VIP', 'CTC', 'RAP04'),
('E9', 'VIP', 'CTC', 'RAP05'),
('F1', 'VIP', 'CTC', 'RAP01'),
('F1', 'VIP', 'CTC', 'RAP02'),
('F1', 'VIP', 'CTC', 'RAP03'),
('F1', 'VIP', 'CTC', 'RAP04'),
('F1', 'VIP', 'CTC', 'RAP05'),
('F10', 'VIP', 'CTC', 'RAP01'),
('F10', 'VIP', 'CTC', 'RAP02'),
('F10', 'VIP', 'CTC', 'RAP03'),
('F10', 'VIP', 'CTC', 'RAP04'),
('F10', 'VIP', 'CTC', 'RAP05'),
('F2', 'VIP', 'CTC', 'RAP01'),
('F2', 'VIP', 'CTC', 'RAP02'),
('F2', 'VIP', 'CTC', 'RAP03'),
('F2', 'VIP', 'CTC', 'RAP04'),
('F2', 'VIP', 'CTC', 'RAP05'),
('F3', 'VIP', 'CTC', 'RAP01'),
('F3', 'VIP', 'CTC', 'RAP02'),
('F3', 'VIP', 'CTC', 'RAP03'),
('F3', 'VIP', 'CTC', 'RAP04'),
('F3', 'VIP', 'CTC', 'RAP05'),
('F4', 'VIP', 'CTC', 'RAP01'),
('F4', 'VIP', 'CTC', 'RAP02'),
('F4', 'VIP', 'CTC', 'RAP03'),
('F4', 'VIP', 'CTC', 'RAP04'),
('F4', 'VIP', 'CTC', 'RAP05'),
('F5', 'VIP', 'CTC', 'RAP01'),
('F5', 'VIP', 'CTC', 'RAP02'),
('F5', 'VIP', 'CTC', 'RAP03'),
('F5', 'VIP', 'CTC', 'RAP04'),
('F5', 'VIP', 'CTC', 'RAP05'),
('F6', 'VIP', 'CTC', 'RAP01'),
('F6', 'VIP', 'CTC', 'RAP02'),
('F6', 'VIP', 'CTC', 'RAP03'),
('F6', 'VIP', 'CTC', 'RAP04'),
('F6', 'VIP', 'CTC', 'RAP05'),
('F7', 'VIP', 'CTC', 'RAP01'),
('F7', 'VIP', 'CTC', 'RAP02'),
('F7', 'VIP', 'CTC', 'RAP03'),
('F7', 'VIP', 'CTC', 'RAP04'),
('F7', 'VIP', 'CTC', 'RAP05'),
('F8', 'VIP', 'CTC', 'RAP01'),
('F8', 'VIP', 'CTC', 'RAP02'),
('F8', 'VIP', 'CTC', 'RAP03'),
('F8', 'VIP', 'CTC', 'RAP04'),
('F8', 'VIP', 'CTC', 'RAP05'),
('F9', 'VIP', 'CTC', 'RAP01'),
('F9', 'VIP', 'CTC', 'RAP02'),
('F9', 'VIP', 'CTC', 'RAP03'),
('F9', 'VIP', 'CTC', 'RAP04'),
('F9', 'VIP', 'CTC', 'RAP05'),
('G1', 'VIP', 'CTC', 'RAP01'),
('G1', 'VIP', 'CTC', 'RAP02'),
('G1', 'VIP', 'CTC', 'RAP03'),
('G1', 'VIP', 'CTC', 'RAP04'),
('G1', 'VIP', 'CTC', 'RAP05'),
('G10', 'VIP', 'CTC', 'RAP01'),
('G10', 'VIP', 'CTC', 'RAP02'),
('G10', 'VIP', 'CTC', 'RAP03'),
('G10', 'VIP', 'CTC', 'RAP04'),
('G10', 'VIP', 'CTC', 'RAP05'),
('G2', 'VIP', 'CTC', 'RAP01'),
('G2', 'VIP', 'CTC', 'RAP02'),
('G2', 'VIP', 'CTC', 'RAP03'),
('G2', 'VIP', 'CTC', 'RAP04'),
('G2', 'VIP', 'CTC', 'RAP05'),
('G3', 'VIP', 'CTC', 'RAP01'),
('G3', 'VIP', 'CTC', 'RAP02'),
('G3', 'VIP', 'CTC', 'RAP03'),
('G3', 'VIP', 'CTC', 'RAP04'),
('G3', 'VIP', 'CTC', 'RAP05'),
('G4', 'VIP', 'CTC', 'RAP01'),
('G4', 'VIP', 'CTC', 'RAP02'),
('G4', 'VIP', 'CTC', 'RAP03'),
('G4', 'VIP', 'CTC', 'RAP04'),
('G4', 'VIP', 'CTC', 'RAP05'),
('G5', 'VIP', 'CTC', 'RAP01'),
('G5', 'VIP', 'CTC', 'RAP02'),
('G5', 'VIP', 'CTC', 'RAP03'),
('G5', 'VIP', 'CTC', 'RAP04'),
('G5', 'VIP', 'CTC', 'RAP05'),
('G6', 'VIP', 'CTC', 'RAP01'),
('G6', 'VIP', 'CTC', 'RAP02'),
('G6', 'VIP', 'CTC', 'RAP03'),
('G6', 'VIP', 'CTC', 'RAP04'),
('G6', 'VIP', 'CTC', 'RAP05'),
('G7', 'VIP', 'CTC', 'RAP01'),
('G7', 'VIP', 'CTC', 'RAP02'),
('G7', 'VIP', 'CTC', 'RAP03'),
('G7', 'VIP', 'CTC', 'RAP04'),
('G7', 'VIP', 'CTC', 'RAP05'),
('G8', 'VIP', 'CTC', 'RAP01'),
('G8', 'VIP', 'CTC', 'RAP02'),
('G8', 'VIP', 'CTC', 'RAP03'),
('G8', 'VIP', 'CTC', 'RAP04'),
('G8', 'VIP', 'CTC', 'RAP05'),
('G9', 'VIP', 'CTC', 'RAP01'),
('G9', 'VIP', 'CTC', 'RAP02'),
('G9', 'VIP', 'CTC', 'RAP03'),
('G9', 'VIP', 'CTC', 'RAP04'),
('G9', 'VIP', 'CTC', 'RAP05'),
('H1', 'VIP', 'CTC', 'RAP01'),
('H1', 'VIP', 'CTC', 'RAP02'),
('H1', 'VIP', 'CTC', 'RAP03'),
('H1', 'VIP', 'CTC', 'RAP04'),
('H1', 'VIP', 'CTC', 'RAP05'),
('H10', 'VIP', 'CTC', 'RAP01'),
('H10', 'VIP', 'CTC', 'RAP02'),
('H10', 'VIP', 'CTC', 'RAP03'),
('H10', 'VIP', 'CTC', 'RAP04'),
('H10', 'VIP', 'CTC', 'RAP05'),
('H2', 'VIP', 'CTC', 'RAP01'),
('H2', 'VIP', 'CTC', 'RAP02'),
('H2', 'VIP', 'CTC', 'RAP03'),
('H2', 'VIP', 'CTC', 'RAP04'),
('H2', 'VIP', 'CTC', 'RAP05'),
('H3', 'VIP', 'CTC', 'RAP01'),
('H3', 'VIP', 'CTC', 'RAP02'),
('H3', 'VIP', 'CTC', 'RAP03'),
('H3', 'VIP', 'CTC', 'RAP04'),
('H3', 'VIP', 'CTC', 'RAP05'),
('H4', 'VIP', 'CTC', 'RAP01'),
('H4', 'VIP', 'CTC', 'RAP02'),
('H4', 'VIP', 'CTC', 'RAP03'),
('H4', 'VIP', 'CTC', 'RAP04'),
('H4', 'VIP', 'CTC', 'RAP05'),
('H5', 'VIP', 'CTC', 'RAP01'),
('H5', 'VIP', 'CTC', 'RAP02'),
('H5', 'VIP', 'CTC', 'RAP03'),
('H5', 'VIP', 'CTC', 'RAP04'),
('H5', 'VIP', 'CTC', 'RAP05'),
('H6', 'VIP', 'CTC', 'RAP01'),
('H6', 'VIP', 'CTC', 'RAP02'),
('H6', 'VIP', 'CTC', 'RAP03'),
('H6', 'VIP', 'CTC', 'RAP04'),
('H6', 'VIP', 'CTC', 'RAP05'),
('H7', 'VIP', 'CTC', 'RAP01'),
('H7', 'VIP', 'CTC', 'RAP02'),
('H7', 'VIP', 'CTC', 'RAP03'),
('H7', 'VIP', 'CTC', 'RAP04'),
('H7', 'VIP', 'CTC', 'RAP05'),
('H8', 'VIP', 'CTC', 'RAP01'),
('H8', 'VIP', 'CTC', 'RAP02'),
('H8', 'VIP', 'CTC', 'RAP03'),
('H8', 'VIP', 'CTC', 'RAP04'),
('H8', 'VIP', 'CTC', 'RAP05'),
('H9', 'VIP', 'CTC', 'RAP01'),
('H9', 'VIP', 'CTC', 'RAP02'),
('H9', 'VIP', 'CTC', 'RAP03'),
('H9', 'VIP', 'CTC', 'RAP04'),
('H9', 'VIP', 'CTC', 'RAP05'),
('J1', 'VIP', 'CTC', 'RAP01'),
('J1', 'VIP', 'CTC', 'RAP02'),
('J1', 'VIP', 'CTC', 'RAP04'),
('J1', 'VIP', 'CTC', 'RAP05'),
('J10', 'VIP', 'CTC', 'RAP01'),
('J10', 'VIP', 'CTC', 'RAP02'),
('J10', 'VIP', 'CTC', 'RAP04'),
('J10', 'VIP', 'CTC', 'RAP05'),
('J2', 'VIP', 'CTC', 'RAP01'),
('J2', 'VIP', 'CTC', 'RAP02'),
('J2', 'VIP', 'CTC', 'RAP03'),
('J2', 'VIP', 'CTC', 'RAP04'),
('J2', 'VIP', 'CTC', 'RAP05'),
('J3', 'VIP', 'CTC', 'RAP01'),
('J3', 'VIP', 'CTC', 'RAP02'),
('J3', 'VIP', 'CTC', 'RAP04'),
('J3', 'VIP', 'CTC', 'RAP05'),
('J4', 'VIP', 'CTC', 'RAP01'),
('J4', 'VIP', 'CTC', 'RAP02'),
('J4', 'VIP', 'CTC', 'RAP04'),
('J4', 'VIP', 'CTC', 'RAP05'),
('J5', 'VIP', 'CTC', 'RAP01'),
('J5', 'VIP', 'CTC', 'RAP02'),
('J5', 'VIP', 'CTC', 'RAP04'),
('J5', 'VIP', 'CTC', 'RAP05'),
('J6', 'VIP', 'CTC', 'RAP01'),
('J6', 'VIP', 'CTC', 'RAP02'),
('J6', 'VIP', 'CTC', 'RAP04'),
('J6', 'VIP', 'CTC', 'RAP05'),
('J7', 'VIP', 'CTC', 'RAP01'),
('J7', 'VIP', 'CTC', 'RAP02'),
('J7', 'VIP', 'CTC', 'RAP04'),
('J7', 'VIP', 'CTC', 'RAP05'),
('J8', 'VIP', 'CTC', 'RAP01'),
('J8', 'VIP', 'CTC', 'RAP02'),
('J8', 'VIP', 'CTC', 'RAP04'),
('J8', 'VIP', 'CTC', 'RAP05'),
('J9', 'VIP', 'CTC', 'RAP01'),
('J9', 'VIP', 'CTC', 'RAP02'),
('J9', 'VIP', 'CTC', 'RAP04'),
('J9', 'VIP', 'CTC', 'RAP05'),
('K1', 'SW', 'CTC', 'RAP01'),
('K1', 'SW', 'CTC', 'RAP02'),
('K1', 'SW', 'CTC', 'RAP04'),
('K1', 'SW', 'CTC', 'RAP05'),
('K10', 'SW', 'CTC', 'RAP01'),
('K10', 'SW', 'CTC', 'RAP02'),
('K10', 'SW', 'CTC', 'RAP04'),
('K10', 'SW', 'CTC', 'RAP05'),
('K2', 'SW', 'CTC', 'RAP01'),
('K2', 'SW', 'CTC', 'RAP02'),
('K2', 'SW', 'CTC', 'RAP04'),
('K2', 'SW', 'CTC', 'RAP05'),
('K3', 'SW', 'CTC', 'RAP01'),
('K3', 'SW', 'CTC', 'RAP02'),
('K3', 'SW', 'CTC', 'RAP04'),
('K3', 'SW', 'CTC', 'RAP05'),
('K4', 'SW', 'CTC', 'RAP01'),
('K4', 'SW', 'CTC', 'RAP02'),
('K4', 'SW', 'CTC', 'RAP04'),
('K4', 'SW', 'CTC', 'RAP05'),
('K5', 'SW', 'CTC', 'RAP01'),
('K5', 'SW', 'CTC', 'RAP02'),
('K5', 'SW', 'CTC', 'RAP04'),
('K5', 'SW', 'CTC', 'RAP05'),
('K6', 'SW', 'CTC', 'RAP01'),
('K6', 'SW', 'CTC', 'RAP02'),
('K6', 'SW', 'CTC', 'RAP04'),
('K6', 'SW', 'CTC', 'RAP05'),
('K7', 'SW', 'CTC', 'RAP01'),
('K7', 'SW', 'CTC', 'RAP02'),
('K7', 'SW', 'CTC', 'RAP04'),
('K7', 'SW', 'CTC', 'RAP05'),
('K8', 'SW', 'CTC', 'RAP01'),
('K8', 'SW', 'CTC', 'RAP02'),
('K8', 'SW', 'CTC', 'RAP04'),
('K8', 'SW', 'CTC', 'RAP05'),
('K9', 'SW', 'CTC', 'RAP01'),
('K9', 'SW', 'CTC', 'RAP02'),
('K9', 'SW', 'CTC', 'RAP04'),
('K9', 'SW', 'CTC', 'RAP05');

-- --------------------------------------------------------

--
-- Table structure for table `gia`
--

CREATE TABLE `gia` (
  `ma_gia` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dongia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gia`
--

INSERT INTO `gia` (`ma_gia`, `dongia`) VALUES
('4DCUOITUAN', 235000),
('4DTHUONG', 175000),
('BT2DCUOITUAN', 115000),
('BT2DTHUONG', 95000),
('BT3DCUOITUAN', 145000),
('BT3DTHUONG', 125000),
('SW2DCUOITUAN', 255000),
('SW2DTHUONG', 205000),
('SW3DCUOITUAN', 285000),
('SW3DTHUONG', 235000),
('VIP2DCUOITUAN', 120000),
('VIP2DTHUONG', 100000),
('VIP3DCUOITUAN', 150000),
('VIP3DTHUONG', 130000);

-- --------------------------------------------------------

--
-- Table structure for table `ktg`
--

CREATE TABLE `ktg` (
  `ma_ktg` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngay_chieu` date DEFAULT NULL,
  `gio_chieu` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ktg`
--

INSERT INTO `ktg` (`ma_ktg`, `ngay_chieu`, `gio_chieu`) VALUES
('KTG0104555', '2018-11-12', '11:00'),
('KTG0111688', '2018-11-13', '09:30'),
('KTG0195513', '2018-11-12', '10:30'),
('KTG1184432', '2018-11-12', '13:45'),
('KTG1512419', '2018-11-13', '11:15'),
('KTG1594173', '2018-11-13', '10:45'),
('KTG1980157', '2018-11-12', '11:45'),
('KTG4100106', '2018-11-13', '16:30'),
('KTG4222011', '2018-12-15', '9:00'),
('KTG4816707', '2018-11-13', '14:45'),
('KTG5019970', '2018-11-13', '09:00'),
('KTG5100030', '2018-11-12', '15:00'),
('KTG5573003', '2018-11-13', '19:30'),
('KTG7811731', '2018-11-13', '18:30'),
('KTG9218289', '2018-11-13', '13:00'),
('KTG9621369', '2018-11-13', '20:15'),
('KTG9983180', '2018-11-12', '09:00');

-- --------------------------------------------------------

--
-- Table structure for table `lichchieu`
--

CREATE TABLE `lichchieu` (
  `ma_ktg` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ma_phim` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ma_rap` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lichchieu`
--

INSERT INTO `lichchieu` (`ma_ktg`, `ma_phim`, `ma_rap`) VALUES
('KTG0195513', 'P152621609', 'RAP01'),
('KTG1512419', 'P166367488', 'RAP01'),
('KTG1980157', 'P410961982', 'RAP01'),
('KTG4100106', 'P429875732', 'RAP01'),
('KTG4222011', 'P954560628', 'RAP01'),
('KTG4816707', 'P850031398', 'RAP01'),
('KTG5019970', 'P128660986', 'RAP01'),
('KTG5100030', 'P831360440', 'RAP01'),
('KTG9983180', 'P128660986', 'RAP01'),
('KTG1512419', 'P937941127', 'RAP02'),
('KTG1980157', 'P203227904', 'RAP02'),
('KTG4222011', 'P954560628', 'RAP02'),
('KTG9218289', 'P262839359', 'RAP02'),
('KTG9983180', 'P128660986', 'RAP02'),
('KTG0195513', 'P152621609', 'RAP03'),
('KTG1184432', 'P831360440', 'RAP03'),
('KTG1512419', 'P937941127', 'RAP03'),
('KTG4100106', 'P429875732', 'RAP03'),
('KTG4816707', 'P850031398', 'RAP03'),
('KTG5019970', 'P152621609', 'RAP03'),
('KTG4816707', 'P429875732', 'RAP04'),
('KTG4816707', 'P945072217', 'RAP04'),
('KTG5019970', 'P166367488', 'RAP04'),
('KTG9218289', 'P428337094', 'RAP04'),
('KTG0104555', 'P410961982', 'RAP05'),
('KTG1184432', 'P428337094', 'RAP05'),
('KTG1512419', 'P937941127', 'RAP05'),
('KTG4100106', 'P429875732', 'RAP05'),
('KTG4816707', 'P945072217', 'RAP05'),
('KTG5019970', 'P203227904', 'RAP05'),
('KTG9983180', 'P128660986', 'RAP05'),
('KTG0195513', 'P152621609', 'RAP06'),
('KTG1184432', 'P831360440', 'RAP06'),
('KTG9983180', 'P262839359', 'RAP06');

-- --------------------------------------------------------

--
-- Table structure for table `loaighe`
--

CREATE TABLE `loaighe` (
  `ma_loai` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ten_loai` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaighe`
--

INSERT INTO `loaighe` (`ma_loai`, `ten_loai`) VALUES
('BT', 'Ghế thường'),
('SW', 'Ghế đôi'),
('VIP', 'Ghế VIP');

-- --------------------------------------------------------

--
-- Table structure for table `nhan`
--

CREATE TABLE `nhan` (
  `ma_nhan` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhan`
--

INSERT INTO `nhan` (`ma_nhan`, `mo_ta`) VALUES
('C13', 'Phù hợp với khán giả từ 13 tuổi trở lên'),
('C16', 'Phù hợp với khán giả từ 16 tuổi trở lên'),
('C18', 'Phù hợp với khán giả từ 18 tuổi trở lên'),
('P', 'Phù hợp với khán giả mọi lứa tuổi');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `ma_nhan_vien` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `gioitinh` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sdt` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `trangthai` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `chucvu` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `admission` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`ma_nhan_vien`, `hoten`, `ngaysinh`, `gioitinh`, `email`, `sdt`, `diachi`, `trangthai`, `username`, `chucvu`, `admission`) VALUES
('NV0001', 'Cái Thế Đức Anh', '1991-08-27', 'nam', 'anh@gmail.com', '0123456789', 'somewhere', 'còn làm', 'NV0001', 'Quản trị viên', '2015-08-09'),
('NV0002', 'Đào Thái Bảo', '1994-03-19', 'nam', 'bao@gmail.com', '1564895231', 'somewhere', 'còn làm', 'NV0002', 'Quản trị viên', '2016-09-09'),
('NV0003', 'Đinh Ngọc Xuân Quỳnh', '1990-11-07', 'nữ', 'quynh@gmail.com', '4978643152', 'somewhere', 'còn làm', 'NV0003', 'Quản trị viên', '2017-02-27'),
('NV0004', 'Hồ Ngọc Huân', '1993-09-12', 'nam', 'huan@gmail.com', '4978761320', 'somewhere', 'còn làm', 'NV0004', 'Nhân viên quản lý phòng chiếu', '2018-11-11'),
('NV0005', 'Nguyễn Thị Hà Khuê', '1992-10-02', 'nữ', 'khue@gmail.com', '1326497856', 'somewhere', 'còn làm', 'NV0005', 'Nhân viên quản lý phòng chiếu', '2016-12-22'),
('NV0006', 'Đinh Thị Thanh Huyền', '1990-09-15', 'nữ', 'huyen@gmail.com', '1326497856', 'somewhere', 'còn làm', 'NV0006', 'Nhân viên bán vé', '2017-08-09'),
('NV0007', 'Nguyễn Đình Minh Khôi', '1992-08-10', 'nam', 'khoi@gmail.com', '1328917856', 'somewhere', 'còn làm', 'NV0007', 'Nhân viên bán vé', '2016-08-09'),
('NV0008', 'Trần Đức Linh', '1992-09-17', 'nữ', 'linh@gmail.com', '1326497856', 'somewhere', 'còn làm', 'NV0008', 'Nhân viên quản lý phòng chiếu', '2015-09-09'),
('NV0009', 'Mai Xuân Mẫn', '1992-11-08', 'nữ', 'man@gmail.com', '1326414756', 'somewhere', 'còn làm', 'NV0009', 'Nhân viên quản lý phim', '2015-11-12'),
('NV0010', 'Hồ Hoàng Hảo', '1993-07-21', 'nam', 'hao@gmail.com', '1321477856', 'somewhere', 'còn làm', 'NV0010', 'Nhân viên chăm sóc khách hàng', '2015-09-17'),
('NV0011', 'Lê Như Hiền', '1991-10-11', 'nữ', 'hien@gmail.com', '1326978856', 'somewhere', 'còn làm', 'NV0011', 'Nhân viên quản lý phim', '2016-03-17'),
('NV0012', 'Võ Thị Phước Ngọc', '1990-08-27', 'nữ', 'ngoc@gmail.com', '1326499876', 'somewhere', 'còn làm', 'NV0012', 'Nhân viên bán vé', '2015-08-09'),
('NV0013', 'Phan Văn Bảo Khang', '1995-06-02', 'nam', 'khang@gmail.com', '1147497856', 'somewhere', 'còn làm', 'NV0013', 'Nhân viên quản lý lịch chiếu', '2014-04-25'),
('NV0014', 'Lê Thị Thu Hiền', '1994-05-04', 'nữ', 'hien@gmail.com', '1326497335', 'somewhere', 'còn làm', 'NV0014', 'Nhân viên quản lý lịch chiếu', '2018-07-15'),
('NV0015', 'Nguyễn Bảo Ngọc', '1991-10-02', 'nữ', 'ngoc@gmail.com', '1326497367', 'somewhere', 'còn làm', 'NV0015', 'Nhân viên giám sát', '2017-10-01'),
('NV0016', 'Lê Thị Mỹ Huỳnh', '1992-03-07', 'nữ', 'huynh@gmail.com', '1326436756', 'somewhere', 'còn làm', 'NV0016', 'Nhân viên giám sát', '2015-09-12'),
('NV0017', 'Huỳnh Công Đức', '1991-10-19', 'nam', 'duc@gmail.com', '1326420856', 'somewhere', 'còn làm', 'NV0017', 'Nhân viên chăm sóc khách hàng', '2015-08-16'),
('NV0018', 'Vũ Như Thành', '1993-02-11', 'nam', 'thanh@gmail.com', '1397497856', 'somewhere', 'còn làm', 'NV0018', 'Nhân viên chăm sóc khách hàng', '2015-08-09'),
('NV0019', 'Nguyễn Đắc Nhân', '1991-11-09', 'nam', 'nhan@gmail.com', '1326497856', 'somewhere', 'còn làm', 'NV0019', 'Nhân viên kinh doanh', '2015-08-09'),
('NV0020', 'Trần Hoàng Thảo Bình', '1996-01-07', 'nữ', 'binh@gmail.com', '1326497856', 'somewhere', 'còn làm', 'NV0020', 'Nhân viên chăm sóc khách hàng', '2018-05-09');

-- --------------------------------------------------------

--
-- Table structure for table `phim`
--

CREATE TABLE `phim` (
  `ma_phim` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tenphim` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `anh_dai_dien` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `the_loai` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `quoc_gia` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `thoi_luong` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `khoi_chieu` date DEFAULT NULL,
  `ngon_ngu` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dao_dien` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nha_san_xuat` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dien_vien_chinh` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `noidung` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_nhan` char(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tinh_trang` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `youtubeID` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phim`
--

INSERT INTO `phim` (`ma_phim`, `tenphim`, `anh_dai_dien`, `the_loai`, `quoc_gia`, `thoi_luong`, `khoi_chieu`, `ngon_ngu`, `dao_dien`, `nha_san_xuat`, `dien_vien_chinh`, `noidung`, `ma_nhan`, `tinh_trang`, `youtubeID`) VALUES
('P128660986', 'SPIDER-MAN INTO THE SPIDER VERSE', 'images/movie/SPIDER-MAN- INTO THE SPIDER-VERSE.jpg', 'Hoạt Hình', 'Mỹ', '120', '2018-12-14', 'Tiếng Anh có phụ đề Tiếng Việt', 'Bob Persichetti, Peter Ramsey, Rodney Rothman', 'Columbia Pictures', 'Hailee Steinfeld, \r\nJake Johnson', 'Người Nhện: Vũ Trụ Mới xoay quanh cuộc sống thường nhật của Miles Morales, \r\nkhi cậu vừa phải tập làm quen với mội trường học đường, vừa phải đối mặt với\r\nnhững xung đột trong cuộc sống.', 'C16', 'Sắp chiếu', 'g4Hbz2jLxvQ'),
('P152621609', 'BOHEMIAN RHAPSODY', 'images/movie/BOHEMIAN-RHAPSODY.jpg', 'Tiểu Sử', 'Anh', '130', '2018-11-17', 'Tiếng Anh có phụ đề Tiếng Việt', 'Bryan Singer', 'GK Films', 'Rami Malek, \r\nJoseph Mazzello, \r\nMike Myers\r\n\r\n', 'Vào thập niên 70, nước Anh có bốn chàng trai với tài năng thiên phú và đam mê\r\nbất tận đã đi từng bước, từ những kẻ vô danh trở thành những huyền thoại âm \r\nnhạc. Đó chính là ban nhạc Queen vĩ đại với hàng loạt ca khúc sống mãi với \r\nthời gian, tượng đài bất hủ trong lòng những tín đồ âm nhạc.', 'C16', 'Sắp chiếu', 'mP0VHJYFOAU'),
('P166367488', 'DREAM MAN', 'images/movie/dream-man.jpg', 'Kinh Dị', 'Việt Nam', '94', '2018-11-01', 'Tiếng Việt có phụ đề Tiếng Anh', 'Roland Nguyễn Nhân', 'GK Films', 'Thanh Duy, \r\nĐàm Phương Linh,\r\nNguyễn Thanh Tú, \r\nAnh Tú', '“Mạng xã hội và những mặt trái của mạng xã hội” – cụm từ này đã trở nên quá \r\nphổ biến trên các phương tiện truyền thông đại chúng, khiến nhiều người \r\nchẳng còn hứng thú mỗi khi nhắc đến…\r\nNhưng với Dream Man (Lời kết bạn chết chóc) – dòng phim mang gam màu sắc \r\ntâm lí kịch tính và bí ẩn sẽ đem lại một làn gió mới khi không chỉ nói về \r\nmặt trái của thế giới ảo, mà còn là câu chuyện về về mặt trái của lòng \r\nngười.', 'C16', 'Công chiếu', 'cYbO4FFOwEI'),
('P203227904', 'BAD TIMES AT THE EL ROYALE', 'images/movie/BAD TIMES AT THE EL ROYALE.jpg', 'Tội Phạm', 'Mỹ', '141', '2018-10-17', 'Tiếng Anh có phụ đề Tiếng Việt', 'Drew Goddard', '20th Century Fox', 'Chris Hemsworth, \r\nDakota Johnson, \r\nJeff Bridges', 'Phim lấy bối cảnh tại một khách sạn sang trọng và lâu đời tại nơi giao nhau\r\ngiữa California và Nevada. Một ngày nọ, chàng lễ tân trẻ tuổi (Lewis Pullman)\r\nchào đón cùng lúc sáu vị khách kỳ lạ. Đặc biệt, dường như họ đều có liên quan\r\nđến một vụ cướp xe chở tiền và án mạng bí ẩn.\r\nLiệu những người này thực sự là ai? Vai trò của họ là gì? ', 'C18', 'Công chiếu', 'SQmOaJciI7Q'),
('P262839359', 'AQUAMAN', 'images/movie/aquaman.jpg', 'Hành Động', 'Mỹ', '120', '2018-12-21', 'Tiếng Anh có phụ đề Tiếng Việt', 'James Wan', 'Triad Pictures', 'Jason Momoa, \r\nAmber Heard, \r\nPatrick Wilson, \r\nNicole Kidman', 'Arthur Curry là kết tinh tình yêu của một người đàn ông bình thường và vị nữ \r\nvương đại dương. Mặc dù không muốn dính líu vào cuộc tranh giành quyền lực \r\ncủa hoàng tộc nhưng rốt cuộc, anh vẫn phải đối mặt với người em cùng mẹ \r\nkhác cha để quyết định xem ai sẽ là người ngồi lên ngai vàng.\r\nĐáng chý ý không kém, bộ phim siêu anh hùng này của hãng DC sẽ do \"phù thủy\r\n\" phim kinh dị James Wan cầm trịch.\r\n\r\n', 'C16', 'Sắp chiếu', 'WDkg3h8PCVU'),
('P343559013', 'AVENGERS: INFINITY WAR', 'images/movie/AvengersResized.jpg', 'Giả Tưởng, Hành Động', 'Mỹ', '156', '2018-04-25', 'Tiếng Anh có phụ đề Tiếng Việt', 'Anthony Russo, Joe Russo', 'Marvel Entertainment', 'Robert Downey Jr., \r\nChris Evans, \r\nChris Hemsworth, \r\nBenedict Cumberbatch, \r\nTom Hiddleston, \r\nScarlett Johansson, \r\nTom Holland', 'Biệt Đội Siêu Anh Hùng và đồng minh tiếp tục bảo vệ thế giới khỏi những mối \r\nđe dọa đến từ ngoài vũ trụ. Đối thủ lần này của họ là kẻ hùng mạnh nhất: \r\nThanos.', 'C16', 'Đã chiếu', '6ZfuNTqbHE8'),
('P410961982', 'GOOSEBUMPS 2: HAUNTED HALLOWEEN', 'images/movie/GOOSEBUMPS2.jpg', 'Hài, Gia Đình', 'Úc', '90', '2018-10-25', 'Tiếng Anh có phụ đề Tiếng Việt', 'Ari Sandel', 'Columbia Pictures', 'Wendi McLendon-Covey, \r\nMadison Iseman, \r\nKen Jeong', 'Hai cậu bé vô tình giải phóng toàn bộ lực lượng yêu ma đang bị phong ấn trong\r\nmột quyển sách. Hàng loạt ma quỷ, quái vật trỗi dậy, làm cho đêm Halloween \r\ntrở nên đáng sợ hơn bao giờ hết.\r\nĐặc biệt trong đó, con rối biết nói Slappy - nhân vật gây ám ảnh nhiều nhất \r\ncũng tái xuất đầy ghê rợn.', 'C13', 'Công chiếu', 'nQeOzfm-lps'),
('P428337094', 'THE NUTCRACKER AND THE \r\nFOUR REALMS', 'images/movie/Nutcracker.jpg', 'Gia Đình, Giả Tưởng, Phiêu Lưu', 'Mỹ', '100', '2018-11-01', 'Tiếng Anh có phụ đề Tiếng Việt', ' Lasse Hallström, Joe Johnston', 'Walt Disney Pictures', 'Mackenzie Foy, \r\nKeira Knightley, \r\nHelen Mirren, \r\nMorgan Freeman', 'Một cô gái trẻ lạc đến thế giới pháp thuật với những quân sĩ bánh gừng và một\r\nđội quân chuột nhắt.\r\nCô bé Clara thông minh và xinh xắn luôn khao khát tìm được chiếc chìa khóa có\r\nthể mở ra chiếc hộp mẹ mình để lại. Một ngày nọ, sợi chỉ vàng được chuyển tới\r\ncho Drosselmeyer – cha đỡ đầu của cô. Theo sự dẫn đường của nó, Clara tìm \r\nđược chiếc chìa khóa bí ẩn. Thế nhưng, chìa khóa đột ngột biến mất vào thế \r\ngiới song song.', 'P', 'Công chiếu', 'BXfxLIuNJvw'),
('P429875732', 'RALPH BREAKS THE INTERNET', 'images/movie/wreckitralph2.jpg', 'Hoạt Hình', 'Mỹ', '110', '2018-11-21', 'Tiếng Anh có phụ đề Tiếng Việt', 'Rich Moore, Phil Johnston', 'Walt Disney Pictures', 'John C. ReillyKristen Bell,\r\nMandy Moore', 'Sáu năm sau phần 1, một sự kiện thay đổi hoàn toàn cuộc sống của đôi bạn thân\r\nRalph và Vanellope. Máy tính đã kết nối wifi, giờ đây họ bắt đầu cuộc phiêu \r\nlưu mới trên mạng Internet.', 'P', 'Sắp chiếu', '_BcYBFC6zfY'),
('P831360440', 'VENOM', 'images/movie/venom.jpg', 'Hành Động', 'Mỹ', '112', '2018-10-08', 'Tiếng Anh có phụ đề Tiếng Việt', 'Rubben Fleischer', 'Columbia Pictures', 'Tom Hardy, \r\nMichelle Williams', 'Venom đã hé lộ thân phận nhân vật phản diện cực kỳ nguy hiểm và kinh hãi khi \r\ntung trailer chính thức khắp thế giới làm điên đảo fan hâm mộ trong thế giới\r\ncủa Marvel.\r\nChàng phóng viên Eddie Brock bí mật theo dõi âm mưu xấu xa của một tổ chức và\r\nbị nhiễm phải Symbiote và trở thành quái vật Venom đầy nguy hiểm.', 'C16', 'Công chiếu', 'xLCn88bfW1o'),
('P850031398', 'HUNTER KILLER', 'images/movie/HUNTER KILLER.jpg', 'Hành Động', 'Anh', '130', '2018-11-09', 'Tiếng Anh có phụ đề Tiếng Việt', 'Donovan Marsh', 'Hunter Killer Productions', 'Gerard Butler, Gary Oldman', 'Một vị tướng của nước Nga là Sergi Andropoyov đang tiến hành âm mưu đảo chính\r\nbằng cách bắt cóc Tổng thống Nga. Để ngăn chặn âm mưu này, nhóm thủy thủ trực\r\nthuộc quân đội Mỹ do thuyền trưởng Joe Glass dẫn đầu đã phối hợp cùng đội đặc\r\nnhiệm tinh nhuệ SEAL nhằm giải cứu con tin, đồng thời phá vỡ kế hoạch kích \r\nhoạt thế hệ tàu ngầm hạt nhân nhằm phá hủy trật tự thế giới của Sergi \r\nAndropoyov.', 'C16', 'Sắp chiếu', 'mnP_z3qXDCQ'),
('P937941127', 'THE GRINCH', 'images/movie/The-Grinch.jpg', 'Hoạt Hình', 'Mỹ', '90', '2018-11-06', 'Tiếng Anh có phụ đề Tiếng Việt', 'Yarrow Cheney', 'Illumination Entertainment', 'Benedict Cumberbatch', 'The Grinch là một kẻ cô độc, suốt ngày cau có. Hắn không sống chung với bất \r\nkỳ ai mà ở trong hang núi với một chú chó.\r\nBị bỏ rơi từ nhỏ, hắn luôn ganh tị với niềm hạnh phúc của tất cả mọi người. \r\nCũng chính vì thế, The Grinch đã âm mưu phá hoại lễ giáng sinh của dân làng.', 'P', 'Công chiếu', 'QLz-pfgun_A'),
('P945072217', 'POKEMON(THE POWER OF US)', 'images/movie/POKEMON THE MOVIE(THE POWER OF US).jpg', 'Hoạt Hình', 'Nhật Bản', '100', '2018-11-15', 'Tiếng Nhật có phụ đề Tiếng Việt', 'Tetsuo Yajima', 'OLM-Animation Studio', 'Otani Ikue, Matsumoto Rica', 'Theo tục lệ, vào ngày kết thúc lễ hội, Pokémon Lugia sẽ ban phúc cho người\r\ndân. Thế nhưng, một sự cố đột ngột xảy ra khiến kế hoạch đổ bể. Những cơn gió\r\nbiến mất và một cuộc tấn bông bí ẩn đe dọa hủy hoại thành phố. Satoshi và \r\nPikachu phải đứng lên kêu gọi những người bạn mới ra sức bảo vệ thành phố.', 'P', 'Sắp chiếu', '8PGsP59Io20'),
('P954560628', 'Predator', 'images/movie/predator.jpg', 'Action', 'Mỹ', '107', '2018-09-15', 'Tiếng Anh có phụ đề Tiếng Việt', 'Shane Black', '20th Century Fox', 'Boyd Holbrook, Trevante Rhodes, Jacob Tremblay', 'When a young boy accidentally triggers the universe\'s most lethal hunters\' return to Earth, only a ragtag crew of ex-soldiers and a disgruntled scientist can prevent the end of the human race.', 'C16', 'Công Chiếu', 'WaG1KZqrLvM');

-- --------------------------------------------------------

--
-- Table structure for table `phim_dinhdang`
--

CREATE TABLE `phim_dinhdang` (
  `ma_phim` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ma_dinh_dang` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phim_dinhdang`
--

INSERT INTO `phim_dinhdang` (`ma_phim`, `ma_dinh_dang`) VALUES
('P128660986', '2D'),
('P152621609', '2D'),
('P166367488', '2D'),
('P203227904', '2D'),
('P262839359', '2D'),
('P343559013', '2D'),
('P410961982', '2D'),
('P428337094', '2D'),
('P429875732', '2D'),
('P831360440', '2D'),
('P850031398', '2D'),
('P937941127', '2D'),
('P945072217', '2D'),
('P128660986', '3D'),
('P152621609', '3D'),
('P166367488', '3D'),
('P262839359', '3D'),
('P343559013', '3D'),
('P428337094', '3D'),
('P831360440', '3D'),
('P937941127', '3D'),
('P166367488', '4D'),
('P262839359', '4D'),
('P343559013', '4D'),
('P831360440', '4D');

-- --------------------------------------------------------

--
-- Table structure for table `rap`
--

CREATE TABLE `rap` (
  `ma_rap` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `so_hang` int(11) DEFAULT NULL,
  `so_cot` int(11) DEFAULT NULL,
  `ma_dinh_dang` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rap`
--

INSERT INTO `rap` (`ma_rap`, `so_hang`, `so_cot`, `ma_dinh_dang`) VALUES
('RAP01', 10, 10, '2D'),
('RAP02', 10, 10, '3D'),
('RAP03', 10, 10, '2D'),
('RAP04', 10, 10, '3D'),
('RAP05', 10, 10, '2D'),
('RAP06', 10, 10, '4D');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` varchar(4) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `role_name` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
('staf', 'Tài khoản nhân viên'),
('user', 'Tài khoản khách hàng');

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
--

CREATE TABLE `thanhvien` (
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sdt` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `loai` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thanhvien`
--

INSERT INTO `thanhvien` (`email`, `hoten`, `ngaysinh`, `gioitinh`, `sdt`, `loai`) VALUES
('anh1@gmail.com', 'Phạm Hoài Anh', '1992-03-05', 'nam', '1564895231', 'VIP'),
('anh2@gmail.com', 'Phạm Mai Anh', '1994-12-26', 'nữ', '4978643152', 'Thường'),
('anh3@gmail.com', 'Trần Duy Anh', '1993-10-06', 'nam', '4978761320', 'Thường'),
('anh4@gmail.com', 'Trần Văn Anh', '1990-01-07', 'nam', '1326497856', 'Thường'),
('anh5@gmail.com', 'Vũ Tuấn Anh', '1992-09-02', 'nam', '1326287856', 'Thường'),
('cuong@gmail.com', 'Nguyễn Ngọc Cương', '1993-05-19', 'nam', '1328917856', 'Thường'),
('dao@gmail.com', 'Phạm Quang Đạo', '1992-06-05', 'nữ', '1726978856', 'Thường'),
('dat@gmail.com', 'Triệu Trọng Đạt', '1994-03-16', 'nữ', '1326499876', 'Thường'),
('dieu@gmail.com', 'Phạm Văn Diệu', '1993-05-23', 'nam', '1326497856', 'Thường'),
('dung@gmail.com', 'Nguyễn Hoàng Dũng', '1990-12-30', 'nam', '1326414756', 'Thường'),
('duong@gmail.com', 'Nguyễn Công Dương', '1993-01-09', 'nam', '1321477856', 'Thường'),
('ha1@gmail.com', 'Lê Thị Thu Hà', '1991-05-01', 'nam', '1147497856', 'Thường'),
('ha2@gmail.com', 'Trần Thị Hà', '1991-12-07', 'nữ', '1326497335', 'Thường'),
('hai1@gmail.com', 'Bùi Văn Hải', '1993-11-19', 'nữ', '1326497367', 'VIP'),
('hai2@gmail.com', 'Đỗ Văn Hải', '1992-07-01', 'nam', '1326436756', 'VIP'),
('hai3@gmail.com', 'Nguyễn Văn Hải', '1992-06-08', 'nam', '1326420856', 'Thường'),
('hao@gmail.com', 'Dương Thị Hào', '1994-12-01', 'nữ', '1397497856', 'Thường'),
('hien@gmail.com', 'Nguyễn Thị Hiền', '1991-06-13', 'nữ', '1326497856', 'Thường'),
('hieu@gmail.com', 'Vũ Thế Hiếu', '1994-11-29', 'nam', '1326497856', 'Thường'),
('hoa@gmail.com', 'Trần Đức Hòa', '1992-06-17', 'nam', '1723456789', 'VIP'),
('hoang@gmail.com', 'Nguyễn Huy Hoàng', '1993-10-02', 'nam', '1564895231', 'VIP'),
('hoang1@gmail.com', 'Trần Huy Hoàng', '1991-09-27', 'nam', '4978643152', 'Thường'),
('hue@gmail.com', 'Đào Thị Huệ', '1994-11-14', 'nữ', '4978761320', 'Thường'),
('hung@gmail.com', 'Nguyễn Hữu Hùng', '1991-02-10', 'nam', '1326497856', 'Thường'),
('huong@gmail.com', 'Nguyễn Thị Hương', '1989-05-04', 'nữ', '0123456789', 'VIP'),
('huy@gmail.com', 'Nguyễn Trọng Huy', '1991-02-18', 'nam', '1326497856', 'Thường'),
('huyen@gmail.com', 'Đỗ Ngọc Huyên', '1991-11-08', 'nam', '1328917856', 'Thường'),
('huyen1@gmail.com', 'Lê Thị Thu Huyền', '1992-11-20', 'nữ', '1326497856', 'Thường'),
('huyen2@gmail.com', 'Nguyễn Thị Huyền', '1992-11-21', 'nữ', '1326414756', 'Thường'),
('huyen3@gmail.com', 'Phan Thị Thu Huyền', '1993-04-26', 'nữ', '1321477856', 'Thường'),
('khanh@gmail.com', 'Hoàng Xuân Khánh', '1991-05-19', 'nam', '1326978856', 'VIP'),
('khoi@gmail.com', 'Đỗ Trọng Khôi', '1992-01-27', 'nam', '1326499876', 'VIP'),
('ky@gmail.com', 'Dương Mạnh Kỳ', '1994-07-23', 'nam', '1147497856', 'Thường'),
('linh@gmail.com', 'Nguyễn Việt Linh', '1993-08-08', 'nam', '1326497335', 'Thường'),
('linh2706@gmail.com', 'Vũ Thị Mỹ Linh', '1994-06-27', 'nữ', '1326497367', 'Thường'),
('loan@gmail.com', 'Bùi Thị Loan', '1992-03-26', 'nữ', '1326436756', 'Thường'),
('loan1@gmail.com', 'Trịnh Thị Loan', '1993-05-10', 'nữ', '1326420856', 'Thường'),
('loan2@gmail.com', 'Vũ Hồng Loan', '1993-05-20', 'nữ', '1397497856', 'Thường'),
('long@gmail.com', 'Nguyễn Danh Long', '1992-07-10', 'nam', '1326497856', 'Thường'),
('long91@gmail.com', 'Đỗ Hoàng Long', '1991-06-28', 'nam', '1326497856', 'Thường');

-- --------------------------------------------------------

--
-- Table structure for table `trangthai`
--

CREATE TABLE `trangthai` (
  `ma_trang_thai` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trangthai`
--

INSERT INTO `trangthai` (`ma_trang_thai`, `mo_ta`) VALUES
('CTC', 'Ghế có thể chọn'),
('GDB', 'Ghế đã bán'),
('GDC', 'Ghế đang chọn'),
('KTC', 'Ghế không thể chọn');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Name` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `GioiTinh` int(11) NOT NULL,
  `NgaySinh` date NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `sdt` varchar(10) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Name`, `GioiTinh`, `NgaySinh`, `email`, `sdt`) VALUES
('Hiếu N Le', 1, '1995-08-17', '666.noobno@gmail.com', '0'),
('Acer', 1, '2018-11-01', 'acer@gmail.com', '0321456987'),
('Hieu', 1, '2018-11-04', 'admin@gmail.com', '0162111222'),
('Hieu2', 1, '2018-11-01', 'admin2@gmail.com', '098999999'),
('Andiez', 1, '2018-12-01', 'andiez@gmail.com', '12343211'),
('Ngọc Hiếu', 1, '1997-01-31', 'angelofdeath@gmail.com', '19001581'),
('Phạm Hoài Anh', 2, '2018-08-01', 'anh1@gmail.com', '0564895231'),
('Vũ Tuấn Anh', 1, '1992-09-02', 'anhvu@gmail.com', '1326287856'),
('Arthas', 1, '2002-07-03', 'blizzardnorth@gmail.com', '012345688'),
('Sharon Alcaafjcabbib Goldmanescu', 2, '1999-12-13', 'bryviupczd_1544329706@tfbnw.net', '0'),
('Nguyễn Ngọc Cương', 1, '1993-05-19', 'cuong93@gmail.com', '1328917888'),
('Phạm Quang Đạo', 1, '1993-05-19', 'daoPham93@gmail.com', '1328917856'),
('Triệu Trọng Đạt', 2, '1994-03-16', 'dattrieu@gmail.com', '1326889876'),
('Phạm Văn Diệu', 2, '1993-05-23', 'dieu@gmail.com', '1326497856'),
('Hiếu Lê Ngọc', 1, '2018-12-01', 'germantank@gmail.com', '112225556'),
('Bùi Văn Hải', 1, '1993-11-19', 'hai1@gmail.com', '1326497312'),
('Lê Thị Thu Hà', 2, '1991-05-01', 'hale@gmail.com', '1147497856'),
('Dương Thị Hào', 2, '1994-12-01', 'hao@gmail.com', '1397497856'),
('Nguyễn Thị Hiền', 2, '1991-06-13', 'hien@gmail.com', '1326497856'),
('HieuLeNgoc', 1, '2009-01-02', 'hieuga111@gmail.com', '08081508'),
('Vũ Thế Hiếu', 1, '1994-11-29', 'hieuVu@gmail.com', '1326497856'),
('Trần Đức Hòa', 1, '1992-06-17', 'hoa@gmail.com', '1723456789'),
('IBM Lenovo', 1, '2000-01-02', 'ibmthinkpad@gmail.com', '12345678'),
('Võ Quý Long', 1, '1998-02-17', 'kaizer172@gmail.com', '09091504'),
('Huỳnh Lê Ngọc Linh', 2, '1998-04-13', 'linhkute@gmail.com', '090801111'),
('mario', 1, '2018-01-01', 'mario@gmail.com', '1232321111'),
('adam', 1, '2018-12-01', 'maroon5@gmail.com', '123321456'),
('Open Graph Test User', 2, '1981-12-16', 'open_lvfpmst_user@tfbnw.net', '0'),
('Vũ Duy Anh', 1, '1998-07-07', 'satpaladin@gmail.com', '090312345'),
('test134', 1, '2018-12-09', 'test@gmail.com', '12345679');

-- --------------------------------------------------------

--
-- Table structure for table `ve`
--

CREATE TABLE `ve` (
  `ma_ve` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ma_phim` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_rap` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_ghe` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_ktg` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_gia` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ve`
--

INSERT INTO `ve` (`ma_ve`, `ma_phim`, `ma_rap`, `ma_ghe`, `ma_ktg`, `ma_gia`) VALUES
('VE0083547812', 'P937941127', 'RAP03', 'G10', 'KTG1512419', 'VIP2DTHUONG'),
('VE0138717214', 'P937941127', 'RAP03', 'E6', 'KTG1512419', 'VIP2DTHUONG'),
('VE0240778165', 'P128660986', 'RAP01', 'F1', 'KTG9983180', 'VIP2DTHUONG'),
('VE0255602055', 'P128660986', 'RAP01', 'D10', 'KTG9983180', 'BT2DTHUONG'),
('VE0314080768', 'P262839359', 'RAP02', 'D5', 'KTG9218289', 'BT3DTHUONG'),
('VE0378418056', 'P128660986', 'RAP01', 'F6', 'KTG9983180', 'VIP2DTHUONG'),
('VE0816355506', 'P166367488', 'RAP04', 'J5', 'KTG5019970', 'VIP3DTHUONG'),
('VE0870593796', 'P262839359', 'RAP02', 'H5', 'KTG9218289', 'VIP3DTHUONG'),
('VE0913697630', 'P128660986', 'RAP01', 'D6', 'KTG9983180', 'BT2DTHUONG'),
('VE0947245640', 'P128660986', 'RAP01', 'D5', 'KTG9983180', 'BT2DTHUONG'),
('VE0961823351', 'P831360440', 'RAP06', 'B5', 'KTG1184432', '4DTHUONG'),
('VE1117959874', 'P831360440', 'RAP06', 'B6', 'KTG1184432', '4DTHUONG'),
('VE1982333384', 'P937941127', 'RAP03', 'E7', 'KTG1512419', 'VIP2DTHUONG'),
('VE2042972784', 'P410961982', 'RAP05', 'E6', 'KTG0104555', 'VIP2DTHUONG'),
('VE2512120666', 'P166367488', 'RAP04', 'J7', 'KTG5019970', 'VIP3DTHUONG'),
('VE2555691656', 'P166367488', 'RAP04', 'G7', 'KTG5019970', 'VIP3DTHUONG'),
('VE2789292236', 'P262839359', 'RAP02', 'D10', 'KTG9218289', 'BT3DTHUONG'),
('VE2903783453', 'P937941127', 'RAP03', 'E9', 'KTG1512419', 'VIP2DTHUONG'),
('VE3051026925', 'P262839359', 'RAP02', 'H1', 'KTG9218289', 'VIP3DTHUONG'),
('VE3228359021', 'P410961982', 'RAP05', 'G5', 'KTG0104555', 'VIP2DTHUONG'),
('VE3314690200', 'P937941127', 'RAP03', 'E4', 'KTG1512419', 'VIP2DTHUONG'),
('VE3340487310', 'P831360440', 'RAP06', 'C2', 'KTG1184432', '4DTHUONG'),
('VE3344532589', 'P937941127', 'RAP03', 'G9', 'KTG1512419', 'VIP2DTHUONG'),
('VE3345585604', 'P128660986', 'RAP01', 'F9', 'KTG9983180', 'VIP2DTHUONG'),
('VE3560741675', 'P166367488', 'RAP04', 'G6', 'KTG5019970', 'VIP3DTHUONG'),
('VE3645735594', 'P262839359', 'RAP02', 'H9', 'KTG9218289', 'VIP3DTHUONG'),
('VE3770126998', 'P166367488', 'RAP04', 'J2', 'KTG5019970', 'VIP3DTHUONG'),
('VE3811722505', 'P166367488', 'RAP04', 'J8', 'KTG5019970', 'VIP3DTHUONG'),
('VE3853506313', 'P937941127', 'RAP03', 'G6', 'KTG1512419', 'VIP2DTHUONG'),
('VE4201721435', 'P262839359', 'RAP02', 'H10', 'KTG9218289', 'VIP3DTHUONG'),
('VE4645600658', 'P166367488', 'RAP04', 'G5', 'KTG5019970', 'VIP3DTHUONG'),
('VE4726212687', 'P128660986', 'RAP01', 'F5', 'KTG9983180', 'VIP2DTHUONG'),
('VE4836921577', 'P410961982', 'RAP05', 'E4', 'KTG0104555', 'VIP2DTHUONG'),
('VE4968902146', 'P410961982', 'RAP05', 'G1', 'KTG0104555', 'VIP2DTHUONG'),
('VE5337436703', 'P831360440', 'RAP06', 'C2', 'KTG1184432', '4DTHUONG'),
('VE5889480467', 'P410961982', 'RAP05', 'E9', 'KTG0104555', 'VIP2DTHUONG'),
('VE6035460741', 'P410961982', 'RAP05', 'E5', 'KTG0104555', 'VIP2DTHUONG'),
('VE6294860006', 'P128660986', 'RAP01', 'F10', 'KTG9983180', 'VIP2DTHUONG'),
('VE6402112004', 'P262839359', 'RAP02', 'D6', 'KTG9218289', 'BT3DTHUONG'),
('VE6854071640', 'P410961982', 'RAP05', 'G6', 'KTG0104555', 'VIP2DTHUONG'),
('VE7037676820', 'P166367488', 'RAP04', 'J1', 'KTG5019970', 'VIP3DTHUONG'),
('VE7419926249', 'P166367488', 'RAP04', 'J6', 'KTG5019970', 'VIP3DTHUONG'),
('VE7736432896', 'P166367488', 'RAP04', 'J9', 'KTG5019970', 'VIP3DTHUONG'),
('VE7750139375', 'P262839359', 'RAP02', 'H6', 'KTG9218289', 'VIP3DTHUONG'),
('VE7941588202', 'P937941127', 'RAP03', 'G5', 'KTG1512419', 'VIP2DTHUONG'),
('VE8079770510', 'P128660986', 'RAP01', 'D1', 'KTG9983180', 'BT2DTHUONG'),
('VE8110165524', 'P128660986', 'RAP01', 'D9', 'KTG9983180', 'BT2DTHUONG'),
('VE8112291622', 'P262839359', 'RAP02', 'D9', 'KTG9218289', 'BT3DTHUONG'),
('VE8182252354', 'P410961982', 'RAP05', 'G9', 'KTG0104555', 'VIP2DTHUONG'),
('VE8515290994', 'P262839359', 'RAP02', 'D1', 'KTG9218289', 'BT3DTHUONG'),
('VE8645276319', 'P937941127', 'RAP03', 'G1', 'KTG1512419', 'VIP2DTHUONG'),
('VE8935742982', 'P410961982', 'RAP05', 'E7', 'KTG0104555', 'VIP2DTHUONG'),
('VE9016297481', 'P937941127', 'RAP03', 'E5', 'KTG1512419', 'VIP2DTHUONG'),
('VE9041731917', 'P831360440', 'RAP06', 'B4', 'KTG1184432', '4DTHUONG'),
('VE9708583026', 'P410961982', 'RAP05', 'G10', 'KTG0104555', 'VIP2DTHUONG');

-- --------------------------------------------------------

--
-- Table structure for table `ve2`
--

CREATE TABLE `ve2` (
  `ma_ve` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ma_phim` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ma_rap` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ma_ghe` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngay` date DEFAULT NULL,
  `gia` int(8) DEFAULT '0',
  `ma_ktg` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `ve2`
--

INSERT INTO `ve2` (`ma_ve`, `ma_phim`, `ma_rap`, `ma_ghe`, `ngay`, `gia`, `ma_ktg`, `email`) VALUES
('VE1122052872', 'P128660986', 'RAP01', 'J2', '2018-11-12', 70000, 'KTG9983180', 'cuong93@gmail.com'),
('VE1148485894', 'P128660986', 'RAP02', 'F5', '2018-11-12', 70000, 'KTG9983180', 'ibmthinkpad@gmail.com'),
('VE1233897974', 'P128660986', 'RAP01', 'D10', '2018-11-12', 70000, 'KTG9983180', 'anhvu@gmail.com'),
('VE1346499829', 'P128660986', 'RAP01', 'B3', '2018-11-12', 70000, 'KTG9983180', 'daoPham93@gmail.com'),
('VE1409576065', 'P128660986', 'RAP01', 'E5', '2018-11-12', 140000, 'KTG9983180', 'dattrieu@gmail.com'),
('VE1558133542', 'P128660986', 'RAP05', 'E5', '2018-11-12', 70000, 'KTG9983180', '666.noobno@gmail.com'),
('VE1576346980', 'P128660986', 'RAP01', 'E6', '2018-11-12', 140000, 'KTG9983180', 'dattrieu@gmail.com'),
('VE1576346980', 'P128660986', 'RAP01', 'E7', '2018-11-12', 140000, 'KTG9983180', 'dattrieu@gmail.com'),
('VE1701662011', 'P128660986', 'RAP01', 'J1', '2018-11-12', 70000, 'KTG9983180', 'hai1@gmail.com'),
('VE1748990548', 'P152621609', 'RAP01', 'E5', '2018-11-12', 70000, 'KTG0195513', '666.noobno@gmail.com'),
('VE1756823074', 'P128660986', 'RAP01', 'H8', '2018-11-12', 70000, 'KTG9983180', 'hale@gmail.com'),
('VE2002995939', 'P128660986', 'RAP01', 'B4', '2018-11-12', 70000, 'KTG9983180', 'hien@gmail.com'),
('VE563188263', 'P128660986', 'RAP02', 'E5', '2018-11-12', 140000, 'KTG9983180', 'hien@gmail.com'),
('VE563188263', 'P128660986', 'RAP02', 'E6', '2018-11-12', 140000, 'KTG9983180', 'hien@gmail.com'),
('VE566650816', 'P128660986', 'RAP05', 'A5', '2018-11-12', 140000, 'KTG9983180', 'hieuVu@gmail.com'),
('VE566650816', 'P128660986', 'RAP05', 'A6', '2018-11-12', 140000, 'KTG9983180', 'hieuVu@gmail.com'),
('VE56796936', 'P128660986', 'RAP01', 'H7', '2018-11-12', 70000, 'KTG9983180', 'anhvu@gmail.com'),
('VE593109291', 'P128660986', 'RAP01', 'A5', '2018-11-12', 140000, 'KTG9983180', 'cuong93@gmail.com'),
('VE613796869', 'P128660986', 'RAP01', 'H6', '2018-11-12', 70000, 'KTG9983180', 'anhvu@gmail.com'),
('VE717751300', 'P128660986', 'RAP01', 'H9', '2018-11-12', 70000, 'KTG9983180', 'anhvu@gmail.com'),
('VE795247026', 'P128660986', 'RAP01', 'B5', '2018-11-12', 140000, 'KTG9983180', 'anhvu@gmail.com'),
('VE875917293', 'P128660986', 'RAP01', 'H10', '2018-11-12', 70000, 'KTG9983180', 'anhvu@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`email`),
  ADD KEY `fk_account_role` (`role_id`);

--
-- Indexes for table `accountoriginal`
--
ALTER TABLE `accountoriginal`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `dinhdang`
--
ALTER TABLE `dinhdang`
  ADD PRIMARY KEY (`ma_dinh_dang`);

--
-- Indexes for table `ghe`
--
ALTER TABLE `ghe`
  ADD PRIMARY KEY (`ma_ghe`,`ma_rap`),
  ADD KEY `fk_ghe_loaighe` (`ma_loai`),
  ADD KEY `fk_ghe_trangthai` (`ma_trang_thai`),
  ADD KEY `fk_ghe_rap` (`ma_rap`);

--
-- Indexes for table `gia`
--
ALTER TABLE `gia`
  ADD PRIMARY KEY (`ma_gia`);

--
-- Indexes for table `ktg`
--
ALTER TABLE `ktg`
  ADD PRIMARY KEY (`ma_ktg`),
  ADD KEY `ma_ktg` (`ma_ktg`);

--
-- Indexes for table `lichchieu`
--
ALTER TABLE `lichchieu`
  ADD PRIMARY KEY (`ma_ktg`,`ma_phim`,`ma_rap`),
  ADD KEY `fk_lichchieu_phim` (`ma_phim`),
  ADD KEY `fk_lichchieu_rap` (`ma_rap`);

--
-- Indexes for table `loaighe`
--
ALTER TABLE `loaighe`
  ADD PRIMARY KEY (`ma_loai`);

--
-- Indexes for table `nhan`
--
ALTER TABLE `nhan`
  ADD PRIMARY KEY (`ma_nhan`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`ma_nhan_vien`),
  ADD KEY `fk_nhanvien_account` (`username`);

--
-- Indexes for table `phim`
--
ALTER TABLE `phim`
  ADD PRIMARY KEY (`ma_phim`),
  ADD KEY `fk_phim_nhan` (`ma_nhan`),
  ADD KEY `ma_phim` (`ma_phim`);

--
-- Indexes for table `phim_dinhdang`
--
ALTER TABLE `phim_dinhdang`
  ADD PRIMARY KEY (`ma_phim`,`ma_dinh_dang`),
  ADD KEY `fk_phimdinhdang_dinhdang` (`ma_dinh_dang`);

--
-- Indexes for table `rap`
--
ALTER TABLE `rap`
  ADD PRIMARY KEY (`ma_rap`),
  ADD KEY `fk_rap_dinhdang` (`ma_dinh_dang`),
  ADD KEY `ma_rap` (`ma_rap`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `trangthai`
--
ALTER TABLE `trangthai`
  ADD PRIMARY KEY (`ma_trang_thai`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `ve`
--
ALTER TABLE `ve`
  ADD PRIMARY KEY (`ma_ve`),
  ADD KEY `fk_ve_phim` (`ma_phim`),
  ADD KEY `fk_ve_rap` (`ma_rap`),
  ADD KEY `fk_ve_ghe` (`ma_ghe`,`ma_rap`),
  ADD KEY `fk_ve_ktg` (`ma_ktg`),
  ADD KEY `fk_ve_gia` (`ma_gia`);

--
-- Indexes for table `ve2`
--
ALTER TABLE `ve2`
  ADD PRIMARY KEY (`ma_ve`,`ma_phim`,`ma_rap`,`ma_ghe`,`ma_ktg`),
  ADD KEY `fk_ve2_ghe` (`ma_ghe`),
  ADD KEY `fk_ve2_phim` (`ma_phim`),
  ADD KEY `fk_ve2_rap` (`ma_rap`),
  ADD KEY `fk_ve2_ktg` (`ma_ktg`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `fk_account_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  ADD CONSTRAINT `fk_account_user` FOREIGN KEY (`email`) REFERENCES `user` (`email`);

--
-- Constraints for table `ghe`
--
ALTER TABLE `ghe`
  ADD CONSTRAINT `fk_ghe_loaighe` FOREIGN KEY (`ma_loai`) REFERENCES `loaighe` (`ma_loai`),
  ADD CONSTRAINT `fk_ghe_rap` FOREIGN KEY (`ma_rap`) REFERENCES `rap` (`ma_rap`),
  ADD CONSTRAINT `fk_ghe_trangthai` FOREIGN KEY (`ma_trang_thai`) REFERENCES `trangthai` (`ma_trang_thai`);

--
-- Constraints for table `lichchieu`
--
ALTER TABLE `lichchieu`
  ADD CONSTRAINT `fk_lichchieu_KTG` FOREIGN KEY (`ma_ktg`) REFERENCES `ktg` (`ma_ktg`),
  ADD CONSTRAINT `fk_lichchieu_phim` FOREIGN KEY (`ma_phim`) REFERENCES `phim` (`ma_phim`),
  ADD CONSTRAINT `fk_lichchieu_rap` FOREIGN KEY (`ma_rap`) REFERENCES `rap` (`ma_rap`);

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `fk_nhanvien_account` FOREIGN KEY (`username`) REFERENCES `accountoriginal` (`username`);

--
-- Constraints for table `phim`
--
ALTER TABLE `phim`
  ADD CONSTRAINT `fk_phim_nhan` FOREIGN KEY (`ma_nhan`) REFERENCES `nhan` (`ma_nhan`);

--
-- Constraints for table `phim_dinhdang`
--
ALTER TABLE `phim_dinhdang`
  ADD CONSTRAINT `fk_phimdinhdang_dinhdang` FOREIGN KEY (`ma_dinh_dang`) REFERENCES `dinhdang` (`ma_dinh_dang`),
  ADD CONSTRAINT `fk_phimdinhdang_phim` FOREIGN KEY (`ma_phim`) REFERENCES `phim` (`ma_phim`);

--
-- Constraints for table `rap`
--
ALTER TABLE `rap`
  ADD CONSTRAINT `fk_rap_dinhdang` FOREIGN KEY (`ma_dinh_dang`) REFERENCES `dinhdang` (`ma_dinh_dang`);

--
-- Constraints for table `ve`
--
ALTER TABLE `ve`
  ADD CONSTRAINT `fk_ve_ghe` FOREIGN KEY (`ma_ghe`,`ma_rap`) REFERENCES `ghe` (`ma_ghe`, `ma_rap`),
  ADD CONSTRAINT `fk_ve_gia` FOREIGN KEY (`ma_gia`) REFERENCES `gia` (`ma_gia`),
  ADD CONSTRAINT `fk_ve_ktg` FOREIGN KEY (`ma_ktg`) REFERENCES `ktg` (`ma_ktg`),
  ADD CONSTRAINT `fk_ve_phim` FOREIGN KEY (`ma_phim`) REFERENCES `phim` (`ma_phim`),
  ADD CONSTRAINT `fk_ve_rap` FOREIGN KEY (`ma_rap`) REFERENCES `rap` (`ma_rap`);

--
-- Constraints for table `ve2`
--
ALTER TABLE `ve2`
  ADD CONSTRAINT `fk_ve2_ghe` FOREIGN KEY (`ma_ghe`) REFERENCES `ghe` (`ma_ghe`),
  ADD CONSTRAINT `fk_ve2_ktg` FOREIGN KEY (`ma_ktg`) REFERENCES `ktg` (`ma_ktg`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ve2_phim` FOREIGN KEY (`ma_phim`) REFERENCES `phim` (`ma_phim`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ve2_rap` FOREIGN KEY (`ma_rap`) REFERENCES `rap` (`ma_rap`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
