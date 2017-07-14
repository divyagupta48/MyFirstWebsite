-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2017 at 01:00 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `diorum`
--

-- --------------------------------------------------------

--
-- Table structure for table `created`
--

CREATE TABLE IF NOT EXISTS `created` (
  `topic_id` int(50) NOT NULL,
  `topic_name` varchar(50) NOT NULL,
  `date_created` date NOT NULL,
  `user_id` int(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `created`
--

INSERT INTO `created` (`topic_id`, `topic_name`, `date_created`, `user_id`, `description`, `category`) VALUES
(1003, 'Compiler Design', '2017-03-31', 20002, 'Which parser should be used nowadays and why?', 'computer'),
(1002, 'Texture', '2017-04-12', 20003, 'Use of Textures in daily Life...!!!', 'art'),
(1004, 'macbeth', '2017-04-13', 20005, 'Act-1 Scene 1 of Macbeth by shakespeare', 'Literature'),
(1005, 'macbeth', '2017-04-13', 20006, 'Act-1 Scene 2 of Macbeth by shakespeare', 'Literature'),
(1005, 'Western or Indian?', '2017-05-12', 20005, 'Which is better....Indian Classical or western?', 'music'),
(1006, 'Cricket or Hockey?', '2017-05-12', 20006, 'Which is better....cricket or hockey?', 'music'),
(1007, 'B. Tech or B.Sc?', '0000-00-00', 20002, 'Which one is better and why?', 'studies'),
(1008, '', '0000-00-00', 20002, '', ''),
(1009, 'B. Tech or B.Sc?', '0000-00-00', 20002, 'Which one is better and why?', 'studies'),
(1010, 'wHICH IS BETTER?', '0000-00-00', 20002, 'BOLLYWOOD OR HOLLYWOOD', 'music'),
(1011, 'science or commerce?', '0000-00-00', 20002, 'Which one has a better scope and why?', 'studies'),
(1012, 'Java Programming', '0000-00-00', 20002, 'What is the difference between abstraction and Enc', 'computer'),
(1013, 'Programming', '0000-00-00', 20002, 'Reference of some good books', 'computer'),
(1014, 'student life', '0000-00-00', 20002, 'Mobile phones should be given in student life or n', 'debate'),
(1015, 'cricket', '0000-00-00', 20002, 'Is virat kohli a good cricketer or busy in his lov', 'Games'),
(1016, 'cricket', '0000-00-00', 20002, 'Is M.s. Dhoni really a good cricketer?', 'Games'),
(1017, 'student life', '0000-00-00', 20002, 'Should students be given vehicle or not...Lets debate!', 'debate'),
(1018, 'sports in India', '0000-00-00', 20002, 'Why government of India does not support our sportsmanship?', 'Games'),
(1019, 'songs', '0000-00-00', 20002, 'middle era songs bollywood....', 'music'),
(1020, 'Accounts', '0000-00-00', 20002, 'Is maintaining a balance sheet helpful always?', 'studies'),
(1021, 'Web Tech', '0000-00-00', 20002, 'php or xml?', 'studies'),
(1022, 'save trees', '0000-00-00', 20002, 'Why people do not make efforts to save the trees? ', 'studies');

-- --------------------------------------------------------

--
-- Table structure for table `following`
--

CREATE TABLE IF NOT EXISTS `following` (
  `topic_id` int(50) NOT NULL,
  `topic_name` varchar(50) NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `user_id` int(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `starred`
--

CREATE TABLE IF NOT EXISTS `starred` (
  `topic_id` int(50) NOT NULL,
  `topic_name` varchar(50) NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `user_id` int(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `starred`
--

INSERT INTO `starred` (`topic_id`, `topic_name`, `date_created`, `user_id`, `description`, `category`) VALUES
(1000, 'Laptops', '2017-05-09 02:11:00.000000', 20000, 'Which laptop I should buy?', 'computer'),
(1001, 'WebTech', '2017-04-10 08:00:10.000000', 20001, 'Which client side scripting language is better?', 'computer');

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE IF NOT EXISTS `topic` (
  `topic_id` int(50) NOT NULL,
  `topic_name` varchar(50) NOT NULL,
  `date_created` date NOT NULL,
  `user_id` int(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`topic_id`, `topic_name`, `date_created`, `user_id`, `description`, `category`) VALUES
(1003, 'Compiler Design', '2017-03-31', 20002, 'Which parser should be used nowadays and why?', 'computer'),
(1002, 'Texture', '2017-04-12', 20003, 'Use of Textures in daily Life...!!!', 'art'),
(1004, 'macbeth', '2017-04-13', 20005, 'Act-1 Scene 1 of Macbeth by shakespeare', 'Literature'),
(1005, 'macbeth', '2017-04-13', 20006, 'Act-1 Scene 2 of Macbeth by shakespeare', 'Literature'),
(1005, 'Western or Indian?', '2017-05-12', 20005, 'Which is better....Indian Classical or western?', 'music'),
(1006, 'Cricket or Hockey?', '2017-05-12', 20006, 'Which is better....cricket or hockey?', 'music'),
(1007, 'B. Tech or B.Sc?', '0000-00-00', 20002, 'Which one is better and why?', 'studies'),
(1008, '', '0000-00-00', 20002, '', ''),
(1009, 'B. Tech or B.Sc?', '0000-00-00', 20002, 'Which one is better and why?', 'studies'),
(1010, 'wHICH IS BETTER?', '0000-00-00', 20002, 'BOLLYWOOD OR HOLLYWOOD', 'music'),
(1011, 'science or commerce?', '0000-00-00', 20002, 'Which one has a better scope and why?', 'studies'),
(1012, 'Java Programming', '0000-00-00', 20002, 'What is the difference between abstraction and Enc', 'computer'),
(1013, 'Programming', '0000-00-00', 20002, 'Reference of some good books', 'computer'),
(1014, 'student life', '0000-00-00', 20002, 'Mobile phones should be given in student life or n', 'debate'),
(1015, 'cricket', '0000-00-00', 20002, 'Is virat kohli a good cricketer or busy in his lov', 'Games'),
(1016, 'cricket', '0000-00-00', 20002, 'Is M.s. Dhoni really a good cricketer?', 'Games'),
(1017, 'student life', '0000-00-00', 20002, 'Should students be given vehicle or not...Lets debate!', 'debate'),
(1018, 'sports in India', '0000-00-00', 20002, 'Why government of India does not support our sportsmanship?', 'Games'),
(1019, 'songs', '0000-00-00', 20002, 'middle era songs bollywood....', 'music'),
(1020, 'Accounts', '0000-00-00', 20002, 'Is maintaining a balance sheet helpful always?', 'studies'),
(1021, 'Web Tech', '0000-00-00', 20002, 'php or xml?', 'studies'),
(1022, 'save trees', '0000-00-00', 20002, 'Why people do not make efforts to save the trees? ', 'studies');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` int(50) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `First Name` varchar(20) NOT NULL,
  `Last Name` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Company` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
