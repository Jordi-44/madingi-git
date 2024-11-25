-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 21 oct. 2024 à 16:20
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
-- Base de données : `cinema`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `IDENT_ACTEUR:` int(100) NOT NULL,
  `NOM:` varchar(100) NOT NULL,
  `PRENOM:` varchar(100) NOT NULL,
  `DATE_NAISSANCE:` date NOT NULL,
  `NB_FILM` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `acteur`
--

INSERT INTO `acteur` (`IDENT_ACTEUR:`, `NOM:`, `PRENOM:`, `DATE_NAISSANCE:`, `NB_FILM`) VALUES
(1, 'DURIS', 'Romain', '1974-05-28', 60),
(2, 'EXARCHOPOULOS', 'Adele', '1993-12-21', 23),
(3, 'BORHINGER', 'RICHARD', '1942-06-16', 132),
(4, 'GALABRU', 'MICHEL', '1922-10-27', 277),
(5, 'PARILLAUD', 'ANNE', '1960-05-06', 35),
(6, 'FORD', 'HARRISSON', '1956-06-13', 64);

-- --------------------------------------------------------

--
-- Structure de la table `casting`
--

CREATE TABLE `casting` (
  `IDENT_FILM:` int(100) NOT NULL,
  `IDENT_ACTEUR:` int(100) NOT NULL,
  `ROLE:` varchar(100) NOT NULL,
  `NB_JOUR_TOURNAGE` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `casting`
--

INSERT INTO `casting` (`IDENT_FILM:`, `IDENT_ACTEUR:`, `ROLE:`, `NB_JOUR_TOURNAGE`) VALUES
(1, 1, 'François', 100),
(1, 2, 'Juilia', 100),
(2, 5, 'NIKITA', 68),
(2, 10, 'VICTOR LE NETTOYEUR', 9),
(3, 6, 'HAN SOLO', 201),
(3, 7, 'PRINCESSE LEILA', 203),
(4, 8, 'NEYTIRI', 50),
(4, 9, 'DR.Grace Augustine', 45);

-- --------------------------------------------------------

--
-- Structure de la table `distributeur`
--

CREATE TABLE `distributeur` (
  `IDENT_DISTRIBUTEUR:` int(100) NOT NULL,
  `LIBELLE:` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `distributeur`
--

INSERT INTO `distributeur` (`IDENT_DISTRIBUTEUR:`, `LIBELLE:`) VALUES
(1, 'GAUMONT'),
(2, '20th Century Fox');

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `IDENT_FILM:` int(100) NOT NULL,
  `TITRE:` varchar(100) NOT NULL,
  `GENRE1:` varchar(100) NOT NULL,
  `GENRE2:` varchar(100) NOT NULL,
  `DATE_SORTIE:` date NOT NULL,
  `PAYS:` int(100) NOT NULL,
  `IDENT_REALISATEUR:` int(100) NOT NULL,
  `DUREE` int(100) NOT NULL,
  `IDENT_DISTRUBUTEUR` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`IDENT_FILM:`, `TITRE:`, `GENRE1:`, `GENRE2:`, `DATE_SORTIE:`, `PAYS:`, `IDENT_REALISATEUR:`, `DUREE`, `IDENT_DISTRUBUTEUR`) VALUES
(1, 'SUBWAY', 'POLICIER', 'DRAME', '1985-04-10', 1, 1, 104, 1),
(2, 'NIKITA', 'DRAME', 'ROMANTIQUE', '1990-02-21', 1, 1, 118, 1),
(3, 'STAR-WARS 6:LE RETOUR DU JEDI', 'ACTION', 'SF', '1983-10-19', 2, 2, 133, 2),
(4, 'AVATAR', 'ACTION', 'SF', '2009-10-16', 2, 3, 170, 2);

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `IDENT_PAYS:` int(100) NOT NULL,
  `LIBELLE:` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`IDENT_PAYS:`, `LIBELLE:`) VALUES
(1, 'FRANCE'),
(2, 'ETAT-UNI');

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `IDENT_REALISATEUR:` int(100) NOT NULL,
  `NOM:` varchar(100) NOT NULL,
  `PRENOM:` varchar(100) NOT NULL,
  `DATE_NAISSANCE:` date NOT NULL,
  `NB_FILM_ECRIT:` int(100) NOT NULL,
  `NB_FILM_PROUIT:` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `realisateur`
--

INSERT INTO `realisateur` (`IDENT_REALISATEUR:`, `NOM:`, `PRENOM:`, `DATE_NAISSANCE:`, `NB_FILM_ECRIT:`, `NB_FILM_PROUIT:`) VALUES
(1, 'BESSON', 'LUCAS', '1959-03-18', 40, 99),
(2, ' LUCAS', 'GEORGES', '1944-05-14', 79, 64),
(3, 'CAMERON', 'JAMES', '1954-08-16', 22, 23);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`IDENT_ACTEUR:`);

--
-- Index pour la table `casting`
--
ALTER TABLE `casting`
  ADD KEY `IDENT_FILM:` (`IDENT_FILM:`);

--
-- Index pour la table `distributeur`
--
ALTER TABLE `distributeur`
  ADD PRIMARY KEY (`IDENT_DISTRIBUTEUR:`);

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`IDENT_FILM:`),
  ADD KEY `IDENT_REALISATEUR:` (`IDENT_REALISATEUR:`),
  ADD KEY `PAYS:` (`PAYS:`),
  ADD KEY `IDENT_DISTRUBUTEUR` (`IDENT_DISTRUBUTEUR`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`IDENT_PAYS:`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`IDENT_REALISATEUR:`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
