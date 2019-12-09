-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 09 Décembre 2019 à 16:05
-- Version du serveur :  5.7.11
-- Version de PHP :  7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bkvideo`
--

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `numcom` int(11) NOT NULL,
  `numpa` int(11) NOT NULL,
  `numprod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

CREATE TABLE `panier` (
  `numpa` int(11) NOT NULL,
  `qteProduit` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `numprod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `numprod` int(11) NOT NULL,
  `nompro` varchar(50) NOT NULL,
  `plateforme` varchar(50) NOT NULL,
  `prix` varchar(150) NOT NULL,
  `categorie` varchar(50) NOT NULL,
  `lien` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`numprod`, `nompro`, `plateforme`, `prix`, `categorie`, `lien`) VALUES
(1, 'Medievil', 'ps4', '25.55', 'New2', '<img src = "StyleOTD/Medievil.PNG">'),
(2, 'Trove', 'ps4', '0', 'OI2', '<img src = "StyleOTD/trove.JPG">'),
(3, 'Mortal Kombat 11', 'ps4', '55.99', 'New2', '<img src = "StyleOTD/mk11.JPG">'),
(4, 'Uncharted 4 : a thief\'s end', 'ps4', '14.99', 'RM2', '<img src = "StyleOTD/Uncharted4.JPG">'),
(5, 'grand theft auto 5', 'ps3', '15.8', 'New1', '<img src = "StyleOTD/gta5.JPG">'),
(6, 'Uncharted : drake\'s fortune', 'ps3', '4.99', 'OI1', '<img src = "StyleOTD/Uncharted1.PNG">'),
(7, 'Uncharted 3 : drake\'s deception', 'ps3', '10.5', 'RM1', '<img src = "StyleOTD/Uncharted3.JPG">'),
(8, 'Red Dead Redemption 2', 'pc', '34.99', 'New3', '<img src = "StyleOTD/reddeadredemption2.JPG">'),
(9, 'Smite', 'pc', '0', 'OI3', '<img src = "StyleOTD/smite.JPG">'),
(10, 'grand theft auto 4', 'pc', '9.99', 'RM3', '<img src = "StyleOTD/gta4.JPG">'),
(11, 'Call of Duty : modern warfare', 'xboxone', '55.55', 'New4', '<img src = "StyleOTD/CODMW.JPG">'),
(12, 'Batman Arkham Knight', 'xboxone', '17.99', 'OI4', '<img src = "StyleOTD/batman.JPG">'),
(13, 'Watch Dogs', 'xboxone', '14.8', 'RM4', '<img src = "StyleOTD/watchdogs.PNG">'),
(14, 'Bioshock Infinite', 'xbox360', '19.99', 'New5', '<img src = "StyleOTD/bioshockinfinite.JPEG">'),
(15, 'Gears of War 3', 'xbox360', '9.99', 'OI5', '<img src = "StyleOTD/gearsofwar3.JPG">'),
(16, 'MineCraft', 'xbox360', '9.99', 'RM5', '<img src = "StyleOTD/minecraft.JPG">');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `mdp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `pseudo`, `mail`, `mdp`) VALUES
(1, 'zaki', 'zaki@gmail.com', '90283840d90de49b8e7984bd99b47fee0d4bd50d');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`numcom`),
  ADD KEY `Commande_Panier_FK` (`numpa`),
  ADD KEY `Commande_Produits0_FK` (`numprod`);

--
-- Index pour la table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`numpa`),
  ADD KEY `Panier_Utilisateur_FK` (`id`),
  ADD KEY `Panier_Produits0_FK` (`numprod`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`numprod`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `panier`
--
ALTER TABLE `panier`
  MODIFY `numpa` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `numprod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `Commande_Panier_FK` FOREIGN KEY (`numpa`) REFERENCES `panier` (`numpa`),
  ADD CONSTRAINT `Commande_Produits0_FK` FOREIGN KEY (`numprod`) REFERENCES `produits` (`numprod`);

--
-- Contraintes pour la table `panier`
--
ALTER TABLE `panier`
  ADD CONSTRAINT `Panier_Produits0_FK` FOREIGN KEY (`numprod`) REFERENCES `produits` (`numprod`),
  ADD CONSTRAINT `Panier_Utilisateur_FK` FOREIGN KEY (`id`) REFERENCES `utilisateur` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
