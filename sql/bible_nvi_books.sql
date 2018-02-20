-- phpMyAdmin SQL Dump
-- version 2.8.0.1
-- http://www.phpmyadmin.net
-- 
-- Host: custsql-ipg62.eigbox.net
-- Generation Time: Feb 20, 2018 at 01:19 PM
-- Server version: 5.6.37
-- PHP Version: 4.4.9
-- 
-- Database: `bibliar`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `bible_nvi_books`
-- 

CREATE TABLE `bible_nvi_books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `abreviation` varchar(10) DEFAULT NULL,
  `testament` varchar(2) DEFAULT NULL,
  `genre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

-- 
-- Dumping data for table `bible_nvi_books`
-- 

INSERT INTO `bible_nvi_books` VALUES (1, 'Gênesis', 'gn', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (2, 'Êxodo', 'ex', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (3, 'Levítico', 'lv', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (4, 'Números', 'nm', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (5, 'Deuteronômio', 'dt', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (6, 'Josué', 'js', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (7, 'Juízes', 'jz', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (8, 'Rute', 'rt', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (9, '1º Samuel', '1sm', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (10, '2º Samuel', '2sm', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (11, '1º Reis', '1rs', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (12, '2º Reis', '2rs', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (13, '1º Crônicas', '1cr', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (14, '2º Crônicas', '2cr', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (15, 'Esdras', 'ed', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (16, 'Neemias', 'ne', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (17, 'Ester', 'et', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (18, 'Jó', 'job', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (19, 'Salmos', 'sl', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (20, 'Provérbios', 'pv', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (21, 'Eclesiastes', 'ec', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (22, 'Cânticos', 'ct', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (23, 'Isaías', 'is', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (24, 'Jeremias', 'jr', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (25, 'Lamentações de Jeremias', 'lm', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (26, 'Ezequiel', 'ez', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (27, 'Daniel', 'dn', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (28, 'Oséias', 'os', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (29, 'Joel', 'jl', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (30, 'Amós', 'am', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (31, 'Obadias', 'ob', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (32, 'Jonas', 'jn', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (33, 'Miquéias', 'mq', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (34, 'Naum', 'na', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (35, 'Habacuque', 'hc', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (36, 'Sofonias', 'sf', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (37, 'Ageu', 'ag', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (38, 'Zacarias', 'zc', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (39, 'Malaquias', 'ml', 'O', NULL);
INSERT INTO `bible_nvi_books` VALUES (40, 'Mateus', 'mt', 'N', NULL);
INSERT INTO `bible_nvi_books` VALUES (41, 'Marcos', 'mc', 'N', NULL);
INSERT INTO `bible_nvi_books` VALUES (42, 'Lucas', 'lc', 'N', NULL);
INSERT INTO `bible_nvi_books` VALUES (43, 'João', 'jo', 'N', NULL);
INSERT INTO `bible_nvi_books` VALUES (44, 'Atos', 'at', 'N', NULL);
INSERT INTO `bible_nvi_books` VALUES (45, 'Romanos', 'rm', 'N', NULL);
INSERT INTO `bible_nvi_books` VALUES (46, '1ª Coríntios', '1co', 'N', NULL);
INSERT INTO `bible_nvi_books` VALUES (47, '2ª Coríntios', '2co', 'N', NULL);
INSERT INTO `bible_nvi_books` VALUES (48, 'Gálatas', 'gl', 'N', NULL);
INSERT INTO `bible_nvi_books` VALUES (49, 'Efésios', 'ef', 'N', NULL);
INSERT INTO `bible_nvi_books` VALUES (50, 'Filipenses', 'fp', 'N', NULL);
INSERT INTO `bible_nvi_books` VALUES (51, 'Colossenses', 'cl', 'N', NULL);
INSERT INTO `bible_nvi_books` VALUES (52, '1ª Tessalonicenses', '1ts', 'N', NULL);
INSERT INTO `bible_nvi_books` VALUES (53, '2ª Tessalonicenses', '2ts', 'N', NULL);
INSERT INTO `bible_nvi_books` VALUES (54, '1ª Timóteo', '1tm', 'N', NULL);
INSERT INTO `bible_nvi_books` VALUES (55, '2ª Timóteo', '2tm', 'N', NULL);
INSERT INTO `bible_nvi_books` VALUES (56, 'Tito', 'tt', 'N', NULL);
INSERT INTO `bible_nvi_books` VALUES (57, 'Filemom', 'fm', 'N', NULL);
INSERT INTO `bible_nvi_books` VALUES (58, 'Hebreus', 'hb', 'N', NULL);
INSERT INTO `bible_nvi_books` VALUES (59, 'Tiago', 'tg', 'N', NULL);
INSERT INTO `bible_nvi_books` VALUES (60, '1ª Pedro', '1pe', 'N', NULL);
INSERT INTO `bible_nvi_books` VALUES (61, '2ª Pedro', '2pe', 'N', NULL);
INSERT INTO `bible_nvi_books` VALUES (62, '1ª João', '1jo', 'N', NULL);
INSERT INTO `bible_nvi_books` VALUES (63, '2ª João', '2jo', 'N', NULL);
INSERT INTO `bible_nvi_books` VALUES (64, '3ª João', '3jo', 'N', NULL);
INSERT INTO `bible_nvi_books` VALUES (65, 'Judas', 'jd', 'N', NULL);
INSERT INTO `bible_nvi_books` VALUES (66, 'Apocalipse', 'ap', 'N', NULL);
