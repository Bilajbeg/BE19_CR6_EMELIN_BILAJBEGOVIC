-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 12. Aug 2023 um 15:13
-- Server-Version: 10.4.28-MariaDB
-- PHP-Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `be19_cr6_bigeventsemelinbilajbegovic`
--
CREATE DATABASE IF NOT EXISTS `be19_cr6_bigeventsemelinbilajbegovic` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be19_cr6_bigeventsemelinbilajbegovic`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230811141544', '2023-08-11 16:15:55', 29),
('DoctrineMigrations\\Version20230811183328', '2023-08-11 20:33:57', 13);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `event`
--

INSERT INTO `event` (`id`, `name`, `date_time`, `description`, `image`, `capacity`, `email`, `phone`, `address`, `url`, `type`) VALUES
(1, 'Praterfest', '2023-08-15 12:00:00', 'This years Praterfestival Summer 2023 will be the biggest attraction in Vienna.', 'https://cdn.pixabay.com/photo/2018/07/22/19/39/austria-3555359_1280.jpg', 2000, 'info@praterwien.com', 17222299, 'Riesenradplatz 2, 1020 Wien', 'www.praterwien.com', 'fun'),
(2, 'Meierei Stadtpark', '2023-08-20 21:00:00', 'Eine Oase mitten in der Stadt, im schönsten Park Wiens findet eine Veranstaltung statt.', 'https://media-cdn.tripadvisor.com/media/photo-s/28/bb/60/bf/meierei-im-stadtpark.jpg', 250, 'wien@steirereck.at', 2147483647, 'Am Heumarkt 2A, 1030 Vienna', 'www. steirereck.at', 'music'),
(3, 'Die Fledermaus', '2023-09-12 16:30:00', 'Operette von Johann Strauss\r\nIn deutscher Sprache mit englischen Übertiteln', 'https://events.wien.info/media/full/Volksoper_Au%C3%9Fenansicht.jpg', 120, 'tickets@volksoper.at', 151444367, 'Währinger Straße 78, 1090 Vienna', 'www.volksoper.at', 'operette'),
(4, 'Indiana Jones film', '2024-02-11 11:00:00', 'Die ist nur ein Test um zu sehen ob das ganze funktioniert. Ich hoffe schon ...', 'https://cdn.pixabay.com/photo/2022/03/30/12/21/adventures-7101091_1280.jpg', 64, 'info@haydkino.at', 123456, 'Mariahilfer Straße 57, 1060 Wien', 'www.haydnkino.at', 'movie'),
(6, 'Die Glücklichen', '2023-10-20 01:00:00', 'Sie erleben an fünf Terminen eine vielfältige Auswahl mit spannenden Neuinszenierungen .', 'https://e8s3v3w7.rocketcdn.me/wp-content/uploads/2017/11/occ88sterreich-wien-das-burgtheater-an-der-ringstrasse-in-wien-zacc88hlt-occ88sterreichweit-und-international-zu-den-bedeutendsten-stacc88tten-deutscher-schauspielkunst-clearlens-shut.jpg', 300, 'burgtheater@wien.at', 25367899, 'Universitätsring 2, 1010 Wien', 'https://www.burgtheater.at/', 'theater'),
(7, 'Formula 1 Spielberg', '2023-09-03 09:30:00', 'Dieses Jahr wird es ein tolles Rennen zwischen den besten Fahrern der Welt.', 'https://cdn.pixabay.com/photo/2020/06/30/08/54/ferrari-5355660_1280.jpg', 10000, 'information@redbullring.com', 433577202, 'Red Bull Ring Straße 1, 8724 Spielberg', 'www.redbullring.com/', 'sport'),
(8, 'Oktoberfest 2023', '2023-10-10 10:00:00', 'Heuriges Oktoberfest findet wieder in München statt mit zahlreichen Gästen.', 'https://cdn.pixabay.com/photo/2016/02/24/22/18/munich-1220911_1280.jpg', 100000, 'münchen@oktoberfest.de', 55667785, 'oktoberstraße 1, 87999 München', 'www.oktoberfest.de', 'fun'),
(9, 'Test', '2024-01-01 13:00:00', 'Test Test Test Test Test Test Test Test Test Test Test Test Test', 'https://cdn.pixabay.com/photo/2017/07/27/15/24/movie-2545676_1280.jpg', 1, 'test@mail.com', 123456, 'Teststraße 1, 1010 Wien', 'www.test.com', 'movie');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indizes für die Tabelle `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT für Tabelle `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
