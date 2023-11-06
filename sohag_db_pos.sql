-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 01:48 PM
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
-- Database: `sohag_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Shirt', 1, '2023-11-04 07:22:05', '2023-11-04 07:22:05'),
(2, 'Pant', 3, '2023-11-04 07:22:05', '2023-11-04 07:22:05'),
(3, 'Shirt', 1, '2023-11-04 07:22:05', '2023-11-04 07:22:05'),
(4, 'Pant', 2, '2023-11-04 07:22:05', '2023-11-04 07:22:05'),
(5, 'Scarp', 1, '2023-11-04 07:22:05', '2023-11-04 07:22:05'),
(6, 'Lungi', 2, '2023-11-04 07:24:18', '2023-11-04 07:24:18'),
(7, 'Lehengar', 1, '2023-11-04 07:24:18', '2023-11-04 07:24:18'),
(8, 'Hijab', 3, '2023-11-04 07:24:18', '2023-11-04 07:24:18');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `location` varchar(70) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `location`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Masud', 'masud@mail.com', '1812060123', 'Dhaka', 3, '2023-11-05 06:25:41', '2023-11-05 06:25:41'),
(2, 'Masum', 'masum@gmail.com', '1712060163', 'Dhaka', 1, '2023-11-05 06:46:32', '2023-11-05 06:46:32'),
(3, 'Kabir', 'kabir@gmail.com', '1902060163', 'Khulna', 2, '2023-11-05 06:46:32', '2023-11-05 06:46:32'),
(4, 'Saiful', 'saiful@gmail.com', '1962060163', 'Barishal', 3, '2023-11-05 06:46:32', '2023-11-05 06:46:32'),
(5, 'Kamal', 'kamal@gmail.com', '1712060252', 'Cumilla', 4, '2023-11-05 06:46:32', '2023-11-05 06:46:32'),
(6, 'Kawser', 'kawser@gmail.com', '1712070163', 'Dhaka', 1, '2023-11-05 06:46:32', '2023-11-05 06:46:32'),
(7, 'Tamim', 'tamim@gmail.com', '1712080563', 'Dinazpur', 4, '2023-11-05 06:46:32', '2023-11-05 06:46:32'),
(8, 'Afzal', 'afzal@gmail.com', '1822060163', 'Dhaka', 3, '2023-11-05 06:46:32', '2023-11-05 06:46:32'),
(9, 'Sadia', 'sadu@gmail.com', '1902060163', 'Khulna', 2, '2023-11-05 06:46:32', '2023-11-05 06:46:32'),
(10, 'Minhaz', 'minhaz@gmail.com', '1716540163', 'Cumilla', 1, '2023-11-05 06:46:32', '2023-11-05 06:46:32');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `total_amount` varchar(15) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `customer_id`, `quantity`, `total_amount`, `order_date`, `updated_at`) VALUES
(1, 1, 2, '1', '500', '2023-11-05 06:55:23', '2023-11-05 06:55:23'),
(2, 1, 2, '1', '500', '2023-11-05 06:55:23', '2023-11-05 06:55:23'),
(3, 4, 2, '1', '500', '2023-11-05 06:58:28', '2023-11-05 06:58:28'),
(4, 3, 2, '2', '800', '2023-11-05 06:58:28', '2023-11-05 06:58:28'),
(5, 2, 4, '1', '800', '2023-11-05 06:58:28', '2023-11-05 06:58:28'),
(6, 4, 5, '1', '700', '2023-11-05 06:58:28', '2023-11-05 06:58:28'),
(7, 1, 4, '3', '1500', '2023-11-05 06:58:28', '2023-11-05 06:58:28'),
(8, 1, 4, '1', '900', '2023-11-05 06:58:28', '2023-11-05 06:58:28'),
(9, 2, 6, '1', '200', '2023-11-05 06:58:28', '2023-11-05 06:58:28');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `unit_price` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `user_id`, `order_id`, `product_id`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 4, '2', '500', '2023-11-05 11:54:39', '2023-11-05 11:54:39'),
(2, 3, 3, 1, '1', '700', '2023-11-05 11:58:05', '2023-11-05 11:58:05'),
(3, 4, 6, 7, '1', '900', '2023-11-05 11:58:05', '2023-11-05 11:58:05'),
(4, 1, 5, 3, '1', '600', '2023-11-05 11:58:05', '2023-11-05 11:58:05'),
(5, 2, 2, 5, '2', '200', '2023-11-05 11:58:05', '2023-11-05 11:58:05');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(70) NOT NULL,
  `price` varchar(50) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `price`, `quantity`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Marun Shirt', 'Good Product', '500', '5', 1, '2023-11-05 07:13:20', '2023-11-05 07:13:20'),
(2, 8, 'Black Shirt', 'Good Product', '500', '5', 1, '2023-11-05 07:13:20', '2023-11-05 07:13:20'),
(3, 6, 'Hizab', 'Good Product', '300', '15', 2, '2023-11-05 07:13:20', '2023-11-05 07:13:20'),
(4, 5, 'Panjabi', 'Good Product', '800', '10', 4, '2023-11-05 07:13:20', '2023-11-05 07:13:20'),
(5, 7, 'Kabli Panjabi', 'Good Product', '700', '7', 3, '2023-11-05 07:13:20', '2023-11-05 07:13:20'),
(6, 3, 'Pant', 'Good Product', '400', '12', 2, '2023-11-05 07:13:20', '2023-11-05 07:13:20'),
(7, 4, 'Denim Pant', 'Good Product', '700', '10', 3, '2023-11-05 07:13:20', '2023-11-05 07:13:20'),
(8, 3, 'Three Quarter', 'Good Product', '200', '5', 4, '2023-11-05 07:13:20', '2023-11-05 07:13:20'),
(9, 2, 'Kurti', 'Good Product', '900', '5', 2, '2023-11-05 07:13:20', '2023-11-05 07:13:20'),
(10, 5, 'Paizama', 'Good Product', '400', '15', 1, '2023-11-05 07:13:20', '2023-11-05 07:13:20'),
(11, 3, 'Tupi', 'Good Product', '50', '20', 1, '2023-11-05 07:13:20', '2023-11-05 07:13:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `mobile`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Mazharul Islam', 'Sohag', 'mislamsohag@gmail.com', '1812060163', '123456', '2023-11-04 03:40:23', '2023-11-04 03:40:23'),
(2, 'Israt', 'Jahan', 'israt@gmail.com', '12501201', '123456', '2023-11-04 03:57:19', '2023-11-04 03:57:19'),
(3, 'Nusrat', 'Jahan', 'nusrat@gmail.com', '12501202', '123456', '2023-11-04 03:57:19', '2023-11-04 03:57:19'),
(4, 'Hamim', 'Islam', 'hamim@gmail.com', '12501203', '123456', '2023-11-04 03:57:19', '2023-11-04 03:57:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
