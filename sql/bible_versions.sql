-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 29, 2017 at 06:39 PM
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
-- Table structure for table `bible_version`
--

CREATE TABLE `bible_version` (
  `id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `abbreviation` text NOT NULL COMMENT 'Version Abbreviation',
  `language` text NOT NULL COMMENT 'Language of bible translation (used for language key tables)',
  `version` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Version Name',
  `info_url` text NOT NULL COMMENT 'Info URL',
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bible_version`
--

INSERT INTO `bible_version` (`id`, `abbreviation`, `language`, `version`, `info_url`, `published`) VALUES
(000, 'ENG', 'English', '', '', 1),
(001, 'ASV', 'English', 'American Standard-ASV1901', 'http://en.wikipedia.org/wiki/American_Standard_Version', 1),
(002, 'BBE', 'English', 'Bible in Basic English', 'http://en.wikipedia.org/wiki/Bible_in_Basic_English', 1),
(003, 'DBY', 'English', 'Darby English Bible', 'http://en.wikipedia.org/wiki/Darby_Bible', 1),
(004, 'KJV', 'English', 'King James Version', 'http://en.wikipedia.org/wiki/King_James_Version', 1),
(005, 'WBT', 'English', 'Webster\'s Bible', 'http://en.wikipedia.org/wiki/Webster%27s_Revision', 1),
(006, 'WEB', 'English', 'World English Bible', 'http://en.wikipedia.org/wiki/World_English_Bible', 1),
(007, 'YLT', 'English', 'Young\'s Literal Translation', 'http://en.wikipedia.org/wiki/Young%27s_Literal_Translation', 1),
(008, 'IND', 'indonesian', '', '', 1),
(009, 'AFR', 'Afrikaans', '', 'https://en.wikipedia.org/wiki/Bible_translations_into_Afrikaans', 1),
(010, 'BEN', 'Bengali', 'বাংলা', '', 1),
(011, 'GUJ', 'Gujarati', 'ગુજરાતી', '', 1),
(012, 'HIN', 'Hindi', 'हिन्दी', '', 1),
(013, 'KAN', 'Kannada', 'ಕನ್ನಡ', 'https://en.wikipedia.org/wiki/Bible_translations_into_Kannada', 1),
(014, 'MAL', 'Malayalam', 'മലയാളം', 'https://en.wikipedia.org/wiki/Bible_translations_into_Malayalam', 1),
(015, 'ORI', 'Oriya', 'ଓଡ଼ିଆ oḍiā', '', 1),
(016, 'PUN', 'Punjabi', 'ਪੰਜਾਬੀ پنجابی', '', 1),
(017, 'SEP', 'Sepedi', '', '', 1),
(018, 'TAM', 'Tamil', 'தமிழ் ', 'https://en.wikipedia.org/wiki/Bible_translations_into_Tamil', 1),
(019, 'TEL', 'Telugu', 'తెలుగు', 'https://en.wikipedia.org/wiki/Bible_translations_into_Telugu', 1),
(020, 'XHO', 'Xhosa', '', 'https://en.wikipedia.org/wiki/Bible_translations_into_the_languages_of_Africa#Xhosa_.28South_Africa.29', 1),
(021, 'ZUL', 'Zulu', '', 'https://en.wikipedia.org/wiki/Bible_translations_into_the_languages_of_Africa#Zulu_.28South_Africa.29', 1),
(023, 'BYZ', 'Greek Byzantine', 'Ἑλληνική Ellinikí', '', 0),
(024, 'TIS', 'Greek', 'Un-parsed Tischendorf', '', 1),
(025, 'RV60', 'Español', 'Biblia Reina Valera 1960', 'https://en.wikipedia.org/wiki/Reina-Valera', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bible_version`
--
ALTER TABLE `bible_version`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bible_version`
--
ALTER TABLE `bible_version`
  MODIFY `id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
