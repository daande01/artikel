-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 13 okt 2016 kl 10:16
-- Serverversion: 5.6.17
-- PHP-version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databas: `testshop`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `artikel`
--

CREATE TABLE IF NOT EXISTS `artikel` (
  `bildurl` varchar(1000) NOT NULL,
  `rubrik` varchar(150) NOT NULL,
  `pris` int(5) NOT NULL,
  `beskrivning` varchar(300) NOT NULL,
  `artikelid_pk` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`artikelid_pk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumpning av Data i tabell `artikel`
--

INSERT INTO `artikel` (`bildurl`, `rubrik`, `pris`, `beskrivning`, `artikelid_pk`) VALUES
('http://techbuyersguru.com/sites/default/files/pictures/CPUs/IntelCorei3-6100.jpg', 'intel i3', 200, 'Core i3 är instegsmodellen och är tvåkärnig. Den passar bra för den som behöver en pålitlig dator, men inte nödvändigtvis använder så grafiktunga program. Du letar förmodligen bäst pris/prestanda, men överväg ändå att titta på en Core i5 processor! ', 1),
('http://techbuyersguru.com/sites/default/files/pictures/CPUs/IntelCorei3-6100.jpg', 'test', 100, 'mycket fin test artikel ', 2),
('hej.png', 'test2', 300, 'hej hej', 3);

-- --------------------------------------------------------

--
-- Tabellstruktur `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `cartid_pk` int(10) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `antal` int(10) DEFAULT NULL,
  `artikelid_fk` int(100) DEFAULT NULL,
  PRIMARY KEY (`cartid_pk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumpning av Data i tabell `cart`
--

INSERT INTO `cart` (`cartid_pk`, `user`, `antal`, `artikelid_fk`) VALUES
(1, NULL, 3, 2),
(2, 'ldpj9eks41gpp611gr4i44ehi4', 2, 1),
(3, 'ldpj9eks41gpp611gr4i44ehi4', 4, 1),
(4, 'ldpj9eks41gpp611gr4i44ehi4', 3, 1),
(5, '8k8o6ftkonr1o947ln4qe2lvh7', 3, 1),
(6, '8k8o6ftkonr1o947ln4qe2lvh7', 2, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
