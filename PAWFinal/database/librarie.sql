-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 29 Mai 2018 la 14:39
-- Versiune server: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librarie`
--

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'Sony'),
(5, 'LG'),
(6, 'Cloth Brand');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(8, 1, '::1', 3, 1),
(9, 1, '::1', 6, 1),
(10, 2, '::1', 6, 1);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Carti'),
(2, 'Filme'),
(3, 'Muzica'),
(4, 'Manuale'),
(5, 'Caiete');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 2, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 2, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 2, 'Gastronomie', 25, 'Gastronomie', 'logo8.png', 'carte '),
(2, 1, 3, 'Gastronomie', 30, 'Gastronomie', 'logo10.png', 'carte'),
(3, 1, 3, 'Gastronomie', 35, 'Gastronomie', 'bucate.jpg', 'carte'),
(4, 1, 3, 'Gastronomie', 25, 'Gastronomie', 'salate.jpg', 'carte'),
(5, 1, 2, 'Gastronomie', 50, 'Gastronomie', 'retete.jpg', 'carte'),
(6, 1, 1, 'Drept', 35, 'Drept', 'logo12.png', 'carte'),
(7, 1, 1, 'Drept', 45, 'Drept', 'logo13.png', 'carte'),
(8, 1, 4, 'Drept', 30, 'Drept', 'drept1.jpg', 'carte'),
(9, 1, 3, 'Drept', 55, 'Drept', 'drept2.jpg', 'carte'),
(10, 2, 6, 'Actiune', 50, 'Actiune', 'logo14.png', 'film'),
(11, 2, 6, 'Actiune', 60, 'Actiune', 'logo15.png', 'film'),
(12, 2, 6, 'Actiune', 45, 'Actiune', 'film2.jpg', 'film'),
(13, 2, 6, 'Actiune', 90, 'Actiune', 'film3.jpg', 'film'),
(14, 2, 6, 'Dragoste', 40, 'Dragoste', 'logo17.png', 'film'),
(15, 2, 6, 'Dragoste', 55, 'Dragoste', 'logo16.png', 'film'),
(16, 3, 6, 'Usoara', 10, 'Usoara', 'logo18.png', 'muzica'),
(17, 3, 6, 'Usoara', 15, 'Usoara', 'usoara1.jpg', 'muzica'),
(19, 3, 6, 'Usoara', 25, 'Usoara', 'usoara3.jpg', 'muzica'),
(20, 3, 6, 'Populara', 10, 'Populara', 'logo29.png', 'muzica '),
(21, 3, 6, 'Populara', 25, 'Populara', 'logo30.png', 'muzica'),
(22, 4, 6, 'Matematica', 20, 'Matematica', 'logo24.png', 'manual'),
(23, 4, 6, 'Matematica', 30, 'Matematica', 'logo26.png', 'manual'),
(24, 4, 6, 'Matematica', 35, 'Matematica', 'mate1.jpg', 'manual'),
(25, 4, 6, 'Romana', 15, 'Romana', 'logo27.png', 'manual'),
(26, 4, 6, 'Romana', 25, 'Romana', 'logo28.png', 'manual'),
(27, 4, 6, 'Romana', 15, 'Romana', 'romana1.jpg', 'manual'),
(32, 5, 0, 'Caiete', 35, 'Caiete', 'logo20.png', 'caiete');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Dumitrecu', 'Catalin', 'dumitrecucatalin@gmail.com', 'dumitrecucatalin', '0763801270', 'Craiova, Str. Calea Bucuresti, Nr.10', 'Romania'),
(2, 'Stancu', 'Ioana', 'stancuioana@yahoo.com', 'stancuioana', '0782943010', 'Craiova, Str. Calea Bucuresti, Nr. 20', 'Romania'),
(3, 'Popescu', 'Ion', 'popescuion@yahoo.com', '76289fefd599b7c0e0fd715bae080715', '', 'Craiova, Str. Petre Ispirescu, Nr. 15', ''),
(4, 'Popescu', 'Augustin', 'popescuaugustin@yahoo.com', '4ba3f8436618df5273cf979f7091b7f9', '', 'Craiova', ''),
(5, 'Pop', 'Ana', 'popana@gmail.com', '25ec3e380b72d8df4037b4650874530b', '', 'Craiova', ''),
(6, 'a', 'a', 'a@yahoo.com', '25f9e794323b453885f5181f1b624d0b', '', 'Craiova', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
