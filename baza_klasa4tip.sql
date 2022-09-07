-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Wrz 2022, 09:25
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `baza klasa4tip`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cena`
--

CREATE TABLE `cena` (
  `id sklepu` int(11) NOT NULL,
  `12423` int(11) NOT NULL,
  `20` int(11) NOT NULL,
  `2` int(11) NOT NULL,
  `50` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dostawca`
--

CREATE TABLE `dostawca` (
  `id sklepu` int(11) NOT NULL,
  `mirek` int(11) NOT NULL,
  `zenek` int(11) NOT NULL,
  `pjoter` int(11) NOT NULL,
  `łysy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ilość`
--

CREATE TABLE `ilość` (
  `id sklepu` int(11) NOT NULL,
  `12` int(11) NOT NULL,
  `15` int(11) NOT NULL,
  `1000` int(11) NOT NULL,
  `20` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pordukt`
--

CREATE TABLE `pordukt` (
  `id sklepu` int(11) NOT NULL,
  `telefony` int(11) NOT NULL,
  `zabawki` int(11) NOT NULL,
  `długopisy` int(11) NOT NULL,
  `myszki` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `cena`
--
ALTER TABLE `cena`
  ADD PRIMARY KEY (`id sklepu`);

--
-- Indeksy dla tabeli `dostawca`
--
ALTER TABLE `dostawca`
  ADD PRIMARY KEY (`id sklepu`);

--
-- Indeksy dla tabeli `ilość`
--
ALTER TABLE `ilość`
  ADD PRIMARY KEY (`id sklepu`);

--
-- Indeksy dla tabeli `pordukt`
--
ALTER TABLE `pordukt`
  ADD PRIMARY KEY (`id sklepu`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `cena`
--
ALTER TABLE `cena`
  ADD CONSTRAINT `cena_ibfk_1` FOREIGN KEY (`id sklepu`) REFERENCES `pordukt` (`id sklepu`);

--
-- Ograniczenia dla tabeli `ilość`
--
ALTER TABLE `ilość`
  ADD CONSTRAINT `ilość_ibfk_1` FOREIGN KEY (`id sklepu`) REFERENCES `cena` (`id sklepu`);

--
-- Ograniczenia dla tabeli `pordukt`
--
ALTER TABLE `pordukt`
  ADD CONSTRAINT `pordukt_ibfk_1` FOREIGN KEY (`id sklepu`) REFERENCES `dostawca` (`id sklepu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
