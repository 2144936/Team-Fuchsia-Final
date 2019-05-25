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
-- Database: `httpmultiplechoice`
--

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE `choices` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`id`, `question_number`, `is_correct`, `text`) VALUES
(1, 1, 0, 'False'),
(2, 1, 1, 'True'),
(3, 1, 0, 'Maybe'),
(4, 1, 0, 'In between'),
(5, 2, 1, 'False'),
(6, 2, 0, 'True'),
(7, 2, 0, 'In between'),
(8, 2, 0, 'Maybe'),
(9, 3, 0, 'Tama'),
(10, 3, 0, 'Mali'),
(11, 3, 1, 'True'),
(12, 3, 0, 'False'),
(13, 4, 1, 'True'),
(14, 4, 0, 'False'),
(15, 4, 0, 'Waley'),
(16, 4, 0, 'Maid'),
(17, 5, 0, 'False'),
(18, 5, 1, 'True'),
(19, 5, 0, 'Sure'),
(20, 5, 0, 'No'),
(21, 6, 0, 'True'),
(22, 6, 1, 'False'),
(23, 6, 0, 'Flu'),
(24, 6, 0, 'Ture'),
(25, 7, 0, 'True'),
(26, 7, 1, 'False'),
(27, 7, 0, 'Flu'),
(28, 7, 0, 'No'),
(29, 8, 1, 'True'),
(30, 8, 0, 'False'),
(31, 8, 0, 'Flu'),
(32, 8, 0, 'No'),
(33, 9, 1, 'True'),
(34, 9, 0, 'False'),
(35, 9, 0, 'Flu'),
(36, 9, 0, 'No'),
(37, 10, 0, 'True'),
(38, 10, 1, 'False'),
(39, 10, 0, 'Flu'),
(40, 10, 0, 'No'),
(41, 11, 1, 'True'),
(42, 11, 0, 'False'),
(43, 11, 0, 'Flu'),
(44, 11, 0, 'No'),
(45, 12, 1, 'Character Sets'),
(46, 12, 0, 'Parameters'),
(47, 12, 0, 'HTTP versions'),
(48, 12, 0, 'All of the above'),
(49, 13, 0, 'Character Sets'),
(50, 13, 1, '<major>.<minor>'),
(51, 13, 0, 'ISO-8859-1'),
(52, 13, 0, 'Version'),
(53, 14, 1, 'HTTP/1.1'),
(54, 14, 0, 'US-ASCII'),
(55, 14, 0, 'http://ABC.com:/%7esmith/home.html'),
(56, 14, 0, 'None of the above'),
(57, 15, 0, 'put'),
(58, 15, 0, 'get'),
(59, 15, 1, 'post'),
(60, 15, 0, 'head'),
(61, 16, 0, 'post'),
(62, 16, 0, 'head'),
(63, 16, 1, 'put'),
(64, 16, 0, 'get'),
(65, 17, 0, 'post'),
(66, 17, 1, 'head'),
(67, 17, 0, 'get'),
(68, 17, 0, 'put'),
(69, 18, 0, 'connect'),
(70, 18, 1, 'trace'),
(71, 18, 0, 'track'),
(72, 18, 0, 'filename'),
(73, 19, 1, 'request-line'),
(74, 19, 0, 'request parameters'),
(75, 19, 0, 'get'),
(76, 19, 0, 'response'),
(77, 20, 0, 'informational responses'),
(78, 20, 0, 'servers errors'),
(79, 20, 0, 'successful responses'),
(80, 20, 1, 'request responses'),
(81, 21, 1, 'head'),
(82, 21, 0, 'post'),
(83, 21, 0, 'put'),
(84, 21, 0, 'delete'),
(85, 22, 0, 'head'),
(86, 22, 1, 'post'),
(87, 22, 0, 'put'),
(88, 22, 0, 'delete'),
(89, 23, 0, 'head'),
(90, 23, 0, 'post'),
(91, 23, 1, 'put'),
(92, 23, 0, 'delete'),
(93, 24, 0, 'head'),
(94, 24, 0, 'post'),
(95, 24, 0, 'put'),
(96, 24, 1, 'delete'),
(97, 25, 1, 'get'),
(98, 25, 0, 'trace'),
(99, 25, 0, 'option'),
(100, 25, 0, 'head');

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
(1, 'HTTP stand for Hypertext Transfer Protocol, it is a protocol that use by the World Wide web.'),
(2, 'Get is a type of http respond method that informing the client request.'),
(3, 'Http status code is a response that represents by a numeric status code with textual reason.'),
(4, 'Status code 404 means \"Not Found\".'),
(5, '500 response is a \"internal Server error\" that the server encountered a situation does not know how to handle.'),
(6, 'HTTP response status code is responsible for the  network protocol that needed by the world wide web'),
(7, 'Post is a status code that is reposible for sending data to the server.'),
(8, 'Get, Head, Trace, Option and Put are method of HTTP.'),
(9, 'Request message may consist of Headers, empty line, request line like Get/photos/flower.png'),
(10, 'The server sent this response to direct the client to get the requested resource at another URI with a GET request,300 Multiple Choice.'),
(11, 'ISO-8859-1 is a exammple of character sets in HTTP.'),
(12, 'Use in Specifying Character Sets that the clients wants.'),
(13, 'A numbering scheme use to indicate versions of protocol.'),
(14, 'Example  of HTTP Version'),
(15, 'A request that send data to server.'),
(16, 'Requeting the server to store, including the entity-body to the location that is specified by the provided URL.'),
(17, 'It is a method that only transfers the header section and status line.'),
(18, 'Performing a loop-back message along the targeted path resources.'),
(19, 'It begins with  a method token, followed by request-uri , protocol version and it ends with CRLF.'),
(20, 'The listed below are  all Reponses type for HTTP except one.'),
(21, '______/hello.htm HTTP/1.1\r\nUser-Agent: Mozilla/4.0 (compatible; MSIE5.01; Windows NT)\r\nHost: www.tutorialspoint.com\r\nAccept-Language: en-us\r\nAccept-Encoding: gzip, deflate\r\nConnection: Keep-Alive\r\n'),
(22, '_______/cgi-bin/process.cgi HTTP/1.1\r\nUser-Agent: Mozilla/4.0 (compatible; MSIE5.01; Windows NT)\r\nHost: www.tutorialspoint.com\r\nContent-Type: text/xml; charset=utf-8\r\nContent-Length: 88\r\nAccept-Language: en-us\r\nAccept-Encoding: gzip, deflate\r\nConnection: Keep-Alive\r\n'),
(23, '_________/hello.htm HTTP/1.1\r\nUser-Agent: Mozilla/4.0 (compatible; MSIE5.01; Windows NT)\r\nHost: www.tutorialspoint.com\r\nAccept-Language: en-us\r\nConnection: Keep-Alive\r\nContent-type: text/html\r\nContent-Length: 182\r\n'),
(24, '________/hello.htm HTTP/1.1\r\nUser-Agent: Mozilla/4.0 (compatible; MSIE5.01; Windows NT)\r\nHost: www.tutorialspoint.com\r\nAccept-Language: en-us\r\nConnection: Keep-Alive\r\n'),
(25, '________/hello.htm HTTP/1.1\r\nUser-Agent: Mozilla/4.0 (compatible; MSIE5.01; Windows NT)\r\nHost: www.tutorialspoint.com\r\nAccept-Language: en-us\r\nAccept-Encoding: gzip, deflate\r\nConnection: Keep-Alive\r\n');

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
