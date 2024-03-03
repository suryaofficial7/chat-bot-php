-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2024 at 05:39 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bot`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatbot_hints`
--

CREATE TABLE `chatbot_hints` (
  `id` int(11) NOT NULL,
  `question` varchar(100) NOT NULL,
  `reply` varchar(100) NOT NULL,
  `fileName` varchar(255) NOT NULL,
  `size` varchar(6) NOT NULL,
  `src` varchar(255) NOT NULL,
  `period` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `chatbot_hints`
--

INSERT INTO `chatbot_hints` (`id`, `question`, `reply`, `fileName`, `size`, `src`, `period`) VALUES
(1, 'AI', 'AI', 'Surya Resume.pdf', '12.5MB', 'uploads/557811565Surya Resume.pdf', '2024-02-27 05:58:01.000000'),
(2, 'AI', 'AI', 'Surya Resume.pdf', '12.5MB', 'uploads/2086337067Surya Resume.pdf', '2024-02-27 06:30:07.000000'),
(3, 'fuck you || fuck', 'No bad Word ðŸ˜”', 'null', '0', 'NO file', '2024-02-27 06:45:38.638407'),
(4, 'Mc', 'No bad Word ðŸ˜”', 'null', '0', 'NO file', '2024-02-27 06:43:36.752606'),
(5, 'ear nose leg', 'Dont speek Rubbish', 'null', '0', 'NO file', '2024-02-27 06:46:41.000000'),
(6, 'SPM || MIA ', 'This is a Book By Sandeep', 'Kannada_Lessons_for_the_Beginner.pdf', '12.5MB', 'uploads/327870002Kannada_Lessons_for_the_Beginner.pdf', '2024-02-27 06:48:09.000000'),
(7, 'hi || hello || hola || hi hello || Welcome', 'Hello, Welcome', 'null', '0', 'NO file', '2024-02-27 06:55:01.000000'),
(8, 'who are you || what is your name', 'I am Hitsh Chat  AI bot My name is Bot', 'null', '0', 'NO file', '2024-02-27 06:57:09.000000'),
(9, 'what is your name || tell your Name || name please', 'my name is Hitesh Bot', 'null', '0', 'NO file', '2024-02-28 04:33:55.000000');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `added_on` datetime NOT NULL,
  `type` varchar(10) NOT NULL,
  `userID` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `message`, `added_on`, `type`, `userID`, `src`) VALUES
(1, 'AI', '2024-02-27 11:34:09', 'user', '340742344', 'uploads/557811565Surya Resume.pdf'),
(2, 'AI', '2024-02-27 11:34:09', 'bot', '340742344', 'uploads/557811565Surya Resume.pdf'),
(3, 'byr', '2024-02-27 11:34:50', 'user', '340742344', 'NO file Available'),
(4, 'Sorry not be able to understand you', '2024-02-27 11:34:50', 'bot', '340742344', 'NO file Available'),
(5, 'ali', '2024-02-27 11:35:35', 'user', '340742344', 'NO file Available'),
(6, 'Sorry not be able to understand you', '2024-02-27 11:35:35', 'bot', '340742344', 'NO file Available'),
(7, 'a', '2024-02-27 11:36:04', 'user', '340742344', 'uploads/557811565Surya Resume.pdf'),
(8, 'AI', '2024-02-27 11:36:04', 'bot', '340742344', 'uploads/557811565Surya Resume.pdf'),
(9, 'as', '2024-02-27 11:36:59', 'user', '340742344', 'NO file Available'),
(10, 'Sorry not be able to understand you', '2024-02-27 11:36:59', 'bot', '340742344', 'NO file Available'),
(11, 'ai', '2024-02-27 11:37:05', 'user', '340742344', 'uploads/557811565Surya Resume.pdf'),
(12, 'AI', '2024-02-27 11:37:05', 'bot', '340742344', 'uploads/557811565Surya Resume.pdf'),
(13, 'ai', '2024-02-27 11:38:17', 'user', '340742344', 'uploads/557811565Surya Resume.pdf'),
(14, 'AI', '2024-02-27 11:38:17', 'bot', '340742344', 'uploads/557811565Surya Resume.pdf'),
(15, 'ai', '2024-02-27 11:38:36', 'user', '340742344', 'uploads/557811565Surya Resume.pdf'),
(16, 'AI', '2024-02-27 11:38:36', 'bot', '340742344', 'uploads/557811565Surya Resume.pdf'),
(17, 'ai', '2024-02-27 11:38:48', 'user', '340742344', 'uploads/557811565Surya Resume.pdf'),
(18, 'AI', '2024-02-27 11:38:48', 'bot', '340742344', 'uploads/557811565Surya Resume.pdf'),
(19, 'dd', '2024-02-27 11:39:42', 'user', '340742344', 'NO file Available'),
(20, 'Sorry not be able to understand you', '2024-02-27 11:39:42', 'bot', '340742344', 'NO file Available'),
(21, 'how are you', '2024-02-27 11:40:50', 'user', '340742344', 'NO file Available'),
(22, 'Sorry not be able to understand you', '2024-02-27 11:40:50', 'bot', '340742344', 'NO file Available'),
(23, 'bye', '2024-02-27 11:43:52', 'user', '340742344', 'NO file Available'),
(24, 'Array', '2024-02-27 11:43:52', 'bot', '340742344', 'NO file Available'),
(25, 'AI', '2024-02-27 11:44:25', 'user', '340742344', 'uploads/557811565Surya Resume.pdf'),
(26, 'Array', '2024-02-27 11:44:25', 'bot', '340742344', 'uploads/557811565Surya Resume.pdf'),
(27, 'adf', '2024-02-27 11:45:07', 'user', '340742344', 'NO file Available'),
(28, 'Array', '2024-02-27 11:45:07', 'bot', '340742344', 'NO file Available'),
(29, 'AI', '2024-02-27 11:46:14', 'user', '340742344', 'uploads/557811565Surya Resume.pdf'),
(30, 'AI', '2024-02-27 11:46:14', 'bot', '340742344', 'uploads/557811565Surya Resume.pdf'),
(31, 'ai', '2024-02-27 11:49:30', 'user', '340742344', 'uploads/557811565Surya Resume.pdf'),
(32, 'AI', '2024-02-27 11:49:30', 'bot', '340742344', 'uploads/557811565Surya Resume.pdf'),
(33, 'Fuck YOu', '2024-02-27 11:56:53', 'user', '340742344', 'NO file'),
(34, 'Sorry not be able to understand you', '2024-02-27 11:56:53', 'bot', '340742344', 'NO file'),
(35, 'pdf', '2024-02-27 11:58:52', 'user', '340742344', 'NO file'),
(36, 'Sorry not be able to understand you', '2024-02-27 11:58:52', 'bot', '340742344', 'NO file'),
(37, 'fuck you', '2024-02-27 12:01:05', 'user', '340742344', 'NO file'),
(38, 'Sorry not be able to understand you', '2024-02-27 12:01:05', 'bot', '340742344', 'NO file'),
(39, 'fuck', '2024-02-27 12:03:51', 'user', '340742344', 'uploads/778565419ee.pdf'),
(40, 'No bad Word ðŸ˜”', '2024-02-27 12:03:51', 'bot', '340742344', 'uploads/778565419ee.pdf'),
(41, 'mc', '2024-02-27 12:10:15', 'user', '340742344', 'NO file Available'),
(42, 'No bad Word ðŸ˜”', '2024-02-27 12:10:15', 'bot', '340742344', 'NO file Available'),
(43, 'fuc', '2024-02-27 12:14:21', 'user', '340742344', 'uploads/778565419ee.pdf'),
(44, 'No bad Word ðŸ˜”', '2024-02-27 12:14:21', 'bot', '340742344', 'uploads/778565419ee.pdf'),
(45, 'fu', '2024-02-27 12:14:27', 'user', '340742344', 'uploads/778565419ee.pdf'),
(46, 'No bad Word ðŸ˜”', '2024-02-27 12:14:27', 'bot', '340742344', 'uploads/778565419ee.pdf'),
(47, 'f', '2024-02-27 12:14:31', 'user', '340742344', 'uploads/778565419ee.pdf'),
(48, 'No bad Word ðŸ˜”', '2024-02-27 12:14:31', 'bot', '340742344', 'uploads/778565419ee.pdf'),
(49, 'MC', '2024-02-27 12:15:29', 'user', '340742344', 'NO file'),
(50, 'No bad Word ðŸ˜”', '2024-02-27 12:15:29', 'bot', '340742344', 'NO file'),
(51, 'php', '2024-02-27 12:15:51', 'user', '340742344', 'NO file'),
(52, 'Sorry not be able to understand you', '2024-02-27 12:15:51', 'bot', '340742344', 'NO file'),
(53, 'fuck', '2024-02-27 12:16:01', 'user', '340742344', 'NO file'),
(54, 'No bad Word ðŸ˜”', '2024-02-27 12:16:01', 'bot', '340742344', 'NO file'),
(55, 'err nose leg', '2024-02-27 12:16:53', 'user', '340742344', 'NO file'),
(56, 'Sorry not be able to understand you', '2024-02-27 12:16:53', 'bot', '340742344', 'NO file'),
(57, 'ear nose ', '2024-02-27 12:17:00', 'user', '340742344', 'NO file'),
(58, 'Dont speek Rubbish', '2024-02-27 12:17:00', 'bot', '340742344', 'NO file'),
(59, 'Mia', '2024-02-27 12:18:21', 'user', '340742344', 'uploads/327870002Kannada_Lessons_for_the_Beginner.pdf'),
(60, 'This is a Book By Sandeep', '2024-02-27 12:18:21', 'bot', '340742344', 'uploads/327870002Kannada_Lessons_for_the_Beginner.pdf'),
(61, 'hi', '2024-02-27 12:22:36', 'user', '416994885', 'NO file'),
(62, 'Sorry not be able to understand you', '2024-02-27 12:22:36', 'bot', '416994885', 'NO file'),
(63, 'hi', '2024-02-27 12:26:01', 'user', '103248417', 'NO file'),
(64, 'Hello, Welcome', '2024-02-27 12:26:01', 'bot', '103248417', 'NO file'),
(65, 'who are you', '2024-02-27 12:27:16', 'user', '103248417', 'NO file'),
(66, 'I am Hitsh Chat  AI bot My name is Bot', '2024-02-27 12:27:16', 'bot', '103248417', 'NO file'),
(67, 'AI', '2024-02-27 12:27:21', 'user', '103248417', 'uploads/557811565Surya Resume.pdf'),
(68, 'AI', '2024-02-27 12:27:21', 'bot', '103248417', 'uploads/557811565Surya Resume.pdf'),
(69, 'hi', '2024-02-27 12:28:31', 'user', '70606265', 'NO file'),
(70, 'Hello, Welcome', '2024-02-27 12:28:31', 'bot', '70606265', 'NO file'),
(71, 'djxbf', '2024-02-27 12:34:18', 'user', '1594352222', 'NO file'),
(72, 'Sorry not be able to understand you', '2024-02-27 12:34:18', 'bot', '1594352222', 'NO file'),
(73, 'xdj', '2024-02-27 12:34:27', 'user', '1793413015', 'NO file'),
(74, 'Sorry not be able to understand you', '2024-02-27 12:34:27', 'bot', '1793413015', 'NO file'),
(75, 'ss', '2024-02-27 12:35:15', 'user', '1346926792', 'NO file'),
(76, 'Sorry not be able to understand you', '2024-02-27 12:35:15', 'bot', '1346926792', 'NO file'),
(77, 'dxfnmb', '2024-02-27 12:47:11', 'user', '1290438262', 'NO file'),
(78, 'Sorry not be able to understand you', '2024-02-27 12:47:11', 'bot', '1290438262', 'NO file'),
(79, 'jbkjb', '2024-02-27 12:47:14', 'user', '1290438262', 'NO file'),
(80, 'Sorry not be able to understand you', '2024-02-27 12:47:14', 'bot', '1290438262', 'NO file'),
(81, 'xdfj', '2024-02-27 12:49:42', 'user', '1668887144', 'NO file'),
(82, 'Sorry not be able to understand you', '2024-02-27 12:49:42', 'bot', '1668887144', 'NO file'),
(83, 'jbk', '2024-02-27 12:49:44', 'user', '1668887144', 'NO file'),
(84, 'Sorry not be able to understand you', '2024-02-27 12:49:44', 'bot', '1668887144', 'NO file'),
(85, 'kjgk', '2024-02-27 12:49:48', 'user', '1668887144', 'NO file'),
(86, 'Sorry not be able to understand you', '2024-02-27 12:49:48', 'bot', '1668887144', 'NO file'),
(87, 'jkfh', '2024-02-27 12:50:25', 'user', '1070807203', 'NO file'),
(88, 'Sorry not be able to understand you', '2024-02-27 12:50:25', 'bot', '1070807203', 'NO file'),
(89, 'hi', '2024-02-28 09:59:27', 'user', '380564720', 'NO file'),
(90, 'Hello, Welcome', '2024-02-28 09:59:27', 'bot', '380564720', 'NO file'),
(91, 'i want ai paper', '2024-02-28 10:00:00', 'user', '59177583', 'NO file'),
(92, 'Sorry not be able to understand you', '2024-02-28 10:00:00', 'bot', '59177583', 'NO file'),
(93, 'hello', '2024-02-28 10:02:14', 'user', '1497274694', 'NO file'),
(94, 'Hello, Welcome', '2024-02-28 10:02:14', 'bot', '1497274694', 'NO file'),
(95, 'Ai', '2024-02-28 10:02:30', 'user', '223933711', 'uploads/557811565Surya Resume.pdf'),
(96, 'AI', '2024-02-28 10:02:30', 'bot', '223933711', 'uploads/557811565Surya Resume.pdf'),
(97, 'sjkdbf', '2024-02-28 10:02:41', 'user', '223933711', 'NO file'),
(98, 'Sorry not be able to understand you', '2024-02-28 10:02:41', 'bot', '223933711', 'NO file'),
(99, 'what is ur name', '2024-02-28 10:04:09', 'user', '1027024335', 'NO file'),
(100, 'Sorry not be able to understand you', '2024-02-28 10:04:09', 'bot', '1027024335', 'NO file'),
(101, 'what is your name', '2024-02-28 10:04:20', 'user', '1027024335', 'NO file'),
(102, 'I am Hitsh Chat  AI bot My name is Bot', '2024-02-28 10:04:20', 'bot', '1027024335', 'NO file'),
(103, 'die', '2024-02-28 10:05:37', 'user', '1027024335', 'NO file'),
(104, 'Sorry not be able to understand you', '2024-02-28 10:05:37', 'bot', '1027024335', 'NO file'),
(105, 'ai papers', '2024-02-28 10:05:46', 'user', '1027024335', 'NO file'),
(106, 'Sorry not be able to understand you', '2024-02-28 10:05:46', 'bot', '1027024335', 'NO file'),
(107, 'Ai', '2024-02-28 10:05:52', 'user', '1027024335', 'uploads/557811565Surya Resume.pdf'),
(108, 'AI', '2024-02-28 10:05:52', 'bot', '1027024335', 'uploads/557811565Surya Resume.pdf'),
(109, 'hello ', '2024-02-28 10:05:57', 'user', '1027024335', 'NO file'),
(110, 'Hello, Welcome', '2024-02-28 10:05:57', 'bot', '1027024335', 'NO file');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatbot_hints`
--
ALTER TABLE `chatbot_hints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chatbot_hints`
--
ALTER TABLE `chatbot_hints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
