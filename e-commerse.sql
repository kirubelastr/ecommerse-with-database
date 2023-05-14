-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 14, 2023 at 11:44 PM
-- Server version: 5.7.40
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-commerse`
--

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

DROP TABLE IF EXISTS `logins`;
CREATE TABLE IF NOT EXISTS `logins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password1` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`id`, `email`, `password1`) VALUES
(6, 'abc@gmail.com', 'f190ce9ac8445d249747cab7be43f7d5'),
(7, 'a@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b'),
(8, 'ab@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE IF NOT EXISTS `register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(15) NOT NULL,
  `middlename` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password1` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `sex` varchar(8) NOT NULL,
  `address1` varchar(15) NOT NULL,
  `city` varchar(25) NOT NULL,
  `state1` varchar(25) NOT NULL,
  `zip` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `firstname`, `middlename`, `lastname`, `email`, `password1`, `birthdate`, `sex`, `address1`, `city`, `state1`, `zip`) VALUES
(5, 'asfasfm;m', 'asmfam', 'kasnfklasn', 'abc@gmail.com', 'f190ce9ac8445d249747cab7be43f7d5', '2023-05-19', 'male', 'asf', 'afs', 'asf', 12312),
(6, 'saf', 'asd', 'asd', 'a@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '2023-05-11', 'female', '1', '1', '1', 12),
(7, 'aksnc', 'lnsdvn', 'kjnkn', 'ab@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-05-18', 'female', 'asf', 'd', 'as', 123);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
