-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-04-07 07:17:19
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
-- 資料庫： `comp3421_finalproject`
--

-- --------------------------------------------------------

--
-- 資料表結構 `branches_address`
--

CREATE TABLE `branches_address` (
  `b_location` varchar(50) NOT NULL,
  `b_address` varchar(200) NOT NULL,
  `b_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `branches_address`
--

INSERT INTO `branches_address` (`b_location`, `b_address`, `b_id`) VALUES
('Tuen Mun', 'Room 1503, 15/F, Block B<br>Hang Wai Industrial Centre<br>6 Kin Tai Street<br>TUEN MUN<br>NEW TERRITORIES', 1),
('Chai Wan', 'Flat 808, 8/F, Block A<br>Kailey Industrial Centre<br>CHAI WAN<br>HONG KONG', 2),
('Tsing Yi', 'Flat E2, 4/F, Block E<br>Tsing Yi Industrial Centre<br>TSING YI<br>NEW TERRITORIES', 3),
('Tseung Kwan O', 'Unit B11, PL1/F, Shopping Arcade<br>Nan Fung Plaza<br>TSEUNG KWAN O<br>NEW TERRITORIES', 4),
('Sha Tin', 'Shop 502, 5/F, Shopping Arcade<br>Grand Central Plaza<br>138 Sha Tin Rural Committee Road<br>SHA TIN<br>NEW TERRITORIES', 5);

-- --------------------------------------------------------

--
-- 資料表結構 `contactus`
--

CREATE TABLE `contactus` (
  `name` varchar(100) NOT NULL,
  `phone` int(8) NOT NULL,
  `email` varchar(100) NOT NULL,
  `textarea` varchar(10000) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `contactus`
--

INSERT INTO `contactus` (`name`, `phone`, `email`, `textarea`, `id`) VALUES
('Billy', 96523874, 'billy@vtc.edu.hk', 'GOOD WEBSITE!', 100012);

-- --------------------------------------------------------

--
-- 資料表結構 `product_info`
--

CREATE TABLE `product_info` (
  `p_id` int(10) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `p_description` varchar(256) NOT NULL,
  `p_category` varchar(50) NOT NULL,
  `p_cashpoint` int(10) NOT NULL,
  `p_img` varchar(50) NOT NULL,
  `p_state` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `product_info`
--

INSERT INTO `product_info` (`p_id`, `p_name`, `p_description`, `p_category`, `p_cashpoint`, `p_img`, `p_state`) VALUES
(10000, 'ComfyPaws Orthopedic Bed', 'Suitable for dogs of all sizes.', 'Pet Bedding', 1000, 'img/bed.png', 'enable'),
(10002, 'FreshBites Dental Chews', 'mix of flavorsome treats made from high-quality ingredients', 'Pet Treats', 100, 'img/chews1.png', 'enable'),
(10005, 'AquaGlo LED Aquarium Light', 'adjustable brightness levels and a waterproof design for easy installation. Suitable for aquariums of various ', 'Fish Supplies', 400, 'img/led1.png', 'enable'),
(10006, 'FeatherWhirl Interactive Toy', 'The FeatherWhirl Interactive Toy captivates your cat with its spinning feather wand', 'Cat Toys', 300, 'img/toy1.png', 'enable'),
(10007, 'FeatherChase Interactive Toy', 'a motorized wand with a feather attachment that mimics the movement of prey, triggering your cat\'s natural hunting instincts.', 'Cat Toys', 250, 'img/toy2.png', 'enable'),
(10009, 'CozyHideout Cat Cave', 'Made from soft, durable materials, it provides warmth and security.', 'Cat Furniture', 800, 'img/catcave.png', 'enable'),
(10010, 'PuppyLove Starter Kit', 'The PuppyLove Starter Kit has all the essentials for welcoming a new puppy into your home. It includes a cozy bed, food and water bowls, chew toys, and training pads.', 'Puppy Supplies', 2000, 'img/kit1.png', 'enable'),
(10011, 'TidyTails Scented Cat Litter', 'TidyTails Scented Cat Litter provides excellent odor control and clumping performance.', 'Cat Litter', 270, 'img/catlitter.png', 'enable'),
(10012, 'SnuggleSack Small Animal Bed', 'The SnuggleSack Small Animal Bed is a cozy sleeping spot for guinea pigs, hedgehogs, and other small pets.', 'Small Animal Supplies', 600, 'img/bed2.png', 'enable');

-- --------------------------------------------------------

--
-- 資料表結構 `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `userID` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `user_info`
--

CREATE TABLE `user_info` (
  `userID` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `cashpoint` int(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` int(8) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `user_info`
--

INSERT INTO `user_info` (`userID`, `username`, `password`, `cashpoint`, `address`, `phone`, `email`, `status`) VALUES
(7, 'manager', 'manager', 0, '', 0, '', ''),
(1003, 'user1', 'cmuser', 97418, 'Lau Fang Hong<br>Flat C, 19/F, Alassio<br>200 Caine Road<br>CENTRAL HK<br>Hong Kong', 25698742, 'user1@gmail.com', 'enable'),
(1022, 'user2', 'cmuser', 100000, 'Wong Nok Him<br>Flat C, 21/F, Block 19<br>Tai Po Centre<br>TAI PO NT<br>HONG KONG', 69875431, 'user2@gmail.com', 'enable');

-- --------------------------------------------------------

--
-- 資料表結構 `user_order`
--

CREATE TABLE `user_order` (
  `orderID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `type_name` varchar(50) NOT NULL,
  `p_id` varchar(200) NOT NULL,
  `quantity` varchar(200) NOT NULL,
  `cashpoint` varchar(200) NOT NULL,
  `totalPrice` int(10) NOT NULL,
  `discount` int(10) NOT NULL,
  `n_totalPrice` int(10) NOT NULL,
  `b_name` varchar(50) NOT NULL,
  `b_address` varchar(200) NOT NULL,
  `user_address` varchar(200) NOT NULL,
  `order_time` datetime(6) NOT NULL,
  `getDate` date NOT NULL,
  `getTime` time(6) NOT NULL,
  `order_status` varchar(20) NOT NULL,
  `p_img` varchar(1000) NOT NULL,
  `p_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `user_order`
--

INSERT INTO `user_order` (`orderID`, `userID`, `type_name`, `p_id`, `quantity`, `cashpoint`, `totalPrice`, `discount`, `n_totalPrice`, `b_name`, `b_address`, `user_address`, `order_time`, `getDate`, `getTime`, `order_status`, `p_img`, `p_name`) VALUES
(116, 1003, 'Delivery', '10005<br>10002', '1<br>1<br>', '400<br>100', 500, 0, 500, '', '', 'Lau Fang Hong<br>Flat C, 19/F, Alassio<br>200 Caine Road<br>CENTRAL HK<br>Hong Kong', '2024-04-07 12:58:47.000000', '2024-04-17', '17:58:00.000000', 'delivered', 'img/led1.png<br>img/chews1.png', 'FreshBites Dental Chews'),
(117, 1003, 'Self Pick-up', '10011', '4', '270', 1080, 54, 1026, 'Tuen Mun', 'Room 1503, 15/F, Block B<br>Hang Wai Industrial Centre<br>6 Kin Tai Street<br>TUEN MUN<br>NEW TERRITORIES', '', '2024-04-07 13:06:22.000000', '2024-04-12', '17:06:00.000000', 'self-picked up', 'img/catlitter.png', 'TidyTails Scented Cat Litte'),
(118, 1003, 'Delivery', '10005', '2<br>', '400', 800, 0, 800, '', '', 'Lau Fang Hong<br>Flat C, 19/F, Alassio<br>200 Caine Road<br>CENTRAL HK<br>Hong Kong', '2024-04-07 13:11:52.000000', '2024-04-10', '15:11:00.000000', 'delivered', 'img/led1.png', 'AquaGlo LED Aquarium Light');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `branches_address`
--
ALTER TABLE `branches_address`
  ADD PRIMARY KEY (`b_id`);

--
-- 資料表索引 `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`p_id`);

--
-- 資料表索引 `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`userID`,`p_id`),
  ADD KEY `p_id` (`p_id`);

--
-- 資料表索引 `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`userID`);

--
-- 資料表索引 `user_order`
--
ALTER TABLE `user_order`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `userID` (`userID`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `branches_address`
--
ALTER TABLE `branches_address`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100013;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_info`
--
ALTER TABLE `product_info`
  MODIFY `p_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10022;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user_info`
--
ALTER TABLE `user_info`
  MODIFY `userID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1023;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user_order`
--
ALTER TABLE `user_order`
  MODIFY `orderID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD CONSTRAINT `shoppingcart_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user_info` (`userID`),
  ADD CONSTRAINT `shoppingcart_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `product_info` (`p_id`);

--
-- 資料表的限制式 `user_order`
--
ALTER TABLE `user_order`
  ADD CONSTRAINT `user_order_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user_info` (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
