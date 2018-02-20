-- phpMyAdmin SQL Dump
-- version 2.8.0.1
-- http://www.phpmyadmin.net
-- 
-- Host: custsql-ipg62.eigbox.net
-- Generation Time: Feb 20, 2018 at 01:21 PM
-- Server version: 5.6.37
-- PHP Version: 4.4.9
-- 
-- Database: `bibliar`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `bible_version`
-- 

CREATE TABLE `bible_version` (
  `id` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `abbreviation` text NOT NULL COMMENT 'Version Abbreviation',
  `language` text NOT NULL COMMENT 'Language of bible translation (used for language key tables)',
  `version` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL COMMENT 'Version Name',
  `info_url` text NOT NULL COMMENT 'Info URL',
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

-- 
-- Dumping data for table `bible_version`
-- 

INSERT INTO `bible_version` VALUES (000, 'ENG', 'English', '', '', 1);
INSERT INTO `bible_version` VALUES (001, 'ASV', 'English', 'American Standard-ASV1901', 'http://en.wikipedia.org/wiki/American_Standard_Version', 1);
INSERT INTO `bible_version` VALUES (002, 'BBE', 'English', 'Bible in Basic English', 'http://en.wikipedia.org/wiki/Bible_in_Basic_English', 1);
INSERT INTO `bible_version` VALUES (003, 'DBY', 'English', 'Darby English Bible', 'http://en.wikipedia.org/wiki/Darby_Bible', 1);
INSERT INTO `bible_version` VALUES (004, 'KJV', 'English', 'King James Version', 'http://en.wikipedia.org/wiki/King_James_Version', 1);
INSERT INTO `bible_version` VALUES (005, 'WBT', 'English', 'Webster''s Bible', 'http://en.wikipedia.org/wiki/Webster%27s_Revision', 1);
INSERT INTO `bible_version` VALUES (006, 'WEB', 'English', 'World English Bible', 'http://en.wikipedia.org/wiki/World_English_Bible', 1);
INSERT INTO `bible_version` VALUES (007, 'YLT', 'English', 'Young''s Literal Translation', 'http://en.wikipedia.org/wiki/Young%27s_Literal_Translation', 1);
INSERT INTO `bible_version` VALUES (008, 'IND', 'indonesian', '', '', 1);
INSERT INTO `bible_version` VALUES (009, 'AFR', 'Afrikaans', '', 'https://en.wikipedia.org/wiki/Bible_translations_into_Afrikaans', 1);
INSERT INTO `bible_version` VALUES (010, 'BEN', 'Bengali', 'বাংলা', '', 1);
INSERT INTO `bible_version` VALUES (011, 'GUJ', 'Gujarati', 'ગુજરાતી', '', 1);
INSERT INTO `bible_version` VALUES (012, 'HIN', 'Hindi', 'हिन्दी', '', 1);
INSERT INTO `bible_version` VALUES (013, 'KAN', 'Kannada', 'ಕನ್ನಡ', 'https://en.wikipedia.org/wiki/Bible_translations_into_Kannada', 1);
INSERT INTO `bible_version` VALUES (014, 'MAL', 'Malayalam', 'മലയാളം', 'https://en.wikipedia.org/wiki/Bible_translations_into_Malayalam', 1);
INSERT INTO `bible_version` VALUES (015, 'ORI', 'Oriya', 'ଓଡ଼ିଆ oḍiā', '', 1);
INSERT INTO `bible_version` VALUES (016, 'PUN', 'Punjabi', 'ਪੰਜਾਬੀ پنجابی', '', 1);
INSERT INTO `bible_version` VALUES (017, 'SEP', 'Sepedi', '', '', 1);
INSERT INTO `bible_version` VALUES (018, 'TAM', 'Tamil', 'தமிழ் ', 'https://en.wikipedia.org/wiki/Bible_translations_into_Tamil', 1);
INSERT INTO `bible_version` VALUES (019, 'TEL', 'Telugu', 'తెలుగు', 'https://en.wikipedia.org/wiki/Bible_translations_into_Telugu', 1);
INSERT INTO `bible_version` VALUES (020, 'XHO', 'Xhosa', '', 'https://en.wikipedia.org/wiki/Bible_translations_into_the_languages_of_Africa#Xhosa_.28South_Africa.29', 1);
INSERT INTO `bible_version` VALUES (021, 'ZUL', 'Zulu', '', 'https://en.wikipedia.org/wiki/Bible_translations_into_the_languages_of_Africa#Zulu_.28South_Africa.29', 1);
INSERT INTO `bible_version` VALUES (023, 'BYZ', 'Greek Byzantine', 'Ἑλληνική Ellinikí', '', 0);
INSERT INTO `bible_version` VALUES (024, 'TIS', 'Greek', 'Un-parsed Tischendorf', '', 1);
INSERT INTO `bible_version` VALUES (025, 'RV60', 'Español', 'Biblia Reina Valera 1960', 'https://en.wikipedia.org/wiki/Reina-Valera', 1);
INSERT INTO `bible_version` VALUES (026, 'AA', 'Português', 'Almeida Revisada Imprensa Bíblica', 'https://pt.wikipedia.org/wiki/Versão_revisada_segundo_os_melhores_textos', 1);
INSERT INTO `bible_version` VALUES (027, 'NVI', 'Português', 'Nova Versão Internacional ', 'https://pt.wikipedia.org/wiki/Nova_Versão_Internacional', 1);
INSERT INTO `bible_version` VALUES (028, 'ACF', 'Português', 'Almeida Corrigida e Fiel', 'https://pt.wikipedia.org/wiki/Almeida_Corrigida_Fiel', 1);
