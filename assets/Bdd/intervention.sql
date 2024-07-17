-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 17 juil. 2024 à 13:33
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `InterventionsStrasbourg`
--

-- --------------------------------------------------------

--
-- Structure de la table `intervention`
--

CREATE TABLE `intervention` (
  `id` int(11) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `precisions` varchar(255) NOT NULL,
  `statut` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `intervention`
--

INSERT INTO `intervention` (`id`, `adresse`, `type`, `precisions`, `statut`, `date`) VALUES
(1, '1Rue de la Nuée-Bleue', 'Technique', 'Installation de matériel informatique', 'À planifier', '2023-12-21 16:00:00'),
(2, '1Rue de la Nuée-Bleue', 'Ménage', 'Nettoyage des locaux', 'En cours', '2024-07-04 10:32:00'),
(3, '2 Rue du Dôme', 'Médiation', 'Gestion de conflit', 'Réalisé', '2023-05-11 16:00:00'),
(4, '2 Rue du Dôme', 'Technique', 'Maintenance réseau', 'À planifier', '2023-03-07 08:00:00'),
(5, '4 Rue du Vieux-Marché-aux-Poissons', 'Technique', 'Réparation de matériel', 'À planifier', '2023-06-18 00:00:00'),
(6, '4 Rue du Vieux-Marché-aux-Poissons', 'Ménage', 'Réparation de matériel', 'En cours', '2023-06-18 08:00:00');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `intervention`
--
ALTER TABLE `intervention`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `intervention`
--
ALTER TABLE `intervention`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
