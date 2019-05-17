-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2019 at 07:13 AM
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
(26, 26, 'Hypertext Transfer Protocol'),
(27, 27, 'HTTP'),
(28, 28, 'Get'),
(29, 29, 'Head'),
(30, 30, 'Post'),
(31, 31, 'Put'),
(32, 32, 'Delete'),
(33, 33, 'Connect'),
(34, 34, 'Options'),
(35, 35, 'trace'),
(36, 36, 'Status Code'),
(37, 37, 'General'),
(38, 38, 'Request'),
(39, 39, 'Response'),
(40, 40, 'Entity'),
(41, 41, 'Uniform Resource Identifier'),
(42, 42, 'Idempotent'),
(43, 43, 'cURL'),
(44, 44, 'DNS'),
(45, 45, 'Representational State Transfer'),
(46, 46, '409'),
(47, 47, 'Method not allowed 405'),
(48, 48, '500'),
(49, 49, 'Created response'),
(50, 50, '200 OK');

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
(26, b'0', b'0', b'0', 'HTTP stands for', b'1', 2),
(27, b'0', b'0', b'0', 'is a request and response protocol.', b'1', 2),
(28, b'0', b'0', b'0', 'is used to send data in URL.', b'1', 2),
(29, b'0', b'0', b'0', 'transfers status line and header section as a request.', b'1', 2),
(30, b'0', b'0', b'0', 'is used to send data to the server.', b'1', 2),
(31, b'0', b'0', b'0', 'is used to send entire updated data to the server.', b'1', 2),
(32, b'0', b'0', b'0', 'method sends a request to the server to perform delete operation.', b'1', 2),
(33, b'0', b'0', b'0', 'is used to establish connection to the server.', b'1', 2),
(34, b'0', b'0', b'0', 'method describes communication options for target resource.', b'1', 2),
(35, b'0', b'0', b'0', 'performs message loop-back test along the path to the target resource.', b'1', 2),
(36, b'0', b'0', b'0', 'is a Standard response code given by web server on Internet.', b'1', 2),
(37, b'0', b'0', b'0', 'header applies for both request and response message.', b'1', 2),
(38, b'0', b'0', b'0', 'header contains information for the request message.', b'1', 2),
(39, b'0', b'0', b'0', 'header is used to contain response header information sent by the web server.', b'1', 2),
(40, b'0', b'0', b'0', 'header is used to contain more information about the body of the entity.', b'1', 2),
(41, b'0', b'0', b'0', 'is used to define the identity of something on the web.', b'1', 2),
(42, b'0', b'0', b'0', 'methods doesn\'t matter if the request is called one or ten times, the result should be same.', b'1', 2),
(43, b'0', b'0', b'0', 'is a command line tool in HTTP that is available on all major operating system.', b'1', 2),
(44, b'0', b'0', b'0', 'spoofing is a type of computer attack where user is forced to navigate to fake website to look like real one.', b'1', 2),
(45, b'0', b'0', b'0', 'is a set of constraints that ensure a scalable, fault-tolerant and easily adaptable system.', b'1', 2),
(46, b'0', b'0', b'0', 'When we use PUT request to create the same resource twice then server displays _ code to the browser.', b'1', 2),
(47, b'0', b'0', b'0', 'Web Server displays the HTTP _ error message, when requested method is not allowed.', b'1', 2),
(48, b'0', b'0', b'0', 'When processing fails due to some unanticipated incident on the server side, web server displays _ internal server error.', b'1', 2),
(49, b'0', b'0', b'0', 'HTTP 201 _code indicates that the request was successful.', b'1', 2),
(50, b'0', b'0', b'0', 'HTTP _ response code indicates that request is successful.', b'1', 2),
(51, b'0', b'0', b'0', 'outline the style of an HTML webpage, it is a language by which we can set the behavior of an HTML webpage.', b'0', 0),
(52, b'0', b'0', b'0', 'This type of CSS are written in separate files?', b'1', 2),
(53, b'0', b'0', b'0', 'This type of CSS are cited at the top of the web page code document?', b'1', 2),
(54, b'0', b'0', b'0', 'This type of CSS are written right next to the text?', b'1', 2),
(55, b'0', b'0', b'0', 'CSS ___ is a group of images which is placed into one image.', b'1', 2),
(56, b'0', b'0', b'0', '____ quite simply matches the name of an element type.', b'1', 2),
(57, b'0', b'0', b'0', '____ this matches the name of any element type.', b'1', 2),
(58, b'0', b'0', b'0', 'To center the text inside an element, use ____.', b'1', 2),
(59, b'0', b'0', b'0', 'CSS ______ is a pre-planned libraries, which allows easier and more standards-compliant webpage styling, using CSS language.', b'1', 2),
(60, b'0', b'0', b'0', '_______ maintains the CSS specifications.', b'1', 2),
(61, b'0', b'0', b'0', ' _________________ is a string equivalent of HTML elements by which declarations or set of it is declared and is a link that can be referred for linking HTML and Style sheet.', b'1', 2),
(62, b'0', b'0', b'0', '_________________ are used to add special effects to some selectors.', b'1', 2),
(63, b'0', b'0', b'0', 'This box defines design and layout of elements of CSS?', b'1', 2),
(64, b'0', b'0', b'0', 'It is the top most layer, the overall structure is shown.', b'1', 2),
(65, b'0', b'0', b'0', 'It is the padding and content option with a border around it is shown.', b'1', 2),
(66, b'0', b'0', b'0', 'It is where space is shown and the background colour affects the border.', b'1', 2),
(67, b'0', b'0', b'0', 'It is where the actual content is shown.', b'1', 2),
(68, b'0', b'0', b'0', 'It is a selector used to select special occurrences of an element.', b'1', 2),
(69, b'0', b'0', b'0', 'A selector that can be grouped having the same values of property and the code be reduced.', b'1', 2),
(70, b'0', b'0', b'0', '_____ can be avoided by writing each selector separated by comma.', b'1', 2),
(71, b'0', b'0', b'0', '_____ specify a selector within a selector.', b'1', 2),
(72, b'0', b'0', b'0', 'It is defined by a set of elements, value, and its parts.', b'1', 2),
(73, b'0', b'0', b'0', 'It allows the user to select the style in which the page is displayed using the view>page style menu.', b'1', 2),
(74, b'0', b'0', b'0', 'This are optional in URL\'s, and it can be single or double.', b'1', 2),
(75, b'0', b'0', b'0', '________,the image can be moved to the right or the left along with the text to be wrapped around it.', b'1', 2);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
