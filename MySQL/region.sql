-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Hostiteľ: localhost
-- Vygenerované: Po 28.Apr 2014, 13:33
-- Verzia serveru: 5.1.69-log
-- Verzia PHP: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáza: `do1866210db`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Name',
  `shortcut` varchar(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Shortcut',
  `use` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = use the row, 0 = not',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Sťahujem dáta pre tabuľku `region`
--

INSERT INTO `region` (`id`, `name`, `shortcut`, `use`) VALUES
(1, 'Banskobystrický kraj', 'BC', 1),
(2, 'Bratislavský kraj', 'BL', 1),
(3, 'Košický kraj', 'KI', 1),
(4, 'Nitriansky kraj', 'NI', 1),
(5, 'Prešovský kraj', 'PV', 1),
(6, 'Trenčiansky kraj', 'TC', 1),
(7, 'Trnavský kraj', 'TA', 1),
(8, 'Žilinský kraj', 'ZI', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
