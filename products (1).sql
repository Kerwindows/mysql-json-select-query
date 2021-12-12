-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 10.123.0.31:3307
-- Generation Time: Dec 12, 2021 at 06:40 PM
-- Server version: 5.7.27
-- PHP Version: 7.0.33-0+deb9u11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kerwindows_designer_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pro_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `attributes` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pro_id`, `name`, `brand_id`, `category_id`, `attributes`) VALUES
(1, 'Primes', 1, 1, '{\"ports\": {\"usb\": \"2\", \"hdmi\": \"3\"}, \"screen\": \"76 inch\", \"speakers\": {\"left\": \"12 watts\", \"right\": \"12 watts\"}, \"resolution\": \"2048 x 1152 pixels\"}'),
(2, 'Octoview', 1, 1, '{\"ports\": {\"usb\": \"2\", \"hdmi\": \"2\"}, \"screen\": \"40 inch\", \"speakers\": {\"left\": \"10 watts\", \"right\": \"10 watts\"}, \"resolution\": \"1920 x 1080 pixels\"}'),
(3, 'Dreamer', 1, 1, '{\"ports\": {\"usb\": 1, \"hdmi\": \"2\"}, \"screen\": \"30 inch\", \"speakers\": {\"left\": \"10 watts\", \"right\": \"10 watts\"}, \"resolution\": \"1600 x 900 pixles\"}'),
(4, 'Bravia', 1, 1, '{\"ports\": {\"usb\": 0, \"hdmi\": 1}, \"screen\": \"20 inch\", \"speakers\": {\"left\": \"5 watts\", \"right\": \"5 watts\"}, \"resolution\": \"1366 x 768 pixels\"}'),
(5, 'Proton', 1, 1, '{\"ports\": {\"usb\": 0, \"hdmi\": 0}, \"screen\": \"18 inch\", \"speakers\": {\"left\": \"5 watts\", \"right\": \"5 watts\"}, \"resolution\": \"1280 x 720 pixels\"}'),
(6, 'Desire', 2, 2, '{\"os\": \"Android Jellybean v4.3\", \"sim\": \"Micro-SIM\", \"body\": \"5.11 x 2.59 x 0.46 inches\", \"weight\": \"143 grams\", \"display\": \"4.5 inches\", \"network\": [\"GSM\", \"CDMA\", \"HSPA\", \"EVDO\"], \"resolution\": \"720 x 1280 pixels\"}'),
(7, 'Passion', 2, 2, '{\"os\": \"Android Jellybean v4.3\", \"sim\": \"Micro-SIM\", \"body\": \"6.11 x 3.59 x 0.46 inches\", \"weight\": \"145 grams\", \"display\": \"4.5 inches\", \"network\": [\"GSM\", \"CDMA\", \"HSPA\"], \"resolution\": \"720 x 1280 pixels\"}'),
(8, 'Emotion', 2, 2, '{\"os\": \"Android KitKat v4.3\", \"sim\": \"Micro-SIM\", \"body\": \"5.50 x 2.50 x 0.50 inches\", \"weight\": \"125 grams\", \"display\": \"5.00 inches\", \"network\": [\"GSM\", \"CDMA\", \"EVDO\"], \"resolution\": \"720 x 1280 pixels\"}'),
(9, 'Sensation', 2, 2, '{\"os\": \"Android Lollipop v4.3\", \"sim\": \"Micro-SIM\", \"body\": \"4.00 x 2.00 x 0.75 inches\", \"weight\": \"150 grams\", \"display\": \"3.5 inches\", \"network\": [\"GSM\", \"HSPA\", \"EVDO\"], \"resolution\": \"720 x 1280 pixels\"}'),
(10, 'Joy', 2, 2, '{\"os\": \"Android Marshmallow v4.3\", \"sim\": \"Micro-SIM\", \"body\": \"7.00 x 3.50 x 0.25 inches\", \"weight\": \"250 grams\", \"display\": \"6.5 inches\", \"network\": [\"CDMA\", \"HSPA\", \"EVDO\"], \"resolution\": \"1920 x 1080 pixels\"}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pro_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
