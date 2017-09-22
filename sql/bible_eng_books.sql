-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 22, 2017 at 02:34 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bibliar`
--

-- --------------------------------------------------------

--
-- Table structure for table `bible_eng_books`
--

CREATE TABLE `bible_eng_books` (
  `id` int(11) NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `abreviation` varchar(10) DEFAULT NULL,
  `testament` varchar(2) DEFAULT NULL,
  `genre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bible_eng_books`
--

INSERT INTO `bible_eng_books` (`id`, `name`, `abreviation`, `testament`, `genre`) VALUES
(1, 'Genesis', '', '', ''),
(2, ' Exodus', '', '', ''),
(3, ' Leviticus', '', '', ''),
(4, ' Numbers', '', '', ''),
(5, ' Deuteronomy', '', '', ''),
(6, ' Joshua', '', '', ''),
(7, ' Judges', '', '', ''),
(8, ' Ruth', '', '', ''),
(9, ' 1 Samuel', '', '', ''),
(10, ' 2 Samuel', '', '', ''),
(11, ' 1 Kings', '', '', ''),
(12, ' 2 Kings', '', '', ''),
(13, ' 1 Chronicles', '', '', ''),
(14, ' 2 Chronicles', '', '', ''),
(15, ' Ezra', '', '', ''),
(16, ' Nehemiah', '', '', ''),
(17, ' Esther', '', '', ''),
(18, ' Job', '', '', ''),
(19, ' Psalms', '', '', ''),
(20, ' Proverbs', '', '', ''),
(21, ' Ecclesiastes', '', '', ''),
(22, ' Song of Solomon', '', '', ''),
(23, ' Isaiah', '', '', ''),
(24, ' Jeremiah', '', '', ''),
(25, ' Lamentations', '', '', ''),
(26, ' Ezekiel', '', '', ''),
(27, ' Daniel', '', '', ''),
(28, ' Hosea', '', '', ''),
(29, ' Joel', '', '', ''),
(30, ' Amos', '', '', ''),
(31, ' Obadiah', '', '', ''),
(32, ' Jonah', '', '', ''),
(33, ' Micah', '', '', ''),
(34, ' Nahum', '', '', ''),
(35, ' Habakkuk', '', '', ''),
(36, ' Zephaniah', '', '', ''),
(37, ' Haggai', '', '', ''),
(38, ' Zechariah', '', '', ''),
(39, ' Malachi', '', '', ''),
(40, ' Matthew', '', '', ''),
(41, ' Mark', '', '', ''),
(42, ' Luke', '', '', ''),
(43, ' John', '', '', ''),
(44, ' Acts', '', '', ''),
(45, ' Romans', '', '', ''),
(46, ' 1 Corinthians', '', '', ''),
(47, ' 2 Corinthians', '', '', ''),
(48, ' Galatians', '', '', ''),
(49, ' Ephesians', '', '', ''),
(50, ' Philippians', '', '', ''),
(51, ' Colossians', '', '', ''),
(52, ' 1 Thessalonians', '', '', ''),
(53, ' 2 Thessalonians', '', '', ''),
(54, ' 1 Timothy', '', '', ''),
(55, ' 2 Timothy', '', '', ''),
(56, ' Titus', '', '', ''),
(57, ' Philemon', '', '', ''),
(58, ' Hebrews', '', '', ''),
(59, ' James', '', '', ''),
(60, ' 1 Peter', '', '', ''),
(61, ' 2 Peter', '', '', ''),
(62, ' 1 John', '', '', ''),
(63, ' 2 John', '', '', ''),
(64, ' 3 John', '', '', ''),
(65, ' Jude', '', '', ''),
(66, ' Revelation', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bible_eng_books`
--
ALTER TABLE `bible_eng_books`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
