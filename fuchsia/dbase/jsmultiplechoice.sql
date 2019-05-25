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
-- Database: `jsmultiplechoice`
--

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE `choices` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(4) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`id`, `question_number`, `is_correct`, `text`) VALUES
(1, 1, 0, 'number'),
(2, 1, 0, 'string'),
(3, 1, 0, 'object'),
(4, 1, 1, 'none'),
(5, 2, 1, 'Netscafe'),
(6, 2, 0, 'nestcoffee'),
(7, 2, 0, 'microsoft'),
(8, 2, 0, 'macintosh'),
(9, 3, 0, '//'),
(10, 3, 0, '++'),
(11, 3, 1, '==='),
(12, 3, 0, '=='),
(13, 4, 0, 'while'),
(14, 4, 0, 'for'),
(15, 4, 1, 'if else'),
(16, 4, 0, 'else'),
(17, 5, 1, 'It is assigning a value to the variable it can be number or string.'),
(18, 5, 0, 'use to convert numbers between different bases.'),
(19, 5, 0, 'it is a protocol needed by html'),
(20, 5, 0, 'it is a protocol needed by WWW.'),
(21, 6, 1, '=='),
(22, 6, 0, '/'),
(23, 6, 0, '//'),
(24, 6, 0, '==='),
(25, 7, 1, '177'),
(26, 7, 0, '24'),
(27, 7, 0, '248'),
(28, 7, 0, '247'),
(29, 8, 1, 'i = 10;'),
(30, 8, 0, 'I = ‘not’;'),
(31, 8, 0, 'I = ‘10’;'),
(32, 8, 0, 'c. i  = hot;'),
(33, 9, 0, 'It has a value of null.'),
(34, 9, 1, 'It represent no value.'),
(35, 9, 0, 'It has variable of null.'),
(36, 9, 0, 'String variable delete.'),
(37, 10, 0, 'String variable delete.'),
(38, 10, 0, 'Contains a delete operation.'),
(39, 10, 1, 'Deleting properties and values'),
(40, 10, 0, 'property not existing'),
(41, 11, 1, 'property not existing'),
(42, 11, 0, 'improper value'),
(43, 11, 0, 'incorrect assigned value'),
(44, 11, 0, 'handling sessions within the page.'),
(45, 12, 0, 'handling sessions within the page.'),
(46, 12, 1, 'calling another method without refreshing the page.'),
(47, 12, 0, 'calling methods'),
(48, 12, 0, 'document.write(\"Welcome\")'),
(49, 13, 1, 'document.write(\"Welcome\")'),
(50, 13, 0, 'System.out.printf(“Welsome”)'),
(51, 13, 0, 'System.out.print(“Welsome”)'),
(52, 13, 0, 'Calling the methods.'),
(53, 14, 1, 'obj.class = 12;'),
(54, 14, 0, 'obj.class();'),
(55, 14, 0, 'obj = 10;'),
(56, 14, 0, 'i = 10;'),
(57, 15, 1, '<!---!>'),
(58, 15, 0, '//'),
(59, 15, 0, '\"\"'),
(60, 15, 0, '/**\r\n*\r\n*/'),
(61, 16, 0, '</!->'),
(62, 16, 0, '<!--!>'),
(63, 16, 1, '/**\r\n*\r\n*/'),
(64, 16, 0, '//'),
(65, 17, 0, 'ViewState'),
(66, 17, 1, 'SessionState'),
(67, 17, 0, 'UnitedState'),
(68, 17, 0, 'None of the above'),
(69, 18, 1, 'document.form[0].submit();'),
(70, 18, 0, 'documentformsubmit();'),
(71, 18, 0, 'document.form.submit;'),
(72, 18, 0, 'None of the above'),
(73, 19, 1, 'Using a JavaScript  extensions'),
(74, 19, 0, 'using java '),
(75, 19, 0, 'using html and css'),
(76, 19, 0, 'All of the above'),
(77, 20, 0, 'post'),
(78, 20, 0, 'put'),
(79, 20, 1, 'push'),
(80, 20, 0, 'less'),
(81, 21, 1, 'Screen object'),
(82, 21, 0, 'screen shot'),
(83, 21, 0, 'read and write'),
(84, 21, 0, 'display'),
(85, 22, 1, 'It declares a three dimensional array.'),
(86, 22, 0, 'It declares a two dimensional array.'),
(87, 22, 0, 'It declares a multiple dimensional array.'),
(88, 22, 0, 'None of the above'),
(89, 23, 1, 'variable typing'),
(90, 23, 0, 'namespacing'),
(91, 23, 0, 'declaring object'),
(92, 23, 0, 'echo'),
(93, 24, 1, 'JavaScript'),
(94, 24, 0, 'jscript'),
(95, 24, 0, 'json'),
(96, 24, 0, 'java'),
(97, 25, 0, 'java'),
(98, 25, 1, 'javascript'),
(99, 25, 0, 'json'),
(100, 25, 0, 'jscript');

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
(1, 'The following are data type of Javascript.'),
(2, 'Which company developed JavaScript?'),
(3, 'This operator is strict equality operator which returns true when the two operands are having the   same value without any type conversion.'),
(4, 'The following are looping structures of JavaScript.'),
(5, 'What is variable typing in JavaScript?'),
(6, 'An operation that only checks the value.  '),
(7, '8+9+ “7” what would be the result in JavaScript?'),
(8, 'Which of the following is example of Variable typing?'),
(9, 'What is null represent in JavaScript?'),
(10, 'What is delete operation in JavaScript?'),
(11, 'Undefined values mean in JavaScript?'),
(12, 'what is void in JavaScript?'),
(13, 'Which keyword used to print text in screen?'),
(14, 'Assignning of Object properties?'),
(15, 'Use to comment in JavaScript?'),
(16, 'Use for multiple line comment for JavaScript?'),
(17, '_____ is specific user specific data that can accesses across all pages in the web application.'),
(18, 'What is code for submitting a form in JavaScript?'),
(19, 'How to read and write a file using Javascript?'),
(20, 'Can append multiple elements by passing multiple arguments.'),
(21, 'Used to read the information from the client\'s screen.'),
(22, 'var myArray = [[[]]]; what does it declare in JavaScript?'),
(23, '______is used for grouping the desired functions, variables etc.'),
(24, '_____is a client-side as well as server side scripting language that can be inserted into HTML pages '),
(25, 'What does Netscape developed?');

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
