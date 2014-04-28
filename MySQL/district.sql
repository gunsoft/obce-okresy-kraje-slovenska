-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Hostiteľ: localhost
-- Vygenerované: Po 28.Apr 2014, 15:28
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
-- Štruktúra tabuľky pre tabuľku `district`
--

CREATE TABLE IF NOT EXISTS `district` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Name',
  `veh_reg_num` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Vehicle registration number of district',
  `code` smallint(3) NOT NULL COMMENT 'Code',
  `region_id` int(11) NOT NULL COMMENT 'ID of region where district belongs to',
  `use` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 = use the row, 0 = not',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=80 ;

--
-- Sťahujem dáta pre tabuľku `district`
--

INSERT INTO `district` (`id`, `name`, `veh_reg_num`, `code`, `region_id`, `use`) VALUES
(1, 'Bánovce nad Bebravou', 'BN', 301, 6, 1),
(2, 'Banská Bystrica', 'BB', 601, 1, 1),
(3, 'Banská Štiavnica', 'BS', 602, 1, 1),
(4, 'Bardejov', 'BJ', 701, 5, 1),
(5, 'Bratislava I', 'BA, BL', 101, 2, 1),
(6, 'Bratislava II', 'BA, BL', 102, 2, 1),
(7, 'Bratislava III', 'BA, BL', 103, 2, 1),
(8, 'Bratislava IV', 'BA, BL', 104, 2, 1),
(9, 'Bratislava V', 'BA, BL', 105, 2, 1),
(10, 'Brezno', 'BR', 603, 1, 1),
(11, 'Bytča', 'BY', 501, 8, 1),
(12, 'Čadca', 'CA', 502, 8, 1),
(13, 'Detva', 'DT', 604, 1, 1),
(14, 'Dolný Kubín', 'DK', 503, 8, 1),
(15, 'Dunajská Streda', 'DS', 201, 7, 1),
(16, 'Galanta', 'GA', 202, 7, 1),
(17, 'Gelnica', 'GL', 801, 3, 1),
(18, 'Hlohovec', 'HC', 203, 7, 1),
(19, 'Humenné', 'HE', 702, 5, 1),
(20, 'Ilava', 'IL', 302, 6, 1),
(21, 'Kežmarok', 'KK', 703, 5, 1),
(22, 'Komárno', 'KN', 401, 4, 1),
(23, 'Košice I', 'KE', 802, 3, 1),
(24, 'Košice II', 'KE', 803, 3, 1),
(25, 'Košice III', 'KE', 804, 3, 1),
(26, 'Košice IV', 'KE', 805, 3, 1),
(27, 'Košice-okolie', 'KS', 806, 3, 1),
(28, 'Krupina', 'KA', 605, 1, 1),
(29, 'Kysucké Nové Mesto', 'KM', 504, 8, 1),
(30, 'Levice', 'LV', 402, 4, 1),
(31, 'Levoča', 'LE', 704, 5, 1),
(32, 'Liptovský Mikuláš', 'LM', 505, 8, 1),
(33, 'Lučenec', 'LC', 606, 1, 1),
(34, 'Malacky', 'MA', 106, 2, 1),
(35, 'Martin', 'MT', 506, 8, 1),
(36, 'Medzilaborce', 'ML', 705, 5, 1),
(37, 'Michalovce', 'MI', 807, 3, 1),
(38, 'Myjava', 'MY', 303, 6, 1),
(39, 'Námestovo', 'NO', 507, 8, 1),
(40, 'Nitra', 'NR', 403, 4, 1),
(41, 'Nové Mesto nad Váhom', 'NM', 304, 6, 1),
(42, 'Nové Zámky', 'NZ', 404, 4, 1),
(43, 'Partizánske', 'PE', 305, 6, 1),
(44, 'Pezinok', 'PK', 107, 2, 1),
(45, 'Piešťany', 'PN', 204, 7, 1),
(46, 'Poltár', 'PT', 607, 1, 1),
(47, 'Poprad', 'PP', 706, 5, 1),
(48, 'Považská Bystrica', 'PB', 306, 6, 1),
(49, 'Prešov', 'PO', 707, 5, 1),
(50, 'Prievidza', 'PD', 307, 6, 1),
(51, 'Púchov', 'PU', 308, 6, 1),
(52, 'Revúca', 'RA', 608, 1, 1),
(53, 'Rimavská Sobota', 'RS', 609, 1, 1),
(54, 'Rožňava', 'RV', 808, 3, 1),
(55, 'Ružomberok', 'RK', 508, 8, 1),
(56, 'Sabinov', 'SB', 708, 5, 1),
(57, 'Senec', 'SC', 108, 2, 1),
(58, 'Senica', 'SE', 205, 7, 1),
(59, 'Skalica', 'SI', 206, 7, 1),
(60, 'Snina', 'SV', 709, 5, 1),
(61, 'Sobrance', 'SO', 809, 3, 1),
(62, 'Spišská Nová Ves', 'SN', 810, 3, 1),
(63, 'Stará Ľubovňa', 'SL', 710, 5, 1),
(64, 'Stropkov', 'SP', 711, 5, 1),
(65, 'Svidník', 'SK', 712, 5, 1),
(66, 'Šaľa', 'SA', 405, 4, 1),
(67, 'Topoľčany', 'TO', 406, 4, 1),
(68, 'Trebišov', 'TV', 811, 3, 1),
(69, 'Trenčín', 'TN', 309, 6, 1),
(70, 'Trnava', 'TT', 207, 7, 1),
(71, 'Turčianske Teplice', 'TR', 509, 8, 1),
(72, 'Tvrdošín', 'TS', 510, 8, 1),
(73, 'Veľký Krtíš', 'VK', 610, 1, 1),
(74, 'Vranov nad Topľou', 'VT', 713, 5, 1),
(75, 'Zlaté Moravce', 'ZM', 407, 4, 1),
(76, 'Zvolen', 'ZV', 611, 1, 1),
(77, 'Žarnovica', 'ZC', 612, 1, 1),
(78, 'Žiar nad Hronom', 'ZH', 613, 1, 1),
(79, 'Žilina', 'ZA', 511, 8, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
