-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Aug 15, 2016 at 07:41 AM
-- Server version: 5.5.38
-- PHP Version: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `socks_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `Activity`
--

CREATE TABLE `Activity` (
`activityID` int(11) NOT NULL,
  `activityNAME` varchar(64) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `Activity`
--

INSERT INTO `Activity` (`activityID`, `activityNAME`) VALUES
(1, 'Marathon'),
(2, 'Running/Training'),
(3, 'Golfing'),
(4, 'Hiking/Camping'),
(5, 'Recovery'),
(6, 'Snow'),
(7, 'Tennis'),
(8, 'Walking'),
(9, 'Baseball'),
(10, 'Basketball'),
(11, 'Football'),
(12, 'Bike'),
(13, 'Hunting/Fishing');

-- --------------------------------------------------------

--
-- Table structure for table `Brands`
--

CREATE TABLE `Brands` (
`brandID` int(11) NOT NULL,
  `brandNAME` varchar(64) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `Brands`
--

INSERT INTO `Brands` (`brandID`, `brandNAME`) VALUES
(1, 'Balega'),
(2, 'asics'),
(3, 'darn tough'),
(4, 'feetures'),
(5, 'thorlo'),
(6, 'smartwool'),
(7, 'world''s softest'),
(8, 'injinji'),
(9, 'wigwam'),
(10, 'Drymax'),
(11, '2XU');

-- --------------------------------------------------------

--
-- Table structure for table `Color`
--

CREATE TABLE `Color` (
`colorID` int(11) NOT NULL,
  `colorNAME` varchar(64) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `Color`
--

INSERT INTO `Color` (`colorID`, `colorNAME`) VALUES
(1, 'navy'),
(2, 'black'),
(3, 'white'),
(4, 'gray'),
(5, 'brown'),
(6, 'green'),
(7, 'pink'),
(8, 'oatmeal');

-- --------------------------------------------------------

--
-- Table structure for table `Cushion`
--

CREATE TABLE `Cushion` (
`cushionID` int(11) NOT NULL,
  `cushionNAME` varchar(64) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `Cushion`
--

INSERT INTO `Cushion` (`cushionID`, `cushionNAME`) VALUES
(1, 'no cushion'),
(2, 'ultra light'),
(3, 'light'),
(4, 'medium'),
(5, 'heavy'),
(6, 'extra heavy');

-- --------------------------------------------------------

--
-- Table structure for table `Feature`
--

CREATE TABLE `Feature` (
`featureID` int(11) NOT NULL,
  `featureNAME` varchar(64) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `Feature`
--

INSERT INTO `Feature` (`featureID`, `featureNAME`) VALUES
(1, 'bug protection'),
(2, 'moisture wicking'),
(3, 'planter fascitis'),
(4, 'reflective yarn'),
(5, 'anti-odor'),
(6, 'anti-blister'),
(7, 'spf prtoection'),
(8, 'quick drying'),
(9, 'water resistant');

-- --------------------------------------------------------

--
-- Table structure for table `Gender`
--

CREATE TABLE `Gender` (
`genderID` int(11) NOT NULL,
  `genderNAME` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `Gender`
--

INSERT INTO `Gender` (`genderID`, `genderNAME`) VALUES
(1, 'Male'),
(2, 'Female'),
(3, 'Unisex'),
(4, 'Boys'),
(5, 'Girls');

-- --------------------------------------------------------

--
-- Table structure for table `Height`
--

CREATE TABLE `Height` (
`heightID` int(11) NOT NULL,
  `heightNAME` varchar(64) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `Height`
--

INSERT INTO `Height` (`heightID`, `heightNAME`) VALUES
(1, 'PED'),
(2, 'No Show'),
(3, 'Roll Top'),
(4, 'Tab'),
(5, 'Mini Crew'),
(6, 'Crew'),
(7, 'Boot'),
(8, 'Knee High'),
(9, 'Above the Knee');

-- --------------------------------------------------------

--
-- Table structure for table `Material`
--

CREATE TABLE `Material` (
`materialID` int(11) NOT NULL,
  `materialNAME` varchar(64) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `Material`
--

INSERT INTO `Material` (`materialID`, `materialNAME`) VALUES
(1, 'Acrylic'),
(2, 'Bamboo'),
(3, 'cotton'),
(4, 'Merino Wool'),
(5, 'coolmax'),
(6, 'Nylon'),
(7, 'Polyester'),
(8, 'Drynamix');

-- --------------------------------------------------------

--
-- Table structure for table `socks`
--

CREATE TABLE `socks` (
`sockID` int(11) NOT NULL,
  `sockNAME` varchar(64) NOT NULL,
  `sockIMG` varchar(64) NOT NULL,
  `sockIMGALT` varchar(64) NOT NULL,
  `sockPRICEACTIVE` float NOT NULL,
  `sockPRICELIST` float NOT NULL,
  `sockCODE` varchar(64) NOT NULL,
  `sockDESC` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `socks`
--

INSERT INTO `socks` (`sockID`, `sockNAME`, `sockIMG`, `sockIMGALT`, `sockPRICEACTIVE`, `sockPRICELIST`, `sockCODE`, `sockDESC`) VALUES
(1, 'Balega Hidden Comfort Socks - White BAL8025', 'img/8025.0200.jpg', 'Balega 8025 White', 10.49, 12, 'BAL8025_0200_wht', 'Balega’s Hidden Comfort socks are designed for athletes who want both a lightweight feel and superior protection.  Ideal for running, cycling, hiking and fitness walking, the Hidden Comfort 8025 style is Balega’s number one selling style and the number one selling specialty running sock in the country.'),
(2, 'Balega Hidden Contour Socks - White BAL8196', 'img/8196_wht.jpg', 'Balega 8196 White', 11.95, 14, 'BAL8196_0200_wht', 'Balega’s Hidden Contour socks are designed for athletes who want a sock that molds perfectly to their feet.  Ideal for running, cycling, hiking and fitness walking, the Hidden Contour style has uniquely positioned elastic bands that ensure no sock movement.'),
(3, 'Darn Tough Mens Hiking Micro Crew Cushion Socks - Black DT1466', 'img/DT1466_blk.jpg', 'Darn Tough DT1466 Black', 19.95, 19.95, 'DT1466_blk', 'The Men''s Micro Crew Cushion socks from Darn Tough are the perfect year round hiking socks. The merino wool construction and 3/4 crew height allow these socks to keep your feet cool in the summer and toasty in the winter. '),
(4, 'Darn Tough Mens Standard Issue Mid-Calf Light Socks - Tan DT1480', 'img/1480_tan.jpg', 'Darn Tough DT1480 Tan', 18.95, 18.95, 'DT1480_tan', 'Aha! Everything you love about Darn Tough in a dress sock. The Men''s Dress Crew Light Socks by Darn Tough are made of 100% fine gauge Merino Wool to keep your feet warm and comfy and dry, and handsome. These 1480 dress socks have a reinforced heel and toe, and ring toe construction for an invisible seam so they''re comfortable for your longest, dressiest adventures. And of course they''re backed by Darn Tough''s Unconditional Lifetime Guarantee.\r\n'),
(5, 'Darn Tough Ladies Hiking Micro Crew Cushion Socks - Slate DT1903', 'img/DT1903_slt.jpg', 'Darn Tough Slate DT1903', 19.95, 19.95, 'DT1904_1903_slt', 'The Micro Crew Cushion socks from Darn Tough are the reverse mullets of the sock world: party on the top and business on the bottom. The 1904 style comes in an array of bold striped patterns, while the 1903 style has a more staid, dual color pattern. Both styles are among the best sellers for Darn Tough.'),
(6, 'Darn Tough Ladies Good Witch Light Socks - Piper Purple DT1495', 'img/1495_ppl.jpg', 'Darn Tough DT1495 Piper Purple', 16.96, 19.95, 'DT1495_ppu', 'The Good Witch Crew Light socks are Darn Tough''s number one selling women''s lifestyle sock. Like all good witch socks, these stylish pairs have colorful stripes and a cozy merino wool construction. Whether you are saving Dorothy or reading a book by a fire, these socks are the perfect whimsical companion.'),
(7, 'Injinji Sport Original Weight Crew Toesocks - Black IN052270', 'img/052270_blk.jpg', 'Injinji IN052270 Black', 10, 10, 'IN052270_blk', 'The Injinji Sport Crew Toesock is a sock with a mission – to enhance your performance, no matter what sport you''re training in. The Performance Sport Crew Toesock is Injinji''s most versatile, with moderate cushioning and all the advantages of a five-toed sock, it''s woven with Coolmax fibers, to keep your feet cool dry and comfortable, whether you''re focused on one sport, or passionate about many.'),
(8, 'Smartwool Women''s Margarita Socks - Black Multi Stripe SW717', 'img/SW717_857.jpg', 'Smartwool SW717 Black', 19.95, 19.95, 'SW717_857_blk', 'Smartwool''s Margarita Socks for Women offer the functionality of SmartWool''s outdoor line but without the bulk. The SW717 Margarita Socks feature a soft top, WOW Technology (adds comfort and durability), and the natural benefits of top-quality Merino wool all wrapped in a multi-stripe pattern.'),
(9, 'Smartwool Hide and Seek Sock - Light Gray Heather SW705', 'img/SW705_833.jpg', 'SW705 Gray', 12.95, 12.95, 'SW705_833_gry', 'The Hide and Seek Sock from Smartwool is great for those days when your ensemble mandates (gasp) your socks NOT to show. The SW705 Hide and Seek sock protects you from blisters and stinky, sweaty feet that are the result of not wearing socks with your shoes, while still being fashionably low-profile.'),
(10, 'Drymax Dress Over the Calf Socks - Black DR5004', 'img/5004.jpg', 'Drymax DR5004', 13.5, 15, 'DR50_04_blk', 'The Drymax Dress Over The Calf sock is a medium density sock. These socks are made with the Drymax dual-layer design, which utilizes an ultra-absorbent inner layer that wicks sweat and water to a moisture attracting outer layer. These two layers combine to keep moisture off of the foot, resulting in a dryer, more comfortable feel.'),
(11, 'Drymax Dress Crew Socks - Black DR5002', 'img/5002.jpg', 'Drymax DR5002', 11.25, 12.5, 'DR50_02_blk', 'The Drymax Dress Crew sock is a medium density sock. These socks are made with the Drymax dual-layer design, which utilizes an ultra-absorbent inner layer that wicks sweat and water to a moisture attracting outer layer. These two layers combine to keep moisture off of the foot, resulting in a dryer, more comfortable feel.\r\n'),
(12, 'Drymax Running Mini Crew Socks - White DR0773', 'img/DR0773_wht.jpg', 'Drymax White DR0773', 10.58, 11.75, 'DR0773_wht', 'The Drymax Running Mini Crew sock is a medium density multi-purpose running sock for all weather conditions. The run mini crew socks are made with the Drymax dual-layer design, which utilizes an ultra-absorbent inner layer that wicks sweat and water to a moisture attracting outer layer. These two layers combine to keep moisture off of the foot, resulting in a dryer, more comfortable feel.'),
(13, 'Drymax Running No Show Tab Socks - White DR0753', 'img/0753_White.jpg', 'Drymax 0753 White', 10.35, 11.5, 'DR075_3_wht', 'The Drymax Running No Show Tab sock is a medium density multi-purpose running sock for all weather conditions. The run no-show tab socks are made with the Drymax dual-layer design, which utilizes an ultra-absorbent inner layer that wicks sweat and water to a moisture attracting outer layer. These two layers combine to keep moisture off of the foot, resulting in a dryer, more comfortable feel.'),
(14, 'Drymax Cold Weather Run Crew Socks - Gray DR1336', 'img/DR1336_gry.jpg', 'Drymax DR1336', 14.4, 16, 'DR13_36_gry', 'The Drymax Running Cold Weather crew sock is a mid density running sock ideal for cold conditions. The cold weather runner comes in two stylish colors and will keep your toes dry and warm on the trail. These socks  are made with the Drymax dual-layer design, which utilizes an ultra-absorbent inner layer that wicks sweat and water to a moisture attracting outer layer. These two layers combine to keep moisture off of the foot, resulting in a dryer, more comfortable feel.'),
(15, 'World''s Softest Weekend Collection Gallery Crew Socks - Peacock ', 'img/peacock526.jpg', 'World Softest WS66614', 11.49, 11.49, 'WS66614_526_pck', 'Treat your feet with World''s Softest socks. The World''s Softest Weekend Collection Gallery Crew WS66614 sock is where fashion meets supreme comfort. With special attention to color and texture, World''s Softest has created the look of a hand-knit sock while maintaining an ultra-soft feel. Whether you are hard at work or hard at play, World''s Softest Gallery Crew will make you feel like your feet are walking on clouds all day long.'),
(16, 'World''s Softest Cozy Collection Low Socks - Pink/White WSCZLOW', 'img/WSCZLOW_PinkWhite.jpg', 'World''s Softest WSCZLOW', 8.99, 8.99, 'WSCZLOW_678_pnk', 'Everyday is a spa day with World''s Softest Cozy Collection. Relax in a pair of World''s Softest Cozy Collection Low socks WSCZLOW and your feet will thank you! Whether you are hard at work or hard at play, World''s Softest Cozy Collection Low socks will make you feel like you are walking on clouds all day long. '),
(17, '2XU Men''s Compression Performance Run Socks - Titanium/Black MA2', 'img/ma2442e.jpg', '2XU MA2442e ', 49.95, 49.95, '2XMA2442e_ttm', 'The 2XU Compression Perf Run Sock MA2442e are among the most technically advanced compression socks on the market. The MA2442e is designed with light, breathable fabric and zoned panels for advanced breathability and comfort. The 2XU Compression Perf Run Sock MA2442e features gradient zoned compression panels for increased blood flow and maximum muscle containment, increasing performance and improving recovery time. The MA2442e is ideal for Running, Triathlons, Trail Running, Training, and Competitions.'),
(18, 'Balega Hidden Cool Kids 2 Socks - Green-Neon Orange BAL1953', 'img/1953_lime.jpg', 'Balega 1953', 5.45, 6, 'BAL1953_0122_gno', 'Balega’s Hidden Cool Kids 2 socks are designed for kids on the move. Engineered with the company’s proprietary DryNamix moisture management technology in an array of stylish colors, these socks help kids look good while protecting the feet of future triathaletes. Note: the 1953 style replaces the 1946 style.\r\nAll of Balega’s running socks have been race tested and incorporate a hand linked seamless toe, eliminating abrasion across the top of the foot. The company also knits an extra deep heel pocket or “Fit Well,” ensuring that each sock fits the foot perfectly and does not slide down during a run. Balega: developed by athletes for those who love to run.'),
(19, 'Balega Enduro Physical Training Quarter Socks - White BAL8983', 'img/8983.jpg', 'Balega 8983', 10.95, 10.95, 'BAL8983_0200_wht', 'The Enduro Physical Training Quarter sock is the same as the Enduro V-Tech sock, except it has no visable logos above the shoe area for Military purposes. These hand crafted, high performance running socks provide a plush under-sole cushion that helps protect feet without creating bulk. The 8983 sock has been updated to include a V-Tech arch support system that provides added structure.\r\nBalega socks are engineered with the company’s proprietary DryNamix moisture management technology that keeps feet cool and dry while allowing free airflow for maximum comfort, performance and durability.  All of Balega’s running socks have been race tested and incorporate a hand linked seamless toe, eliminating abrasion across the top of the foot. The company also knits an extra deep heel pocket or “Fit Well,” ensuring that each sock fits the foot perfectly and does not slide down during a run. Balega: developed by athletes for those who love to run.');

-- --------------------------------------------------------

--
-- Table structure for table `sock_activity`
--

CREATE TABLE `sock_activity` (
  `sockID` int(11) NOT NULL,
  `activityID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sock_activity`
--

INSERT INTO `sock_activity` (`sockID`, `activityID`) VALUES
(1, 2),
(1, 1),
(2, 1),
(2, 2),
(3, 4),
(3, 6),
(4, 4),
(4, 8),
(5, 4),
(6, 4),
(7, 2),
(7, 12),
(7, 1),
(8, 8),
(8, 4),
(9, 8),
(10, 8),
(0, 0),
(11, 8),
(12, 2),
(12, 1),
(13, 1),
(13, 2),
(14, 2),
(14, 6),
(14, 1),
(15, 8),
(17, 1),
(17, 2),
(17, 5),
(18, 2),
(18, 7),
(18, 8),
(19, 2),
(19, 12),
(19, 1),
(19, 7),
(1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `sock_brands`
--

CREATE TABLE `sock_brands` (
  `sockID` int(11) NOT NULL,
  `brandID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sock_brands`
--

INSERT INTO `sock_brands` (`sockID`, `brandID`) VALUES
(1, 1),
(2, 1),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 8),
(8, 6),
(9, 6),
(10, 10),
(11, 10),
(12, 10),
(13, 10),
(14, 10),
(15, 7),
(16, 7),
(17, 11),
(18, 1),
(19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sock_color`
--

CREATE TABLE `sock_color` (
  `sockID` int(11) NOT NULL,
  `colorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sock_color`
--

INSERT INTO `sock_color` (`sockID`, `colorID`) VALUES
(1, 3),
(2, 3),
(3, 2),
(4, 8),
(5, 6),
(6, 1),
(7, 2),
(8, 2),
(9, 4),
(10, 2),
(10, 2),
(12, 3),
(13, 3),
(14, 4),
(15, 6),
(16, 7),
(17, 2),
(18, 6),
(19, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sock_cushion`
--

CREATE TABLE `sock_cushion` (
  `sockID` int(11) NOT NULL,
  `cushionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sock_cushion`
--

INSERT INTO `sock_cushion` (`sockID`, `cushionID`) VALUES
(1, 4),
(2, 4),
(3, 4),
(4, 3),
(5, 4),
(6, 1),
(7, 2),
(8, 1),
(9, 1),
(10, 4),
(10, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 3),
(16, 3),
(17, 3),
(18, 4),
(19, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sock_feature`
--

CREATE TABLE `sock_feature` (
  `sockID` int(11) NOT NULL,
  `featureID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sock_feature`
--

INSERT INTO `sock_feature` (`sockID`, `featureID`) VALUES
(1, 6),
(2, 6),
(3, 5),
(3, 6),
(3, 2),
(4, 2),
(4, 5),
(4, 6),
(6, 2),
(6, 6),
(6, 5),
(7, 2),
(7, 6),
(8, 5),
(8, 2),
(9, 5),
(10, 8),
(10, 2),
(10, 6),
(10, 5),
(10, 2),
(10, 8),
(11, 8),
(11, 3),
(12, 5),
(12, 6),
(13, 6),
(13, 5),
(13, 8),
(13, 2),
(14, 2),
(14, 5),
(14, 6),
(14, 8),
(17, 2),
(17, 7),
(18, 2),
(18, 6),
(19, 6),
(19, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sock_gender`
--

CREATE TABLE `sock_gender` (
  `sockID` int(11) NOT NULL,
  `genderID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sock_gender`
--

INSERT INTO `sock_gender` (`sockID`, `genderID`) VALUES
(1, 3),
(2, 3),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 3),
(8, 2),
(9, 2),
(10, 1),
(10, 2),
(10, 3),
(11, 1),
(11, 2),
(11, 3),
(12, 1),
(12, 2),
(12, 3),
(13, 1),
(13, 2),
(13, 3),
(14, 1),
(14, 2),
(14, 3),
(15, 2),
(16, 2),
(17, 1),
(17, 2),
(17, 3),
(18, 4),
(19, 1),
(19, 2),
(19, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sock_height`
--

CREATE TABLE `sock_height` (
  `sockID` int(11) NOT NULL,
  `heightID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sock_height`
--

INSERT INTO `sock_height` (`sockID`, `heightID`) VALUES
(1, 2),
(2, 2),
(3, 6),
(4, 7),
(5, 5),
(6, 6),
(7, 6),
(8, 6),
(9, 1),
(9, 2),
(10, 8),
(11, 6),
(12, 5),
(13, 2),
(14, 6),
(15, 6),
(16, 2),
(17, 8),
(18, 2),
(19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `sock_material`
--

CREATE TABLE `sock_material` (
  `sockID` int(11) NOT NULL,
  `materialID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sock_material`
--

INSERT INTO `sock_material` (`sockID`, `materialID`) VALUES
(1, 5),
(2, 5),
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(7, 7),
(8, 4),
(15, 7),
(16, 7),
(18, 8),
(19, 8);

-- --------------------------------------------------------

--
-- Table structure for table `sock_specialty`
--

CREATE TABLE `sock_specialty` (
  `sockID` int(11) NOT NULL,
  `specialtyID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sock_specialty`
--

INSERT INTO `sock_specialty` (`sockID`, `specialtyID`) VALUES
(4, 3),
(6, 4),
(6, 3),
(7, 8),
(8, 4),
(8, 3),
(10, 3),
(11, 3),
(15, 4),
(15, 3),
(16, 4),
(17, 1),
(19, 7);

-- --------------------------------------------------------

--
-- Table structure for table `sock_weight`
--

CREATE TABLE `sock_weight` (
  `sockID` int(11) NOT NULL,
  `weightID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sock_weight`
--

INSERT INTO `sock_weight` (`sockID`, `weightID`) VALUES
(1, 3),
(2, 3),
(3, 3),
(4, 2),
(5, 3),
(6, 1),
(7, 2),
(8, 1),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 4),
(15, 3),
(16, 3),
(17, 2),
(18, 3),
(19, 3);

-- --------------------------------------------------------

--
-- Table structure for table `specialty`
--

CREATE TABLE `specialty` (
`specialtyID` int(11) NOT NULL,
  `specialtyNAME` varchar(64) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `specialty`
--

INSERT INTO `specialty` (`specialtyID`, `specialtyNAME`) VALUES
(1, 'compression'),
(2, 'diabetic'),
(3, 'dress'),
(4, 'fun socks'),
(5, 'gift pack'),
(6, 'liner'),
(7, 'military'),
(8, 'toe socks'),
(9, 'floor grippers');

-- --------------------------------------------------------

--
-- Table structure for table `Weight`
--

CREATE TABLE `Weight` (
`weightID` int(11) NOT NULL,
  `weightNAME` varchar(64) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `Weight`
--

INSERT INTO `Weight` (`weightID`, `weightNAME`) VALUES
(1, 'ultra light'),
(2, 'light'),
(3, 'medium'),
(4, 'heavy'),
(5, 'extra heavy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Activity`
--
ALTER TABLE `Activity`
 ADD PRIMARY KEY (`activityID`);

--
-- Indexes for table `Brands`
--
ALTER TABLE `Brands`
 ADD PRIMARY KEY (`brandID`);

--
-- Indexes for table `Color`
--
ALTER TABLE `Color`
 ADD PRIMARY KEY (`colorID`);

--
-- Indexes for table `Cushion`
--
ALTER TABLE `Cushion`
 ADD PRIMARY KEY (`cushionID`);

--
-- Indexes for table `Feature`
--
ALTER TABLE `Feature`
 ADD PRIMARY KEY (`featureID`);

--
-- Indexes for table `Gender`
--
ALTER TABLE `Gender`
 ADD PRIMARY KEY (`genderID`);

--
-- Indexes for table `Height`
--
ALTER TABLE `Height`
 ADD PRIMARY KEY (`heightID`);

--
-- Indexes for table `Material`
--
ALTER TABLE `Material`
 ADD PRIMARY KEY (`materialID`);

--
-- Indexes for table `socks`
--
ALTER TABLE `socks`
 ADD PRIMARY KEY (`sockID`);

--
-- Indexes for table `specialty`
--
ALTER TABLE `specialty`
 ADD PRIMARY KEY (`specialtyID`);

--
-- Indexes for table `Weight`
--
ALTER TABLE `Weight`
 ADD PRIMARY KEY (`weightID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Activity`
--
ALTER TABLE `Activity`
MODIFY `activityID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `Brands`
--
ALTER TABLE `Brands`
MODIFY `brandID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `Color`
--
ALTER TABLE `Color`
MODIFY `colorID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Cushion`
--
ALTER TABLE `Cushion`
MODIFY `cushionID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Feature`
--
ALTER TABLE `Feature`
MODIFY `featureID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `Gender`
--
ALTER TABLE `Gender`
MODIFY `genderID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Height`
--
ALTER TABLE `Height`
MODIFY `heightID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `Material`
--
ALTER TABLE `Material`
MODIFY `materialID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `socks`
--
ALTER TABLE `socks`
MODIFY `sockID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `specialty`
--
ALTER TABLE `specialty`
MODIFY `specialtyID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `Weight`
--
ALTER TABLE `Weight`
MODIFY `weightID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
