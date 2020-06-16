-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 16, 2020 at 07:17 AM
-- Server version: 5.7.21
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `reservationsalles`
--

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `debut` datetime NOT NULL,
  `fin` datetime NOT NULL,
  `id_utilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `titre`, `description`, `debut`, `fin`, `id_utilisateur`) VALUES
(11, 'test', 'testest', '2020-06-16 10:00:00', '2020-06-16 11:00:00', 1),
(14, 'meeting', 'meeting avec marc', '2020-06-17 14:00:00', '2020-06-17 15:00:00', 1),
(15, 'réservation', 'reunion du jour', '2020-06-19 18:00:00', '2020-06-19 19:00:00', 1),
(16, 'presentation ', 'presentation rendu', '2020-06-19 15:00:00', '2020-06-19 16:00:00', 10),
(18, 'meeting', 'test meeting', '2020-06-16 17:00:00', '2020-06-16 18:00:00', 28),
(20, 'evenement', 'test evenement je croise les doights', '2020-06-17 13:00:00', '2020-06-17 14:00:00', 28),
(21, 'evenement', 'event fin de projet', '2020-06-19 08:00:00', '2020-06-19 09:00:00', 28),
(22, 'meeting', 'test meeting', '2020-06-17 08:00:00', '2020-06-17 09:00:00', 28);

-- --------------------------------------------------------

--
-- Table structure for table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `login`, `password`) VALUES
(1, 'jiji', 'password'),
(10, 'riri', 'password'),
(14, 'roro', 'password'),
(24, 'rara', 'password'),
(27, 'ruru', 'password'),
(28, 'jajaja', 'password');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;