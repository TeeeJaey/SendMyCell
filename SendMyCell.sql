-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2017 at 03:50 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `send_my_cell`
--
CREATE DATABASE IF NOT EXISTS `send_my_cell` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `send_my_cell`;
-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(15) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `units` int(5) NOT NULL,
  `total` int(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_code`, `product_name`, `product_desc`, `price`, `units`, `total`, `date`, `email`) VALUES
(12, 'samsung1', 'Samsung Galaxy S8 Plus (Midnight Black)', '6 GB RAM | 128 GB ROM | Expandable Upto 256 GB | 6.2 inch Quad HD+ Display | 12MP Rear Camera | 8MP Front Camera | 3500 mAh Battery | Exynos 8895 Octa Core 2.3GHz Processor', 68000, 2, 136000, '2017-11-03 15:04:56', 'tjadhav95@gmail.com'),
(13, 'samsung1', 'Samsung Galaxy S8 Plus (Midnight Black)', '6 GB RAM | 128 GB ROM | Expandable Upto 256 GB | 6.2 inch Quad HD+ Display | 12MP Rear Camera | 8MP Front Camera | 3500 mAh Battery | Exynos 8895 Octa Core 2.3GHz Processor', 68000, 1, 68000, '2017-11-03 15:05:39', 'tjadhav95@gmail.com'),
(14, 'oneplus1', 'OnePlus 5 (Slate Gray)', '| 6 GB RAM | 64 GB ROM\r\n| 20MP+16MP rearcamera, 16MP front camera\r\n| 5.5-inch FHD display | 1920x1080 pixels resolution \r\n| Android v7.1.1 Nougat OS \r\n| Qualcomm Snapdragon 835 octa core processor\r\n| Dual nano SIM (4G+4G)\r\n| 3300mA lithium Polymer battery', 32999, 1, 32999, '2017-11-04 07:49:20', 'tjadhav95@gmail.com'),
(15, 'nokia2', 'Nokia 3 (Matte Black)', '\r\n\r\n8MP Rear Camera | 8MP Front Camera\r\n2630 mAh Battery\r\nMTK 6737 Processor', 8870, 1, 8870, '2017-11-04 20:48:17', 'tjadhav95@gmail.com'),
(16, 'apple2', 'Apple iPhone 8 Plus (Space Grey)', '12MP + 12MP Dual Rear Camera | 7MP Front Camera\r\nlithium-ion Battery\r\nA11 Bionic Chip with 64-bit Architecture, Neural Engine, Embedded M11 Motion Coprocessor Processor', 69999, 1, 69999, '2017-11-04 20:48:18', 'tjadhav95@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_code` varchar(60) NOT NULL,
  `product_brand` varchar(20) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `memory` varchar(255) NOT NULL,
  `display` varchar(255) NOT NULL,
  `camera` varchar(255) NOT NULL,
  `battery` varchar(255) NOT NULL,
  `os` varchar(255) NOT NULL,
  `connect` varchar(255) NOT NULL,
  `processor` varchar(255) NOT NULL,
  `features` varchar(255) NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_brand`, `product_name`, `memory`, `display`, `camera`, `battery`, `os`, `connect`, `processor`, `features`, `product_img_name`, `qty`, `price`) VALUES
(1, 'oneplus1', 'oneplus', 'OnePlus 5 (Slate Gray)', '6 GB RAM | 64 GB ROM', '5.5-inch FHD display | 1920 x 1080 pixels resolution', 'Dual 16 MP rear camera | 16 MP front facing camera', '3300 mAh Non-removable Li-Po battery', 'Android 7.1.1 (Nougat) | Qualcomm MSM8998 Snapdragon 835', 'Dual SIM (Nano-SIM, dual stand-by) (4G/3G/2G) | GPS | Wi-Fi 802.11 a/b/g/n/ac | Wi-Fi Direct | Hotspot | Bluetooth 5.0 | NFC | USB 2.0, Type-C', 'Octa-core 2.45 GHz Kryo | Adreno 540', 'Fingerprint (front-mounted) | Accelerometer | Gyro | Proximity | Compass', 'oneplus1.jpg', 23, '32999.00'),
(2, 'vivo3', 'vivo', 'VIVO V5s Perfect Selfie (Matte Black)', '4 GB RAM | 64 GB ROM | Expandable Upto 256 GB', '5.5 inch HD Display | 1280 x 720 pixels resolution', '13 MP Rear Camera | 20 MP Front Camera', '3000 mAh Non-removable Li-Ion battery', 'Android 6.0 (Marshmallow) | Mediatek MT6750', 'Hybrid Dual SIM (Micro-SIM/Nano-SIM, dual stand-by)  (4G/3G/2G) |\r\nWi-Fi 802.11 a/b/g/n | WiFi Direct | Hotspot | Bluetooth 4.0 | GPS | FM radio | microUSB 2.0\r\n', 'Octa-core 1.5 GHz Cortex-A53 | Mali-T860MP2', 'Fingerprint (front-mounted) | Accelerometer  | Proximity | Compass', 'vivo3.jpeg', 30, '17990.00'),
(3, 'samsung3', 'samsung', 'Samsung C7 Pro (Navy Blue)', '4 GB RAM | 64 GB ROM | Expandable Upto 256 GB ', '5.7 inch Full HD Display | 1920 x 1080 pixels resolution', '16 MP Rear Camera | 16 MP Front Camera ', '3300 mAh Non-removable Li-Ion battery', 'Android 6.0.1 (Marshmallow) | Qualcomm MSM8953-Pro Snapdragon 626', 'Hybrid Dual SIM (Nano-SIM, dual stand-by)(4G/3G/2G) | Wi-Fi 802.11 a/b/g/n/ac | Dual-band | WiFi Direct | Bluetooth 4.2 | GPS | NFC | FM radio | USB 2.0, Type-C 1.0', 'Octa-core 2.2 GHz Cortex-A53 | Adreno 506 GPU', 'Fingerprint (front-mounted) | Accelerometer | Gyro | Proximity | Compass', 'samsung3.jpeg', 34, '24900.00'),
(4, 'lenovo3', 'lenovo', 'Lenovo Vibe K5 Note (Black)', '4 GB RAM | 32 GB ROM | Expandable Upto 256 GB', '5.5 inch Full HD Display | 1920 x 1080 pixels resolution', '13 MP Rear Camera | 8 MP Front Camera ', '3500 mAh Non-removable Li-Ion battery', 'Android 5.1 (Lollipop) | Mediatek MT6755 Helio P10', 'Hybrid Dual SIM (Nano-SIM, dual stand-by) (4G/3G/2G) | Wi-Fi 802.11 a/b/g/n/ac | Dual-band | WiFi Direct | Hotspot | Bluetooth 4.1 | GPS | FM radio | microUSB 2.0\r\n', 'Octa-core (4x1.8 GHz Cortex-A53 & 4x1.0 GHz Cortex-A53) | Mali-T860MP2 GPU', 'Fingerprint (front-mounted) | Accelerometer | Gyro | Proximity | Compass', 'lenovo3.jpeg', 11, '10499.00'),
(5, 'google3', 'google', 'Google Pixel 2 (Kinda Blue)', '4 GB RAM | 64 GB ROM', '5.0 inch Full HD Display | 1920 x 1080 pixels resolution', '12.2 MP Rear Camera | 8 MP Front Camera ', '2700 mAh Non-removable Li-Ion battery', 'Android 8.0 | Qualcomm MSM8998 Snapdragon 835', 'Nano-SIM card (4G/3G/2G) | Wi-Fi 802.11 a/b/g/n/ac | Dual-band | DLNA | WiFi Direct | Hotspot | Bluetooth 5.0 | GPS | NFC | USB 3.1, Type-C\r\n', 'Octa-core (4x2.35 GHz Kryo & 4x1.9 GHz Kryo) | Adreno 540', 'Fingerprint (rear-mounted) | Accelerometer | Gyro | Proximity | Compass | Barometer', 'google3.jpeg', 17, '61000.00'),
(6, 'oppo3', 'oppo', 'OPPO A57 (Black)', '3 GB RAM | 32 GB ROM | Expandable Upto 256 GB', '5.2 inch HD Display | 1280 x 720 pixels resolution', '13 MP Rear Camera | 16 MP Front Camera ', '2900 mAh Non-removable Li-Ion battery', 'Android 6.0 (Marshmallow) | Qualcomm MSM8940 Snapdragon 435', 'Dual SIM (Nano-SIM, dual stand-by) (4G/3G/2G) | Wi-Fi 802.11 a/b/g/n | Dual-band | WiFi Direct | Hotspot | Bluetooth 4.1 | GPS  | FM radio | microUSB 2.0\r\n', 'Octa-core 1.4 GHz Cortex-A53 | Adreno 505 GPU', 'Fingerprint (front-mounted) | Accelerometer | Proximity | Compass ', 'oppo3.jpeg', 22, '13990.00'),
(7, 'xiaomi4', 'xiaomi', 'Mi 3 (Metallic Grey)', '2 GB RAM | 64 GB ROM', '5 inch Full HD Display | 1920 x 1080 pixels resolution', '13 MP Rear Camera | 2 MP Front Camera ', '3050 mAh Non-removable Li-Ion battery', 'Android 4.3 (Jelly Bean), upgradable to 4.4.2 (KitKat), planned upgrade to 6.0 (Marshmallow) | Qualcomm MSM8274AB Snapdragon 800', 'Mini-SIM (3G/2G) | Wi-Fi 802.11 a/b/g/n | Dual-band | WiFi Direct | Hotspot | Bluetooth 4.0 | GPS | NFC | FM radio | microUSB 2.0', 'Quad-core 2.3 GHz Krait 400 | Adreno 330', 'Accelerometer | Gyro | Proximity | Compass | Barometer', 'xiaomi4.jpeg', 23, '13999.00'),
(8, 'moto4', 'motorola', 'Moto M (Gold)', '4 GB RAM | 64 GB ROM | Expandable Upto 128 GB', '5.5 inch Full HD Display | 1920 x 1080 pixels resolution', '16MP Rear Camera | 8MP Front Camera', '3050 mAh Li-Polymer Battery', 'Android OS, v6.0.1 (Marshmallow)', 'Dual SIM (Nano SIM) \r\n(4G/3G/2G) | Wi-Fi 802.11 a/b/g/n/ac | Dual-band | WiFi Direct | Hotspot | Bluetooth', 'MediaTek Helio P15 64-bit Octa Core 2.2GHz Processor | Mali-T860MP2', 'Fingerprint (front-mounted) | Accelerometer | Gyro | Proximity', 'moto4.jpeg', 16, '15999.00'),
(9, 'xiaomi3', 'xiaomi', 'Redmi Note 4 (Gold)', '4 GB RAM | 64 GB ROM | Expandable Upto 128 GB', '5.5 inch Full HD Display | 1920 x 1080 pixels resolution', '13 MP Rear Camera | 5 MP Front Camera ', '4100 mAh Non-removable Li-Ion battery', 'Android 6.0 (Marshmallow), upgradable to 7.0 (Nougat) | Qualcomm MSM8953 Snapdragon 625', 'Hybrid Dual SIM (Micro-SIM/Nano-SIM, dual stand-by) (4G/3G/2G) | Wi-Fi 802.11 a/b/g/n | Wi-Fi Direct | Hotspot | Bluetooth 4.1 | GPS | Infrared port | FM radio | microUSB 2.0', 'Octa-core 2.0 GHz Cortex-A53 | Adreno 506', 'Fingerprint (rear-mounted) | Accelerometer | Gyro | Proximity | Compass ', 'xiaomi3.jpeg', 12, '12999.00'),
(10, 'moto3', 'motorola', 'Moto E3 Power (Black)', '2 GB RAM | 16 GB ROM | Expandable Upto 32 GB', '5 inch HD Display | 1280 x 1080 pixels resolution', '8 MP Rear Camera | 5 MP Front Camera ', '3500 mAh Non-removable Li-Ion battery', 'Android 6.0 (Marshmallow) | Mediatek MT6735P', 'Dual SIM (Micro-SIM, dual stand-by) (4G/3G/2G) | Wi-Fi 802.11 b/g/n | Hotspot | Bluetooth 4.0 | GPS | FM radio | microUSB 2.0', 'Quad-core 1.0 GHz Cortex-A53 | Mali-T720MP2', 'Accelerometer | Proximity', 'moto3.jpeg', 17, '6999.00'),
(11, 'moto2', 'motorola', 'Moto G5 Plus (Lunar Grey)', '4 GB RAM | 64 GB ROM', '5.2 inch Full HD Display | 1920 x 1080 pixels resolution', '12 MP Rear Camera | 5 MP Front Camera ', '3000 mAh Non-removable Li-Ion battery', 'Android 7.0 (Nougat), planned upgrade to Android 8.0 (Oreo) | Qualcomm MSM8953 Snapdragon 625', 'Dual SIM (Nano-SIM, dual stand-by) (4G/3G/2G) | Wi-Fi 802.11 a/b/g/n | Dual-band | WiFi Direct | Hotspot | Bluetooth 4.2 | GPS | NFC | FM radio | microUSB 2.0', 'Octa-core 2.0 GHz Cortex-A53 | Adreno 506 GPU', 'Fingerprint (front-mounted) | Accelerometer | Gyro | Proximity | Compass', 'moto2.jpeg', 22, '13999.00'),
(12, 'oneplus2', 'oneplus', 'OnePlus 3T (Gunmetal)', '6GB RAM | 64GB ROM', '5.5-inch FHD | 1920 x 1080 pixels resolution', '16 MP Rear Camera | 16 MP Front Camera ', '3400 mAh Non-removable Li-Ion battery', 'Android 6.0.1 (Marshmallow), upgradable to 7.1.1 (Nougat) | Qualcomm MSM8996 Snapdragon 821', 'Dual SIM (Nano-SIM, dual stand-by) (4G/3G/2G) | Wi-Fi 802.11 a/b/g/n/ac | Wi-Fi Direct | DLNA | Hotspot | Bluetooth 4.2 | GPS | NFC | USB	2.0, Type-C 1.0 ', 'Quad-core (2x2.35 GHz Kryo & 2x1.6 GHz Kryo) | Adreno 530 GPU', 'Fingerprint (front-mounted) | Accelerometer | Gyro | Proximity | Compass', 'oneplus2.jpg', 15, '24990.00'),
(13, 'vivo2', 'vivo', 'VIVO V7+ (Matte Black', '4 GB RAM | 64 GB ROM | Expandable Upto 256 GB', '5.99 inch HD Display | 1440 x 720 pixels resolution', '16 MP Rear Camera | 24 MP Front Camera ', '3225 mAh Non-removable Li-Ion battery', 'Android 7.1.2 (Nougat) | Qualcomm Snapdragon 450', 'Dual SIM (Nano-SIM, dual stand-by) (4G/3G/2G) | Wi-Fi 802.11 b/g/n | WiFi Direct | DLNA | Hotspot | Bluetooth 4.2 | GPS | FM radio | microUSB 2.0', 'Octa-core 1.8 GHz Cortex-A53 | Adreno 506 GPU', 'Fingerprint (rear-mounted) | Accelerometer | Gyro | Proximity | Compass ', 'vivo2.jpeg', 30, '21990.00'),
(14, 'oppo2', 'oppo', 'OPPO A71 (Gold)', '3 GB RAM | 16 GB ROM | Expandable Upto 256 GB', '5.2 inch HD Display | 1280 x 720 pixels resolution', '13 MP Rear Camera | 5 MP Front Camera ', '3000 mAh Non-removable Li-Ion battery', 'Android 7.1 (Nougat) | Mediatek MT6750', 'Dual SIM (Nano-SIM, dual stand-by) (4G/3G/2G) | Wi-Fi 802.11 b/g/n | Hotspot | Bluetooth 4.0 | GPS | microUSB 2.0', 'Octa-core 1.5 GHz Cortex-A53 | Mali-T860MP2 GPU', 'Accelerometer  Proximity | Compass ', 'oppo2.jpeg', 23, '12990.00'),
(15, 'nokia2', 'nokia', 'Nokia 3 (Matte Black)', '2 GB RAM | 16 GB ROM | Expandable Upto 128 GB', '5 inch HD Display | 1280 x 720 pixels resolution', '8 MP Rear Camera | 8 MP Front Camera ', '2630 mAh Non-removable Li-Ion battery', 'Android 7.0 (Nougat), planned upgrade to Android 8.0 (Oreo) | Mediatek MT6737', 'Dual SIM (Nano-SIM, dual stand-by) (4G/3G/2G) | Wi-Fi 802.11 b/g/n | Dual-band | WiFi Direct | Hotspot | Bluetooth 4.0 | GPS | NFC | FM radio | microUSB 2.0', 'Quad-core 1.4 GHz Cortex-A53 | Mali-T720MP1', 'Accelerometer | Gyro | Proximity | Compass', 'nokia2.jpeg', 24, '8870.00'),
(16, 'lenovo2', 'lenovo', 'Lenovo K8 Plus (Venom Black)', '3 GB RAM | 32 GB ROM | Expandable Upto 128 GB', '5.2 inch Full HD Display | 1920 x  1080 pixels resolution', 'Dual 13 MP + 5MP rear camera | 8 MP front facing camera', '4000 mAh Non-removable Li-Ion battery', 'Android 7.1.2 (Nougat), planned upgrade to Android 8.0 (Oreo)| Mediatek MT6757 Helio P25', 'Dual SIM (Nano-SIM, dual stand-by) (4G/3G/2G) | Wi-Fi 802.11 b/g/n | Wi-Fi Direct | Hotspot | Bluetooth 4.2 | GPS | FM radio | microUSB 2.0', 'Octa-core 2.5 GHz Cortex-A53 | Mali-T880 MP2', 'Fingerprint (rear-mounted) | Accelerometer | Gyro | Proximity | Compass', 'lenovo2.jpeg', 25, '10999.00'),
(17, 'xiaomi2', 'xiaomi', 'Mi A1 (Black) ', '4 GB RAM | 64 GB ROM | Expandable Upto 128 GB', '5.5 inch Full HD Display | 1920 x 1080 pixels resolution', 'Dual 12 MP rear camera | 5 MP front facing camera', '3080 mAh Non-removable Li-Ion battery', 'Android 7.1.2 (Nougat), planned upgrade to Android 8.0 (Oreo); Android One | Qualcomm MSM8953 Snapdragon 625', 'Hybrid Dual SIM (Nano-SIM, dual stand-by) (4G/3G/2G) | Wi-Fi 802.11 a/b/g/n/ac | Dual-band | WiFi Direct | Hotspot', 'Octa-core 2.0 GHz Cortex-A53 | Adreno 506 GPU', 'Fingerprint (front-mounted) | Accelerometer | Gyro | Proximity', 'xiaomi2.jpeg', 20, '14999.00'),
(18, 'nokia1', 'nokia', 'Nokia 5', '2 GB RAM | 16 GB ROM | Expandable upto 256 GB', '5.2\" HD display | 1280 x 720 pixels resolution', '13 MP rear camera | 8 MP front facing camera', '3000 mAh Non-removable Li-Ion battery', 'Android 7.1.1 (Nougat), planned upgrade to Android 8.0 (Oreo) | Qualcomm MSM8937 Snapdragon 430', 'Dual SIM (Nano-SIM, dual stand-by) (4G/3G/2G) | Wi-Fi | Bluetooth 4.1 | GPS | NFC | FM radio | microUSB 2.0', 'Octa-core 1.4 GHz Cortex-A53 | Adreno 505 GPU', 'Fingerprint (front-mounted) | Accelerometer | Gyro | Proximity | Compass ', 'nokia1.jpg', 20, '12690.00'),
(19, 'google2', 'google', 'Google Pixel XL (Quite Black)', '4 GB RAM | 128 GB ROM ', '5.5-inch screen | 2560 x 1440 pixels resolution', '12.3 MP rear camera | 8 MP front camera', '3450 mAh Non-removable Li-Ion battery', 'Android 7.1 (Nougat), upgradable to Android 8.0 (Oreo) | Qualcomm MSM8996 Snapdragon 821', 'Nano-SIM (4G/3G/2G) | Wi-Fi 802.11 a/b/g/n/ac | Dual-band | Wi-Fi Direct | DLNA | Hotspot', 'Quad-core (2x2.15 GHz Kryo & 2x1.6 GHz Kryo) | Adreno 530 GPU', 'Fingerprint (front-mounted) | Accelerometer | Gyro | Proximity | Compass | Barometer', 'google2.jpeg', 20, '48090.00'),
(20, 'samsung4', 'samsung', 'Samsung Galaxy J7 Prime (Gold)', '3 GB RAM | 32 GB ROM | Expandable Upto 256 GB', '5.5 inch Full HD Display | 1920 x 1080 pixels resolution', '13 MP rear camera | 8 MP front facing camera', '3300 mAh Non-removable Li-Ion battery', 'Android 6.0.1 (Marshmallow), upgradable to 7.0 (Nougat) | Exynos 7870 Octa', 'Dual SIM (Nano-SIM, dual stand-by)(4G/3G/2G) | Wi-Fi 802.11 b/g/n | Wi-Fi Direct | Hotspot | Blutooth 4.1 | GPS | FM radio | microUSB 2.0', 'Octa-core 1.6 GHz Cortex-A53 | Mali-T830 MP1 GPU', 'Fingerprint (front-mounted) | Accelerometer | Gyro | Proximity | Compass | Barometer', 'samsung4.jpeg', 20, '14900.00'),
(21, 'google1', 'google', 'Google Pixel 2 XL ', '4 GB RAM | 64/128 GB ROM ', '6 inch QHD+ Display | 2880 x 1440 pixels resolution', '12.2 MP rear camera | 8 MP front facing camera', '3520 mAh Non-removable Li-Ion battery', 'Android 8.0 (Oreo) | Qualcomm MSM8998 Snapdragon 835', 'Nano-SIM card (4G/3G/2G) | Wi-Fi 802.11 a/b/g/n/ac | Dual-band | Wi-Fi Direct | DLNA | Hotspot | Bluetooth 5.0 | GPS | NFC | USB	3.1, Type-C 1.0', 'Octa-core (4x2.35 GHz Kryo & 4x1.9 GHz Kryo) |  Adreno 540 GPU', 'Fingerprint (front-mounted) | Accelerometer | Gyro | Proximity | Compass | Barometer', 'google1.jpeg', 20, '73000.00'),
(22, 'apple3', 'apple', 'Apple iPhone 7 (Black)', '2 GB RAM | 256 GB ROM ', '4.7 inch Retina HD Display | 1334 x 750  pixels resolution', '12 MP rear camera | 7 MP front facing camera', '1960 mAh Non-removable Li-Ion battery ', 'iOS 10.0.1, upgradable to iOS 11.1 |\r\nApple A10 Fusion', 'Nano-SIM (4G/3G/2G) | Wi-Fi 802.11 a/b/g/n/ac | Dual-band | Hotspot | Bluetooth 4.2 | GPS | NFC | USB 2.0', 'Quad-core 2.34 GHz (2x Hurricane + 2x Zephyr) | PowerVR Series7XT Plus (six-core graphics)', 'Fingerprint (front-mounted) | Accelerometer | Gyro | Proximity | Compass | Barometer', 'apple3.jpeg', 20, '45999.00'),
(23, 'vivo1', 'vivo', 'VIVO Y66 (Matte Black)', '3 GB RAM | 32 GB ROM | Expandable Upto 256 GB', '5.5 inch HD Display | 1280 x 720 pixels resolution', '13 MP rear camera | 16 MP front facing camera', '3000 mAh Non-removable Li-Ion battery', 'Android 6.0 (Marshmallow)', 'Hybrid Dual SIM (Nano-SIM/ Micro-SIM, dual stand-by) (4G/3G/2G) | Wi-Fi | Bluetooth 4.0 | GPS | FM radio | microUSB 2.0', 'Octa-core', 'Accelerometer | Proximity | Compass', 'vivo1.jpeg', 20, '13990.00'),
(24, 'samsung2', 'samsung', 'Samsung Galaxy On Max (Black)', '4 GB RAM | 32 GB ROM | Expandable Upto 256 GB', '5.7 inch Full HD Display | 1920 x 1080 pixels resolution', '13 MP rear camera | 13 MP front facing camera', '3300 mAh Non-removable Li-Ion battery', 'Android 7.0 (Nougat) | Mediatek MT6757 Helio P20', 'Dual SIM (Nano-SIM, dual stand-by)(4G/3G/2G) | Wi-Fi 802.11 a/b/g/n | Dual-band | WiFi Direct | Hotspot | Bluetooth 4.2 | GPS | microUSB 2.0', 'Octa-core 2.4 GHz Cortex-A53 | Mali-T880MP2', 'Fingerprint (front-mounted) | Accelerometer  Gyro | Proximity | Compass', 'samsung2.jpeg', 15, '16900.00'),
(25, 'lenovo1', 'lenovo', 'Lenovo P2 (Gold)', '4 GB RAM | 32 GB ROM | Expandable Upto 128 GB', '5.5 inch Full HD Display | 1920 x 1080 pixels resolution', '13 MP rear camera | 5 MP front facing camera', '5100 mAh Non-removable Li-Ion battery', 'Android 6.0.1 (Marshmallow), upgradable to 7.0 (Nougat) | Qualcomm MSM8953 Snapdragon 625', 'Hybrid Dual SIM (Nano-SIM, dual stand-by) (4G/3G/2G) | Wi-Fi 802.11 a/b/g/n/ac | Dual-band | Hotspot | Bluetooth 4.1 | GPS | NFC | FM radio | microUSB 2.0', 'Octa-core 2.0 GHz Cortex-A53 | Adreno 506 GPU', 'Fingerprint (front-mounted) |Accelerometer | Gyro | Proximity | Compass', 'lenovo1.jpeg', 20, '15499.00'),
(26, 'moto1', 'motorola', 'Moto C Plus (Fine Gold)', '2 GB RAM | 16 GB ROM | Expandable Upto 32 GB', '5 inch HD Display | 1280 x 720 pixels resolution', '12 MP rear camera | 5 MP front facing camera', '3400 mAh Non-removable Li-Ion battery', 'Android 7.1 (Nougat) | Qualcomm MSM8998 Snapdragon 835', 'Dual SIM (Nano-SIM, dual stand-by) (4G/3G/2G) | Wi-Fi 802.11 a/b/g/n/ac | dual-band | WiFi Direct | Hotspot | Bluetooth 5.0 | GPS | NFC | USB Type-C 1.0 ', 'Octa-core (4x2.45 GHz Kryo & 4x1.9 GHz Kryo) |	Adreno 540 GPU', 'Fingerprint (rear-mounted) | Accelerometer | Gyro | Proximity | Compass | Barometer', 'moto1.jpeg', 20, '6999.00'),
(27, 'xiaomi1', 'xiaomi', 'Mi Mix 2 (Black)', '6 GB RAM | 256 GB ROM ', '5.99 inch Full HD+ Display | 2160 x 1080 pixels resolution', '12 MP rear camera | 5 MP front facing camera', '3400 mAh Non-removable Li-Ion battery', 'Android 7.1 (Nougat) | Qualcomm MSM8998 Snapdragon 835', 'Dual SIM (Nano-SIM, dual stand-by) (4G/3G/2G) | Wi-Fi 802.11 a/b/g/n/ac, dual-band | WiFi Direct | Hotspot | Bluetooth 5.0 | GPS | NFC | USB	Type-C 1.0', 'Octa-core (4x2.45 GHz Kryo & 4x1.9 GHz Kryo) | Adreno 540 GPU', 'Fingerprint (rear-mounted) | Accelerometer | Gyro | Proximity | Compass | Barometer', 'xiaomi1.jpeg', 20, '37995.00'),
(28, 'oppo1', 'oppo', 'OPPO F5 (Gold)', '4 GB RAM | 32 GB ROM | Expandable Upto 256 GB', '6 inch Full HD+ Display | 2160 x 1080 pixels resolution', '16 MP rear camera | 20 MP front facing camera', '3200 mAh Non-removable Li-Ion battery', 'Android 7.1 (Nougat) | MTK', 'Dual SIM (Nano-SIM, dual stand-by) (4G/3G/2G) | Wi-Fi 802.11 a/b/g/n | WiFi Direct | Hotspot | Bluetooth 4.2 | GPS | micro USB 2.0', 'Octa-core | Mali-G71 MP2 GPU', 'Fingerprint (rear-mounted) | Accelerometer | Proximity | Compass', 'oppo1.jpeg', 20, '19990.00'),
(29, 'apple1', 'apple', 'Apple iPhone 8 (Gold)', '2 GB RAM | 64/256 GB', '4.7 inch Retina HD Display | 1334 x 750 pixels resolution', '12 MP rear camera | 7 MP front facing camera', '1821 mAh Non-removable Li-Ion battery', 'iOS 11 (upgradable to iOS 11.1) | ', 'Nano-SIM (4G/3G/2G) | Wi-Fi 802.11 a/b/g/n/ac | Hotspot | Bluetooth 5.0 | GPS | NFC | USB 2.0', 'Hexa-core (4x Mistral)\r\nApple GPU (three-core graphics)', 'Fingerprint (front-mounted) | Accelerometer | Gyro | Proximity | Compass | Barometer', 'apple1.jpeg', 20, '73999.00'),
(30, 'infocus1', 'infocus', 'InFocus Turbo 5 plus (Glittering Gold)', '3 GB RAM | 32 GB ROM | Expandable Upto 64 GB ', '5.2 inch SD Display | 1280 x 720 pixels resolution', '13MP primary camera | 5MP front facing camera', '5000 mAH lithium-ion battery', 'Android v7.0 Nougat ', 'Dual SIM (4G/3G/2G) | GPS | WiFi 802.11 b/g/n | FM Radio | Bluetooth | Hotspot  | USB 2.0', '1.25 GHz MTK 6737 quad core processor | ARM9 GPU', 'G-senso | eCompass | Light sensor | Range sensor | Finger print sensor', 'infocus1.jpg', 20, '8999.00'),
(31, 'oneplus3', 'oneplus', 'OnePlus 3 (Soft Gold)', '6GB RAM | 64GB ROM', '5.5-inch HD display | 1920 x 1080 pixels', '16 MP Rear Camera | 8 MP Front Camera ', '3000 mAh Non-removable Li-Ion battery', 'Android 6.0.1 (Marshmallow), upgradable to 7.1.1 (Nougat) | Qualcomm MSM8996 Snapdragon 820', 'Dual SIM (Nano-SIM, dual stand-by) (4G/3G/2G) | Wi-Fi 802.11 a/b/g/n/ac | WiFi Direct | Hotspot | Bluetooth 4.2 | GPS | NFC | USB 2.0, Type-C 1.0\r\n', 'Quad-core (2x2.15 GHz Kryo & 2x1.6 GHz Kryo) | Adreno 530 GPU', 'Fingerprint (front-mounted) | Accelerometer | Gyro | Proximity | Compass ', 'oneplus3.jpg', 15, '18999.00'),
(32, 'apple2', 'apple', 'Apple iPhone 8 Plus (Space Grey)', '3 GB RAM | 64/256 GB', '5.5 inch Retina HD Display | 1920 x 1080 pixels resolution', 'Dual 12 MP rear camera | 7 MP front facing camera', '2691 mAh Non-removable Li-Ion battery', 'iOS 11 | Upgradable to iOS 11.1', 'Nano sim (4G/3G/2G) | Wi-Fi 802.11 a/b/g/n/ac | Hotspot | Bluetooth | GPS | NFC | USB 2.0 ', 'Hexa-core | 3-core apple GPU', 'Fingerprint (front-mounted) | Accelerometer | Gyro | Proximity | compass | Barometer', 'apple2.jpeg', 19, '69999.00'),
(33, 'samsung1', 'samsung', 'Samsung Galaxy S8 Plus (Midnight Black)', '6 GB RAM | 128 GB ROM | Expandable Upto 256 GB ', '6.2 inch Quad HD+ Display | 2960 x 1440 pixels resolution', '12MP Rear Camera | 8MP Front Camera ', '3500 mAh Non-removable Li-Ion battery', 'Android 7.0 (Nougat) | Qualcomm Snapdragon 835', 'Hybrid Dual SIM (dual stand-by) (4G/3G/2G) | Wi-Fi 802.11 a/b/g/n/ac | Wi-Fi Direct | Hotspot| Bluetooth 5.0 | GPS | NFC | USB 3.1', 'Octa-core 2.35 GHz Kryo | Adreno 540 ', 'Iris scanner | Fingerprint (rear-mounted) | Accelerometer | Gyro | Proximity | Compass | Barometer | Heart rate | SpO2', 'samsung1.jpeg', 7, '68000.00');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `product_code` varchar(60) NOT NULL,
  `rating` tinyint(1) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pin` int(6) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(25) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `address`, `city`, `pin`, `email`, `password`, `type`) VALUES
(1, 'Tejas', 'Jadhav', '1003 - Dheeraj Tower, Goregaon East', 'Mumbai', 400063, 'tjadhav95@gmail.com', 'tjadhav95', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`product_code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
