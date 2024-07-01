-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 21, 2019 at 01:20 AM
-- Server version: 5.1.33
-- PHP Version: 5.2.9-2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `pharmacyfinall`
--
CREATE DATABASE IF NOT EXISTS `pharmacyfinall` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pharmacyfinall`;
-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `comment` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`name`, `email`, `comment`) VALUES
('ayisheshim birihanie', 'ayishe@gmail.com', 'ggddyyvjuvv'),
('ayishewerw', 'eweewrrw@gmail.com', 'rooortnvh\r\ngffbbc'),
('ayishewerw', 'eweewrrw@gmail.com', 'rooortnvh\r\ngffbbc'),
('ayishe', 'ayishe@gmail.com', 'rtffophg'),
('Hirut', 'hirut@gmail.com', 'fdffdfd\r\njjfjjj'),
('ayisheshim birihanie', 'ayishe@gmail.com', 'vccggcgc');

-- --------------------------------------------------------

--
-- Table structure for table `comment2`
--

CREATE TABLE IF NOT EXISTS `comment2` (
  `name` varchar(25) NOT NULL,
  `email` varchar(26) NOT NULL,
  `comment` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment2`
--

INSERT INTO `comment2` (`name`, `email`, `comment`) VALUES
('ayishe', 'ayishe@gmail.com', 'dseesdsed\r\nrerfrdfdr'),
('ayishe', 'ayishe@gmail.com', 'dserr'),
('ayisheshim birihanie', 'eweewrrw@gmail.com', 'not satisfied'),
('ayishewerw', 'ayishe@gmail.com', 'vfccvcvvv'),
('ayisheshim birihanie', 'asewdd@gmail.com', 'satisfied'),
('ayisheshim birihanie', 'ayishe@gmail.com', 'i am satisfayed'),
('ayishewerw', 'qwewee@gmail.com', 'goood tretment'),
('ayishewerw', 'ayishe@gmail.com', 'bgxgxxgxggx'),
('ayisheshim birihanie', 'asewdd@gmail.com', 'reerer\r\nfyyyfyf\r\nfhyyf\r\ngfgg');

-- --------------------------------------------------------

--
-- Table structure for table `customer_bill`
--

CREATE TABLE IF NOT EXISTS `customer_bill` (
  `cus_id` int(11) NOT NULL AUTO_INCREMENT,
  `Fname` varchar(30) NOT NULL,
  `Lname` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `total` float NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`cus_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `customer_bill`
--

INSERT INTO `customer_bill` (`cus_id`, `Fname`, `Lname`, `date`, `total`, `user_id`) VALUES
(16, 'abebe', 'bru', '2019-06-05', 10, 26),
(17, 'ayisheshim', 'birihanie', '2019-06-19', 10, 26),
(18, 'aysheshim', 'belachew', '2019-06-19', 10, 26),
(19, 'yishamu', 'getenet', '2019-06-19', 39, 26),
(20, 'ayisheshim', 'birihanie', '2019-06-20', 72, 26),
(21, 'ayisheshim', 'birihanie', '2019-06-20', 120, 26),
(22, 'ayisheshim', 'birihanie', '2019-06-20', 450, 26),
(23, 'terrese', 'rrrsrr', '2019-06-20', 8016, 26),
(24, 'melese', 'ebabu', '2019-06-20', 8276, 26);

-- --------------------------------------------------------

--
-- Table structure for table `customer_buy_drugs`
--

CREATE TABLE IF NOT EXISTS `customer_buy_drugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cuss_id` int(11) NOT NULL,
  `solddrug_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cus_id` (`cuss_id`),
  KEY `solddrug_id` (`solddrug_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `customer_buy_drugs`
--

INSERT INTO `customer_buy_drugs` (`id`, `cuss_id`, `solddrug_id`) VALUES
(15, 16, 19),
(16, 17, 20),
(17, 18, 21),
(18, 19, 22),
(19, 20, 23),
(20, 21, 24),
(21, 21, 25),
(22, 22, 26),
(23, 23, 27),
(24, 23, 28),
(25, 24, 29),
(26, 24, 30),
(27, 24, 31);

-- --------------------------------------------------------

--
-- Table structure for table `expired_drugs`
--

CREATE TABLE IF NOT EXISTS `expired_drugs` (
  `expire_drug_id` int(11) NOT NULL AUTO_INCREMENT,
  `manuDate` date NOT NULL,
  `expireDate` date NOT NULL,
  `expire_drug_quantity` int(11) NOT NULL,
  `removed_date` date NOT NULL,
  `drug_id` int(11) NOT NULL,
  `removedby_id` int(11) NOT NULL,
  PRIMARY KEY (`expire_drug_id`),
  KEY `expired_drugs_ibfk_1` (`drug_id`),
  KEY `expired_drugs_ibfk_2` (`removedby_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `expired_drugs`
--

INSERT INTO `expired_drugs` (`expire_drug_id`, `manuDate`, `expireDate`, `expire_drug_quantity`, `removed_date`, `drug_id`, `removedby_id`) VALUES
(1, '2018-06-04', '2018-06-28', 84, '2019-05-08', 65, 27),
(2, '2018-06-04', '2018-06-28', 11, '2019-05-25', 65, 41),
(3, '2018-06-12', '2018-06-27', 69, '2019-05-25', 72, 41);

-- --------------------------------------------------------

--
-- Table structure for table `manorder`
--

CREATE TABLE IF NOT EXISTS `manorder` (
  `id` int(11) NOT NULL,
  `drugname` varchar(30) NOT NULL,
  `drugtype` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL,
  `orderdate` date NOT NULL,
  `orderid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manorder`
--

INSERT INTO `manorder` (`id`, `drugname`, `drugtype`, `quantity`, `orderdate`, `orderid`) VALUES
(2, 'amoxy', 'solid', 48, '2019-06-01', 42),
(6, 'pepciline', 'solid', 25, '2019-06-01', 42),
(23, 'amoxy', 'solid', 3454, '2019-06-19', 21),
(9, 'amoxy', 'solid', 48, '2019-06-01', 25),
(8, 'pepciline', 'solid', 56, '2019-06-01', 42),
(67, 'amoxy', 'solid', 56, '2019-06-01', 42),
(13, 'amoxy', 'solid', 28, '2019-06-19', 54),
(17, 'chlorechy', 'solid', 545, '2019-06-20', 4),
(3, 'amoxy', 'solid', 36, '2019-06-20', 25);

-- --------------------------------------------------------

--
-- Table structure for table `order_response`
--

CREATE TABLE IF NOT EXISTS `order_response` (
  `id` int(11) NOT NULL,
  `drugname` varchar(30) NOT NULL,
  `response` varchar(1000) NOT NULL,
  `response_date` date NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_response`
--

INSERT INTO `order_response` (`id`, `drugname`, `response`, `response_date`, `order_id`) VALUES
(2, 'amoxy', 'Your drug order request not accepted.', '2019-06-12', 42),
(6, 'pepciline', 'Your drug order request accepted.', '2019-06-12', 42),
(8, 'pepciline', 'Your drug order request not accepted.', '2019-06-12', 42),
(67, 'amoxy', 'Your drug order request accepted.', '2019-06-19', 42),
(10, 'pepciline', 'Your drug order request accepted.', '2019-06-20', 42),
(13, 'amoxy', 'Your drug order request not accepted.', '2019-06-20', 54);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `drugname` varchar(30) NOT NULL,
  `invoice_no` varchar(30) NOT NULL,
  `payamount` int(11) NOT NULL,
  `paytype` varchar(30) NOT NULL,
  `serial_no` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`drugname`, `invoice_no`, `payamount`, `paytype`, `serial_no`) VALUES
('postpill', '330', 998, 'birr', '11113'),
('postpill', '24', 9989, 'birr', '23e4'),
('postpill', '22', 9989, 'birr', '23e4'),
('postpill', '24', 9989, 'birr', '1111'),
('postpill', '24', 9989, 'birr', '23e4'),
('postpill', '35', 7655, 'birr', '23ew'),
('amoxy', '330', 3030, 'birr', '23ew9');

-- --------------------------------------------------------

--
-- Table structure for table `sold_drugs`
--

CREATE TABLE IF NOT EXISTS `sold_drugs` (
  `sold_drug_id` int(11) NOT NULL AUTO_INCREMENT,
  `sold_drug_quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `sold_date` date NOT NULL,
  `soldby_id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  PRIMARY KEY (`sold_drug_id`),
  KEY `soldby_id` (`soldby_id`),
  KEY `sold_drugs_ibfk_2` (`stock_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `sold_drugs`
--

INSERT INTO `sold_drugs` (`sold_drug_id`, `sold_drug_quantity`, `price`, `sold_date`, `soldby_id`, `stock_id`) VALUES
(18, 7, 70, '2019-06-01', 26, 76),
(19, 1, 10, '2019-06-05', 26, 68),
(20, 1, 10, '2019-06-19', 26, 68),
(21, 1, 10, '2019-06-19', 26, 68),
(22, 3, 39, '2019-06-19', 26, 73),
(23, 6, 72, '2019-06-20', 26, 69),
(24, 9, 108, '2019-06-20', 26, 69),
(25, 1, 12, '2019-06-20', 26, 69),
(26, 30, 450, '2019-06-20', 26, 70),
(27, 500, 7500, '2019-06-20', 26, 70),
(28, 43, 516, '2019-06-20', 26, 78),
(29, 500, 7500, '2019-06-20', 26, 70),
(30, 43, 516, '2019-06-20', 26, 78),
(31, 20, 260, '2019-06-20', 26, 77);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `transfer_quantity` text NOT NULL,
  `manuDate` date NOT NULL,
  `expireDate` date NOT NULL,
  `transfered_date` date NOT NULL,
  `drugID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`stock_id`),
  KEY `stock_ibfk_1` (`user_id`),
  KEY `drugID` (`drugID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `transfer_quantity`, `manuDate`, `expireDate`, `transfered_date`, `drugID`, `user_id`) VALUES
(68, '0', '2019-02-15', '2019-08-28', '2019-04-10', 73, 25),
(69, '-7', '2019-03-15', '2019-08-28', '2019-05-15', 74, 27),
(70, '-997', '2019-02-24', '2019-08-26', '2019-05-25', 75, 41),
(72, '9', '2019-03-24', '2019-08-26', '2019-06-01', 77, 41),
(73, '3', '2019-02-25', '2019-08-26', '2019-06-01', 78, 41),
(75, '25', '2019-03-24', '2019-09-26', '2019-06-01', 80, 41),
(76, '35', '2019-03-24', '2019-06-02', '2019-06-01', 81, 41),
(77, '480', '2019-03-24', '2019-06-21', '2019-06-20', 82, 41),
(78, '614', '2019-03-24', '2019-09-20', '2019-06-21', 83, 41),
(80, 'null', '0000-00-00', '0000-00-00', '0000-00-00', 85, 41);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE IF NOT EXISTS `store` (
  `drugID` int(11) NOT NULL AUTO_INCREMENT,
  `drugName` varchar(100) NOT NULL,
  `drugType` varchar(100) NOT NULL,
  `manuDate` date NOT NULL,
  `expireDate` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitCost` float NOT NULL,
  `sellingPrice` float NOT NULL,
  `recordedDate` date NOT NULL,
  `recorder_id` int(11) NOT NULL,
  PRIMARY KEY (`drugID`),
  KEY `recorder_id` (`recorder_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=86 ;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`drugID`, `drugName`, `drugType`, `manuDate`, `expireDate`, `quantity`, `unitCost`, `sellingPrice`, `recordedDate`, `recorder_id`) VALUES
(65, '    paracetamol', 'solid', '0000-00-00', '0000-00-00', 0, 6, 7, '2018-06-23', 24),
(72, 'paracetamol', 'solid', '0000-00-00', '0000-00-00', 0, 8, 10, '2018-06-23', 24),
(73, 'metrondazol', 'solid', '2019-06-12', '2019-06-27', 69, 8, 10, '2019-04-10', 25),
(74, ' amox', 'solid', '2019-03-15', '2019-08-28', 19, 10, 12, '2019-05-07', 27),
(75, 'amoxe', 'DD', '2019-02-24', '2019-08-26', 987, 12, 15, '2019-05-25', 41),
(76, 'derr', 'MMM', '2019-02-25', '2019-08-26', 1000, 12, 15, '2019-05-24', 41),
(77, '  pepciline', 'solid', '2019-03-24', '2019-08-26', 50, 12, 15, '2019-06-19', 41),
(78, 'chlorecy', 'AAA', '2019-02-25', '2019-08-26', 991, 10, 13, '2019-06-01', 41),
(79, ' amoxy', 'MMM', '2019-02-25', '2019-08-26', 75, 10, 10, '2019-06-01', 41),
(80, ' pepciline', 'DD', '2019-03-24', '2019-09-26', 199, 8, 11, '2019-06-01', 41),
(81, 'pepcine', 'soid', '2019-03-24', '2019-06-02', 2, 7, 10, '2019-06-01', 41),
(82, 'quartom', 'soid', '2019-03-24', '2019-06-21', 500, 10, 13, '2019-06-20', 41),
(83, 'quartomm', 'AAA', '2019-03-24', '2019-09-20', 300, 8, 12, '2019-06-20', 41),
(84, 'postpill', 'soid', '2019-03-24', '2019-06-22', 0, 7, 9, '2019-06-20', 41),
(85, 'metro', 'solid', '2019-05-24', '2019-06-22', 1000, 6, 8, '2019-06-21', 41);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `Fname` varchar(30) NOT NULL,
  `Lname` varchar(30) NOT NULL,
  `sex` varchar(24) NOT NULL,
  `phoneNumber` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `Fname`, `Lname`, `sex`, `phoneNumber`) VALUES
(24, 'ayisheshim', 'Birihanie', 'male', 12345678),
(25, 'melese', 'ebabu', 'male', 1234567),
(26, 'Gebrye', 'Desse', 'male', 23456789),
(27, 'Yishamu', 'Getnet', 'Female', 234567),
(38, 'Fasil', 'birihanu', 'male', 2147483647),
(41, 'aster', 'adbaru', 'Female', 2147483647),
(42, 'ayisheshim', 'Birihanie', 'male', 2147483647),
(43, 'ayishebr', 'belachew', 'male', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE IF NOT EXISTS `user_account` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`account_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`account_id`, `userName`, `password`, `role`, `user_id`, `status`) VALUES
(30, 'aaaaa', 'admin', 'Admin', 25, 0),
(31, 'ccccc', 'cashier', 'Cashier', 26, 0),
(32, 'ppppp', 'pharmacist', 'pharmacist', 27, 0),
(35, 'sssss', 'supplier', 'supplier', 38, 0),
(38, 'ssss', 'storer', 'storecordinator', 41, 0),
(39, 'mmmm', 'manager', 'manage', 42, 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_bill`
--
ALTER TABLE `customer_bill`
  ADD CONSTRAINT `customer_bill_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `customer_buy_drugs`
--
ALTER TABLE `customer_buy_drugs`
  ADD CONSTRAINT `customer_buy_drugs_ibfk_1` FOREIGN KEY (`cuss_id`) REFERENCES `customer_bill` (`cus_id`),
  ADD CONSTRAINT `customer_buy_drugs_ibfk_2` FOREIGN KEY (`solddrug_id`) REFERENCES `sold_drugs` (`sold_drug_id`);

--
-- Constraints for table `expired_drugs`
--
ALTER TABLE `expired_drugs`
  ADD CONSTRAINT `expired_drugs_ibfk_1` FOREIGN KEY (`removedby_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `expired_drugs_ibfk_2` FOREIGN KEY (`removedby_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `sold_drugs`
--
ALTER TABLE `sold_drugs`
  ADD CONSTRAINT `sold_drugs_ibfk_1` FOREIGN KEY (`soldby_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `sold_drugs_ibfk_2` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`stock_id`);

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`drugID`) REFERENCES `store` (`drugID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `store_ibfk_1` FOREIGN KEY (`recorder_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user_account`
--
ALTER TABLE `user_account`
  ADD CONSTRAINT `user_account_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
