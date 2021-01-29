-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2021 at 08:05 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `sr_no` int(10) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `mobileno` varchar(15) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `locality` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`sr_no`, `username`, `name`, `mobileno`, `pincode`, `locality`, `address`, `city`, `state`) VALUES
(1, 'manav014', 'Manav', '98989989898', '265652', 'Ghaziabad', 'ABESEC', 'Ghaziabad', 'Uttar Pradesh'),
(2, 'ABES', 'Prashant ', '9898989898', '245256', 'ABES', 'ABES', 'ABES', 'ABES');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `sr_no` int(10) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `productId` varchar(20) DEFAULT NULL,
  `quantity` varchar(10) DEFAULT NULL,
  `total_price` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kidswear`
--

CREATE TABLE `kidswear` (
  `productId` varchar(20) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kidswear`
--

INSERT INTO `kidswear` (`productId`, `image`, `name`, `price`, `size`, `description`, `category`) VALUES
('kwc1p1sl', 'assets/49.jpeg', 'Full Sleeve Printed Boys Sweatshirt', '2100', 'L', 'With a rainbow of colors available and a budget-friendly price point, this hoodie cant be beat!.', 'Sweatshirt'),
('kwc1p1sm', 'assets/49.jpeg', 'Full Sleeve Printed Boys Sweatshirt', '2100', 'M', 'With a rainbow of colors available and a budget-friendly price point, this hoodie cant be beat!.', 'Sweatshirt'),
('kwc1p1ss', 'assets/49.jpeg', 'Full Sleeve Printed Boys Sweatshirt', '2100', 'S', 'With a rainbow of colors available and a budget-friendly price point, this hoodie cant be beat!.', 'Sweatshirt'),
('kwc1p2sl', 'assets/50.jpeg', 'Full Sleeve Boys Sweatshirt', '2500', 'L', 'Crafted from 100% cotton this sweatshirt from the AW18 Dsquared2 kids collection', 'Sweatshirt'),
('kwc1p2sm', 'assets/50.jpeg', 'Full Sleeve Boys Sweatshirt', '2500', 'M', 'Crafted from 100% cotton this sweatshirt from the AW18 Dsquared2 kids collection', 'Sweatshirt'),
('kwc1p2ss', 'assets/50.jpeg', 'Full Sleeve Boys Sweatshirt', '2500', 'S', 'Crafted from 100% cotton this sweatshirt from the AW18 Dsquared2 kids collection', 'Sweatshirt'),
('kwc1p3sl', 'assets/51.jpeg', 'Full Sleeve Embellished Sweatshirt', '2700', 'L', 'Full Sleeve Embellished Sweatshirt Great sweatshirt from the latest collection.', 'Sweatshirt'),
('kwc1p3sm', 'assets/51.jpeg', 'Full Sleeve Embellished Sweatshirt', '2700', 'M', 'Full Sleeve Embellished Sweatshirt Great sweatshirt from the latest collection.', 'Sweatshirt'),
('kwc1p3ss', 'assets/51.jpeg', 'Full Sleeve Embellished Sweatshirt', '2700', 'S', 'Full Sleeve Embellished Sweatshirt Great sweatshirt from the latest collection.', 'Sweatshirt'),
('kwc2p1sl', 'assets/52.jpeg', 'Boys Printed Pure Cotton T Shirt', '3000', 'L', 'Wild Thunder T Shirt - Premium Quality Half Sleeve Round Neck Plain 100% Cotton Durable High Quality Crew neck for Kids.', 'Tshirt and Tops'),
('kwc2p1sm', 'assets/52.jpeg', 'Boys Printed Pure Cotton T Shirt', '3000', 'M', 'Wild Thunder T Shirt - Premium Quality Half Sleeve Round Neck Plain 100% Cotton Durable High Quality Crew neck for Kids.', 'Tshirt and Tops'),
('kwc2p1ss', 'assets/52.jpeg', 'Boys Printed Pure Cotton T Shirt', '3000', 'S', 'Wild Thunder T Shirt - Premium Quality Half Sleeve Round Neck Plain 100% Cotton Durable High Quality Crew neck for Kids.', 'Tshirt and Tops'),
('kwc2p2sl', 'assets/53.jpeg', 'Girls Party Cotton Blend Top', '2800', 'L', 'Premium Quality Cotton tshirt Round neck t shirt Short sleeve t-shirt Silk screen printed tshirts .', 'Tshirt and Tops'),
('kwc2p2sm', 'assets/53.jpeg', 'Girls Party Cotton Blend Top', '2800', 'M', 'Premium Quality Cotton tshirt Round neck t shirt Short sleeve t-shirt Silk screen printed tshirts .', 'Tshirt and Tops'),
('kwc2p2ss', 'assets/53.jpeg', 'Girls Party Cotton Blend Top', '2800', 'S', 'Premium Quality Cotton tshirt Round neck t shirt Short sleeve t-shirt Silk screen printed tshirts .', 'Tshirt and Tops'),
('kwc2p3sl', 'assets/54.jpeg', 'Boys & Girls Printed Cotton Silk T Shirt', '3200', 'L', 'Soft feel comfort Tshirt kids Tshirt for kids Kids 1-15 years old Comfortable and Durable High Quality Crew neck.', 'Tshirt and Tops'),
('kwc2p3sm', 'assets/54.jpeg', 'Boys & Girls Printed Cotton Silk T Shirt', '3200', 'M', 'Soft feel comfort Tshirt kids Tshirt for kids Kids 1-15 years old Comfortable and Durable High Quality Crew neck.', 'Tshirt and Tops'),
('kwc2p3ss', 'assets/54.jpeg', 'Boys & Girls Printed Cotton Silk T Shirt', '3200', 'S', 'Soft feel comfort Tshirt kids Tshirt for kids Kids 1-15 years old Comfortable and Durable High Quality Crew neck.', 'Tshirt and Tops'),
('kwc3p1sl', 'assets/58.jpeg', 'Girls Pink Jacket', '4200', 'L', 'Burberry baby girls pink quilted jacket with a hood, an embossed flap over the zip closure, three buttoned pockets on the front.', 'Jackets'),
('kwc3p1sm', 'assets/58.jpeg', 'Girls Pink Jacket', '4200', 'M', 'Burberry baby girls pink quilted jacket with a hood, an embossed flap over the zip closure, three buttoned pockets on the front.', 'Jackets'),
('kwc3p1ss', 'assets/58.jpeg', 'Girls Pink Jacket', '4200', 'S', 'Burberry baby girls pink quilted jacket with a hood, an embossed flap over the zip closure, three buttoned pockets on the front.', 'Jackets'),
('kwc3p2sl', 'assets/59.jpeg', 'Black Jacket', '4000', 'L', 'This adorable and soft monogrammed sherpa jacket will keep your kids warm during those chilly fall and winter mornings boys space jacket, modeled after Alpha’s jacket .', 'Jackets'),
('kwc3p2sm', 'assets/59.jpeg', 'Black Jacket', '4000', 'M', 'This adorable and soft monogrammed sherpa jacket will keep your kids warm during those chilly fall and winter mornings boys space jacket, modeled after Alpha’s jacket .', 'Jackets'),
('kwc3p2ss', 'assets/59.jpeg', 'Black Jacket', '4000', 'S', 'This adorable and soft monogrammed sherpa jacket will keep your kids warm during those chilly fall and winter mornings boys space jacket, modeled after Alpha’s jacket.', 'Jackets'),
('kwc3p3sl', 'assets/60.jpeg', 'Black rugged Jacket', '3500', 'L', 'This rugged jacket offers waterproof, lightly insulated coverage that lets kids have fun outdoors even when conditions arent perfect.', 'Jackets'),
('kwc3p3sm', 'assets/60.jpeg', 'Black rugged Jacket', '3500', 'M', 'This rugged jacket offers waterproof, lightly insulated coverage that lets kids have fun outdoors even when conditions arent perfect.', 'Jackets'),
('kwc3p3ss', 'assets/60.jpeg', 'Black rugged Jacket', '3500', 'S', 'This rugged jacket offers waterproof, lightly insulated coverage that lets kids have fun outdoors even when conditions arent perfect.', 'Jackets'),
('kwc4p1sl', 'assets/55.jpeg', 'Sports Pants', '2500', 'L', 'Spring Boys Elastic Loose Pants Colored Sports Pants For Girls Children Sweatpants Kids Trousers 2-12Y Baby Clothing Top-Quality.', 'Trousers'),
('kwc4p1sm', 'assets/55.jpeg', 'Sports Pants', '2500', 'M', 'Spring Boys Elastic Loose Pants Colored Sports Pants For Girls Children Sweatpants Kids Trousers 2-12Y Baby Clothing Top-Quality.', 'Trousers'),
('kwc4p1ss', 'assets/55.jpeg', 'Sports Pants', '2500', 'S', 'Spring Boys Elastic Loose Pants Colored Sports Pants For Girls Children Sweatpants Kids Trousers 2-12Y Baby Clothing Top-Quality.', 'Trousers'),
('kwc4p2sl', 'assets/57.jpeg', 'Track Pant For Boys & Girls', '2700', 'L', 'This pants feature a side pockets and letter print design.amde by natural synthetic comfortable design.', 'Trousers'),
('kwc4p2sm', 'assets/57.jpeg', 'Track Pant For Boys & Girls', '2700', 'M', 'This pants feature a side pockets and letter print design.amde by natural synthetic comfortable design.', 'Trousers'),
('kwc4p2ss', 'assets/57.jpeg', 'Track Pant For Boys & Girls', '2700', 'S', 'This pants feature a side pockets and letter print design.amde by natural synthetic comfortable design.', 'Trousers'),
('kwc4p3sl', 'assets/56.jpeg', 'kids pant', '2800', 'L', 'Fashion Kids Leisure Pants 2-7Y Casual Baby Trousers Spring Autumn Toddler Baby Boys Pants Children Clothing Summer boys pants wholesale casual kids trousers.', 'Trousers'),
('kwc4p3sm', 'assets/56.jpeg', 'kids pant', '2800', 'M', 'Fashion Kids Leisure Pants 2-7Y Casual Baby Trousers Spring Autumn Toddler Baby Boys Pants Children Clothing Summer boys pants wholesale casual kids trousers..', 'Trousers'),
('kwc4p3ss', 'assets/56.jpeg', 'kids pant', '2800', 'S', 'Fashion Kids Leisure Pants 2-7Y Casual Baby Trousers Spring Autumn Toddler Baby Boys Pants Children Clothing Summer boys pants wholesale casual kids trousers.', 'Trousers');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `username` varchar(30) NOT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`username`, `password`) VALUES
('ABES', 'Prashant@123'),
('manav014', 'Manav@0142');

-- --------------------------------------------------------

--
-- Table structure for table `menfootwear`
--

CREATE TABLE `menfootwear` (
  `productId` varchar(20) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menfootwear`
--

INSERT INTO `menfootwear` (`productId`, `image`, `name`, `price`, `size`, `description`, `category`) VALUES
('mfwc1p1sl', 'assets/37.jpeg', 'Men Loafers For Men', '2000', 'L', 'TASSEL LOAFERS 734 FOREST TASSEL LOAFERS IN BURGUNDY BOX-CALF.', 'Loafers'),
('mfwc1p1sm', 'assets/37.jpeg', 'Men Loafers For Men', '2000', 'M', 'TASSEL LOAFERS 734 FOREST TASSEL LOAFERS IN BURGUNDY BOX-CALF.', 'Loafers'),
('mfwc1p1ss', 'assets/37.jpeg', 'Men Loafers For Men', '2000', 'S', 'TASSEL LOAFERS 734 FOREST TASSEL LOAFERS IN BURGUNDY BOX-CALF.', 'Loafers'),
('mfwc1p2sl', 'assets/38.jpeg', 'Knoos Loafers For Men (Brown)', '3000', 'L', 'Knoos Brown Synthetic Leather Casual Loafer Loafers For Men (Brown).', 'Loafers'),
('mfwc1p2sm', 'assets/38.jpeg', 'Knoos Loafers For Men (Brown)', '3000', 'M', 'Knoos Brown Synthetic Leather Casual Loafer Loafers For Men (Brown).', 'Loafers'),
('mfwc1p2ss', 'assets/38.jpeg', 'Knoos Loafers For Men (Brown)', '3000', 'S', 'Knoos Brown Synthetic Leather Casual Loafer Loafers For Men (Brown).', 'Loafers'),
('mfwc1p3sl', 'assets/39.jpeg', 'Copper Loafers', '2500', 'L', 'Knoos Copper Synthetic Leather Casual Loafer Soft Footwear Brand Mens Casual Shoes.', 'Loafers'),
('mfwc1p3sm', 'assets/39.jpeg', 'Copper Loafers', '2500', 'M', 'Knoos Copper Synthetic Leather Casual Loafer Soft Footwear Brand Mens Casual Shoes.', 'Loafers'),
('mfwc1p3ss', 'assets/39.jpeg', 'Copper Loafers', '2500', 'S', 'Knoos Copper Synthetic Leather Casual Loafer Soft Footwear Brand Mens Casual Shoes.', 'Loafers'),
('mfwc2p1sl', 'assets/40.jpeg', 'Casual sneakers shoes for men Sneakers For Men (White)', '3500', 'L', 'Spring White Shoes Men Casual Shoes Male Sneakers Cool Street Men Shoes Brand Man Footwear KA793.', 'Sneakers'),
('mfwc2p1sm', 'assets/40.jpeg', 'Casual sneakers shoes for men Sneakers For Men (White)', '3500', 'M', 'Spring White Shoes Men Casual Shoes Male Sneakers Cool Street Men Shoes Brand Man Footwear KA793.', 'Sneakers'),
('mfwc2p1ss', 'assets/40.jpeg', 'Casual sneakers shoes for men Sneakers For Men (White)', '3500', 'S', 'Spring White Shoes Men Casual Shoes Male Sneakers Cool Street Men Shoes Brand Man Footwear KA793.', 'Sneakers'),
('mfwc2p2sl', 'assets/41.jpeg', 'Hotstyle Sneakers For Men (Black)', '2000', 'L', 'CLYMB Casual Shoes Men Shark Design Bottom Platform Sneakers Men Mesh Breathable Shoes Male Mixed Colors Trainers Shoes for Mens The Best White Sneakers For Men.', 'Sneakers'),
('mfwc2p2sm', 'assets/41.jpeg', 'Hotstyle Sneakers For Men (Black)', '2000', 'M', 'CLYMB Casual Shoes Men Shark Design Bottom Platform Sneakers Men Mesh Breathable Shoes Male Mixed Colors Trainers Shoes for Mens The Best White Sneakers For Men.', 'Sneakers'),
('mfwc2p2ss', 'assets/41.jpeg', 'Hotstyle Sneakers For Men (Black)', '2000', 'S', 'CLYMB Casual Shoes Men Shark Design Bottom Platform Sneakers Men Mesh Breathable Shoes Male Mixed Colors Trainers Shoes for Mens The Best White Sneakers For Men.', 'Sneakers'),
('mfwc2p3sl', 'assets/42.jpeg', 'Lace-up Sneakers', '2500', 'L', 'pinstyle Outdoor Casual Light Weight Lace-up Sneakers Sneakers For Men Sneakers For Men Futurecraft 4D Sports Running Shoe Sneakers Men Casual Shoes Court Royale AC Genuine Leather Sneakers.', 'Sneakers'),
('mfwc2p3sm', 'assets/42.jpeg', 'Lace-up Sneakers', '2500', 'M', 'pinstyle Outdoor Casual Light Weight Lace-up Sneakers Sneakers For Men Sneakers For Men Futurecraft 4D Sports Running Shoe Sneakers Men Casual Shoes Court Royale AC Genuine Leather Sneakers.', 'Sneakers'),
('mfwc2p3ss', 'assets/42.jpeg', 'Lace-up Sneakers', '2500', 'S', 'pinstyle Outdoor Casual Light Weight Lace-up Sneakers Sneakers For Men Sneakers For Men Futurecraft 4D Sports Running Shoe Sneakers Men Casual Shoes Court Royale AC Genuine Leather Sneakers.', 'Sneakers'),
('mfwc3p1sl', 'assets/43.jpeg', 'Roadster Boots For Men (Brown)', '4000', 'L', 'Vintage Style Boots Men Shoes Casual Fashion Zipper Motorcycle Boots Shoes', 'Boots'),
('mfwc3p1sm', 'assets/43.jpeg', 'Roadster Boots For Men (Brown)', '4000', 'M', 'Vintage Style Boots Men Shoes Casual Fashion Zipper Motorcycle Boots Shoes', 'Boots'),
('mfwc3p1ss', 'assets/43.jpeg', 'Roadster Boots For Men (Brown)', '4000', 'S', 'Vintage Style Boots Men Shoes Casual Fashion Zipper Motorcycle Boots Shoes', 'Boots'),
('mfwc3p2sl', 'assets/44.jpeg', 'Unistar Jungle Boots', '3500', 'L', 'Oil Stain & Water Resistant- Extra Cushion InnerSole -Light Weight Trekking Shoes Boots For Men (OliveGreen) Boots For Men (Multicolor).', 'Boots'),
('mfwc3p2sm', 'assets/44.jpeg', 'Unistar Jungle Boots', '3500', 'M', 'Oil Stain & Water Resistant- Extra Cushion InnerSole -Light Weight Trekking Shoes Boots For Men (OliveGreen) Boots For Men (Multicolor).', 'Boots'),
('mfwc3p2ss', 'assets/44.jpeg', 'Unistar Jungle Boots', '3500', 'S', 'Oil Stain & Water Resistant- Extra Cushion InnerSole -Light Weight Trekking Shoes Boots For Men (OliveGreen) Boots For Men (Multicolor).', 'Boots'),
('mfwc3p3sl', 'assets/45.jpeg', 'Warrior By Liberty (Olive)', '3000', 'L', 'Fashionable Retro Outdoor Casual High-Top Genuine Leather Boots Men Men\'s Black Casual Ankle Lace-Up Boots', 'Boots'),
('mfwc3p3sm', 'assets/45.jpeg', 'Warrior By Liberty (Olive)', '3000', 'M', 'Fashionable Retro Outdoor Casual High-Top Genuine Leather Boots Men Men\'s Black Casual Ankle Lace-Up Boots', 'Boots'),
('mfwc3p3ss', 'assets/45.jpeg', 'Warrior By Liberty (Olive)', '3000', 'S', 'Fashionable Retro Outdoor Casual High-Top Genuine Leather Boots Men Men\'s Black Casual Ankle Lace-Up Boots', 'Boots'),
('mfwc4p1sl', 'assets/46.jpeg', 'Sparx Men Olive, Black Sandal', '1500', 'L', 'Royal Flex Men Grey Sports Sandals.', 'Floaters'),
('mfwc4p1sm', 'assets/46.jpeg', 'Sparx Men Olive, Black Sandal', '1500', 'M', 'Royal Flex Men Grey Sports Sandals.', 'Floaters'),
('mfwc4p1ss', 'assets/46.jpeg', 'Sparx Men Olive, Black Sandal', '1500', 'S', 'Royal Flex Men Grey Sports Sandals.', 'Floaters'),
('mfwc4p2sl', 'assets/47.jpeg', 'Sparx Men Blue Sports Sandal', '2000', 'L', 'Stylish flloter sandal, are to maximize your fashion.', 'Floaters'),
('mfwc4p2sm', 'assets/47.jpeg', 'Sparx Men Blue Sports Sandal', '2000', 'M', 'Stylish flloter sandal, are to maximize your fashion.', 'Floaters'),
('mfwc4p2ss', 'assets/47.jpeg', 'Sparx Men Blue Sports Sandal', '2000', 'S', 'Stylish flloter sandal, are to maximize your fashion.', 'Floaters'),
('mfwc4p3sl', 'assets/48.jpeg', 'Woodland Men Olive Sandal', '1500', 'L', 'Pu Rocks Men Sandels Mens PU Brown Casual Outdoor Sandals and Floaters.', 'Floaters'),
('mfwc4p3sm', 'assets/48.jpeg', 'Woodland Men Olive Sandal', '1500', 'M', 'Pu Rocks Men Sandels Mens PU Brown Casual Outdoor Sandals and Floaters.', 'Floaters'),
('mfwc4p3ss', 'assets/48.jpeg', 'Woodland Men Olive Sandal', '1500', 'S', 'Pu Rocks Men Sandels Mens PU Brown Casual Outdoor Sandals and Floaters.', 'Floaters');

-- --------------------------------------------------------

--
-- Table structure for table `menwear`
--

CREATE TABLE `menwear` (
  `productId` varchar(20) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menwear`
--

INSERT INTO `menwear` (`productId`, `image`, `name`, `price`, `size`, `description`, `category`) VALUES
('mwc1p1sl', 'assets/13.jpeg', 'Solid Men Hooded Black T-Shirt', '1000', 'L', 'Liseaven Men T Shirt Man Long Sleeve Tshirt Solid Men Hooded Neck Black T-Shirt.', 'T-shirts'),
('mwc1p1sm', 'assets/13.jpeg', 'Solid Men Hooded Black T-Shirt', '1000', 'M', 'Liseaven Men T Shirt Man Long Sleeve Tshirt Solid Men Hooded Neck Black T-Shirt.', 'T-shirts'),
('mwc1p1ss', 'assets/13.jpeg', 'Solid Men Hooded Black T-Shirt', '1000', 'S', 'Liseaven Men T Shirt Man Long Sleeve Tshirt Solid Men Hooded Neck Black T-Shirt.', 'T-shirts'),
('mwc1p2sl', 'assets/14.jpeg', 'Color Block Men Hoody', '2000', 'L', 'Fashion Men Brand Casual Men Sweatshirt Solid Color Hoodie Jaskets Male Hoodies.', 'T-shirts'),
('mwc1p2sm', 'assets/14.jpeg', 'Color Block Men Hoody', '2000', 'M', 'Fashion Men Brand Casual Men Sweatshirt Solid Color Hoodie Jaskets Male Hoodies.', 'T-shirts'),
('mwc1p2ss', 'assets/14.jpeg', 'Color Block Men Hoody', '2000', 'S', 'Fashion Men Brand Casual Men Sweatshirt Solid Color Hoodie Jaskets Male Hoodies.', 'T-shirts'),
('mwc1p3sl', 'assets/15.jpeg', 'Solid Men Round Neck Red T-Shirt', '700', 'L', 'The purple tree Mens Printed Cotton T-Shirt - 1 pc, Printed Cotton Tshirt for Men, Men Tshirt, Tshirt.', 'T-shirts'),
('mwc1p3sm', 'assets/15.jpeg', 'Solid Men Round Neck Red T-Shirt', '700', 'M', 'The purple tree Mens Printed Cotton T-Shirt - 1 pc, Printed Cotton Tshirt for Men, Men Tshirt, Tshirt.', 'T-shirts'),
('mwc1p3ss', 'assets/15.jpeg', 'Solid Men Round Neck Red T-Shirt', '700', 'S', 'The purple tree Mens Printed Cotton T-Shirt - 1 pc, Printed Cotton Tshirt for Men, Men Tshirt, Tshirt.', 'T-shirts'),
('mwc2p1sl', 'assets/16.jpeg', 'Men Printed Formal Spread Shirt', '1500', 'L', 'Off Road Military Fashion Handsome Style Slim Fit Cotton Long-sleeved Men Shirt - Khaki M.', 'Shirts'),
('mwc2p1sm', 'assets/16.jpeg', 'Men Printed Formal Spread Shirt', '1500', 'M', 'Off Road Military Fashion Handsome Style Slim Fit Cotton Long-sleeved Men Shirt - Khaki M.', 'Shirts'),
('mwc2p1ss', 'assets/16.jpeg', 'Men Printed Formal Spread Shirt', '1500', 'S', 'Off Road Military Fashion Handsome Style Slim Fit Cotton Long-sleeved Men Shirt - Khaki M.', 'Shirts'),
('mwc2p2sl', 'assets/17.jpeg', 'Men Solid Formal Spread Shirt', '2000', 'L', 'Fashion Mesh Mens See Through Shirts Men Shirt Silk Sexy Floral Mens Casual Shirt long Sleeve Man Shirts Slim Fit Designer Dress.', 'Shirts'),
('mwc2p2sm', 'assets/17.jpeg', 'Men Solid Formal Spread Shirt', '2000', 'M', 'Fashion Mesh Mens See Through Shirts Men Shirt Silk Sexy Floral Mens Casual Shirt long Sleeve Man Shirts Slim Fit Designer Dress.', 'Shirts'),
('mwc2p2ss', 'assets/17.jpeg', 'Men Solid Formal Spread Shirt', '2000', 'S', 'Fashion Mesh Mens See Through Shirts Men Shirt Silk Sexy Floral Mens Casual Shirt long Sleeve Man Shirts Slim Fit Designer Dress.', 'Shirts'),
('mwc2p3sl', 'assets/18.jpeg', 'Men Self Design Formal Spread Shirt', '1000', 'L', 'Mens White Oxford Shirt in Stretch New Mens Shirts men Casual slim fit designer Print Camisa red/khaki/white/green Asian.', 'Shirts'),
('mwc2p3sm', 'assets/18.jpeg', 'Men Self Design Formal Spread Shirt', '1000', 'M', 'Mens White Oxford Shirt in Stretch New Mens Shirts men Casual slim fit designer Print Camisa red/khaki/white/green Asian.', 'Shirts'),
('mwc2p3ss', 'assets/18.jpeg', 'Men Self Design Formal Spread Shirt', '1000', 'S', 'Mens White Oxford Shirt in Stretch New Mens Shirts men Casual slim fit designer Print Camisa red/khaki/white/green Asian.', 'Shirts'),
('mwc3p1sl', 'assets/19.jpeg', 'Regular Fit Men Grey Cotton Blend Trousers', '2500', 'L', 'Get the perfect blend of comfort and style by wearing these grey textured Slim Fit trousers from Allen Solly by Allen Solly.', 'Trousers'),
('mwc3p1sm', 'assets/19.jpeg', 'Regular Fit Men Grey Cotton Blend Trousers', '2500', 'M', 'Get the perfect blend of comfort and style by wearing these grey textured Slim Fit trousers from Allen Solly by Allen Solly.', 'Trousers'),
('mwc3p1ss', 'assets/19.jpeg', 'Regular Fit Men Grey Cotton Blend Trousers', '2500', 'S', 'Get the perfect blend of comfort and style by wearing these grey textured Slim Fit trousers from Allen Solly by Allen Solly.', 'Trousers'),
('mwc3p2sl', 'assets/20.jpeg', 'Peter England Blend Trousers', '1000', 'L', 'Slim Fit Men Dark Blue Polyester Viscose Blend Trousers Regular Fit Men Pure Cotton Dark Blue Pure Cotton Trousers Regular Fit Men White Trousers.', 'Trousers'),
('mwc3p2sm', 'assets/20.jpeg', 'Peter England Blend Trousers', '1000', 'M', 'Slim Fit Men Dark Blue Polyester Viscose Blend Trousers Regular Fit Men Pure Cotton Dark Blue Pure Cotton Trousers Regular Fit Men White Trousers.', 'Trousers'),
('mwc3p2ss', 'assets/20.jpeg', 'Peter England Blend Trousers', '1000', 'S', 'Slim Fit Men Dark Blue Polyester Viscose Blend Trousers Regular Fit Men Pure Cotton Dark Blue Pure Cotton Trousers Regular Fit Men White Trousers.', 'Trousers'),
('mwc3p3sl', 'assets/21.jpeg', 'Raymond Blend Trousers', '3500', 'L', 'Raymond Slim Fit Men Blue Polyester Blend Trousers Slim Fit Men Black Cotton Blend Trousers Brooklyn Slim Fit Men Beige Cotton Linen Blend Trousers.', 'Trousers'),
('mwc3p3sm', 'assets/21.jpeg', 'Raymond Blend Trousers', '3500', 'M', 'Raymond Slim Fit Men Blue Polyester Blend Trousers Slim Fit Men Black Cotton Blend Trousers Brooklyn Slim Fit Men Beige Cotton Linen Blend Trousers.', 'Trousers'),
('mwc3p3ss', 'assets/21.jpeg', 'Raymond Blend Trousers', '3500', 'S', 'Raymond Slim Fit Men Blue Polyester Blend Trousers Slim Fit Men Black Cotton Blend Trousers Brooklyn Slim Fit Men Beige Cotton Linen Blend Trousers.', 'Trousers'),
('mwc4p1sl', 'assets/22.jpeg', 'COBIO MAN black Kurta', '2500', 'L', 'COBIO MAN Men Solid Cotton Blend Asymmetric Kurta (Black).', 'Kurta'),
('mwc4p1sm', 'assets/22.jpeg', 'COBIO MAN black Kurta', '2500', 'M', 'COBIO MAN Men Solid Cotton Blend Asymmetric Kurta (Black).', 'Kurta'),
('mwc4p1ss', 'assets/22.jpeg', 'COBIO MAN black Kurta', '2500', 'S', 'COBIO MAN Men Solid Cotton Blend Asymmetric Kurta (Black).', 'Kurta'),
('mwc4p2sl', 'assets/23.jpeg', 'BENSTOKE Kurta', '2200', 'L', 'BENSTOKE Men Solid Cotton Blend Frontslit Kurta (Orange) Men Solid Cotton Blend Asymmetric Kurta.', 'Kurta'),
('mwc4p2sm', 'assets/23.jpeg', 'BENSTOKE Kurta', '2200', 'M', 'BENSTOKE Men Solid Cotton Blend Frontslit Kurta (Orange) Men Solid Cotton Blend Asymmetric Kurta.', 'Kurta'),
('mwc4p2ss', 'assets/23.jpeg', 'BENSTOKE Kurta', '2200', 'S', 'BENSTOKE Men Solid Cotton Blend Frontslit Kurta (Orange) Men Solid Cotton Blend Asymmetric Kurta.', 'Kurta'),
('mwc4p3sl', 'assets/24.jpeg', 'VERO LIE Kurta', '1500', 'L', 'VERO LIE Men Solid Cotton Blend Straight Kurta (Light Blue) Men Solid Cotton Linen Blend Straight Kurta.', 'Kurta'),
('mwc4p3sm', 'assets/24.jpeg', 'VERO LIE Kurta', '1500', 'M', 'VERO LIE Men Solid Cotton Blend Straight Kurta (Light Blue) Men Solid Cotton Linen Blend Straight Kurta.', 'Kurta'),
('mwc4p3ss', 'assets/24.jpeg', 'VERO LIE Kurta', '1500', 'S', 'VERO LIE Men Solid Cotton Blend Straight Kurta (Light Blue) Men Solid Cotton Linen Blend Straight Kurta.', 'Kurta');

-- --------------------------------------------------------

--
-- Table structure for table `orders_log`
--

CREATE TABLE `orders_log` (
  `sr_no` int(10) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `productId` varchar(20) DEFAULT NULL,
  `quantity` varchar(10) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_log`
--

INSERT INTO `orders_log` (`sr_no`, `username`, `productId`, `quantity`, `date`) VALUES
(1, 'manav014', 'mwc1p1ss', '1', '2020-12-31'),
(2, 'manav014', 'mwc1p3ss', '1', '2020-12-31'),
(3, 'ABES', 'mwc1p1ss', '1', '2020-12-31'),
(4, 'ABES', 'wwc1p1ss', '1', '2020-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sr_no` int(10) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `amount` varchar(20) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sr_no`, `username`, `amount`, `date`, `status`) VALUES
(1, 'manav014', '1700', '2020-12-31', 'Success'),
(2, 'ABES', '3100', '2020-12-31', 'Success');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(50) DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobileno` varchar(15) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `username`, `email`, `mobileno`, `password`) VALUES
('Prashant ', 'ABES', 'prashant@gmail.com', '9898989898', 'Prashant@123'),
('Manav Agarwal', 'manav014', 'dpsman13016@gmail.com', '9898989898', 'Manav@0142');

-- --------------------------------------------------------

--
-- Table structure for table `womenfootwear`
--

CREATE TABLE `womenfootwear` (
  `productId` varchar(20) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `womenfootwear`
--

INSERT INTO `womenfootwear` (`productId`, `image`, `name`, `price`, `size`, `description`, `category`) VALUES
('wfwc1p1sl', 'assets/25.jpeg', 'Shuberry Heels Sandal', '2500', 'L', '11cm High Heels Nude Colour Leather Shoe high heels crystal plein.', 'Heels'),
('wfwc1p1sm', 'assets/25.jpeg', 'Shuberry Heels Sandal', '2500', 'M', '11cm High Heels Nude Colour Leather Shoe high heels crystal plein.', 'Heels'),
('wfwc1p1ss', 'assets/25.jpeg', 'Shuberry Heels Sandal', '2500', 'S', '11cm High Heels Nude Colour Leather Shoe high heels crystal plein.', 'Heels'),
('wfwc1p2sl', 'assets/26.jpeg', 'Shuberry Heels Sandals', '2800', 'L', 'Shuberry Women Olive Heels Sandal.', 'Heels'),
('wfwc1p2sm', 'assets/26.jpeg', 'Shuberry Heels Sandals', '2800', 'M', 'Shuberry Women Olive Heels Sandal.', 'Heels'),
('wfwc1p2ss', 'assets/26.jpeg', 'Shuberry Heels Sandals', '2800', 'S', 'Shuberry Women Olive Heels Sandal.', 'Heels'),
('wfwc1p3sl', 'assets/27.jpeg', 'Shuberry Women Tan Heels Sandal', '2000', 'L', 'Strap Heels Platform Sandals Party Shoes For Women Wedding Pumps 16cm High Heels .', 'Heels'),
('wfwc1p3sm', 'assets/27.jpeg', 'Shuberry Women Tan Heels Sandal', '2000', 'M', 'Strap Heels Platform Sandals Party Shoes For Women Wedding Pumps 16cm High Heels .', 'Heels'),
('wfwc1p3ss', 'assets/27.jpeg', 'Shuberry Women Tan Heels Sandal', '2000', 'S', 'Strap Heels Platform Sandals Party Shoes For Women Wedding Pumps 16cm High Heels .', 'Heels'),
('wfwc2p1sl', 'assets/28.jpeg', 'TOSHINA SHOES KING ', '3500', 'L', 'Women Casual Boots For Women Hemlock High Heels Ankle Boots, Women Ladies Booties Dress Boots Women Shoes Wedge Shoes.', 'Boots'),
('wfwc2p1sm', 'assets/28.jpeg', 'TOSHINA SHOES KING ', '3500', 'M', 'Women Casual Boots For Women Hemlock High Heels Ankle Boots, Women Ladies Booties Dress Boots Women Shoes Wedge Shoes.', 'Boots'),
('wfwc2p1ss', 'assets/28.jpeg', 'TOSHINA SHOES KING ', '3500', 'S', 'Women Casual Boots For Women Hemlock High Heels Ankle Boots, Women Ladies Booties Dress Boots Women Shoes Wedge Shoes.', 'Boots'),
('wfwc2p2sl', 'assets/29.jpeg', 'Commander Boots For Women (Brown)', '4000', 'L', 'Women Casual Boots For Women Commander Women Brown Ankle length Boots,Round Toe Square Heels Boots.', 'Boots'),
('wfwc2p2sm', 'assets/29.jpeg', 'Commander Boots For Women (Brown)', '4000', 'M', 'Women Casual Boots For Women Commander Women Brown Ankle length Boots,Round Toe Square Heels Boots.', 'Boots'),
('wfwc2p2ss', 'assets/29.jpeg', 'Commander Boots For Women (Brown)', '4000', 'S', 'Women Casual Boots For Women Commander Women Brown Ankle length Boots,Round Toe Square Heels Boots.', 'Boots'),
('wfwc2p3sl', 'assets/30.jpeg', 'MSC Boots For Women (Brown)', '3800', 'L', 'Dune London True Tan Leather Double Strap Knee High Boots,Women Ankle Boots Stylish Lace Platform Round Square Heels.', 'Boots'),
('wfwc2p3sm', 'assets/30.jpeg', 'MSC Boots For Women (Brown)', '3800', 'M', 'Dune London True Tan Leather Double Strap Knee High Boots,Women Ankle Boots Stylish Lace Platform Round Square Heels.', 'Boots'),
('wfwc2p3ss', 'assets/30.jpeg', 'MSC Boots For Women (Brown)', '3800', 'S', 'Dune London True Tan Leather Double Strap Knee High Boots,Women Ankle Boots Stylish Lace Platform Round Square Heels.', 'Boots'),
('wfwc3p1sl', 'assets/31.jpeg', 'COMUTORA Running Shoes For Women (Blue)', '2000', 'L', 'sport running shoes student hook loop breathable sneakers boys athletic shoes Running shoes for girls stylish latest design new fashion.', 'Sports Shoes'),
('wfwc3p1sm', 'assets/31.jpeg', 'COMUTORA Running Shoes For Women (Blue)', '2000', 'M', 'sport running shoes student hook loop breathable sneakers boys athletic shoes Running shoes for girls stylish latest design new fashion.', 'Sports Shoes'),
('wfwc3p1ss', 'assets/31.jpeg', 'COMUTORA Running Shoes For Women (Blue)', '2000', 'S', 'sport running shoes student hook loop breathable sneakers boys athletic shoes Running shoes for girls stylish latest design new fashion.', 'Sports Shoes'),
('wfwc3p2sl', 'assets/32.jpeg', 'Running Shoes For Women', '3000', 'L', 'Asics AMPLICA Running Shoes For Women (Grey, Orange) Orbit Women\'s Pink Sports Shoes Latest Casuals Shoes.', 'Sports Shoes'),
('wfwc3p2sm', 'assets/32.jpeg', 'Running Shoes For Women', '3000', 'M', 'Asics AMPLICA Running Shoes For Women (Grey, Orange) Orbit Women\'s Pink Sports Shoes Latest Casuals Shoes.', 'Sports Shoes'),
('wfwc3p2ss', 'assets/32.jpeg', 'Running Shoes For Women', '3000', 'S', 'Asics AMPLICA Running Shoes For Women (Grey, Orange) Orbit Women\'s Pink Sports Shoes Latest Casuals Shoes.', 'Sports Shoes'),
('wfwc3p3sl', 'assets/33.jpeg', 'Columbus running shoes', '2800', 'L', 'Ruhi-04-GreyPink Running Shoes For Women Women Sneakers Mesh Running Shoes Girls students Female Leather Sports Outdoor Gym Breathable Non-slip fitness shoes', 'Sports Shoes'),
('wfwc3p3sm', 'assets/33.jpeg', 'Columbus running shoes', '2800', 'M', 'Ruhi-04-GreyPink Running Shoes For Women Women Sneakers Mesh Running Shoes Girls students Female Leather Sports Outdoor Gym Breathable Non-slip fitness shoes', 'Sports Shoes'),
('wfwc3p3ss', 'assets/33.jpeg', 'Columbus running shoes', '2800', 'S', 'Ruhi-04-GreyPink Running Shoes For Women Women Sneakers Mesh Running Shoes Girls students Female Leather Sports Outdoor Gym Breathable Non-slip fitness shoes', 'Sports Shoes'),
('wfwc4p1sl', 'assets/34.jpeg', 'PKKART Women Multicolor Flats Sandal', '1500', 'L', 'New Women Casual Summer Flat Slippers Flip Flops Female Crystal Outside Shoes Girls Comfortable Woman Footwear.', 'Flats'),
('wfwc4p1sm', 'assets/34.jpeg', 'PKKART Women Multicolor Flats Sandal', '1500', 'M', 'New Women Casual Summer Flat Slippers Flip Flops Female Crystal Outside Shoes Girls Comfortable Woman Footwear.', 'Flats'),
('wfwc4p1ss', 'assets/34.jpeg', 'PKKART Women Multicolor Flats Sandal', '1500', 'S', 'New Women Casual Summer Flat Slippers Flip Flops Female Crystal Outside Shoes Girls Comfortable Woman Footwear.', 'Flats'),
('wfwc4p2sl', 'assets/35.jpeg', 'GIBELLE Women Green Flats Sandal', '1900', 'L', 'Daily Wear Gibelle Casual Flat Tan Sandals For Girls Women Multicolor Flats Sandal Aria Nica Pink Woven design Flats Sandals For Girls.it is very comfortable.', 'Flats'),
('wfwc4p2sm', 'assets/35.jpeg', 'GIBELLE Women Green Flats Sandal', '1900', 'M', 'Daily Wear Gibelle Casual Flat Tan Sandals For Girls Women Multicolor Flats Sandal Aria Nica Pink Woven design Flats Sandals For Girls.it is very comfortable.', 'Flats'),
('wfwc4p2ss', 'assets/35.jpeg', 'GIBELLE Women Green Flats Sandal', '1900', 'S', 'Daily Wear Gibelle Casual Flat Tan Sandals For Girls Women Multicolor Flats Sandal Aria Nica Pink Woven design Flats Sandals For Girls.it is very comfortable.', 'Flats'),
('wfwc4p3sl', 'assets/36.jpeg', 'PKKART Women Beige Flats Sandal', '1700', 'L', 'Sweet Girls\' Summer Bowtie Flat Sandals with Ankle buckle Women\'s Low heel Casual Slides Jelly Sandals Fashion Beads Flowers Kids Heel Shoes Girls Wedge Dress Sandals .', 'Flats'),
('wfwc4p3sm', 'assets/36.jpeg', 'PKKART Women Beige Flats Sandal', '1700', 'M', 'Sweet Girls\' Summer Bowtie Flat Sandals with Ankle buckle Women\'s Low heel Casual Slides Jelly Sandals Fashion Beads Flowers Kids Heel Shoes Girls Wedge Dress Sandals .', 'Flats'),
('wfwc4p3ss', 'assets/36.jpeg', 'PKKART Women Beige Flats Sandal', '1700', 'S', 'Sweet Girls\' Summer Bowtie Flat Sandals with Ankle buckle Women\'s Low heel Casual Slides Jelly Sandals Fashion Beads Flowers Kids Heel Shoes Girls Wedge Dress Sandals .', 'Flats');

-- --------------------------------------------------------

--
-- Table structure for table `womenwear`
--

CREATE TABLE `womenwear` (
  `productId` varchar(20) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `womenwear`
--

INSERT INTO `womenwear` (`productId`, `image`, `name`, `price`, `size`, `description`, `category`) VALUES
('wwc1p1sl', 'assets/11.jpeg', 'Mini Dress', '2100', 'L', 'Floral Print Dress Casual Cute Solid V Neck Dalmatian Ruffle Trim Tie Boho Beach High Waist Mini Dresses Women Fit and Flare Multicolor Dress.', 'Dresses'),
('wwc1p1sm', 'assets/11.jpeg', 'Mini Dress', '2100', 'M', 'Floral Print Dress Casual Cute Solid V Neck Dalmatian Ruffle Trim Tie Boho Beach High Waist Mini Dresses Women Fit and Flare Multicolor Dress.', 'Dresses'),
('wwc1p1ss', 'assets/11.jpeg', 'Mini Dress', '2100', 'S', 'Floral Print Dress Casual Cute Solid V Neck Dalmatian Ruffle Trim Tie Boho Beach High Waist Mini Dresses Women Fit and Flare Multicolor Dress.', 'Dresses'),
('wwc1p2sl', 'assets/12.jpeg', 'Vacation Halter Printed Sleeveless Dress', '2500', 'L', 'Halter neck style sleeveless detachable waist gathered tiered skirt panels invisible back zip neck opening.', 'Dresses'),
('wwc1p2sm', 'assets/12.jpeg', 'Vacation Halter Printed Sleeveless Dress', '2500', 'M', 'Halter neck style sleeveless detachable waist gathered tiered skirt panels invisible back zip neck opening.', 'Dresses'),
('wwc1p2ss', 'assets/12.jpeg', 'Vacation Halter Printed Sleeveless Dress', '2500', 'S', 'Halter neck style sleeveless detachable waist gathered tiered skirt panels invisible back zip neck opening.', 'Dresses'),
('wwc1p3sl', 'assets/1.jpeg', 'Selous Slip Mini Dress', '2700', 'L', 'The Selous Slip Mini Dress Blue Daisy was made for a night out with the girls!! This mini dress will have you feeling fun and fresh on a warm summers night.', 'Dresses'),
('wwc1p3sm', 'assets/1.jpeg', 'Selous Slip Mini Dress', '2700', 'M', 'The Selous Slip Mini Dress Blue Daisy was made for a night out with the girls!! This mini dress will have you feeling fun and fresh on a warm summers night.', 'Dresses'),
('wwc1p3ss', 'assets/1.jpeg', 'Selous Slip Mini Dress', '2700', 'S', 'The Selous Slip Mini Dress Blue Daisy was made for a night out with the girls!! This mini dress will have you feeling fun and fresh on a warm summers night.', 'Dresses'),
('wwc2p1sl', 'assets/8.jpg', 'Cut Out Crop Tank Top', '3000', 'L', 'Dazzle this summer with this striped blue crop top from People. Crafted from pure cotton, this design features noodle straps. Team it with shorts and flats for a chic look .', 'Tops'),
('wwc2p1sm', 'assets/8.jpg', 'Cut Out Crop Tank Top', '3000', 'M', 'Dazzle this summer with this striped blue crop top from People. Crafted from pure cotton, this design features noodle straps. Team it with shorts and flats for a chic look .', 'Tops'),
('wwc2p1ss', 'assets/8.jpg', 'Cut Out Crop Tank Top', '3000', 'S', 'Dazzle this summer with this striped blue crop top from People. Crafted from pure cotton, this design features noodle straps. Team it with shorts and flats for a chic look .', 'Tops'),
('wwc2p2sl', 'assets/9.jpg', 'Mint for Spring – The Cutest Eyelet Top!', '2800', 'L', 'It feels so fresh and happy especially when paired with white. This outfit is perfect for so many occasions Backless Printed Halter Dress For Vacation in Green.', 'Tops'),
('wwc2p2sm', 'assets/9.jpg', 'Mint for Spring – The Cutest Eyelet Top!', '2800', 'M', 'It feels so fresh and happy especially when paired with white. This outfit is perfect for so many occasions Backless Printed Halter Dress For Vacation in Green.', 'Tops'),
('wwc2p2ss', 'assets/9.jpg', 'Mint for Spring – The Cutest Eyelet Top!', '2800', 'S', 'It feels so fresh and happy especially when paired with white. This outfit is perfect for so many occasions Backless Printed Halter Dress For Vacation in Green.', 'Tops'),
('wwc2p3sl', 'assets/10.jpg', 'Macy Fit And Flare Wrap Top Blue', '3200', 'L', 'Featuring long bishop style sleeves, V-neckline that wraps under the bust and fastens with a ribbon tie at the side Print Cold Shoulder Top.', 'Tops'),
('wwc2p3sm', 'assets/10.jpg', 'Macy Fit And Flare Wrap Top Blue', '3200', 'M', 'Featuring long bishop style sleeves, V-neckline that wraps under the bust and fastens with a ribbon tie at the side Print Cold Shoulder Top.', 'Tops'),
('wwc2p3ss', 'assets/10.jpg', 'Macy Fit And Flare Wrap Top Blue', '3200', 'S', 'Featuring long bishop style sleeves, V-neckline that wraps under the bust and fastens with a ribbon tie at the side Print Cold Shoulder Top.', 'Tops'),
('wwc3p1sl', 'assets/2.jpg', 'Golden Bordered Peach Chakori Saree', '4200', 'L', 'Collection of the Latest Banarasi Sarees to amp up your saree game Chakori Ethnic Chanderi Saree.', 'Ethnic'),
('wwc3p1sm', 'assets/2.jpg', 'Golden Bordered Peach Chakori Saree', '4200', 'M', 'Collection of the Latest Banarasi Sarees to amp up your saree game Chakori Ethnic Chanderi Saree.', 'Ethnic'),
('wwc3p1ss', 'assets/2.jpg', 'Golden Bordered Peach Chakori Saree', '4200', 'S', 'Collection of the Latest Banarasi Sarees to amp up your saree game Chakori Ethnic Chanderi Saree.', 'Ethnic'),
('wwc3p2sl', 'assets/3.jpg', 'Ruffled Saree', '4000', 'L', 'Steal the show with these gorgeous ruffled sarees. Ruffled saree ideas for wedding and more inspirations for wedding.', 'Ethnic'),
('wwc3p2sm', 'assets/3.jpg', 'Ruffled Saree', '4000', 'M', 'Steal the show with these gorgeous ruffled sarees. Ruffled saree ideas for wedding and more inspirations for wedding.', 'Ethnic'),
('wwc3p2ss', 'assets/3.jpg', 'Ruffled Saree', '4000', 'S', 'Steal the show with these gorgeous ruffled sarees. Ruffled saree ideas for wedding and more inspirations for wedding.', 'Ethnic'),
('wwc3p3sl', 'assets/4.jpg', 'Gulzar Feriha Kurta', '3500', 'L', 'Adorned with tones of blue and green against the serenity of white, it comes embellished with delicate sequins work on the yoke.', 'Ethnic'),
('wwc3p3sm', 'assets/4.jpg', 'Gulzar Feriha Kurta', '3500', 'M', 'Adorned with tones of blue and green against the serenity of white, it comes embellished with delicate sequins work on the yoke.', 'Ethnic'),
('wwc3p3ss', 'assets/4.jpg', 'Gulzar Feriha Kurta', '3500', 'S', 'Adorned with tones of blue and green against the serenity of white, it comes embellished with delicate sequins work on the yoke.', 'Ethnic'),
('wwc4p1sl', 'assets/5.jpg', 'Cobain Pants', '2500', 'L', 'Lightweight suiting Optional chain accent Houndstooth plaid pattern pants.', 'Trousers'),
('wwc4p1sm', 'assets/5.jpg', 'Cobain Pants', '2500', 'M', 'Lightweight suiting Optional chain accent Houndstooth plaid pattern pants.', 'Trousers'),
('wwc4p1ss', 'assets/5.jpg', 'Cobain Pants', '2500', 'S', 'Lightweight suiting Optional chain accent Houndstooth plaid pattern pants.', 'Trousers'),
('wwc4p2sl', 'assets/7.jpg', 'Ribbon design Pants', '2700', 'L', 'This pants feature a side pockets and letter print design.amde by natural synthetic comfortable design.', 'Trousers'),
('wwc4p2sm', 'assets/7.jpg', 'Ribbon design Pants', '2700', 'M', 'This pants feature a side pockets and letter print design.amde by natural synthetic comfortable design.', 'Trousers'),
('wwc4p2ss', 'assets/7.jpg', 'Ribbon design Pants', '2700', 'S', 'This pants feature a side pockets and letter print design.amde by natural synthetic comfortable design.', 'Trousers'),
('wwc4p3sl', 'assets/6.jpg', 'Streatwear Jumpsuit', '2800', 'L', 'Red Camouflage Print Pockets Camo High Waisted Streetwear Long Jumpsuit High-Rise Checked Pants.', 'Trousers'),
('wwc4p3sm', 'assets/6.jpg', 'Streatwear Jumpsuit', '2800', 'M', 'Red Camouflage Print Pockets Camo High Waisted Streetwear Long Jumpsuit High-Rise Checked Pants.', 'Trousers'),
('wwc4p3ss', 'assets/6.jpg', 'Streatwear Jumpsuit', '2800', 'S', 'Red Camouflage Print Pockets Camo High Waisted Streetwear Long Jumpsuit High-Rise Checked Pants.', 'Trousers');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `kidswear`
--
ALTER TABLE `kidswear`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `menfootwear`
--
ALTER TABLE `menfootwear`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `menwear`
--
ALTER TABLE `menwear`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `orders_log`
--
ALTER TABLE `orders_log`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `womenfootwear`
--
ALTER TABLE `womenfootwear`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `womenwear`
--
ALTER TABLE `womenwear`
  ADD PRIMARY KEY (`productId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `sr_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `sr_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders_log`
--
ALTER TABLE `orders_log`
  MODIFY `sr_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sr_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
