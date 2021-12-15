-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 15, 2021 at 08:44 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `posmini`
--
CREATE DATABASE IF NOT EXISTS `posmini` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `posmini`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('majoo', '$2y$10$fRJKJtdGhdhxOIHZg1Jame6.A5jbYnrPZbvevfWyazWrWoCgDMw3q');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` tinyint(2) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `product_category_id` tinyint(2) NOT NULL,
  `product_description` text NOT NULL,
  `product_price` double(15,0) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `product_name` (`product_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;
