-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: database:3306
-- Generation Time: Aug 28, 2025 at 10:16 AM
-- Server version: 9.4.0
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cytech-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `serialNumber` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `serialNumber`, `name`, `description`) VALUES
(1, 'SKU-0001', 'Wireless Bluetooth Headphones', 'High-quality wireless headphones with noise cancellation.'),
(2, 'SKU-0002', 'Smartphone Model A', 'Popular smartphone with advanced camera features.'),
(3, 'SKU-0003', 'Electric Toothbrush Pro', 'Rechargeable electric toothbrush with multiple cleaning modes.'),
(4, 'SKU-0004', '4K UHD Smart TV', 'Ultra HD smart television with streaming apps.'),
(5, 'SKU-0005', 'Gaming Laptop Xtreme', 'High-performance laptop optimized for gaming.'),
(6, 'SKU-0006', 'Fitness Tracker Plus', 'Wearable fitness tracker with heart rate monitor.'),
(7, 'SKU-0007', 'Portable Bluetooth Speaker', 'Compact speaker with rich sound and deep bass.'),
(8, 'SKU-0008', 'Smart Home Assistant', 'Voice-controlled smart assistant for your home.'),
(9, 'SKU-0009', 'Wireless Charging Pad', 'Fast wireless charger compatible with all Qi devices.'),
(10, 'SKU-0010', 'Noise Cancelling Earbuds', 'True wireless earbuds with active noise cancelling.'),
(11, 'SKU-0011', '4K Action Camera', 'Waterproof action camera for extreme sports.'),
(12, 'SKU-0012', 'Robot Vacuum Cleaner', 'Automatic vacuum cleaner with smart mapping.'),
(13, 'SKU-0013', 'Smart Thermostat', 'Energy-saving thermostat controlled by app.'),
(14, 'SKU-0014', 'Bluetooth Car Adapter', 'Enables Bluetooth music streaming in older cars.'),
(15, 'SKU-0015', 'Instant Digital Camera', 'Compact camera with instant photo printing.'),
(16, 'SKU-0016', 'Smartwatch Series 5', 'Feature-packed smartwatch with GPS and LTE.'),
(17, 'SKU-0017', 'Wireless Gaming Mouse', 'High precision mouse with customizable buttons.'),
(18, 'SKU-0018', 'Laptop Cooling Pad', 'Ergonomic cooling pad to prevent overheating.'),
(19, 'SKU-0019', 'External SSD 1TB', 'Fast portable solid state drive with USB-C.'),
(20, 'SKU-0020', 'Smart Doorbell', 'Video doorbell with motion detection and app alerts.'),
(21, 'SKU-0021', 'Bluetooth Headphones Model B', 'Comfortable headphones with long battery life.'),
(22, 'SKU-0022', 'Smartphone Model B', 'Compact smartphone with excellent camera quality.'),
(23, 'SKU-0023', 'Electric Toothbrush Basic', 'Affordable electric toothbrush with timer.'),
(24, 'SKU-0024', 'LED Smart TV 55\"', 'Slim smart TV with vivid display colors.'),
(25, 'SKU-0025', 'Gaming Laptop Basic', 'Reliable laptop suitable for casual gaming.'),
(26, 'SKU-0026', 'Fitness Tracker Lite', 'Lightweight tracker with step and sleep monitoring.'),
(27, 'SKU-0027', 'Portable Speaker Mini', 'Small portable speaker with clear sound.'),
(28, 'SKU-0028', 'Smart Home Hub', 'Central hub to control smart home devices.'),
(29, 'SKU-0029', 'Wireless Charger Stand', 'Charging stand for phones and smartwatches.'),
(30, 'SKU-0030', 'True Wireless Earbuds Basic', 'Affordable earbuds with decent sound quality.'),
(31, 'SKU-0031', '4K Action Camera Pro', 'Professional-grade action camera with accessories.'),
(32, 'SKU-0032', 'Robot Vacuum Deluxe', 'Vacuum cleaner with advanced mapping features.'),
(33, 'SKU-0033', 'Smart Thermostat Advanced', 'Thermostat with learning capabilities.'),
(34, 'SKU-0034', 'Bluetooth Car Kit', 'Hands-free calling and music streaming car adapter.'),
(35, 'SKU-0035', 'Instant Film Camera', 'Camera with retro instant film printing.'),
(36, 'SKU-0036', 'Smartwatch Series 6', 'Latest generation smartwatch with health sensors.'),
(37, 'SKU-0037', 'Wireless Gaming Mouse Pro', 'Top-tier gaming mouse with RGB lighting.'),
(38, 'SKU-0038', 'Laptop Cooling Stand', 'Adjustable stand with dual fans.'),
(39, 'SKU-0039', 'External SSD 2TB', 'High-capacity SSD with ultra-fast transfer speeds.'),
(40, 'SKU-0040', 'Smart Doorbell Pro', 'Enhanced doorbell with facial recognition.'),
(41, 'SKU-0041', 'Bluetooth Headphones Premium', 'Premium headphones with studio-quality sound.'),
(42, 'SKU-0042', 'Smartphone Model C', 'Flagship smartphone with edge display.'),
(43, 'SKU-0043', 'Electric Toothbrush Advanced', 'Brush with pressure sensor and app integration.'),
(44, 'SKU-0044', 'LED Smart TV 65\"', 'Large screen smart TV with HDR10+ support.'),
(45, 'SKU-0045', 'Gaming Laptop Ultra', 'Ultra-high performance laptop with RTX GPU.'),
(46, 'SKU-0046', 'Fitness Tracker Advanced', 'Tracker with blood oxygen and ECG sensors.'),
(47, 'SKU-0047', 'Portable Speaker Pro', 'Speaker with waterproof design and stereo sound.'),
(48, 'SKU-0048', 'Smart Home Voice Hub', 'Voice-controlled home automation hub.'),
(49, 'SKU-0049', 'Wireless Charger Duo', 'Charge two devices simultaneously.'),
(50, 'SKU-0050', 'True Wireless Earbuds Pro', 'Earbuds with superior noise cancellation.'),
(51, 'SKU-0051', '4K Action Camera Ultra', 'Top-end camera with 8K recording.'),
(52, 'SKU-0052', 'Robot Vacuum Ultra', 'Robot vacuum with self-emptying bin.'),
(53, 'SKU-0053', 'Smart Thermostat Elite', 'Thermostat with advanced AI features.'),
(54, 'SKU-0054', 'Bluetooth Car Adapter Pro', 'Car adapter with multi-device support.'),
(55, 'SKU-00555', 'Instant Camera Deluxe', 'Instant camera with color filters.'),
(56, 'SKU-0056', 'Smartwatch Series 7', 'Latest watch with improved battery life.'),
(57, 'SKU-0057', 'Wireless Gaming Mouse Elite', 'Ergonomic mouse with macro keys.'),
(58, 'SKU-0058', 'Laptop Cooling Master', 'Cooling pad with RGB lighting and USB ports.'),
(59, 'SKU-0059', 'External SSD 4TB', 'Massive storage SSD for professionals.'),
(60, 'SKU-0060', 'Smart Doorbell Elite', 'Doorbell with AI-based threat detection.'),
(61, 'SKU-0061', 'Bluetooth Headphones Ultimate', 'Ultimate headphones with 3D sound.'),
(62, 'SKU-0062', 'Smartphone Model X', 'Experimental phone with foldable screen.'),
(63, 'SKU-0063', 'Electric Toothbrush Ultimate', 'Ultimate toothbrush with AI brushing coach.'),
(64, 'SKU-0064', 'LED Smart TV 75\"', 'Giant smart TV with Dolby Vision.'),
(65, 'SKU-0065', 'Gaming Laptop Titan', 'Top-tier gaming beast with liquid cooling.'),
(66, 'SKU-0066', 'Fitness Tracker Ultra', 'Full health suite with skin temperature sensor.'),
(67, 'SKU-0067', 'Portable Speaker Max', 'Max volume portable speaker with bass boost.'),
(68, 'SKU-0068', 'Smart Home Central Hub', 'Centralized smart home control system.'),
(69, 'SKU-0069', 'Wireless Charger Max', 'Fast charger with cooling system.'),
(70, 'SKU-0070', 'True Wireless Earbuds Ultimate', 'True wireless earbuds with adaptive EQ.'),
(71, 'SKU-0071', '4K Action Camera Max', 'Max resolution action camera with stabilization.'),
(72, 'SKU-0072', 'Robot Vacuum Max', 'Robot vacuum with mop and UV sterilization.'),
(73, 'SKU-0073', 'Smart Thermostat Max', 'Max AI learning thermostat.'),
(74, 'SKU-0074', 'Bluetooth Car Adapter Max', 'Max range car adapter with multiple profiles.'),
(75, 'SKU-0075', 'Instant Camera Max', 'Max quality instant camera with digital backup.'),
(76, 'SKU-0076', 'Smartwatch Series 8', 'Newest series with satellite connectivity.'),
(77, 'SKU-0077', 'Wireless Gaming Mouse Max', 'Max DPI and customizable weights.'),
(78, 'SKU-0078', 'Laptop Cooling Ultra', 'Ultra cooling pad with silent fans.'),
(79, 'SKU-0079', 'External SSD 8TB', 'Massive SSD for enterprise workloads.'),
(80, 'SKU-0080', 'Smart Doorbell Max', 'Max security doorbell with video analytics.'),
(81, 'SKU-0081', 'Bluetooth Headphones Pro Plus', 'Pro plus headphones with balanced audio.'),
(82, 'SKU-0082', 'Smartphone Model Z', 'Flagship phone with AI-powered camera.'),
(83, 'SKU-0083', 'Electric Toothbrush Pro Plus', 'Pro plus model with smart timers.'),
(84, 'SKU-0084', 'LED Smart TV 85\"', 'Massive smart TV with premium features.'),
(85, 'SKU-0085', 'Gaming Laptop Max', 'Max power gaming laptop with RGB keyboard.'),
(86, 'SKU-0086', 'Fitness Tracker Pro Max', 'Pro max health tracker with multiple sensors.'),
(87, 'SKU-0087', 'Portable Speaker Ultra', 'Ultra durable speaker with long battery.'),
(88, 'SKU-0088', 'Smart Home Master Hub', 'Master control hub for smart homes.'),
(89, 'SKU-0089', 'Wireless Charger Pro Max', 'Pro max wireless charging station.'),
(90, 'SKU-0090', 'True Wireless Earbuds Max', 'Max comfort true wireless earbuds.'),
(91, 'SKU-0091', '4K Action Camera Pro Max', 'Pro max 8K action camera with drone compatibility.'),
(92, 'SKU-0092', 'Robot Vacuum Pro Max', 'Pro max vacuum with advanced sensors.'),
(93, 'SKU-0093', 'Smart Thermostat Pro Max', 'Professional smart thermostat with remote control.'),
(94, 'SKU-0094', 'Bluetooth Car Adapter Ultra', 'Ultra range car adapter with voice control.'),
(95, 'SKU-0095', 'Instant Camera Pro Max', 'Pro max instant camera with augmented reality features.'),
(96, 'SKU-0096', 'Smartwatch Series 9', 'Newest smartwatch with health insights.'),
(97, 'SKU-0097', 'Wireless Gaming Mouse Ultra', 'Ultra-precise gaming mouse with customizable RGB.'),
(98, 'SKU-0098', 'Laptop Cooling Master Pro', 'Advanced cooling system with noise reduction.'),
(99, 'SKU-0099', 'External SSD 16TB', 'Extreme capacity SSD for data-intensive tasks.'),
(100, 'SKU-0100', 'Smart Doorbell Ultra', 'Ultra-secure doorbell with AI-powered face recognition.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
