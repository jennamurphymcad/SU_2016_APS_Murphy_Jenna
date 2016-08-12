-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Aug 12, 2016 at 09:13 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

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
(9, 'wigwam');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

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
(7, 'Polyester');

-- --------------------------------------------------------

--
-- Table structure for table `socks`
--

CREATE TABLE `socks` (
`sockID` int(11) NOT NULL,
  `sockNAME` varchar(64) NOT NULL,
  `sockIMG` varchar(64) NOT NULL,
  `sockPRICEACTIVE` float NOT NULL,
  `sockPRICELIST` float NOT NULL,
  `sockCODE` varchar(64) NOT NULL,
  `sockDESC` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `socks`
--

INSERT INTO `socks` (`sockID`, `sockNAME`, `sockIMG`, `sockPRICEACTIVE`, `sockPRICELIST`, `sockCODE`, `sockDESC`) VALUES
(1, 'Balega Hidden Comfort Socks - White BAL8025', '', 10.49, 12, 'BAL8025_0200_wht', 'Balega’s Hidden Comfort socks are designed for athletes who want both a lightweight feel and superior protection.  Ideal for running, cycling, hiking and fitness walking, the Hidden Comfort 8025 style is Balega’s number one selling style and the number one selling specialty running sock in the country.'),
(2, 'Balega Hidden Contour Socks - White BAL8196', '', 11.95, 14, 'BAL8196_0200_wht', 'Balega’s Hidden Contour socks are designed for athletes who want a sock that molds perfectly to their feet.  Ideal for running, cycling, hiking and fitness walking, the Hidden Contour style has uniquely positioned elastic bands that ensure no sock movement.'),
(3, 'Darn Tough Mens Hiking Micro Crew Cushion Socks - Black DT1466', '', 19.95, 19.95, 'DT1466_blk', 'The Men''s Micro Crew Cushion socks from Darn Tough are the perfect year round hiking socks. The merino wool construction and 3/4 crew height allow these socks to keep your feet cool in the summer and toasty in the winter. '),
(4, 'Darn Tough Mens Standard Issue Mid-Calf Light Socks - Tan DT1480', '', 18.95, 18.95, 'DT1480_tan', 'Aha! Everything you love about Darn Tough in a dress sock. The Men''s Dress Crew Light Socks by Darn Tough are made of 100% fine gauge Merino Wool to keep your feet warm and comfy and dry, and handsome. These 1480 dress socks have a reinforced heel and toe, and ring toe construction for an invisible seam so they''re comfortable for your longest, dressiest adventures. And of course they''re backed by Darn Tough''s Unconditional Lifetime Guarantee.\r\n'),
(5, 'Darn Tough Ladies Hiking Micro Crew Cushion Socks - Slate DT1903', '', 19.95, 19.95, 'DT1904_1903_slt', 'The Micro Crew Cushion socks from Darn Tough are the reverse mullets of the sock world: party on the top and business on the bottom. The 1904 style comes in an array of bold striped patterns, while the 1903 style has a more staid, dual color pattern. Both styles are among the best sellers for Darn Tough.'),
(6, 'Darn Tough Ladies Good Witch Light Socks - Piper Purple DT1495', '', 16.96, 19.95, 'DT1495_ppu', 'The Good Witch Crew Light socks are Darn Tough''s number one selling women''s lifestyle sock. Like all good witch socks, these stylish pairs have colorful stripes and a cozy merino wool construction. Whether you are saving Dorothy or reading a book by a fire, these socks are the perfect whimsical companion.'),
(7, 'Injinji Sport Original Weight Crew Toesocks - Black IN052270', '', 10, 10, 'IN052270_blk', 'The Injinji Sport Crew Toesock is a sock with a mission – to enhance your performance, no matter what sport you''re training in. The Performance Sport Crew Toesock is Injinji''s most versatile, with moderate cushioning and all the advantages of a five-toed sock, it''s woven with Coolmax fibers, to keep your feet cool dry and comfortable, whether you''re focused on one sport, or passionate about many.'),
(8, 'Smartwool Women''s Margarita Socks - Black Multi Stripe SW717', '', 19.95, 19.95, 'SW717_857_blk', 'Smartwool''s Margarita Socks for Women offer the functionality of SmartWool''s outdoor line but without the bulk. The SW717 Margarita Socks feature a soft top, WOW Technology (adds comfort and durability), and the natural benefits of top-quality Merino wool all wrapped in a multi-stripe pattern.'),
(9, 'Smartwool Hide and Seek Sock - Light Gray Heather SW705', '', 12.95, 12.95, 'SW705_833_gry', 'The Hide and Seek Sock from Smartwool is great for those days when your ensemble mandates (gasp) your socks NOT to show. The SW705 Hide and Seek sock protects you from blisters and stinky, sweaty feet that are the result of not wearing socks with your shoes, while still being fashionably low-profile.');

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
(9, 8);

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
(9, 6);

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
(9, 4);

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
(9, 1);

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
(9, 5);

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
(9, 2);

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
(9, 2);

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
(8, 4);

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
(8, 3);

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
(8, 1);

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
MODIFY `brandID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
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
MODIFY `materialID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `socks`
--
ALTER TABLE `socks`
MODIFY `sockID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
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
