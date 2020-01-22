-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 22, 2020 at 03:54 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aquamall`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `address_id` int(3) NOT NULL AUTO_INCREMENT,
  `country` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `building` varchar(100) NOT NULL,
  `customer_id` int(3) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(3) NOT NULL AUTO_INCREMENT,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `admin_image` varchar(250) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_password`, `fullname`, `admin_image`) VALUES
(37, 'yasmeen@123.com', 'yasmeen@123.com', 'yasmeenn', 'yass.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int(3) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(100) NOT NULL,
  `cat_image` varchar(250) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_image`) VALUES
(35, 'clothes', 'bg-2.jpg'),
(36, 'shoes', 'bg-3.jpg'),
(37, 'Accessories', 'Chic-Neutral-Accessories.jpg'),
(38, 'phones', 'download.jpg'),
(39, 'kids', 'the-best-kids-clothes-to-buy-on-amazon-right-now.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` int(14) NOT NULL,
  `country` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `email`, `password`, `mobile`, `country`, `city`, `address`) VALUES
(30, 'yasmeen', 'yasmeen@123.com', '123456', 22350, 'jordan', 'amman', 'abdoun'),
(31, 'besho', 'beso@yahoo.com', '147741', 2321, 'qatar', 'doha', 'sss'),
(32, 'rawan', 'rawan@2.com', '159951', 7857, 'lebanon', 'trablus', 'qq'),
(33, 'baraa', 'qqq@h.com', '12ww', 2345, 'lebanon', 'ss', 'aa');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(3) NOT NULL AUTO_INCREMENT,
  `customer_id` int(3) NOT NULL,
  `order_date` date NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `order_details_id` int(3) NOT NULL AUTO_INCREMENT,
  `order_id` int(3) NOT NULL,
  `product_id` int(3) NOT NULL,
  `qty` int(100) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `card_name` int(100) NOT NULL,
  `card_number` int(100) NOT NULL,
  `vcc` varchar(100) NOT NULL,
  PRIMARY KEY (`order_details_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(3) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(3) DEFAULT NULL,
  `product_desc` varchar(100) NOT NULL,
  `product_image` varchar(250) NOT NULL,
  `cat_id` int(3) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_desc`, `product_image`, `cat_id`) VALUES
(22, 'overall', 30, 'blue overall', 'product-6.jpg', 35),
(24, 'shoes', 50, 'nike shoes', '338968-Nike-Golf-Air-Max-1G-Golf-Shoes-Plat-3.jpg', 36),
(21, 'dress', 20, 'white dress', 'product-2.jpg', 35),
(23, 'dress', 20, 'red dress', 'product-5.jpg', 35),
(25, 'Heels', 35, 'black heels', 'download (4).jpg', 36),
(26, 'Heels', 35, 'white heels', 'download (5).jpg', 36),
(27, 'Iphone', 700, 'black Iphone', 'download (6).jpg', 38),
(28, 'Samsung', 500, 'gray', 'download (7).jpg', 38),
(29, 'Hawawi', 500, 'blue', 'huawei-p30-lite-400x400.jpg', 38),
(30, 'T-shirt', 20, 'yellow shirt', 'download (8).jpg', 39),
(31, 'short', 15, 'pink ', '2017-fashion-kids-clothes-grid-shirt-suspender-newborn-Long-sleeve-baby-boy-clothes-Bowknot-gentleman-suit.jpg', 39),
(32, 'dress', 25, 'yellow dress', 'images (3).jpg', 39),
(33, 'rrr', 56, 'y6y', 'product-8.jpg', 35);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
CREATE TABLE IF NOT EXISTS `product_images` (
  `image_id` int(3) NOT NULL AUTO_INCREMENT,
  `image_name` varchar(100) NOT NULL,
  `product_id` int(3) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

DROP TABLE IF EXISTS `providers`;
CREATE TABLE IF NOT EXISTS `providers` (
  `provider_id` int(3) NOT NULL AUTO_INCREMENT,
  `provider_name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` int(14) NOT NULL,
  `logo` varchar(100) NOT NULL,
  PRIMARY KEY (`provider_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
