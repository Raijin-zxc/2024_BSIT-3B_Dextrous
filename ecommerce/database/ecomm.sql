-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2024 at 04:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(9, 9, 7, 1),
(10, 9, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Laptops', 'laptop'),
(2, 'Desktop', 'desktop'),
(3, 'mouse', 'mouse'),
(4, 'Keyboard', 'keyboard'),
(5, 'Headset', 'headset'),
(6, 'Chair', 'chair');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(30, 2, 'Legion Tower 5', '<p>&bull; Future-ready processing &amp; graphics for gaming</p>\r\n\r\n<p>&bull;Power to spare with AMD Ryzen&trade; 7000 Series CPUs</p>\r\n\r\n<p>&bull;Up to NVIDIA&reg; GeForce RTX&trade; 40 Series graphics</p>\r\n\r\n<p>&bull;Extreme air cooling &amp; added vents for long sessions</p>\r\n\r\n<p>&bull;Updated, battlestation-inspired 26L tower chassis</p>\r\n\r\n<p>&bull;Colorful RGB lighting &amp; glass side panel</p>\r\n\r\n<p>&bull;Play over 100 high-quality PC games with your new Legion PC and 3 free months of Xbox Game Pass</p>\r\n', 'legion-tower-5', 800.11, 'legion-tower-5_1715867591.png', '0000-00-00', 0),
(31, 2, 'LOQ Tower 17IRR9', '<p>&bull;Fast-paced gaming powered by Intel&reg; Core&trade; processors &amp; NVIDIA&reg; GeForce RTX&trade;M graphics</p>\r\n\r\n<p>&bull; Stay ahead of the game with upgradeable &amp; expandable capabilities</p>\r\n\r\n<p>&bull; Game in style &amp; silence with the sleek dual-tone colorway chassis offering ample ventilation</p>\r\n\r\n<p>&bull; Boost your gaming prowess by pairing it with Lenovo Gaming accessories for the ultimate setup.</p>\r\n', 'loq-tower-17irr9', 834.9, 'loq-tower-17irr9_1715867973.png', '0000-00-00', 0),
(32, 2, 'Think Vision Monitor', '<p>&bull; 3-side NearEdgeless</p>\r\n\r\n<p>&bull; Immersive 34-inch WQHD curved display</p>\r\n\r\n<p>&bull; 3440 x 1440 resolution lets you take in all the finer details.</p>\r\n\r\n<p>&bull; 1500R curvature delivers a consistent focal length across the screen.</p>\r\n\r\n<p>&bull; Cares for your vision too with Natural Low Blue Light technology.</p>\r\n\r\n<p>&bull; HDMI and DP ports, modular VolP support for a video conferencing or audio with Al-enhanced MC60 and MS30 ports.</p>\r\n', 'think-vision-monitor', 608.78, 'think-vision-monitor_1715868435.png', '0000-00-00', 0),
(33, 1, 'Legion 5i', '<p>&bull; Play with purpose on the latest AMD Ryzen&trade; 6000 Series processors.</p>\r\n\r\n<p>&bull; Enjoy AAA graphics with NVIDIA&reg; GeForce RTX&trade; 30 series GPUs.</p>\r\n\r\n<p>&bull; Experience next-gen performance from DDR5 memory.&nbsp;</p>\r\n\r\n<p>&bull; 15.6-inch screen with up to WQHD resolution and a 165Hz refresh rate.</p>\r\n\r\n<p>&bull; Up to Windows 11 Pro for a seamless gaming experience.</p>\r\n', 'legion-5i', 834.9, 'legion-5i_1715868387.png', '2024-05-19', 1),
(34, 1, 'Legion 7i', '<p>&bull; Intel Core i7/i9 CPUs, NVIDIA GeForce RTX graphics for seamless gaming.</p>\r\n\r\n<p>&bull; Advanced cooling system with vapor chamber tech for prolonged gaming sessions.</p>\r\n\r\n<p>&bull; High-refresh-rate display (up to 4K) with NVIDIA G-SYNC support.</p>\r\n\r\n<p>&bull; Personalize with customizable RGB lighting on keyboard and chassis.</p>\r\n\r\n<p>&bull; Premium build with aluminum/magnesium alloy for durability and sleek look.</p>\r\n', 'legion-7i', 974.05, 'legion-7i_1715868374.png', '0000-00-00', 0),
(35, 1, 'Legion Pro 5i', '<p>&bull; High-performance AMD Ryzen processors for gaming and multitasking.</p>\r\n\r\n<p>&bull; 16&quot; Quad HD display with 165Hz refresh rate for crisp visuals.</p>\r\n\r\n<p>&bull; NVIDIA GeForce RTX Graphics RTX graphics cards for stunning visuals and ray tracing.</p>\r\n\r\n<p>&bull; Legion Coldfront 3.0 tech keeps temperatures low during gaming.</p>\r\n\r\n<p>&bull; Customizable RGB keyboard for personalized gaming setup.</p>\r\n', 'legion-pro-5i', 974.05, 'legion-pro-5i_1715868361.png', '0000-00-00', 0),
(36, 4, 'Kumara K552', '<p>&bull; Tenkeyless layout for space-saving convenience.</p>\r\n\r\n<p>&bull; Utilizes durable mechanical switches for precise and tactile feedback.</p>\r\n\r\n<p>&bull; Customizable RGB backlighting with various lighting effects.</p>\r\n\r\n<p>&bull; Solid metal frame ensures durability and stability during intense gaming sessions.</p>\r\n\r\n<p>&bull; Easy to set up with plug-and-play functionality, no software required.</p>\r\n', 'kumara-k552', 24.35, 'kumara-k552_1715868413.png', '0000-00-00', 0),
(37, 4, 'Phantom Elite', '<p>&bull; Detachable USB-C Coiled Cable</p>\r\n\r\n<p>&bull; Pre-installed w/ Tecware Wraith Switches Double-Shot PBT Keycaps</p>\r\n\r\n<p>&bull; V3 Stabilizers (Clipped &amp; Lubed)</p>\r\n\r\n<p>&bull; Universal Hotswap 5-pin Switch Sockets</p>\r\n\r\n<p>&bull; Wired &amp; Wireless (BT + 2.4Ghz + USB-C)</p>\r\n\r\n<p>&bull; Carbon Steel Plate + ABS Case</p>\r\n\r\n<p>&bull; Sound Dampening Foam + Fillers</p>\r\n', 'phantom-elite', 53.92, 'phantom-elite_1715869013.png', '0000-00-00', 0),
(38, 4, 'Phantom RGB', '<p>&bull; 16.8 Million RGB Color Lighting</p>\r\n\r\n<p>&bull; &#39;Floating Key&#39; Design</p>\r\n\r\n<p>&bull; 50 million Reliable Keystrokes</p>\r\n\r\n<p>&bull; 11 Multimedia Keys</p>\r\n\r\n<p>&bull; 18 Pre-set Lighting Modes</p>\r\n\r\n<p>&bull; Long Lifespan SMD LEDs Windows Lock Feature</p>\r\n\r\n<p>&bull; Braided 1.8m USB Cable</p>\r\n\r\n<p>&bull; Kevboard Leas with Rubber Feet</p>\r\n', 'phantom-rgb', 36.53, 'phantom-rgb_1715869028.png', '0000-00-00', 0),
(39, 4, 'V500 Pro', '<p>&bull; Mechanical keys</p>\r\n\r\n<p>&bull; Key life of up to 60 million operations</p>\r\n\r\n<p>&bull; Anti-ghosting (all keys are conflict-free)</p>\r\n\r\n<p>&bull; Spill-resistant design</p>\r\n\r\n<p>&bull; Individually backlit keys</p>\r\n\r\n<p>&bull; Aluminum alloy surface cover</p>\r\n', 'v500-pro', 26.09, 'v500-pro_1715869053.png', '0000-00-00', 0),
(40, 3, 'X17 Achilles RGB', '<p>&bull; PixArt 3325 Gaming Sensor</p>\r\n\r\n<p>&bull; Up to 100 IPS / 20G Acceleration</p>\r\n\r\n<p>&bull; On-the-fly Adjustable DPI 200-10,000 DPI</p>\r\n\r\n<p>&bull; 1000Hz Polling Rate</p>\r\n\r\n<p>&bull; Huano 20 Million Clicks Lifetime</p>\r\n\r\n<p>&bull; RGB 16.8 Million Customizable Color Options</p>\r\n\r\n<p>&bull; Seven Independently Programmable Buttons</p>\r\n\r\n<p>&bull; 1.8m Nylon Braided USB Cable</p>\r\n\r\n<p>&bull; Size: 125mm x 62mm x 42mm</p>\r\n', 'x17-achilles-rgb', 17.39, 'x17-achilles-rgb_1715868804.png', '2024-05-30', 1),
(41, 3, 'FANTECH MVP-862 Commander', '<p>&bull; RGB SPECTRUM &ndash; with 10 spectrum mode press</p>\r\n\r\n<p>&bull; FN+ ins to change mode</p>\r\n\r\n<p>&bull; ALL KEY ANTI GHOST &ndash; For etreme anti -ghosting</p>\r\n\r\n<p>&bull; MECHANICAL SWITCH &ndash; by Outume</p>\r\n\r\n<p>&bull; REPACEABLE SWITCH &ndash; damage/error free</p>\r\n\r\n<p>&bull; DUAL SHOT INJECTION- No moretearing Letter</p>\r\n\r\n<p>&bull; METAL BODY &ndash; For extreme durability</p>\r\n\r\n<p>&bull; RGB mechanical gaming keyboard</p>\r\n\r\n<p>&bull; Number of keys : 104 keys</p>\r\n', 'fantech-mvp-862-commander', 22.61, 'fantech-mvp-862-commander_1715868461.png', '0000-00-00', 0),
(42, 3, 'V3 Ultralight', '<p>&bull; Ergonomic Right Hand Recommeded for Palm Grip</p>\r\n\r\n<p>&bull; Ultra-light Weight 55g</p>\r\n\r\n<p>&bull; Split Click Shell Rigid Shell Structure, Removed all holes</p>\r\n\r\n<p>&bull; Fast and Double Click Free OPTICAL SWITCH &bull; Pulsar Blue Encoder</p>\r\n\r\n<p>&bull; Super Smooth ballbearing wheels</p>\r\n\r\n<p>&bull; Latest Flagship PAW3395 Sensor</p>\r\n\r\n<p>&bull; Fully customizable sensor setting</p>\r\n\r\n<p>&bull; Fully customizable keys and macros</p>\r\n\r\n<p>&bull; Superflex Paracord Cable</p>\r\n\r\n<p>&bull; Ultra Durable</p>\r\n\r\n<p>&bull; Lag free 2.4GHz Wireless technology</p>\r\n\r\n<p>&bull; Up to 100 hours battery life, &plusmn;10% at 1000Hz polling rate. Actual battery life may vary depending on user environment.</p>\r\n', 'v3-ultralight', 24.35, 'v3-ultralight_1715868679.png', '0000-00-00', 0),
(43, 3, 'UX1 Hero RGB', '<p>&bull; PixArt 3389 Gaming Sensor Up to 400 IPS / 50G Acceleration</p>\r\n\r\n<p>&bull; On-the-fly Adjustable DPI 50-16,000 DPI 1000Hz Polling Rate</p>\r\n\r\n<p>&bull; Omron 50 Million Clicks Lifetime</p>\r\n\r\n<p>&bull; RGB 16.8 Million Customizable Color Options</p>\r\n\r\n<p>&bull; Eight Independently Programmable Buttons 1.8m Nylon Braided USB Cable</p>\r\n\r\n<p>&bull; Size: 130mm x 70mm x 40mm</p>\r\n', 'ux1-hero-rgb', 20.87, 'ux1-hero-rgb_1715868564.png', '0000-00-00', 0),
(44, 3, 'UX3 Leviosa RGB', '<p>&bull; Leviosa RGB Gaming Mouse</p>\r\n\r\n<p>&bull; Ergonomic design for comfort during long gaming sessions</p>\r\n\r\n<p>&bull; Customizable RGB lighting for a personalized aesthetic</p>\r\n\r\n<p>&bull; High-precision sensor for accurate tracking</p>\r\n\r\n<p>&bull; Programmable buttons for customizable gaming shortcuts</p>\r\n\r\n<p>&bull; Durable construction for long-lasting performance</p>\r\n', 'ux3-leviosa-rgb', 24.35, 'ux3-leviosa-rgb_1715869460.png', '0000-00-00', 0),
(45, 6, 'Alpha GC-184', '<p>&bull; Lumbar Support</p>\r\n\r\n<p>&bull; Class 4 Hydraulic Piston</p>\r\n\r\n<p>&bull; Angel Transfer:135-180 Degree</p>\r\n\r\n<p>&bull; Material: PU Leather</p>\r\n\r\n<p>&bull; Size:71<em>60</em>125cm</p>\r\n\r\n<p>&bull; Height Adjustable Range:125-132cm</p>\r\n\r\n<p>&bull; Armrest:1 Direction</p>\r\n\r\n<p>&bull; Color: Black</p>\r\n', 'alpha-gc-184', 48.7, 'alpha-gc-184_1715869289.png', '2024-05-21', 1),
(46, 6, 'Alpha GC-181', '<p>&bull; Ergonomic High Backseat Design WITH WHEELS top Choice brand<br />\r\n&bull; CLASS 4 HYDRAULIC PISTON (Top of the line)<br />\r\nNylone Base</p>\r\n\r\n<p>&bull; Easy Back rest Recline Can Handle Upto 200kg</p>\r\n', 'alpha-gc-181', 76.53, 'alpha-gc-181_1715869279.png', '0000-00-00', 0),
(47, 6, 'NRO-5 Starship', '<p>&bull; Premium PU Leather natural Styling</p>\r\n\r\n<p>&bull; Cold-Cure moulded unltra high density foam.</p>\r\n\r\n<p>&bull; Density Index 4.1</p>\r\n\r\n<p>&bull; Neck and Back Support</p>\r\n\r\n<p>&bull; Recliner Angle 160 Degrees adjustable</p>\r\n\r\n<p>&bull; Arm Rest ultra-versitile 4 directional movement mechanism</p>\r\n\r\n<p>&bull; Chiar support Butterfly Swivel and Tilt</p>\r\n', 'nro-5-starship', 64.36, 'nro-5-starship_1715869385.png', '0000-00-00', 0),
(48, 6, 'T3 Rush', '<p>&bull; Inspired by Performance Motorsport</p>\r\n\r\n<p>&bull; Padded Neck Cushion and Memory Foam Lumbar Support</p>\r\n\r\n<p>&bull; Embedded Steel Frame</p>\r\n\r\n<p>&bull; 4D Armrests: Adjust the armrests in any direction 100mm of Adjustable Seat Height:</p>\r\n\r\n<p>&bull; 180 degree Reclining Lay-Flat Seat Back</p>\r\n\r\n<p>&bull; Easy Assembly Process: Get set up and seated fast. 65mm Dual Wheel Casters.</p>\r\n', 't3-rush', 78.27, 't3-rush_1715869429.png', '0000-00-00', 0),
(49, 6, 'T-Pro 2', '<p>&bull; Solids parts</p>\r\n\r\n<p>&bull; Solid cushioning</p>\r\n\r\n<p>&bull; Great wheels</p>\r\n\r\n<p>&bull; Comfy lumbar and neck pillows</p>\r\n', 't-pro-2', 74.79, 't-pro-2_1715869410.png', '0000-00-00', 0),
(50, 5, 'HG16 Captain 7.1', '<p>&bull; VIRTUAL 7.1 GAMING HEADSET</p>\r\n\r\n<p>&bull; Medium Size Around Ear</p>\r\n\r\n<p>&bull; 40mm Driver Unit</p>\r\n\r\n<p>&bull; LED: RGB iIIumination</p>\r\n\r\n<p>&bull; Plug Type: USB</p>\r\n\r\n<p>&bull; Cable Length: 2.0m</p>\r\n', 'hg16-captain-7-1', 50.44, 'hg16-captain-7-1_1715868535.png', '2024-05-29', 1),
(51, 5, 'TECWARE Q5', '<p>&bull; 5-Band Custom Equalizer Settings</p>\r\n\r\n<p>&bull; Wideband Microphone w/ Gain Control</p>\r\n\r\n<p>&bull; In-line Volume Control / Mic Mute</p>\r\n\r\n<p>&bull; Closed-Back Design</p>\r\n\r\n<p>&bull; Software-controlled RGB Illumination</p>\r\n\r\n<p>&bull; Quick &amp; Convenient Control</p>\r\n\r\n<p>&bull; Mesh Earcups</p>\r\n', 'tecware-q5', 17.39, 'tecware-q5_1715869169.png', '0000-00-00', 0),
(52, 5, 'Rexus F22 Sparta', '<p>&bull; Connection type: mini jack 3,5mm + USB for PC</p>\r\n\r\n<p>&bull; Driver diameter: 50mm</p>\r\n\r\n<p>&bull; Frequency Range: 20HZ-20KHZ</p>\r\n\r\n<p>&bull; Microphone sensitivity: -38dB &plusmn;3dB</p>\r\n\r\n<p>&bull; 7.1 sound (works only on PC running Windows) &bull;Compatible with PC, playstation 4,playstation 5,xboxone,xbox series X/S,switch</p>\r\n', 'rexus-f22-sparta', 34.79, 'rexus-f22-sparta_1715869139.png', '0000-00-00', 0),
(53, 5, 'Rexus F30', '<p>&bull; F30 Rexus Gaming Headset</p>\r\n\r\n<p>&bull; Immersive sound quality for gaming and multimedia</p>\r\n\r\n<p>&bull; Comfortable over-ear design for extended wear</p>\r\n\r\n<p>&bull; Adjustable microphone for clear communication</p>\r\n\r\n<p>&bull; Compatible with multiple gaming platforms</p>\r\n\r\n<p>&bull; Durable build for long-lasting use</p>\r\n', 'rexus-f30', 29.57, 'rexus-f30_1715869154.png', '0000-00-00', 0),
(54, 5, 'ONIKUMA X7', '<p>&bull;&nbsp;Dust-Proof,Long-Life,Safe and Harmless Material</p>\r\n\r\n<p>&bull;&nbsp;Extra-Lightweight,Quite Comfort &amp;Breathable Ear Pad</p>\r\n\r\n<p>&bull;&nbsp;Simple&amp;Classical Outlook Design</p>\r\n\r\n<p>&bull;&nbsp;Great Flexibility &amp; Strong Memory Recovery Headband Structure</p>\r\n\r\n<p>&bull;&nbsp;360 degree Omni-Directional Noise Reduction&amp; High Definition Microphone</p>\r\n\r\n<p>&bull;&nbsp;Rotary Earcup,Great Rotating Microphone Holder</p>\r\n\r\n<p>&bull;&nbsp;Line-In Volume Control,Microphone Mute Button</p>\r\n', 'onikuma-x7', 24.35, 'onikuma-x7_1715869119.png', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2024-05-01'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2024-05-13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Denmildz', 'Da', '', '', 'pfp.jpg', 1, '', '', '2024-05-02'),
(18, 'den@gmail.com', '$2y$10$eIoQ6BDATURNbrDV1nWzh.tii48FhtE9feogdwexPV8lI.sX17CzC', 0, 'denmildz', 'da', '', '', 'pfp.jpg', 1, 'BpkSaiwgqUjs', '', '2024-05-15'),
(23, 'da@gmail.com', '$2y$10$MmR8xxr9yd.k6dCmCKy6Ju4aVwgqaazkPFhm9LVH2hnb3XcJgfffm', 0, 'den', 'da', '', '', '', 0, 'LXAOyo23YUvC', '', '2024-05-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
