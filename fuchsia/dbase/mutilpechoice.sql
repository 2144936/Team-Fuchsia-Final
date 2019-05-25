-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2019 at 07:59 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mutilpechoice`
--

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE `choices` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT '0',
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`id`, `question_number`, `is_correct`, `text`) VALUES
(1, 1, 1, 'Cascading Style Sheet'),
(2, 1, 0, 'Cassette style sheet'),
(3, 1, 0, 'Casting stile Shoot'),
(4, 1, 0, 'All of the above'),
(5, 2, 0, 'Berner Turners'),
(6, 2, 0, 'Hakon Wium Lie'),
(7, 2, 0, 'Bert Bos'),
(8, 2, 1, 'Berner Turners and Hakon Wium Lie'),
(9, 3, 0, 'First sentence is true but second is false.'),
(10, 3, 1, 'Both false'),
(11, 3, 0, 'Both True'),
(12, 3, 0, 'First sentence is false but second is true'),
(13, 4, 0, 'CSS framework'),
(14, 4, 0, 'Polyrills'),
(15, 4, 1, 'CSS Preprocessors'),
(16, 4, 0, 'None of the above'),
(17, 5, 0, 'Style rules'),
(18, 5, 0, 'CSS Rules'),
(19, 5, 0, 'Selector'),
(20, 5, 1, 'Style rules and CSS Rules'),
(21, 6, 0, 'Selector'),
(22, 6, 1, 'Selector Syntax'),
(23, 6, 0, 'charset'),
(24, 6, 0, 'CSS Sets'),
(25, 7, 1, '*'),
(26, 7, 0, ';'),
(27, 7, 0, '>'),
(28, 7, 0, 'None of the above'),
(29, 8, 0, 'class selectors'),
(30, 8, 1, 'ID selectors'),
(31, 8, 0, 'group selectors'),
(32, 8, 0, 'type selectors'),
(33, 9, 0, 'polyfills'),
(34, 9, 0, 'CSS Preprocessors'),
(35, 9, 1, 'CSS Framework'),
(36, 9, 0, 'CSS Rules'),
(37, 10, 0, 'internal'),
(38, 10, 0, 'embedded'),
(39, 10, 1, 'linked'),
(40, 10, 0, 'plain'),
(41, 11, 0, 'pseudo elements'),
(42, 11, 0, 'external stylesheet'),
(43, 11, 0, 'plain'),
(44, 11, 1, 'internal'),
(45, 12, 0, '*'),
(46, 12, 0, ':'),
(47, 12, 0, '<'),
(48, 12, 1, '>'),
(49, 13, 0, 'pseudo elements'),
(50, 13, 1, 'sibling combinators'),
(51, 13, 0, 'combinators'),
(52, 13, 0, 'attribute selectors'),
(53, 14, 0, 'first element'),
(54, 14, 0, 'child combinator'),
(55, 14, 0, 'general sibling combinator'),
(56, 14, 1, 'adjacent sibling combinator'),
(57, 15, 0, 'CSS framework'),
(58, 15, 0, 'CSS preprocessor'),
(59, 15, 1, 'Polyfills'),
(60, 15, 0, 'All of the above'),
(61, 16, 0, 'pseudo elements'),
(62, 16, 1, 'polyfills'),
(63, 16, 0, 'internal'),
(64, 16, 0, 'None of the above'),
(65, 17, 0, 'False'),
(66, 17, 1, 'True'),
(67, 17, 0, 'Maybe'),
(68, 17, 0, 'In between'),
(69, 18, 0, 'dimension'),
(70, 18, 1, 'numbers'),
(71, 18, 0, 'keywords'),
(72, 18, 0, 'angle'),
(73, 19, 0, 'dimension'),
(74, 19, 0, 'keywords'),
(75, 19, 1, 'duration units'),
(76, 19, 0, 'resolution units'),
(77, 20, 1, 'resolution units'),
(78, 20, 0, 'duration units'),
(79, 20, 0, 'percentages'),
(80, 20, 0, 'dimension'),
(81, 21, 1, 'dimension'),
(82, 21, 0, 'keywords'),
(83, 21, 0, 'duration units'),
(84, 21, 0, 'resolution units'),
(85, 22, 0, 'resolution units'),
(86, 22, 0, 'duration units'),
(87, 22, 0, 'percentages'),
(88, 22, 1, 'frequency units'),
(89, 23, 0, 'resolution units'),
(90, 23, 0, 'duration units'),
(91, 23, 1, 'percentages'),
(92, 23, 0, 'frequency units'),
(93, 24, 0, 'resolution units'),
(94, 24, 0, 'duration units'),
(95, 24, 0, 'percentages'),
(96, 24, 1, 'String'),
(97, 25, 0, 'True'),
(98, 25, 1, 'False'),
(99, 25, 0, 'Maybe'),
(100, 25, 0, 'In between');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_number` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_number`, `text`) VALUES
(1, 'What does CSS stand for?'),
(2, 'Who developed the CSS?'),
(3, 'When such rules target different properties, they conflict, and must be resolved such that only one style is applied. When the styles involve the same property they affects cascade.'),
(4, 'its generates CSS using a custom language syntax that typically includes features that don\'t exist in pure CSS.'),
(5, 'What is the other name of Rules Sets?'),
(6, 'Chain of one or more sequences of simpe selector separated by combinators.'),
(7, 'what is the symbol of universal selector?'),
(8, 'nav#main is example of?'),
(9, 'it provides predefined CSS design functionality that can be reused, extended, or customized.'),
(10, 'What is the other name of external stylesheet?'),
(11, 'What is the other name of embedded stylesheet?'),
(12, 'What is symbol of child combinator?'),
(13, 'Adjacent sibling combinator and general sibling combinator is ________.'),
(14, ' + is symbolize of?'),
(15, 'provides features that developers expect browsers to provide natively.'),
(16, 'Modernizr is an example of..'),
(17, 'Bootstrap is one example of CSS framework.'),
(18, 'integers or reals in decimal notation.'),
(19, 'it used in animation. transition and related properties.'),
(20, 'used in media queries.'),
(21, 'length, angle, duration (or time), frequency, resolution'),
(22, 'initially introduced in CSS2 for the (obsoleted) aural media type;\r\nreintroduced in CSS3, but is currently unused'),
(23, 'calculated as a percentage of some value (usually taken from the parent.\r\nelement)'),
(24, 'delimited by single quotes ( \' ) or double quotes ( \" ).'),
(25, 'HyperText Markup Language (HTML) is language used to specify the presentation of\r\nstructurally marked up documents.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `choices`
--
ALTER TABLE `choices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `choices`
--
ALTER TABLE `choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
