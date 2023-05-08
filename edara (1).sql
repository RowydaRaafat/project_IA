-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 08 مايو 2023 الساعة 23:29
-- إصدار الخادم: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edara`
--

-- --------------------------------------------------------

--
-- بنية الجدول `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `product`
--

INSERT INTO `product` (`id`, `name`, `warehouse_id`, `description`, `image`, `quantity`) VALUES
(27, 'clothes', 32, 'T_shirt', '1683579252900.webp', 100),
(28, 'clothes', 32, 'trousers', '1683579351105.jpg', 150),
(29, 'clothes', 32, 'shoes', '1683579466040.jpg', 100),
(30, 'computer', 31, 'Computer Accessories', '1683579708386.webp', 5);

-- --------------------------------------------------------

--
-- بنية الجدول `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `response` varchar(255) NOT NULL DEFAULT 'Waiting',
  `transaction` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `report`
--

INSERT INTO `report` (`id`, `email`, `message`, `product_id`, `quantity`, `warehouse_id`, `response`, `transaction`) VALUES
(56, 'jimmy@gmail.com', 'i wanna increase this product plzz', 29, 50, 32, 'accepted', 'increase'),
(57, 'Bassel@gmail.com', 'i wanna decrease this product please', 30, 2, 31, 'Declined', 'decrease');

-- --------------------------------------------------------

--
-- بنية الجدول `send_mail`
--

CREATE TABLE `send_mail` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `response` varchar(255) NOT NULL DEFAULT 'Waiting',
  `warehouse_id` int(11) NOT NULL,
  `transaction` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `phone` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0->admin\r\n1->noramlUser',
  `token` varchar(255) NOT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `user`, `email`, `status`, `phone`, `type`, `token`, `warehouse_id`, `password`) VALUES
(48, 'jimy', 'admin@admin.com', 'active', '01125555555', 0, '1', NULL, '$2b$10$ajPinjxF9uelMGR70mNbs.Xj/vm1Rb21tKelM.pIp9KwsN7C/1udi'),
(84, 'jimmy', 'jimmy@gmail.com', 'Active', '0111254853', 1, '82d70b373849ea7a81d0f074a8082ad3', 32, '$2b$10$wBaxcyrllmPcOBRnxWWTkOqbN4A7uVXVRboeIWPj7/KDBNssLpxcq'),
(85, 'Bassel', 'Bassel@gmail.com', 'Active', '01117934369', 1, '4e39cf3544687e92589f0d59e2d6cd3c', 31, '$2b$10$nkfyFy.apCpml//E4B6Xg.ly5QEk1r5Eba3HxZ9cCwKODsxAIAYSG');

-- --------------------------------------------------------

--
-- بنية الجدول `warehouse`
--

CREATE TABLE `warehouse` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `warehouse`
--

INSERT INTO `warehouse` (`id`, `name`, `location`, `status`) VALUES
(31, 'Warehouse 1', 'Maadi', 'Active'),
(32, 'Warehouse 2', 'Dokiii', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ware_const_id` (`warehouse_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_mail`
--
ALTER TABLE `send_mail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `waree_const_id` (`warehouse_id`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `send_mail`
--
ALTER TABLE `send_mail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- قيود الجداول المُلقاة.
--

--
-- قيود الجداول `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `ware_const_id` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- قيود الجداول `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `waree_const_id` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
