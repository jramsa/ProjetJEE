-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Client :  sqletud.u-pem.fr
-- Généré le :  Jeu 02 Mars 2017 à 19:32
-- Version du serveur :  5.5.54-0+deb8u1-log
-- Version de PHP :  5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `jbidet_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
`id` int(11) NOT NULL,
  `user` varchar(64) COLLATE latin1_general_ci NOT NULL,
  `date` date NOT NULL,
  `type` enum('cafe','hotspot') COLLATE latin1_general_ci NOT NULL,
  `search` varchar(256) COLLATE latin1_general_ci NOT NULL,
  `range` int(11) NOT NULL,
  `bookmarked` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Contenu de la table `history`
--

INSERT INTO `history` (`id`, `user`, `date`, `type`, `search`, `range`, `bookmarked`) VALUES
(2, 'jeremy.bidet@gmail.com', '2017-01-18', 'cafe', 'mont-martre', 100, 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `history`
--
ALTER TABLE `history`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `history`
--
ALTER TABLE `history`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
