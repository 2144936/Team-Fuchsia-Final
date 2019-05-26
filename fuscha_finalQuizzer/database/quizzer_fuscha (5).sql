-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2019 at 11:11 PM
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
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `category` enum('HTTP','CSS','Javascript') NOT NULL DEFAULT 'HTTP',
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer`, `category`, `points`) VALUES
(1, 'HTTP stands for ________________________.', 'Hypertext Transfer Protocol', 'HTTP', 5),
(2, '______ is a request and response protocol.', 'HTTP', 'HTTP', 5),
(3, '______ is used to send data in URL.', 'Get', 'HTTP', 5),
(4, '______ transfers status line and header section as a request.', 'Head', 'HTTP', 5),
(5, '______ is used to send data to the server.', 'Post', 'HTTP', 5),
(6, '______ is used to send entire updated data to the server.', 'Put', 'HTTP', 5),
(7, '_______ method sends a request to the server to perform delete operation.', 'Delete', 'HTTP', 5),
(8, '_________ is used to establish connection to the server.', 'Connect', 'HTTP', 5),
(9, ' ________ method describes communication options for target resource.', 'Options', 'HTTP', 5),
(10, '_______ performs message loop-back test along the path to the target resource.', 'trace', 'HTTP', 5),
(11, '_____________ is a Standard response code given by web server on Internet.', 'Status Code', 'HTTP', 5),
(12, '___________ header applies for both request and response message.', 'General', 'HTTP', 5),
(13, '___________ header contains information for the request message.', 'Request', 'HTTP', 5),
(14, '___________ header is used to contain response header information sent by the web server.', 'Response', 'HTTP', 5),
(15, '___________ header is used to contain more information about the body of the entity.', 'Entity', 'HTTP', 5),
(16, '____ is used to define the identity of something on the web.', 'URI', 'HTTP', 5),
(17, '___________ methods doesn\'t matter if the request is called one or ten times, the result should be same.', 'Idempotent', 'HTTP', 5),
(18, '________ is a command line tool in HTTP that is available on all major operating system.', 'cURL', 'HTTP', 5),
(19, '_____ spoofing is a type of computer attack where user is forced to navigate to fake website to look \r\nlike real one.', 'DNS', 'HTTP', 5),
(20, '________ is a set of constraints that ensure a scalable, fault-tolerant and easily adaptable system.', 'REST', 'HTTP', 5),
(21, 'When we use PUT request to create the same resource twice then server displays ____ code to the browser.', '409', 'HTTP', 5),
(22, 'Web Server displays the HTTP 405 or  _______________error message, when requested method is not allowed.', 'Method not allowed', 'HTTP', 5),
(23, 'When processing fails due to some unanticipated incident on the server side, web server displays ____ \r\ninternal server error. ', '500', 'HTTP', 5),
(24, 'HTTP 201 ________________ code indicates that the request was successful.', 'Created response', 'HTTP', 5),
(25, 'HTTP 200 or _____ response code indicates that request is successful.', '200 OK', 'HTTP', 5),
(26, '____ outline the style of an HTML webpage, it is a language by which we can set the behavior of an \r\nHTML webpage.', 'CSS', 'CSS', 5),
(27, 'This type of CSS are written in separate files?', 'External', 'CSS', 5),
(28, 'This type of CSS are cited at the top of the web page code document?', 'Internal', 'CSS', 5),
(29, 'This type of CSS are written right next to the text?', 'Inline', 'CSS', 5),
(30, 'CSS ______________ is a group of images which is placed into one image.', 'image scripts', 'CSS', 5),
(31, ' _______________ quite simply matches the name of an element type.', 'Type Selector', 'CSS', 5),
(32, '_______________ this matches the name of any element type.', 'Universal Selector', 'CSS', 5),
(33, 'To center the text inside an element, use _________________________.', 'text-align: center', 'CSS', 5),
(34, '____________________________ maintains the CSS specifications.', 'World Wide Web Consortium', 'CSS', 5),
(35, 'CSS ______________ is a pre-planned libraries, which allows easier and more \r\nstandards-compliant webpage styling, using CSS language.', 'frameworks', 'CSS', 5),
(36, '_________________ is a string equivalent of HTML elements by which declarations or set of it \r\nis declared and is a link that can be referred for linking HTML and Style sheet.', 'CSS Selector', 'CSS', 5),
(37, '_________________ are used to add special effects to some selectors.', 'Pseudo-elements', 'CSS', 5),
(38, 'This box defines design and layout of elements of CSS?', 'CSS Box Model', 'CSS', 5),
(39, 'It is the top most layer, the overall structure is shown.', 'Margin', 'CSS', 5),
(40, 'It is the padding and content option with a border around it is shown.', 'Border', 'CSS', 5),
(41, 'It is where space is shown and the background colour affects the border.', 'Padding', 'CSS', 5),
(42, 'It is where the actual content is shown.', 'Content', 'CSS', 5),
(43, 'It is a selector used to select special occurrences of an element.', 'Contextual Selector', 'CSS', 5),
(44, 'A selector that can be grouped having the same values of property and the code be reduced.', 'Grouping', 'CSS', 5),
(45, '____________ can be avoided by writing each selector separated by comma.', 'Rewriting', 'CSS', 5),
(46, 'By ____________________, the image can be moved to the right or the left along with the text to be \r\nwrapped around it.', 'Float Property', 'CSS', 5),
(47, '____________ specify a selector within a selector.', 'Nesting', 'CSS', 5),
(48, 'It is defined by a set of elements, value, and its parts.', 'Attribute Selector', 'CSS', 5),
(49, 'It allows the user to select the style in which the page is displayed using the view>page style menu. ', 'Alternate Style Sheets', 'CSS', 5),
(50, 'This are optional in URL\'s, and it can be single or double. ', 'Quotes', 'CSS', 5),
(51, 'In writing a JavaScript code under HTML tag, you will have to use the _______ tag.', 'script', 'Javascript', 5),
(52, 'Is the syntax to access the element <p id=\"geek\">GeeksforGeeks<p>.', 'document.getElementById(\"geek\")', 'Javascript', 5),
(53, 'In JavaScript,___________, throws and short are reversed keywords.', 'interface', 'Javascript', 5),
(54, ' __________ is a client-side as well as server side scripting language that can be inserted into \r\nHTML pages and is understood by web browsers.', 'JavaScript', 'Javascript', 5),
(55, '_________ function returns true if the argument is not a number otherwise it is false.', 'isNan', 'Javascript', 5),
(56, '______ is a servser-side language amd hence is always slower that JavaScript.', 'ASP', 'Javascript', 5),
(57, '______________________ is a number in JavaScript which can be derived by dividing negative number by zero.', 'Negative Infinity', 'Javascript', 5),
(58, '____________ is the software company who developed JavaScript.', 'Netscape', 'Javascript', 5),
(59, '____________ variables are those that do not exist in a program and are not declared.', 'Undeclared', 'Javascript', 5),
(60, '____________ variables are those that are declared in the program but have not been given any value.', 'Undefined', 'Javascript', 5),
(61, '____________ variables are those that are available throughout the length of the code, that is, these \r\nhave no scope.', 'Global', 'Javascript', 5),
(62, 'It is a box which allows the user to enter input by providing a text box.', 'prompt box', 'Javascript', 5),
(63, '________ keyword refers to the object from where it was called.', 'THIS', 'Javascript', 5),
(64, 'It is specific to a page in a session.', 'ViewState', 'Javascript', 5),
(65, 'It is specific to user specific data that can be accessed across all pages in the web application.', 'SessionState', 'Javascript', 5),
(66, ' === is called a _______________ operator which returns true when the two operands are having the \r\nsame value without any type conversion.', 'strict equality', 'Javascript', 5),
(67, 'To submit a form using JavaScript use ______________________.', 'document.form[0].submit();', 'Javascript', 5),
(68, 'It is used to assign a number to a variable and the same variable can be assigned to a string. ', 'Variable typing', 'Javascript', 5),
(69, 'The ____________ function is used to convert numbers between different bases.', 'parseInt()', 'Javascript', 5),
(70, 'In order to detect the operating system on the client machine, the __________________ string (property) \r\nshould be used.', 'navigator.platform', 'Javascript', 5),
(71, 'The _____ value is used to represent no value or no object.', 'NULL', 'Javascript', 5),
(72, '_________ is used to prevent the page from refreshing and parameter \"zero\" is passed while calling.', 'Void(0)', 'Javascript', 5),
(73, 'An __________ displays only one button which is the OK button.', 'alert box', 'Javascript', 5),
(74, '_____________ box displays two buttons namely OK and cancel.', 'Confirmation', 'Javascript', 5),
(75, '_______ characters is used when working with special characters like single quotes, double quotes, \r\napostrophes and ampersands. ', 'Escape', 'Javascript', 2);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_logger`
--

CREATE TABLE `quiz_logger` (
  `id` int(11) NOT NULL,
  `category` enum('HTTP','CSS','Javascript') NOT NULL DEFAULT 'HTTP',
  `score` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_logger`
--

INSERT INTO `quiz_logger` (`id`, `category`, `score`, `type`) VALUES
(309, 'HTTP', 0, 'Enumeration'),
(310, 'HTTP', 5, 'Enumeration'),
(311, 'HTTP', 0, 'Enumeration'),
(312, 'HTTP', 0, 'Enumeration'),
(313, 'HTTP', 0, 'Enumeration'),
(314, 'HTTP', 0, 'Enumeration'),
(315, 'CSS', 0, 'Enumeration'),
(316, 'Javascript', 0, 'Enumeration'),
(317, 'HTTP', 0, 'Enumeration'),
(318, 'CSS', 0, 'Enumeration'),
(319, 'Javascript', 0, 'Enumeration');

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
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `type`) VALUES
(1, 'admin', 'admin123', 'superadmin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_logger`
--
ALTER TABLE `quiz_logger`
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
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `quiz_logger`
--
ALTER TABLE `quiz_logger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=320;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
