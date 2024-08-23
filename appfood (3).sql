-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 30, 2024 at 06:07 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appfood`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_account`
--

CREATE TABLE `tb_account` (
  `account_id` int(11) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lastname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tel` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `account_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_account`
--

INSERT INTO `tb_account` (`account_id`, `email`, `password`, `name`, `lastname`, `tel`, `type`, `account_image`, `location`) VALUES
(1, 'admin@gmail.com', '123', 'admin', '1', '0812345678', 'admin', 'profile.jpg', '19.032221,99.924194'),
(2, 'store@gmail.com', '123', 'store', 'A', '0823456785', 'store', 'profile1.jpg', '19.032221,99.924194'),
(3, 'test3@gmail.com', '123', 'Aum', 'Kung', '0912345678', 'member', 'profile.jpg', '19.032221,99.924194'),
(4, 'test4@gmail.com', '123', 'ice', 'Np', '0845678912', 'prestore', 'profile.jpg', '19.032221,99.924194'),
(5, 'ice@gmail.com', '123', 'นพนันท์', 'วังดี', '0841568536', 'member', 'profile1.jpg', '19.016798461689202,99.92347128689289'),
(8, 'test8@gmail.com', '123456', 'test8', '8', '0812345678', 'store', 'profile2.jpg', '19.032221,99.924194'),
(9, 'asdas', 'asdasdasdasdasd', 'asdasdasd', 'sadasdasdasd', '056156658', 'store', 'profile3.jpg', '19.032221,99.924194'),
(10, 'wqwads', 'wasdwadsdw', 'asdwa', 'sdwasdwasd', '1312312312', 'store', 'profile4.jpg', '19.032221,99.924194'),
(11, 'asdasdadwd', 'awadasdd', 'wasdwada', 'wdasdwaas', '1231231232', 'member', 'profile.jpg', '19.032221,99.924194'),
(13, 'test1@gmail.com', '1234', 'aum', 'kung', '0912345678', 'member', 'profile1.jpg', '19.032221,99.924194'),
(14, 'asdasd@gmail.com', '123123', 'qweqwe', 'qweqwe', '085236568', 'member', 'profile.jpg', ''),
(15, 'jjj@gmail.com', 'asdasd', 'qweqwe', 'qweqwe', '0852366566', 'store', 'profile.jpg', ''),
(16, 'ice2@gmail.com', 'asd', 'ice', 'iceice', '123123123', 'store', 'profile.jpg', ''),
(19, 'mokata@gmail.com', '123', 'moo ka ', 'ta', '0912345678', 'prestore', '', ''),
(20, 'aum@gmail.com', '123', 'aum', 'kung', '0957944535', 'member', '', ''),
(21, 'store1@gmail.com', '123', 'roro', 'noa', '0912345678', 'prestore', '', ''),
(23, 'store3@gmail.com', '123', 'store', '3', '0912345678', 'prestore', '', ''),
(28, 'aum1@gmail.com', '123', 'aum', 'kung', '912345678', 'member', '', ''),
(29, 'kapao@gmail.com', '123', 'roro', 'band', '095456789', 'store', '', ''),
(30, 'ice3@gmail.com', '123', 'ice', '3', '0812345678', 'member', '', ''),
(31, 'store25@gmail.com', '123', 'store25', '10', '0812345678', 'member', '', ''),
(32, 'test90@gmail.com', '123', 'test', '90', '0812345678', 'member', '', ''),
(33, 'test91', '123', '123', '123', '123', 'member', '', '19.032221,99.924194'),
(34, 'test20', '123', 'test', '10', '0856325468', 'member', '', '19.032750237298814,99.92879379540682');

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu`
--

CREATE TABLE `tb_menu` (
  `menu_id` int(11) NOT NULL,
  `res_id` int(11) NOT NULL,
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `menu_price` float NOT NULL,
  `menu_description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `menu_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_menu`
--

INSERT INTO `tb_menu` (`menu_id`, `res_id`, `menu_name`, `menu_price`, `menu_description`, `menu_image`) VALUES
(1, 1, 'ข้าวผัดหมู', 60, 'ข้าว+ไข่+หมู', '1000000036.jpg'),
(3, 1, 'ข้าวผัดไข่', 50, 'ข้าว+ไข่', '1000000036.jpg'),
(4, 2, 'ข้าวกระเพรา', 40, '', 'cook1.jpg'),
(11, 10, 'mooslide', 50, 'หมูสไลด์ค้าบบบ\n', ''),
(12, 10, 'หมูหมักนุ๊มๆ', 89, 'หมูหมักงา\n', ''),
(13, 13, 'ข้าวผัด', 70, 'ข้าวผัดกุ้ง', ''),
(14, 13, 'กะเพรา', 60, 'กะเพราหมู', ''),
(15, 13, 'ผัดไท', 60, 'ผัดไทกุ้ง', ''),
(16, 13, 'ผัดพริกแกง', 50, 'หมู', ''),
(20, 1, 'ข้าวต้มหมู', 50, 'ข้าวต้ม', '1000000034.jpg'),
(21, 1, 'ข้าวผัด', 50, '', '1000000035.jpg'),
(22, 1, 'ผัดกระเพรา', 50, '', '1000000036.jpg'),
(23, 1, 'ข้าวผัดกุ้ง', 50, '', '1000000035.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE `tb_order` (
  `order_id` int(255) NOT NULL,
  `account_id` int(255) NOT NULL,
  `res_id` int(255) NOT NULL,
  `order_date` timestamp NOT NULL,
  `order_total` float NOT NULL,
  `order_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `order_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address_detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image_payment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`order_id`, `account_id`, `res_id`, `order_date`, `order_total`, `order_status`, `payment_status`, `order_address`, `address_detail`, `image_payment`) VALUES
(119, 34, 1, '2024-05-27 06:43:13', 50, '6', 'cash', '19.032750237298814,99.92879379540682', '', ''),
(120, 34, 1, '2024-05-27 06:44:11', 150, '6', 'bankTransfer', '19.032750237298814,99.92879379540682', '', '1000000037.jpg'),
(127, 5, 1, '2024-05-27 08:22:04', 50, '1', 'bankTransfer', '19.02730372455455,99.92451902478933', '', '1000000037.jpg'),
(131, 5, 2, '2024-05-28 02:05:04', 40, '1', 'cash', '19.02730372455455,99.92451902478933', '', ''),
(132, 5, 1, '2024-05-28 02:07:25', 60, '1', 'bankTransfer', '19.031385139405078,99.92967490106821', '', '1000000037.jpg'),
(133, 5, 2, '2024-05-28 02:16:47', 40, '1', 'cash', '19.031602249989852,99.93572294712067', '', ''),
(136, 5, 1, '2024-05-28 02:45:24', 60, '1', 'cash', '19.016798461689202,99.92347128689289', '', ''),
(137, 5, 2, '2024-05-28 02:46:47', 40, '1', 'bankTransfer', '19.016798461689202,99.92347128689289', '', '1000000037.jpg'),
(143, 5, 1, '2024-05-29 19:17:57', 60, '3', 'bankTransfer', '19.016798461689202,99.92347128689289', '', '1000000037.jpg'),
(144, 5, 1, '2024-05-30 03:55:44', 60, '3', 'cash', '19.0318491535071,99.92843236774206', 'ห้อง5', ''),
(145, 5, 1, '2024-05-30 04:04:32', 60, '1', 'cash', '19.031726811116954,99.92830093950033', 'ห้อง 8', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_orderdetail`
--

CREATE TABLE `tb_orderdetail` (
  `orderdetail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `orderdetail_namemenu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `orderdetail_qty` int(11) NOT NULL,
  `orderdetail_price` float NOT NULL,
  `orderdetail_instructions` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_orderdetail`
--

INSERT INTO `tb_orderdetail` (`orderdetail_id`, `order_id`, `orderdetail_namemenu`, `orderdetail_qty`, `orderdetail_price`, `orderdetail_instructions`) VALUES
(146, 119, 'ข้าวต้มหมู', 1, 50, ''),
(147, 120, 'ผัดกระเพรา', 1, 50, ''),
(148, 120, 'ข้าวต้มหมู', 2, 100, ''),
(157, 127, 'ข้าวผัดกุ้ง', 1, 50, ''),
(161, 131, 'ข้าวกระเพรา', 1, 40, ''),
(162, 132, 'ข้าวผัดหมู', 1, 60, ''),
(163, 133, 'ข้าวกระเพรา', 1, 40, ''),
(167, 136, 'ข้าวผัดหมู', 1, 60, ''),
(168, 137, 'ข้าวกระเพรา', 1, 40, ''),
(173, 143, 'ข้าวผัดหมู', 1, 60, ''),
(174, 144, 'ข้าวผัดหมู', 1, 60, ''),
(175, 145, 'ข้าวผัดหมู', 1, 60, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_store`
--

CREATE TABLE `tb_store` (
  `res_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `res_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `res_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `res_tel` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `res_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `res_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `statusstore` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `res_payment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `bank_account` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_store`
--

INSERT INTO `tb_store` (`res_id`, `account_id`, `res_name`, `res_address`, `res_tel`, `res_image`, `res_status`, `statusstore`, `res_payment`, `bank_name`, `bank_account`) VALUES
(1, 2, 'ร้านA', '19.03839497386704,99.9295112863183', '0987654323', 'store1.jpg', 'allow', 'open', 'qrcode.jpg', 'กรุงเทพ', '6795749653'),
(2, 8, 'ร้าน B ', '19.031007375696724, 99.9262604919548', '0823456789', 'cook1.jpg', 'allow', 'close', 'qrcode.jpg', 'กสิกร', '2356845263'),
(3, 9, 'ร้าน C', '19.031007375696724, 99.9262604919548', '0812345678', 'cook2.jpg', 'allow', 'open', 'qrcode.jpg', 'กรุงไทย', '9568425135'),
(4, 10, 'ร้าน D', '19.031007375696724, 99.9262604919548', '0987563251', 'cook3.jpg', 'allow', 'open', 'qrcode.jpg', 'กรุงเทพ', '6795749653'),
(6, 15, 'อาหารตามสั่ง', '19.031007375696724, 99.9262604919548', '085236546', 'store3.jpg', 'allow', 'open', 'qrcode.jpg', 'กรุงเทพ', '6795749653'),
(7, 16, 'ice', '19.031007375696724, 99.9262604919548', '234234234', '', 'allow', 'open', 'qrcode.jpg', 'กรุงเทพ', '6795749653'),
(9, 18, 'asdasd', '19.16716948333049,99.89763960242271', '213123', '', 'allow', 'open', 'qrcode.jpg', 'กรุงเทพ', '6795749653'),
(10, 19, 'moo ka ta', '19.031007375696724, 99.9262604919548', '022123456', '', 'allow', '', '', 'กรุงเทพ', '6795749653'),
(11, 21, 'อาหารตามสั่ง', '19.031007375696724, 99.9262604919548', '022123456', '', 'allow', '', '', 'กรุงเทพ', '6795749653'),
(12, 22, 'store2 ', '19.030822869213832,99.92415357381105', '123', '', 'wait', '', '', 'กรุงเทพ', '6795749653'),
(13, 23, 'store3', '19.032637403999953,99.92881961166859', '02212456', '', 'allow', '', '', 'กรุงเทพ', '6795749653'),
(14, 25, 'store3', '19.032157544676163,99.92531597614288', '0823456789', '', 'allow', '', '', 'กรุงเทพ', '6795749653'),
(15, 26, 'store4', '19.031319530749172,99.92379952222109', '0812345678', '', 'wait', '', '', 'กรุงเทพ', '6795749653'),
(16, 27, 'store5', '19.032684629182125,99.9239282682538', '032165498', '', 'wait', '', '', 'กรุงเทพ', '123456879'),
(17, 29, 'kapao', '19.031140453851147,99.92763306945562', '022123456', '', 'allow', '', '', 'กสิกร', '0221345689');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_account`
--
ALTER TABLE `tb_account`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `tb_menu`
--
ALTER TABLE `tb_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tb_orderdetail`
--
ALTER TABLE `tb_orderdetail`
  ADD PRIMARY KEY (`orderdetail_id`);

--
-- Indexes for table `tb_store`
--
ALTER TABLE `tb_store`
  ADD PRIMARY KEY (`res_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_account`
--
ALTER TABLE `tb_account`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tb_menu`
--
ALTER TABLE `tb_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tb_order`
--
ALTER TABLE `tb_order`
  MODIFY `order_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `tb_orderdetail`
--
ALTER TABLE `tb_orderdetail`
  MODIFY `orderdetail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `tb_store`
--
ALTER TABLE `tb_store`
  MODIFY `res_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
