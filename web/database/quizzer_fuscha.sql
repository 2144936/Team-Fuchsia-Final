-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2019 at 08:04 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizzer_fuscha`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `question_id`, `answer`) VALUES
(1, 1, 'Cascading Style Sheet'),
(2, 2, 'Hakon Wium Lie and Bert Bos'),
(3, 3, 'Both False'),
(4, 4, 'CSS Preprocessors'),
(5, 5, 'Style Rules and CSS Rules'),
(6, 6, 'Selector Syntax'),
(7, 7, '*'),
(8, 8, 'ID selectors'),
(9, 9, 'CSS Framework'),
(10, 10, 'linked'),
(11, 11, 'internal'),
(12, 12, '>'),
(13, 13, 'sibling combinators'),
(14, 14, 'adjacent sibling combinator.'),
(15, 15, 'Polyfills'),
(16, 16, 'Polyfills'),
(17, 17, 'True'),
(18, 18, 'numbers'),
(19, 19, 'duration units'),
(20, 20, 'resolution units'),
(21, 21, 'dimension'),
(22, 22, 'frequency units'),
(23, 23, 'percentages'),
(24, 24, 'String'),
(25, 25, 'False'),
(26, 31, 'True');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `enumeration` bit(1) NOT NULL,
  `mutipleChoice` bit(1) NOT NULL,
  `trueOrFalse` bit(1) NOT NULL,
  `question` varchar(255) NOT NULL,
  `essay` bit(1) NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `enumeration`, `mutipleChoice`, `trueOrFalse`, `question`, `essay`, `points`) VALUES
(1, b'0', b'0', b'0', 'What CSS stands for?', b'1', 5),
(2, b'0', b'1', b'0', 'Who developed the CSS?', b'0', 5),
(3, b'0', b'1', b'0', 'When such rules target different properties, they conflict, and must be resolved such that only one style is applied. When the styles involve the same property they affects cascade.', b'0', 5),
(4, b'0', b'1', b'0', 'its generates CSS using a custom language syntax that typically includes features that don\'t exist in pure CSS.', b'0', 5),
(5, b'0', b'1', b'0', 'What is the other name of Rules Sets?', b'0', 5),
(6, b'0', b'1', b'0', 'Chain of one or more sequences of simpe selector separated by combinators.', b'0', 5),
(7, b'0', b'1', b'0', 'what is the symbol of universal selector?', b'0', 5),
(8, b'0', b'1', b'0', 'nav#main is example of?', b'0', 5),
(9, b'0', b'1', b'0', 'it provides predefined CSS design functionality that can be reused, extended, or customized.', b'0', 5),
(10, b'0', b'1', b'0', 'What is the other name of external stylesheet?', b'0', 5),
(11, b'0', b'1', b'0', 'What is the other name of embedded stylesheet?', b'0', 5),
(12, b'0', b'1', b'0', 'What is symbol of child combinator?', b'0', 5),
(13, b'0', b'1', b'0', 'Adjacent sibling combinator and general sibling combinator is', b'0', 5),
(14, b'0', b'1', b'0', '+ is symbolize of?', b'0', 5),
(15, b'0', b'1', b'0', 'provides features that developers expect browsers to provide natively.', b'0', 5),
(16, b'0', b'1', b'0', 'Modernizr is an example of', b'0', 5),
(17, b'0', b'1', b'1', 'Bootstrap is one example of CSS framework.', b'0', 5),
(18, b'0', b'1', b'0', 'integers or reals in decimal notation.', b'0', 5),
(19, b'0', b'1', b'0', 'it used in animation. transition and related properties.', b'0', 5),
(20, b'0', b'1', b'0', 'used in media queries.', b'0', 5),
(21, b'0', b'1', b'0', 'length, angle, duration (or time), frequency, resolution', b'0', 5),
(22, b'0', b'1', b'0', 'initially introduced in CSS2 for the (obsoleted) aural media type;\r\nreintroduced in CSS3, but is currently unused', b'0', 5),
(23, b'0', b'1', b'0', 'calculated as a percentage of some value (usually taken from the parent.\r\nelement)', b'0', 5),
(24, b'0', b'1', b'0', 'delimited by single quotes ( \' ) or double quotes ( \" ).', b'0', 5),
(25, b'0', b'1', b'0', 'HyperText Markup Language (HTML) is language used to specify the presentation of\r\nstructurally marked up documents.', b'0', 5),
(31, b'0', b'0', b'1', 'Albert Einstein is the founder of the World Wide Web.', b'0', 5);

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` int(11) NOT NULL,
  `userAlias` varchar(255) NOT NULL,
  `score` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
