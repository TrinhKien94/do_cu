-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2015 at 02:27 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oldmono`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Đồ Điện Tử', '2015-11-05 14:14:29', '0000-00-00 00:00:00'),
(2, 'Thời trang, đồ dùng cá nhân', '2015-11-16 17:12:18', '0000-00-00 00:00:00'),
(3, 'Xe Cộ', '2015-11-05 14:14:56', '0000-00-00 00:00:00'),
(4, 'Nội thất, đồ gia dụng', '2015-11-16 17:17:59', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `read` int(11) NOT NULL,
  `content` text COLLATE utf8_vietnamese_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `product_id`, `user_id`, `read`, `content`, `updated_at`, `created_at`) VALUES
(5, 5968, 28, 1, 'dsdfsadfasdf', '2015-11-19 12:26:09', '2015-11-19 12:25:32'),
(6, 5968, 28, 1, 'ấdf', '2015-11-19 12:29:31', '2015-11-19 12:28:18'),
(7, 5961, 31, 1, 'Hoo hô<br />', '2015-11-19 12:30:10', '2015-11-19 12:29:50'),
(8, 5961, 31, 1, 'hi hi', '2015-11-19 12:30:56', '2015-11-19 12:30:37');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `views` int(11) DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_bin,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5970 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `image`, `title`, `views`, `description`, `updated_at`, `created_at`, `quantity`) VALUES
(5961, 28, 'images/5961.jpg', 'fasdfasf', 9, 'safasdfasd<br />asdfasdf', '2015-11-19 13:15:41', '2015-11-18 16:17:29', 1),
(5962, 28, 'images/5962.jpg', 'asdfasdf', 0, 'asfdasdfasd', '2015-11-18 16:25:22', '2015-11-18 16:25:22', 1),
(5965, 28, 'images/5965.jpg', 'asdfasdfa', 1, 'safdsad<br />fas<br />dfa<br />sdf<br />asfd<br />as<br />fd<br />s', '2015-11-19 09:53:45', '2015-11-19 09:53:44', 1),
(5968, 31, '', 'fasdfdsfsda', 5, 'sadafdasf', '2015-11-19 12:30:05', '2015-11-19 11:37:59', 1),
(5969, 28, 'images/5969.jpg', 'zc', 1, 'sdaf', '2015-11-19 12:25:11', '2015-11-19 12:25:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_cates`
--

CREATE TABLE IF NOT EXISTS `product_cates` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_cates`
--

INSERT INTO `product_cates` (`id`, `name`, `category_id`, `updated_at`, `created_at`) VALUES
(1, 'Đồng hồ điện tử', 1, '2015-11-16 17:04:30', '2015-11-16 17:04:30'),
(2, 'Điện thoại', 1, '2015-11-16 17:06:00', '2015-11-16 17:06:00'),
(3, 'Tủ lạnh', 1, '2015-11-16 17:04:59', '2015-11-16 17:04:59'),
(4, 'Máy giặt', 1, '2015-11-16 17:05:06', '2015-11-16 17:05:06'),
(5, 'Máy tính bảng', 1, '2015-11-16 17:06:39', '2015-11-16 17:06:39'),
(6, 'PC, laptop', 1, '2015-11-16 17:06:50', '2015-11-16 17:06:50'),
(7, 'Máy ảnh, máy quay', 1, '2015-11-16 17:08:22', '2015-11-16 17:08:22'),
(8, 'Tivi, loa, amply, máy nghe nhạc', 1, '2015-11-16 17:08:39', '2015-11-16 17:08:39'),
(9, 'Phụ kiện, linh kiện', 1, '2015-11-16 17:09:20', '2015-11-16 17:09:20'),
(10, 'Lò vi sóng', 1, '2015-11-16 17:09:49', '2015-11-16 17:09:49'),
(11, 'Vi mạch, chíp', 1, '2015-11-16 17:10:56', '2015-11-16 17:10:56'),
(12, 'Máy tính bỏ túi', 1, '2015-11-16 17:11:43', '2015-11-16 17:11:43'),
(13, 'Quần, áo', 2, '2015-11-16 17:13:05', '2015-11-16 17:13:05'),
(14, 'Trang sức', 2, '2015-11-16 17:13:25', '2015-11-16 17:13:25'),
(15, 'Giày dép', 2, '2015-11-16 17:13:44', '2015-11-16 17:13:44'),
(16, 'Găng tay, mũ', 2, '2015-11-16 17:15:11', '2015-11-16 17:15:11'),
(17, 'Mẹ và bé', 2, '2015-11-16 17:15:18', '2015-11-16 17:15:18'),
(18, 'Túi sách', 2, '2015-11-16 17:15:00', '2015-11-16 17:15:00'),
(19, 'Xe máy', 3, '2015-11-16 17:16:18', '2015-11-16 17:16:18'),
(20, 'Ô tô', 3, '2015-11-16 17:16:24', '2015-11-16 17:16:24'),
(21, 'Xe tải', 3, '2015-11-16 17:16:30', '2015-11-16 17:16:30'),
(22, 'Xe khác', 3, '2015-11-16 17:16:56', '2015-11-16 17:16:56'),
(23, 'Phụ tùng, phụ kiện xe', 3, '2015-11-16 17:17:19', '2015-11-16 17:17:19'),
(24, 'Bát đĩa, thìa đũa dĩa ...', 4, '2015-11-16 17:19:17', '2015-11-16 17:19:17'),
(25, 'Giá sách', 4, '2015-11-16 17:19:36', '2015-11-16 17:19:36'),
(26, 'Bàn ghế', 4, '2015-11-16 17:19:48', '2015-11-16 17:19:48'),
(27, 'Giường tủ', 4, '2015-11-16 17:19:57', '2015-11-16 17:19:57'),
(28, 'Bếp ga, bếp điện', 4, '2015-11-16 17:20:33', '2015-11-16 17:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `product_product_cates`
--

CREATE TABLE IF NOT EXISTS `product_product_cates` (
  `id` int(11) NOT NULL,
  `product_cate_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4461 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_product_cates`
--

INSERT INTO `product_product_cates` (`id`, `product_cate_id`, `product_id`, `updated_at`, `created_at`) VALUES
(4452, 1, 5961, '2015-11-18 16:17:29', '2015-11-18 16:17:29'),
(4453, 1, 5962, '2015-11-18 16:25:22', '2015-11-18 16:25:22'),
(4456, 14, 5965, '2015-11-19 09:53:45', '2015-11-19 09:53:45'),
(4459, 1, 5968, '2015-11-19 11:37:59', '2015-11-19 11:37:59'),
(4460, 18, 5969, '2015-11-19 12:25:10', '2015-11-19 12:25:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sex` int(11) DEFAULT NULL,
  `phone` varchar(15) NOT NULL,
  `email` text CHARACTER SET latin1 NOT NULL,
  `address` text,
  `birthday` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(30) NOT NULL,
  `password` varchar(64) NOT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `remember_token` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `sex`, `phone`, `email`, `address`, `birthday`, `username`, `password`, `role`, `created_at`, `updated_at`, `remember_token`) VALUES
(28, 'Trịnh Kiên', 1, '0974011703', 'kie94@gmail.com', '123456); drop table uses;', '2015-11-19 11:37:26', 'kie941', '$2y$10$X5/UYgOYHt5vomwCpKn9VuypxOJ.j6OtO2Guhtn7rWl6LkMN3eNW.', 1, '2015-11-19 11:37:26', '2015-11-19 11:37:26', 'Fh9pLtTNCQiI5tKPI5EUu3I0iHjeha9pZ6aU3gP4wTKWdoUzKaC7vS96pUU5'),
(31, 'test 123', 1, '123456789', 'trinhkien@gmail.com', '123456', '2015-11-19 11:38:27', '123456', '$2y$10$0/EBxcP.n3jxbLmmSME7eO.xZZWdNMp/kvLUmWqBKjfQrJMGsDGLW', 0, '2015-11-19 11:38:27', '2015-11-19 11:38:27', '2s8j8RT0l7Yh1mXRJn36GXxVcw6VG9ZFvGRd3AXZ4GNxMcWtHmfnjTCYg76k');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comment_user` (`user_id`),
  ADD KEY `fk_comment_product` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_books_users` (`user_id`);

--
-- Indexes for table `product_cates`
--
ALTER TABLE `product_cates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_loai_sach` (`category_id`);

--
-- Indexes for table `product_product_cates`
--
ALTER TABLE `product_product_cates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk2_sach_loai_sach` (`product_cate_id`),
  ADD KEY `fk1_sach_loai_sach` (`product_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5970;
--
-- AUTO_INCREMENT for table `product_cates`
--
ALTER TABLE `product_cates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `product_product_cates`
--
ALTER TABLE `product_product_cates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4461;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_comment_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_comment_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_cates`
--
ALTER TABLE `product_cates`
  ADD CONSTRAINT `fk_loai_sach` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `product_product_cates`
--
ALTER TABLE `product_product_cates`
  ADD CONSTRAINT `fk2_sach_loai_sach` FOREIGN KEY (`product_cate_id`) REFERENCES `product_cates` (`id`),
  ADD CONSTRAINT `fk_product_product_cate_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
