-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 06, 2023 at 12:01 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smart_agri`
--

-- --------------------------------------------------------

--
-- Table structure for table `farmer_details`
--

DROP TABLE IF EXISTS `farmer_details`;
CREATE TABLE IF NOT EXISTS `farmer_details` (
  `f_id` int(100) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(100) NOT NULL,
  `f_lname` varchar(100) NOT NULL,
  `f_mobile` varchar(100) NOT NULL,
  `f_address` varchar(100) NOT NULL,
  `f_photo` varchar(100) NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmer_details`
--

INSERT INTO `farmer_details` (`f_id`, `f_name`, `f_lname`, `f_mobile`, `f_address`, `f_photo`) VALUES
(1, 'Chetan', 'Patil', '9988776655', 'Nipani', '0-4.png');

-- --------------------------------------------------------

--
-- Table structure for table `land_details`
--

DROP TABLE IF EXISTS `land_details`;
CREATE TABLE IF NOT EXISTS `land_details` (
  `l_id` int(100) NOT NULL AUTO_INCREMENT,
  `f_id` varchar(100) NOT NULL,
  `l_size` varchar(100) NOT NULL,
  `l_soiltype` varchar(100) NOT NULL,
  `l_waterresource` varchar(100) NOT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `land_details`
--

INSERT INTO `land_details` (`l_id`, `f_id`, `l_size`, `l_soiltype`, `l_waterresource`) VALUES
(1, '1', '10 Acres', 'Red', 'Lake');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `utype` varchar(100) NOT NULL,
  `s_qstn` varchar(100) NOT NULL,
  `s_ans` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `utype`, `s_qstn`, `s_ans`, `status`) VALUES
('9988776655', 'Chetan321', 'farmer', 'Where did you born?', 'Nipani', 'active'),
('admin@agri', 'admin123', 'admin', 'Fev. Place?', 'Mysore', 'active'),
('rajesh@gmail.com', '9517531230', 'officer', 'Which is your Fev. Sports Car?', 'Audi', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `officer_details`
--

DROP TABLE IF EXISTS `officer_details`;
CREATE TABLE IF NOT EXISTS `officer_details` (
  `o_id` int(100) NOT NULL AUTO_INCREMENT,
  `o_fname` varchar(100) NOT NULL,
  `o_lname` varchar(100) NOT NULL,
  `o_email` varchar(100) NOT NULL,
  `o_mobile` varchar(100) NOT NULL,
  `o_degisnation` varchar(100) NOT NULL,
  `o_photo` varchar(100) NOT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `officer_details`
--

INSERT INTO `officer_details` (`o_id`, `o_fname`, `o_lname`, `o_email`, `o_mobile`, `o_degisnation`, `o_photo`) VALUES
(1, 'Rajesh', 'Patil', 'rajesh@gmail.com', '9517531230', 'Head Officer', 'user.png');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `or_id` int(100) NOT NULL AUTO_INCREMENT,
  `f_id` varchar(100) NOT NULL,
  `pr_id` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `tl_price` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`or_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`or_id`, `f_id`, `pr_id`, `quantity`, `tl_price`, `status`) VALUES
(1, '1', '2', '2', '700', 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `pr_id` int(100) NOT NULL AUTO_INCREMENT,
  `pr_name` varchar(100) NOT NULL,
  `pr_description` varchar(100) NOT NULL,
  `pr_code` varchar(100) NOT NULL,
  `pr_price` varchar(100) NOT NULL,
  `pr_photo` varchar(100) NOT NULL,
  PRIMARY KEY (`pr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pr_id`, `pr_name`, `pr_description`, `pr_code`, `pr_price`, `pr_photo`) VALUES
(1, 'Harit Sanjivini', 'Harit Sanjivini is best product for famers.', '445592', '1500', 'harit-sanjivini.jpg'),
(2, 'Sulfur Acid', 'Sulfur Acid', '136045', '350', 'bahubali-sulfar.webp'),
(3, 'Neem Power', 'Neem Power Fertilizer for plants', '291095', '250', 'agroneem.jpeg'),
(4, 'Agri Bloom', 'Agri Bloom', '222974', '450', 'bloom.webp');

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

DROP TABLE IF EXISTS `queries`;
CREATE TABLE IF NOT EXISTS `queries` (
  `q_id` int(100) NOT NULL AUTO_INCREMENT,
  `q_form` varchar(100) NOT NULL,
  `queriy` varchar(100) NOT NULL,
  `a_date` varchar(100) NOT NULL,
  `q_photo` varchar(100) NOT NULL,
  `replay` varchar(100) NOT NULL,
  `r_date` varchar(100) NOT NULL,
  PRIMARY KEY (`q_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `queries`
--

INSERT INTO `queries` (`q_id`, `q_form`, `queriy`, `a_date`, `q_photo`, `replay`, `r_date`) VALUES
(1, '1', 'How to solve this problem?', '5-9-2023', 'istockphoto-483451251-612x612.jpg', 'its has infection use neem power to reduce this', '5-9-2023');

-- --------------------------------------------------------

--
-- Table structure for table `scheme_applied`
--

DROP TABLE IF EXISTS `scheme_applied`;
CREATE TABLE IF NOT EXISTS `scheme_applied` (
  `sca_id` int(100) NOT NULL AUTO_INCREMENT,
  `sc_id` varchar(100) NOT NULL,
  `f_id` varchar(100) NOT NULL,
  `sca_date` varchar(100) NOT NULL,
  `sca_status` varchar(100) NOT NULL,
  PRIMARY KEY (`sca_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scheme_applied`
--

INSERT INTO `scheme_applied` (`sca_id`, `sc_id`, `f_id`, `sca_date`, `sca_status`) VALUES
(1, '1', '1', '5-9-2023', 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `schems`
--

DROP TABLE IF EXISTS `schems`;
CREATE TABLE IF NOT EXISTS `schems` (
  `sc_id` int(100) NOT NULL AUTO_INCREMENT,
  `sc_name` varchar(100) NOT NULL,
  `sc_description` varchar(100) NOT NULL,
  `sc_photo` varchar(100) NOT NULL,
  `sc_status` varchar(100) NOT NULL,
  PRIMARY KEY (`sc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schems`
--

INSERT INTO `schems` (`sc_id`, `sc_name`, `sc_description`, `sc_photo`, `sc_status`) VALUES
(1, 'Pradhan Mantri Krishi Sinchai Yojana', 'Pradhan Mantri Krishi Sinchai Yojana', 'Dummy File.pdf', 'Available');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
