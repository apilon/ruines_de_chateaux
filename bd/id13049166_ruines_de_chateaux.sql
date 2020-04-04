-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 04, 2020 at 05:41 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id13049166_ruines_de_chateaux`
--

-- --------------------------------------------------------

--
-- Table structure for table `Choses_a_faire`
--

CREATE TABLE `Choses_a_faire` (
  `id` int(11) NOT NULL,
  `site_de_ruine_id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Choses_a_faire`
--

INSERT INTO `Choses_a_faire` (`id`, `site_de_ruine_id`, `nom`, `description`) VALUES
(3, 2, 'Golf Sokolov', 'Club de golf ouvert en 2005'),
(4, 2, 'Tour d\'observation Krasensky', 'Tour construite en 1935'),
(5, 1, 'Centre d\'achats Atrium', 'À Karlovy Vary');

-- --------------------------------------------------------

--
-- Table structure for table `Sites_de_ruines`
--

CREATE TABLE `Sites_de_ruines` (
  `id` int(11) NOT NULL,
  `utilisateur_id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `prix` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Sites_de_ruines`
--

INSERT INTO `Sites_de_ruines` (`id`, `utilisateur_id`, `nom`, `description`, `prix`) VALUES
(1, 1, 'Andelska hora', 'Ruine d\'un chateau gothique', 0),
(2, 1, 'Hartenberg', 'Ruine et château de la période romane', 50);

-- --------------------------------------------------------

--
-- Table structure for table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifiant` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mot_de_passe` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `identifiant`, `mot_de_passe`) VALUES
(1, 'André Pilon', 'apilon', 'prof');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Choses_a_faire`
--
ALTER TABLE `Choses_a_faire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_de_ruine_1_n` (`site_de_ruine_id`);

--
-- Indexes for table `Sites_de_ruines`
--
ALTER TABLE `Sites_de_ruines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `utilisateur_1_n` (`utilisateur_id`);

--
-- Indexes for table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Choses_a_faire`
--
ALTER TABLE `Choses_a_faire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Sites_de_ruines`
--
ALTER TABLE `Sites_de_ruines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Choses_a_faire`
--
ALTER TABLE `Choses_a_faire`
  ADD CONSTRAINT `Choses_a_faire_ibfk_1` FOREIGN KEY (`site_de_ruine_id`) REFERENCES `Sites_de_ruines` (`id`);

--
-- Constraints for table `Sites_de_ruines`
--
ALTER TABLE `Sites_de_ruines`
  ADD CONSTRAINT `Sites_de_ruines_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateurs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
