-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 10 Mar 2023, 10:29
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `#mysql50#INF.03-03-22.06-SG (1)`
--
CREATE DATABASE IF NOT EXISTS `#mysql50#INF.03-03-22.06-SG (1)` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `#mysql50#INF.03-03-22.06-SG (1)`;
--
-- Baza danych: `4ti`
--
CREATE DATABASE IF NOT EXISTS `4ti` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `4ti`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lekcja`
--

CREATE TABLE `lekcja` (
  `id` int(11) NOT NULL,
  `idprzedmiot` int(11) NOT NULL,
  `idnauczyciel` int(11) NOT NULL,
  `data` date NOT NULL,
  `lekcja` varchar(45) NOT NULL,
  `temat` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nauczyciel`
--

CREATE TABLE `nauczyciel` (
  `id` int(11) NOT NULL,
  `imie` varchar(45) NOT NULL,
  `nazwisko` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `nauczyciel`
--

INSERT INTO `nauczyciel` (`id`, `imie`, `nazwisko`) VALUES
(0, 'Bożena ', 'Czakon'),
(0, 'Przemysław', 'Gembalczyk'),
(0, 'Agata', 'Zabadaj');
--
-- Baza danych: `4tie`
--
CREATE DATABASE IF NOT EXISTS `4tie` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `4tie`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dane`
--

CREATE TABLE `dane` (
  `id` int(11) NOT NULL,
  `imie` text NOT NULL,
  `nazwisko` text NOT NULL,
  `pesel` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `dane`
--

INSERT INTO `dane` (`id`, `imie`, `nazwisko`, `pesel`) VALUES
(1, 'as', '', ''),
(2, 'as', '', ''),
(3, 'fdsf', '', ''),
(4, 'Paweł', 'Żyła', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lekcja`
--

CREATE TABLE `lekcja` (
  `id_Lekcja` int(11) NOT NULL,
  `id_przedmiot` int(11) NOT NULL,
  `id_Nauczyciel` int(11) NOT NULL,
  `data` date NOT NULL,
  `lekcja` varchar(45) NOT NULL,
  `temat` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `lekcja`
--

INSERT INTO `lekcja` (`id_Lekcja`, `id_przedmiot`, `id_Nauczyciel`, `data`, `lekcja`, `temat`) VALUES
(1, 3, 1, '2023-02-02', '[6]', 'tak'),
(2, 3, 2, '2023-02-03', '[4]', 'tak'),
(3, 0, 2, '2023-02-24', '[13]', 'tak'),
(4, 5, 1, '2023-02-10', '13', 'tak'),
(5, 0, 1, '2023-02-09', '3', 'tak'),
(6, 3, 1, '2023-02-02', '[6]', 'tak'),
(7, 4, 1, '2023-02-09', '4', 'tak');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nauczyciel`
--

CREATE TABLE `nauczyciel` (
  `id_Nauczyciel` int(11) NOT NULL,
  `imie` varchar(45) NOT NULL,
  `nazwisko` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `nauczyciel`
--

INSERT INTO `nauczyciel` (`id_Nauczyciel`, `imie`, `nazwisko`) VALUES
(1, 'Monika', 'Kowalska'),
(2, 'Jacek', 'Borkowski'),
(3, 'Danuta', 'Popek');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `obecnosc`
--

CREATE TABLE `obecnosc` (
  `id` int(11) NOT NULL,
  `data` date NOT NULL,
  `idosoby` int(11) NOT NULL,
  `obecny` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `obecnosc`
--

INSERT INTO `obecnosc` (`id`, `data`, `idosoby`, `obecny`) VALUES
(1, '0000-00-00', 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `obecność`
--

CREATE TABLE `obecność` (
  `data` date NOT NULL,
  `obecny` int(11) NOT NULL,
  `id_osoby` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oceny`
--

CREATE TABLE `oceny` (
  `id` int(11) NOT NULL,
  `idosoby` int(11) NOT NULL,
  `idprzedmiotu` int(11) NOT NULL,
  `ocena` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `oceny`
--

INSERT INTO `oceny` (`id`, `idosoby`, `idprzedmiotu`, `ocena`) VALUES
(1, 1, 1, 3),
(2, 3, 2, 4),
(3, 3, 4, 4),
(4, 2, 2, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmiot`
--

CREATE TABLE `przedmiot` (
  `id_Przedmiot` int(11) NOT NULL,
  `nazwa` varchar(45) NOT NULL,
  `nauczyciel` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `przedmiot`
--

INSERT INTO `przedmiot` (`id_Przedmiot`, `nazwa`, `nauczyciel`) VALUES
(1, 'matematyka', 'Agata Zabadaj'),
(2, 'język angielski', 'Bożena Czakon'),
(3, 'informatyka', 'Barbara Woszczycka'),
(4, 'język polski', 'Monika Kowalska'),
(5, 'chemia', 'Magdalena Woźnica');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dane`
--
ALTER TABLE `dane`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `lekcja`
--
ALTER TABLE `lekcja`
  ADD PRIMARY KEY (`id_Lekcja`);

--
-- Indeksy dla tabeli `nauczyciel`
--
ALTER TABLE `nauczyciel`
  ADD PRIMARY KEY (`id_Nauczyciel`);

--
-- Indeksy dla tabeli `obecnosc`
--
ALTER TABLE `obecnosc`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `oceny`
--
ALTER TABLE `oceny`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `przedmiot`
--
ALTER TABLE `przedmiot`
  ADD PRIMARY KEY (`id_Przedmiot`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `dane`
--
ALTER TABLE `dane`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `lekcja`
--
ALTER TABLE `lekcja`
  MODIFY `id_Lekcja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `nauczyciel`
--
ALTER TABLE `nauczyciel`
  MODIFY `id_Nauczyciel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `obecnosc`
--
ALTER TABLE `obecnosc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `oceny`
--
ALTER TABLE `oceny`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `przedmiot`
--
ALTER TABLE `przedmiot`
  MODIFY `id_Przedmiot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Baza danych: `am`
--
CREATE DATABASE IF NOT EXISTS `am` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `am`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dane`
--

CREATE TABLE `dane` (
  `id` int(10) UNSIGNED NOT NULL,
  `rok_urodz` year(4) DEFAULT NULL,
  `przyjaciol` int(10) UNSIGNED DEFAULT NULL,
  `hobby` varchar(20) DEFAULT NULL,
  `zdjecie` varchar(100) DEFAULT NULL,
  `stanowisko` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `dane`
--

INSERT INTO `dane` (`id`, `rok_urodz`, `przyjaciol`, `hobby`, `zdjecie`, `stanowisko`) VALUES
(1, 1995, 10, 'moda', 'o6.jpg', NULL),
(2, 1990, 20, 'film', 'o4.jpg', NULL),
(3, 1990, 20, 'cross', 'o1.jpg', NULL),
(4, 2001, 4, 'finanse', 'o2.jpg', NULL),
(5, 2002, 50, 'muzyka', 'o8.jpg', NULL),
(6, 1994, 10, 'baseball', 'o6.jpg', NULL),
(7, 1990, 20, 'film', 'o5.jpg', NULL),
(8, 1990, 20, 'film', 'o3.jpg', NULL),
(9, 2001, 0, 'psychologia', 'o7.jpg', NULL),
(10, 2002, 50, 'muzyka', 'o2.jpg', NULL),
(11, 1994, 10, 'DIY', 'o6.jpg', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int(10) UNSIGNED NOT NULL,
  `login` varchar(50) DEFAULT NULL,
  `haslo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `login`, `haslo`) VALUES
(1, 'Justyna', 'a056c8d05ae9ac6ca180bc991b93b7ffe37563e0'),
(2, 'Ewa', 'c50267b906a652f2142cfab006e215c9f6fdc8a0'),
(3, 'Krzysiek', '637a81ed8e8217bb01c15c67c39b43b0ab4e20f1'),
(4, 'Adam', '8578173555a47d4ea49e697badfda270dee0858f'),
(5, 'Magda', '99ebdbd711b0e1854a6c2e93f759efc2af291fd0'),
(6, 'Werka', '186154712b2d5f6791d85b9a0987b98fa231779c'),
(7, 'Janek', '7823372203bd98aeb10e6f33a6ce7dab12d13423'),
(8, 'Heniek', '425ffc1422dc4f32528bd9fd5af355fdb5c96192'),
(9, 'Ola', '4ae9fa0a8299a828a886c0eb30c930c7cf302a72'),
(10, 'Dawid', 'b3054ff0797ff0b2bbce03ec897fe63e0b6490e0'),
(11, 'Ewelina', '7e240de74fb1ed08fa08d38063f6a6a91462a815');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dane`
--
ALTER TABLE `dane`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `dane`
--
ALTER TABLE `dane`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Baza danych: `dawidzix`
--
CREATE DATABASE IF NOT EXISTS `dawidzix` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dawidzix`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dane`
--

CREATE TABLE `dane` (
  `id` int(11) NOT NULL,
  `Imie` varchar(45) NOT NULL,
  `Nazwisko` varchar(45) NOT NULL,
  `wiek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `dane`
--

INSERT INTO `dane` (`id`, `Imie`, `Nazwisko`, `wiek`) VALUES
(1, 'LeBron', 'James', 38),
(2, 'Leo', 'Messi', 35),
(3, 'Adam ', 'Małysz', 45),
(4, 'Marcin ', 'Najman', 43);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategorie`
--

CREATE TABLE `kategorie` (
  `id_kat` int(3) NOT NULL,
  `nazwa_kategorii` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `kategorie`
--

INSERT INTO `kategorie` (`id_kat`, `nazwa_kategorii`) VALUES
(1, 'Procesory'),
(2, 'Płyty_główne'),
(3, 'Pamięci'),
(4, 'Dyski');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

CREATE TABLE `klient` (
  `id` int(3) NOT NULL,
  `imie` varchar(11) NOT NULL,
  `nazwisko` varchar(30) NOT NULL,
  `login` varchar(20) NOT NULL,
  `haslo` varchar(20) NOT NULL,
  `miasto` varchar(30) NOT NULL,
  `ulica` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `klient`
--

INSERT INTO `klient` (`id`, `imie`, `nazwisko`, `login`, `haslo`, `miasto`, `ulica`, `email`) VALUES
(1, 'Ala', 'Nowak', 'Anowak', 'anowak', 'Sosnowiec', 'Szkolna 34', 'anowak@interia.pl'),
(2, 'Piotr', 'Górski', 'Agorski', 'pgorski', 'Legionowo', 'Wspólna 67', 'pgorski@gmail.com'),
(3, 'Marcin', 'Szpak', 'Mszpak', 'mszpak', 'Pruszków', 'Wesoła 12', 'mszpak@o2.pl'),
(4, 'Adam', 'Binder', 'Abinder', 'abinder', 'Warszawa', 'Bednarska 5/8', 'abinder@interia.pl'),
(5, 'Robert', 'Halicki', 'Rhalicki', 'rhalicki', 'Warszawa', 'Wolności 9', 'rhalicki@edu.pl'),
(6, 'Maciej', 'Rutkowski', 'Mrutkowski', 'mrutkowski', 'Pruszków', 'Mickiewicz 16', 'mrutkowski@gov.pl'),
(7, 'Alicja', 'Warkowska', 'Awarkowska', 'awarkowska', 'Legionowo', 'Krasickiego 12/5', 'awarkowska@interia.pl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `id_prod` int(3) NOT NULL,
  `nazwa` varchar(20) NOT NULL,
  `parametr` varchar(20) NOT NULL,
  `cena_brutto` float(6,2) NOT NULL,
  `id_kat` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`id_prod`, `nazwa`, `parametr`, `cena_brutto`, `id_kat`) VALUES
(1, 'Ryzen3-1200', '3,1GHz', 360.00, 1),
(2, 'Corei5-7400', '3,00Hz', 680.20, 1),
(3, 'Asus PRIME', 'B350M-AM4', 325.00, 2),
(4, 'Gigabyte', 'Z370P-1151', 405.00, 2),
(5, 'Corsair', '8GB 2400 MHz', 390.00, 3),
(6, 'Goodram', '16GB 2400 MHz', 520.00, 3),
(7, 'HyperX', '2x8GB 2400 MHz', 689.50, 3),
(8, 'Patriot', '2x8GB 2400 MHz', 810.00, 3),
(9, 'Goodram SSD', '120 GB', 175.00, 4),
(10, 'Samsung SSD', '250 GB', 380.00, 4),
(11, 'Kingston SSD', '480 GB', 575.00, 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmiot`
--

CREATE TABLE `przedmiot` (
  `id` int(11) NOT NULL,
  `nazwa_przedmiot` varchar(45) NOT NULL,
  `nauczyciel` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `przedmiot`
--

INSERT INTO `przedmiot` (`id`, `nazwa_przedmiot`, `nauczyciel`) VALUES
(1, 'W-F', 'Lewandowski'),
(2, 'Angielski', 'Bożena Czakon'),
(3, 'Matematyka', 'Zabadaj Agata'),
(4, 'Polski', 'Ewa Bek');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id_zam` int(3) NOT NULL,
  `id_klient` int(3) NOT NULL,
  `id_prod` int(3) NOT NULL,
  `data` date NOT NULL,
  `ilosc` int(5) NOT NULL,
  `wartosc` float(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id_zam`, `id_klient`, `id_prod`, `data`, `ilosc`, `wartosc`) VALUES
(1, 1, 1, '2019-06-27', 5, 1800.00),
(2, 1, 3, '2019-06-27', 5, 975.00),
(3, 2, 2, '2019-06-27', 2, 1360.40),
(4, 2, 4, '2019-06-27', 2, 810.00),
(5, 3, 5, '2019-06-27', 1, 390.00),
(6, 3, 9, '2019-06-27', 1, 175.00),
(7, 4, 6, '2019-06-27', 2, 1040.00),
(8, 4, 10, '2019-06-27', 2, 760.00),
(9, 5, 7, '2019-06-27', 1, 689.50),
(10, 6, 11, '2019-06-27', 2, 1150.00),
(11, 2, 8, '2019-06-27', 2, 1620.00),
(12, 7, 5, '2019-06-27', 2, 780.00);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dane`
--
ALTER TABLE `dane`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`id_kat`);

--
-- Indeksy dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id_prod`),
  ADD KEY `id_kat` (`id_kat`);

--
-- Indeksy dla tabeli `przedmiot`
--
ALTER TABLE `przedmiot`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id_zam`),
  ADD KEY `id` (`id_klient`,`id_prod`),
  ADD KEY `zamowienia_ibfk_2` (`id_prod`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `dane`
--
ALTER TABLE `dane`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id_prod` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `przedmiot`
--
ALTER TABLE `przedmiot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD CONSTRAINT `produkty_ibfk_1` FOREIGN KEY (`id_kat`) REFERENCES `kategorie` (`id_kat`);

--
-- Ograniczenia dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD CONSTRAINT `zamowienia_ibfk_1` FOREIGN KEY (`id_klient`) REFERENCES `klient` (`id`),
  ADD CONSTRAINT `zamowienia_ibfk_2` FOREIGN KEY (`id_prod`) REFERENCES `produkty` (`id_prod`);
--
-- Baza danych: `ee09`
--
CREATE DATABASE IF NOT EXISTS `ee09` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ee09`;
--
-- Baza danych: `egzamin`
--
CREATE DATABASE IF NOT EXISTS `egzamin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `egzamin`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bmi`
--

CREATE TABLE `bmi` (
  `id` int(10) UNSIGNED NOT NULL,
  `wart_min` int(10) UNSIGNED DEFAULT NULL,
  `wart_max` int(10) UNSIGNED DEFAULT NULL,
  `informacja` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `bmi`
--

INSERT INTO `bmi` (`id`, `wart_min`, `wart_max`, `informacja`) VALUES
(1, 0, 18, 'niedowaga'),
(2, 19, 25, 'waga prawidlowa'),
(3, 26, 30, 'nadwaga'),
(4, 31, 100, 'otylosc');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pozycja`
--

CREATE TABLE `pozycja` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `pozycja`
--

INSERT INTO `pozycja` (`id`, `nazwa`) VALUES
(1, 'bramkarz'),
(2, 'obronca'),
(3, 'pomocnik'),
(4, 'napastnik');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typy`
--

CREATE TABLE `typy` (
  `id` int(10) UNSIGNED NOT NULL,
  `kategoria` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `typy`
--

INSERT INTO `typy` (`id`, `kategoria`) VALUES
(1, 'Procesor'),
(2, 'RAM'),
(5, 'karta graficzna'),
(6, 'HDD');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uslugi`
--

CREATE TABLE `uslugi` (
  `id` int(10) UNSIGNED NOT NULL,
  `kadra_id` int(10) UNSIGNED NOT NULL,
  `rodzaj` int(10) UNSIGNED DEFAULT NULL,
  `nazwa` text DEFAULT NULL,
  `cena` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `uslugi`
--

INSERT INTO `uslugi` (`id`, `kadra_id`, `rodzaj`, `nazwa`, `cena`) VALUES
(1, 2, 1, 'Piling enzymatyczny', 45),
(2, 5, 3, 'Masaz twarzy', 20),
(3, 2, 1, 'Maska', 30),
(4, 2, 1, 'Regulacja brwi', 5),
(5, 4, 2, 'Farbowanie', 50),
(6, 4, 2, 'Strzyzenie', 40),
(7, 1, 3, 'Ustalenie diety', 70),
(8, 2, 1, 'Henna', 10),
(9, 2, 1, 'Paznokcie', 90),
(10, 4, 2, 'Czesanie', 30);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wynik`
--

CREATE TABLE `wynik` (
  `id` int(10) UNSIGNED NOT NULL,
  `bmi_id` int(10) UNSIGNED NOT NULL,
  `data_pomiaru` date DEFAULT NULL,
  `wynik` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `wynik`
--

INSERT INTO `wynik` (`id`, `bmi_id`, `data_pomiaru`, `wynik`) VALUES
(1, 2, '2020-05-24', 20),
(2, 1, '0000-00-00', 15),
(3, 1, '2020-05-20', 15),
(4, 1, '2020-05-20', 15),
(5, 2, '0000-00-00', 25),
(6, 2, '0000-00-00', 25),
(7, 2, '0000-00-00', 25),
(8, 2, '0000-00-00', 25),
(9, 2, '2023-03-08', 25),
(10, 2, '2023-03-08', 25),
(11, 2, '2023-03-08', 25),
(12, 2, '2023-03-08', 25),
(13, 2, '2023-03-08', 19),
(14, 2, '2023-03-08', 19),
(15, 2, '2023-03-08', 19);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zdjecia`
--

CREATE TABLE `zdjecia` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwaPliku` text DEFAULT NULL,
  `podpis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `zdjecia`
--

INSERT INTO `zdjecia` (`id`, `nazwaPliku`, `podpis`) VALUES
(1, '1.jpg', 'Londyn'),
(2, '2.jpg', 'Wenecja'),
(3, '3.jpg', 'Berlin'),
(4, '4.jpg', 'Warszawa'),
(5, '5.jpg', 'Budapeszt'),
(6, '6.jpg', 'Paryz'),
(7, '7.jpg', 'Nowy Jork'),
(8, '8.jpg', 'Barcelona'),
(9, '9.jpg', 'Moskwa');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `bmi`
--
ALTER TABLE `bmi`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pozycja`
--
ALTER TABLE `pozycja`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uslugi`
--
ALTER TABLE `uslugi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uslugi_FKIndex1` (`kadra_id`);

--
-- Indeksy dla tabeli `wynik`
--
ALTER TABLE `wynik`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zdjecia`
--
ALTER TABLE `zdjecia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `bmi`
--
ALTER TABLE `bmi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `pozycja`
--
ALTER TABLE `pozycja`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `uslugi`
--
ALTER TABLE `uslugi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `wynik`
--
ALTER TABLE `wynik`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `zdjecia`
--
ALTER TABLE `zdjecia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Baza danych: `egzamin1`
--
CREATE DATABASE IF NOT EXISTS `egzamin1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `egzamin1`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `odloty`
--

CREATE TABLE `odloty` (
  `id` int(10) UNSIGNED NOT NULL,
  `samoloty_id` int(10) UNSIGNED NOT NULL,
  `nr_rejsu` varchar(8) DEFAULT NULL,
  `kierunek` varchar(10) DEFAULT NULL,
  `czas` time NOT NULL,
  `dzien` date DEFAULT NULL,
  `status_lotu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `odloty`
--

INSERT INTO `odloty` (`id`, `samoloty_id`, `nr_rejsu`, `kierunek`, `czas`, `dzien`, `status_lotu`) VALUES
(1, 1, 'FR1646', 'Neapol', '09:20:00', '2019-07-25', 'wystartowal'),
(2, 1, 'FR1327', 'ALICANTE', '09:10:00', '2019-07-25', 'Opozniony 10 min'),
(3, 2, 'W63425', 'Warszawa', '09:45:00', '2019-07-25', 'odprawa'),
(4, 3, 'LX5647', 'Londyn LT', '10:03:00', '2019-07-25', 'odprawa'),
(5, 3, 'LX5673', 'Malta', '10:06:00', '2019-07-25', 'opu?nienie 20 min'),
(6, 3, 'LX5622', 'Wieden', '10:13:00', '2019-07-25', ''),
(7, 4, 'LH9821', 'Berlin', '10:16:00', '2019-07-25', ''),
(8, 4, 'LH9888', 'Hamburg', '10:19:00', '2019-07-25', ''),
(9, 4, 'LH9331', 'Monachium', '10:22:00', '2019-07-25', ''),
(10, 2, 'W68769', 'Zurych', '09:56:00', '2019-07-25', 'boarding');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pozycja`
--

CREATE TABLE `pozycja` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `pozycja`
--

INSERT INTO `pozycja` (`id`, `nazwa`) VALUES
(1, 'bramkarz'),
(2, 'obronca'),
(3, 'pomocnik'),
(4, 'napastnik');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przyloty`
--

CREATE TABLE `przyloty` (
  `id` int(10) UNSIGNED NOT NULL,
  `samoloty_id` int(10) UNSIGNED NOT NULL,
  `nr_rejsu` varchar(8) DEFAULT NULL,
  `kierunek` varchar(10) DEFAULT NULL,
  `czas` time DEFAULT NULL,
  `dzien` date DEFAULT NULL,
  `status_lotu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `przyloty`
--

INSERT INTO `przyloty` (`id`, `samoloty_id`, `nr_rejsu`, `kierunek`, `czas`, `dzien`, `status_lotu`) VALUES
(1, 2, 'W63454', 'Warszawa', '09:45:00', '2019-07-29', 'wyladowal'),
(2, 3, 'LX3447', 'Londyn LT', '10:03:00', '2019-07-29', 'opoznienie 10 min'),
(3, 3, 'LX5473', 'Malta', '10:06:00', '2019-07-29', 'planowy'),
(4, 3, 'LX5728', 'Wieden', '10:13:00', '2019-07-29', ''),
(5, 4, 'LH9829', 'Berlin', '10:16:00', '2019-07-29', ''),
(6, 4, 'LH9898', 'Hamburg', '10:19:00', '2019-07-29', ''),
(7, 4, 'LH3331', 'Monachium', '10:22:00', '2019-07-29', ''),
(8, 2, 'W68546', 'Zurych', '10:33:00', '2019-07-29', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samoloty`
--

CREATE TABLE `samoloty` (
  `id` int(10) UNSIGNED NOT NULL,
  `typ` varchar(20) DEFAULT NULL,
  `linie` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `samoloty`
--

INSERT INTO `samoloty` (`id`, `typ`, `linie`) VALUES
(1, 'Boening 787', 'RYANAIR'),
(2, 'Boening 737', 'WIZZAIR'),
(3, 'Boening 787', 'SWISS'),
(4, 'Boening 737', 'LUFTHANSA');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typy`
--

CREATE TABLE `typy` (
  `id` int(10) UNSIGNED NOT NULL,
  `kategoria` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `typy`
--

INSERT INTO `typy` (`id`, `kategoria`) VALUES
(1, 'Procesor'),
(2, 'RAM'),
(5, 'karta graficzna'),
(6, 'HDD');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uslugi`
--

CREATE TABLE `uslugi` (
  `id` int(10) UNSIGNED NOT NULL,
  `kadra_id` int(10) UNSIGNED NOT NULL,
  `rodzaj` int(10) UNSIGNED DEFAULT NULL,
  `nazwa` text DEFAULT NULL,
  `cena` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `uslugi`
--

INSERT INTO `uslugi` (`id`, `kadra_id`, `rodzaj`, `nazwa`, `cena`) VALUES
(1, 2, 1, 'Piling enzymatyczny', 45),
(2, 5, 3, 'Masaz twarzy', 20),
(3, 2, 1, 'Maska', 30),
(4, 2, 1, 'Regulacja brwi', 5),
(5, 4, 2, 'Farbowanie', 50),
(6, 4, 2, 'Strzyzenie', 40),
(7, 1, 3, 'Ustalenie diety', 70),
(8, 2, 1, 'Henna', 10),
(9, 2, 1, 'Paznokcie', 90),
(10, 4, 2, 'Czesanie', 30);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zdjecia`
--

CREATE TABLE `zdjecia` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwaPliku` text DEFAULT NULL,
  `podpis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `zdjecia`
--

INSERT INTO `zdjecia` (`id`, `nazwaPliku`, `podpis`) VALUES
(1, '1.jpg', 'Londyn'),
(2, '2.jpg', 'Wenecja'),
(3, '3.jpg', 'Berlin'),
(4, '4.jpg', 'Warszawa'),
(5, '5.jpg', 'Budapeszt'),
(6, '6.jpg', 'Paryz'),
(7, '7.jpg', 'Nowy Jork'),
(8, '8.jpg', 'Barcelona'),
(9, '9.jpg', 'Moskwa');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `odloty`
--
ALTER TABLE `odloty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pozycja`
--
ALTER TABLE `pozycja`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `przyloty`
--
ALTER TABLE `przyloty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `samoloty`
--
ALTER TABLE `samoloty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uslugi`
--
ALTER TABLE `uslugi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uslugi_FKIndex1` (`kadra_id`);

--
-- Indeksy dla tabeli `zdjecia`
--
ALTER TABLE `zdjecia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `odloty`
--
ALTER TABLE `odloty`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `pozycja`
--
ALTER TABLE `pozycja`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `przyloty`
--
ALTER TABLE `przyloty`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `samoloty`
--
ALTER TABLE `samoloty`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `uslugi`
--
ALTER TABLE `uslugi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `zdjecia`
--
ALTER TABLE `zdjecia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Baza danych: `egzamin3`
--
CREATE DATABASE IF NOT EXISTS `egzamin3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `egzamin3`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `liga`
--

CREATE TABLE `liga` (
  `id` int(10) UNSIGNED NOT NULL,
  `zespol` varchar(3) DEFAULT NULL,
  `punkty` int(10) UNSIGNED DEFAULT NULL,
  `grupa` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `liga`
--

INSERT INTO `liga` (`id`, `zespol`, `punkty`, `grupa`) VALUES
(1, 'EVG', 34, 'A'),
(2, 'FCB', 21, 'A'),
(3, 'RM', 5, 'B'),
(4, 'JUV', 13, 'B'),
(5, 'ARS', 24, 'C'),
(6, 'CHL', 17, 'C');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pozycja`
--

CREATE TABLE `pozycja` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `pozycja`
--

INSERT INTO `pozycja` (`id`, `nazwa`) VALUES
(1, 'bramkarz'),
(2, 'obronca'),
(3, 'pomocnik'),
(4, 'napastnik');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rozgrywka`
--

CREATE TABLE `rozgrywka` (
  `id` int(10) UNSIGNED NOT NULL,
  `zespol1` varchar(3) NOT NULL,
  `zespol2` varchar(3) DEFAULT NULL,
  `wynik` varchar(20) DEFAULT NULL,
  `data_rozgrywki` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typy`
--

CREATE TABLE `typy` (
  `id` int(10) UNSIGNED NOT NULL,
  `kategoria` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `typy`
--

INSERT INTO `typy` (`id`, `kategoria`) VALUES
(1, 'Procesor'),
(2, 'RAM'),
(5, 'karta graficzna'),
(6, 'HDD');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uslugi`
--

CREATE TABLE `uslugi` (
  `id` int(10) UNSIGNED NOT NULL,
  `kadra_id` int(10) UNSIGNED NOT NULL,
  `rodzaj` int(10) UNSIGNED DEFAULT NULL,
  `nazwa` text DEFAULT NULL,
  `cena` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `uslugi`
--

INSERT INTO `uslugi` (`id`, `kadra_id`, `rodzaj`, `nazwa`, `cena`) VALUES
(1, 2, 1, 'Piling enzymatyczny', 45),
(2, 5, 3, 'Masaz twarzy', 20),
(3, 2, 1, 'Maska', 30),
(4, 2, 1, 'Regulacja brwi', 5),
(5, 4, 2, 'Farbowanie', 50),
(6, 4, 2, 'Strzyzenie', 40),
(7, 1, 3, 'Ustalenie diety', 70),
(8, 2, 1, 'Henna', 10),
(9, 2, 1, 'Paznokcie', 90),
(10, 4, 2, 'Czesanie', 30);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wyniki`
--

CREATE TABLE `wyniki` (
  `id` int(10) UNSIGNED NOT NULL,
  `dyscyplina_id` int(10) UNSIGNED NOT NULL,
  `sportowiec_id` int(10) UNSIGNED NOT NULL,
  `wynik` decimal(5,2) DEFAULT NULL,
  `dataUstanowienia` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `wyniki`
--

INSERT INTO `wyniki` (`id`, `dyscyplina_id`, `sportowiec_id`, `wynik`, `dataUstanowienia`) VALUES
(1, 1, 1, '12.40', '2015-10-14'),
(2, 1, 1, '12.00', '2015-10-06'),
(3, 1, 2, '11.80', '2015-10-14'),
(4, 1, 2, '11.90', '2015-10-06'),
(5, 1, 3, '11.50', '2015-10-14'),
(6, 1, 3, '11.56', '2015-10-06'),
(7, 1, 4, '11.70', '2015-10-14'),
(8, 1, 4, '11.67', '2015-10-06'),
(9, 1, 5, '11.30', '2015-10-14'),
(10, 1, 5, '11.52', '2015-10-06'),
(11, 1, 6, '12.10', '2015-10-14'),
(12, 1, 6, '12.00', '2015-10-06'),
(13, 3, 1, '63.00', '2015-11-11'),
(14, 3, 1, '63.60', '2015-10-13'),
(15, 3, 2, '64.00', '2015-11-11'),
(16, 3, 2, '63.60', '2015-10-13'),
(17, 3, 3, '60.00', '2015-11-11'),
(18, 3, 3, '61.60', '2015-10-13'),
(19, 3, 4, '63.50', '2015-11-11'),
(20, 3, 4, '63.60', '2015-10-13'),
(21, 3, 5, '70.00', '2015-10-07'),
(22, 3, 6, '68.00', '2015-10-07');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zawodnik`
--

CREATE TABLE `zawodnik` (
  `id` int(10) UNSIGNED NOT NULL,
  `pozycja_id` int(10) UNSIGNED NOT NULL,
  `imie` varchar(20) DEFAULT NULL,
  `nazwisko` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `zawodnik`
--

INSERT INTO `zawodnik` (`id`, `pozycja_id`, `imie`, `nazwisko`) VALUES
(1, 1, 'Wojciech', 'Szczesny'),
(2, 2, 'Rafal', 'Pietrzak'),
(3, 2, 'Jan', 'Bednarek'),
(4, 3, 'Grzegorz', 'Krychowiak'),
(5, 3, 'Kamil', 'Grosicki'),
(6, 4, 'Arkadiusz', 'Milik'),
(7, 4, 'Adam', 'Buksa');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zdjecia`
--

CREATE TABLE `zdjecia` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwaPliku` text DEFAULT NULL,
  `podpis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `zdjecia`
--

INSERT INTO `zdjecia` (`id`, `nazwaPliku`, `podpis`) VALUES
(1, '1.jpg', 'Londyn'),
(2, '2.jpg', 'Wenecja'),
(3, '3.jpg', 'Berlin'),
(4, '4.jpg', 'Warszawa'),
(5, '5.jpg', 'Budapeszt'),
(6, '6.jpg', 'Paryz'),
(7, '7.jpg', 'Nowy Jork'),
(8, '8.jpg', 'Barcelona'),
(9, '9.jpg', 'Moskwa');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `liga`
--
ALTER TABLE `liga`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pozycja`
--
ALTER TABLE `pozycja`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `rozgrywka`
--
ALTER TABLE `rozgrywka`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uslugi`
--
ALTER TABLE `uslugi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uslugi_FKIndex1` (`kadra_id`);

--
-- Indeksy dla tabeli `zawodnik`
--
ALTER TABLE `zawodnik`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zdjecia`
--
ALTER TABLE `zdjecia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `liga`
--
ALTER TABLE `liga`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `pozycja`
--
ALTER TABLE `pozycja`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `rozgrywka`
--
ALTER TABLE `rozgrywka`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `uslugi`
--
ALTER TABLE `uslugi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `zawodnik`
--
ALTER TABLE `zawodnik`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `zdjecia`
--
ALTER TABLE `zdjecia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Baza danych: `firma`
--
CREATE DATABASE IF NOT EXISTS `firma` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `firma`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `jednostki`
--

CREATE TABLE `jednostki` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwaJedn` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `jednostki`
--

INSERT INTO `jednostki` (`id`, `nazwaJedn`) VALUES
(1, 'metry'),
(2, 'sztuki');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `materialy`
--

CREATE TABLE `materialy` (
  `id` int(10) UNSIGNED NOT NULL,
  `Producenci_id` int(10) UNSIGNED NOT NULL,
  `Jednostki_id` int(10) UNSIGNED NOT NULL,
  `nazwa` text DEFAULT NULL,
  `ilosc` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `materialy`
--

INSERT INTO `materialy` (`id`, `Producenci_id`, `Jednostki_id`, `nazwa`, `ilosc`) VALUES
(1, 1, 1, 'Skrętka U/UTP drut', 20),
(2, 3, 1, 'Skrętka U/UTP linka', 2),
(3, 1, 2, 'Wtyk 8P8C', 10),
(4, 3, 2, 'Moduł Keystone', 30),
(5, 2, 2, 'Gniazdo pojedyncze', 2),
(6, 2, 2, 'Gniazdo podwójne', 5),
(7, 3, 2, 'Zaciskarka', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `producenci`
--

CREATE TABLE `producenci` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwaProd` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `producenci`
--

INSERT INTO `producenci` (`id`, `nazwaProd`) VALUES
(1, 'Netrack'),
(2, 'Ospel'),
(3, 'UGreen'),
(4, 'Dipol');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `jednostki`
--
ALTER TABLE `jednostki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `materialy`
--
ALTER TABLE `materialy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `producenci`
--
ALTER TABLE `producenci`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `jednostki`
--
ALTER TABLE `jednostki`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `materialy`
--
ALTER TABLE `materialy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `producenci`
--
ALTER TABLE `producenci`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Baza danych: `jd`
--
CREATE DATABASE IF NOT EXISTS `jd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jd`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dyspozytorzy`
--

CREATE TABLE `dyspozytorzy` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `dyspozytorzy`
--

INSERT INTO `dyspozytorzy` (`id`, `imie`, `nazwisko`) VALUES
(1, 'Ewelina', 'Nowak'),
(2, 'Krzysztof', 'Kowalewski'),
(3, 'Joanna', 'Pospieszalska'),
(4, 'Jan', 'Winny');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `karty_wedkarskie`
--

CREATE TABLE `karty_wedkarskie` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `adres` text DEFAULT NULL,
  `data_zezwolenia` date DEFAULT NULL,
  `punkty` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `karty_wedkarskie`
--

INSERT INTO `karty_wedkarskie` (`id`, `imie`, `nazwisko`, `adres`, `data_zezwolenia`, `punkty`) VALUES
(1, 'Jan', 'Kowalski', 'Warszawa, Aleje Jerozolimskie 65/4', '2018-02-15', 23),
(2, 'Andrzej', 'Nowak', 'Poznan, Dabowskiego 16/4', '2018-03-12', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lowisko`
--

CREATE TABLE `lowisko` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ryby_id` int(10) UNSIGNED NOT NULL,
  `akwen` text DEFAULT NULL,
  `wojewodztwo` text DEFAULT NULL,
  `rodzaj` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `lowisko`
--

INSERT INTO `lowisko` (`id`, `Ryby_id`, `akwen`, `wojewodztwo`, `rodzaj`) VALUES
(1, 2, 'Zalew Wegrowski', 'Mazowieckie', 4),
(2, 3, 'Zbiornik Bukowka', 'Dolnoslaskie', 2),
(3, 2, 'Jeziorko Bartbetowskie', 'Warminsko-Mazurskie', 2),
(4, 1, 'Warta-Obrzycko', 'Wielkopolskie', 3),
(5, 2, 'Stawy Milkow', 'Podkarpackie', 5),
(6, 7, 'Przemsza k. Okradzinowa', 'Slaskie', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `okres_ochronny`
--

CREATE TABLE `okres_ochronny` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ryby_id` int(10) UNSIGNED NOT NULL,
  `od_miesiaca` int(10) UNSIGNED DEFAULT NULL,
  `do_miesiaca` int(10) UNSIGNED DEFAULT NULL,
  `wymiar_ochronny` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `okres_ochronny`
--

INSERT INTO `okres_ochronny` (`id`, `Ryby_id`, `od_miesiaca`, `do_miesiaca`, `wymiar_ochronny`) VALUES
(1, 1, 1, 4, 50),
(2, 2, 0, 0, 30),
(3, 3, 1, 5, 50),
(4, 4, 0, 0, 15),
(5, 5, 11, 6, 70),
(6, 6, 0, 0, 0),
(7, 7, 0, 0, 0),
(8, 8, 0, 0, 25);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `publikacje`
--

CREATE TABLE `publikacje` (
  `id` int(11) NOT NULL,
  `tytul` text DEFAULT NULL,
  `rok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ratownicy`
--

CREATE TABLE `ratownicy` (
  `id` int(10) UNSIGNED NOT NULL,
  `nrKaretki` int(10) UNSIGNED DEFAULT NULL,
  `ratownik1` text DEFAULT NULL,
  `ratownik2` text DEFAULT NULL,
  `ratownik3` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `ratownicy`
--

INSERT INTO `ratownicy` (`id`, `nrKaretki`, `ratownik1`, `ratownik2`, `ratownik3`) VALUES
(1, 10, 'Krzysztof Lewandowski', 'Janina Gawlowska', 'Ewa Krasinska'),
(2, 8, 'Robert Marciniak', 'Robert Bialy', 'Krystyna Kowalska'),
(3, 45, 'Tomasz Kos', 'Janusz Sowa', 'Grzegorz Witkowski'),
(4, 13, 'Krzysztof Jerzykowski', 'Jan Niepokorski', 'Waldemar Skory'),
(5, NULL, 'Adam Nowak', 'Jan Kowalsk', 'Anna Nowakowska');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ryby`
--

CREATE TABLE `ryby` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` text DEFAULT NULL,
  `wystepowanie` text DEFAULT NULL,
  `styl_zycia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `ryby`
--

INSERT INTO `ryby` (`id`, `nazwa`, `wystepowanie`, `styl_zycia`) VALUES
(1, 'Szczupak', 'stawy, rzeki', 1),
(2, 'Karp', 'stawy, jeziora', 2),
(3, 'Sandacz', 'stawy, jeziora, rzeki', 1),
(4, 'Okon', 'rzeki', 1),
(5, 'Sum', 'jeziora, rzeki', 1),
(6, 'Dorsz', 'morza, oceany', 1),
(7, 'Leszcz', 'jeziora', 2),
(8, 'Lin', 'jeziora', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownik`
--

CREATE TABLE `uzytkownik` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `telefon` text DEFAULT NULL,
  `email` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `uzytkownik`
--

INSERT INTO `uzytkownik` (`id`, `imie`, `nazwisko`, `telefon`, `email`) VALUES
(1, 'Anna', 'Kowalska', '601601601', 'anna@poczta.pl'),
(2, 'Jan', 'Nowak', '608608608', 'jan@poczta.pl'),
(3, 'Jolanta', 'Jasny', '606606606', 'jolanta@poczta.pl'),
(4, 'qqq', 'www', '345', 'dsfsdklfs@daskl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wyniki`
--

CREATE TABLE `wyniki` (
  `id` int(10) UNSIGNED NOT NULL,
  `dyscyplina_id` int(10) UNSIGNED NOT NULL,
  `sportowiec_id` int(10) UNSIGNED NOT NULL,
  `wynik` decimal(5,2) DEFAULT NULL,
  `dataUstanowienia` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `wyniki`
--

INSERT INTO `wyniki` (`id`, `dyscyplina_id`, `sportowiec_id`, `wynik`, `dataUstanowienia`) VALUES
(1, 1, 1, '12.40', '2015-10-14'),
(2, 1, 1, '12.00', '2015-10-06'),
(3, 1, 2, '11.80', '2015-10-14'),
(4, 1, 2, '11.90', '2015-10-06'),
(5, 1, 3, '11.50', '2015-10-14'),
(6, 1, 3, '11.56', '2015-10-06'),
(7, 1, 4, '11.70', '2015-10-14'),
(8, 1, 4, '11.67', '2015-10-06'),
(9, 1, 5, '11.30', '2015-10-14'),
(10, 1, 5, '11.52', '2015-10-06'),
(11, 1, 6, '12.10', '2015-10-14'),
(12, 1, 6, '12.00', '2015-10-06'),
(13, 3, 1, '63.00', '2015-11-11'),
(14, 3, 1, '63.60', '2015-10-13'),
(15, 3, 2, '64.00', '2015-11-11'),
(16, 3, 2, '63.60', '2015-10-13'),
(17, 3, 3, '60.00', '2015-11-11'),
(18, 3, 3, '61.60', '2015-10-13'),
(19, 3, 4, '63.50', '2015-11-11'),
(20, 3, 4, '63.60', '2015-10-13'),
(21, 3, 5, '70.00', '2015-10-07'),
(22, 3, 6, '68.00', '2015-10-07');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id` int(10) UNSIGNED NOT NULL,
  `Samochody_id` int(10) UNSIGNED NOT NULL,
  `Klient` text DEFAULT NULL,
  `telefon` text DEFAULT NULL,
  `dataZam` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id`, `Samochody_id`, `Klient`, `telefon`, `dataZam`) VALUES
(1, 3, 'Anna Kowalska', '111222333', '2016-02-15'),
(2, 6, 'Jan Nowakowski', '222111333', '2016-02-15'),
(3, 8, 'Marcin Kolwal', '333111222', '2016-02-15');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zawody_wedkarskie`
--

CREATE TABLE `zawody_wedkarskie` (
  `id` int(10) UNSIGNED NOT NULL,
  `Karty_wedkarskie_id` int(10) UNSIGNED NOT NULL,
  `Lowisko_id` int(10) UNSIGNED NOT NULL,
  `data_zawodow` date DEFAULT NULL,
  `sedzia` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `zawody_wedkarskie`
--

INSERT INTO `zawody_wedkarskie` (`id`, `Karty_wedkarskie_id`, `Lowisko_id`, `data_zawodow`, `sedzia`) VALUES
(1, 1, 3, '2018-04-12', 'Jan Kowalewski'),
(2, 1, 5, '2018-05-01', 'Jan Kowalewski'),
(3, 1, 2, '2018-06-01', 'Jan Kowalewski'),
(4, 2, 1, '2018-06-21', 'Krzysztof Dobrowolski');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zgloszenia`
--

CREATE TABLE `zgloszenia` (
  `id` int(10) UNSIGNED NOT NULL,
  `ratownicy_id` int(10) UNSIGNED NOT NULL,
  `dyspozytorzy_id` int(10) UNSIGNED NOT NULL,
  `adres` text DEFAULT NULL,
  `pilne` tinyint(1) DEFAULT NULL,
  `czas_zgloszenia` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `zgloszenia`
--

INSERT INTO `zgloszenia` (`id`, `ratownicy_id`, `dyspozytorzy_id`, `adres`, `pilne`, `czas_zgloszenia`) VALUES
(1, 3, 4, 'Warszawa, Marszalkowska 133/2', 0, '15:30:00'),
(2, 3, 4, 'Warszawa, Postepu 13/2', 0, '15:30:00'),
(3, 1, 1, 'Warszawa, Dluga 2', 1, '15:34:00'),
(4, 3, 2, 'Warszawa, Krasinskiego 34', 0, '15:45:00'),
(5, 4, 3, 'Warszawa, Edelmana 5/22', 0, '15:47:00'),
(6, 2, 4, 'Warszawa, Nowowiejska 56/1', 1, '16:20:00'),
(7, 1, 3, 'Warszawa, Poleczki 2/2', 0, '16:23:00');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dyspozytorzy`
--
ALTER TABLE `dyspozytorzy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `karty_wedkarskie`
--
ALTER TABLE `karty_wedkarskie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `lowisko`
--
ALTER TABLE `lowisko`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `okres_ochronny`
--
ALTER TABLE `okres_ochronny`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `publikacje`
--
ALTER TABLE `publikacje`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ratownicy`
--
ALTER TABLE `ratownicy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ryby`
--
ALTER TABLE `ryby`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uzytkownik`
--
ALTER TABLE `uzytkownik`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wyniki`
--
ALTER TABLE `wyniki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zawody_wedkarskie`
--
ALTER TABLE `zawody_wedkarskie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zgloszenia`
--
ALTER TABLE `zgloszenia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `dyspozytorzy`
--
ALTER TABLE `dyspozytorzy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `karty_wedkarskie`
--
ALTER TABLE `karty_wedkarskie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `lowisko`
--
ALTER TABLE `lowisko`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `okres_ochronny`
--
ALTER TABLE `okres_ochronny`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `publikacje`
--
ALTER TABLE `publikacje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `ratownicy`
--
ALTER TABLE `ratownicy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `ryby`
--
ALTER TABLE `ryby`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `uzytkownik`
--
ALTER TABLE `uzytkownik`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `wyniki`
--
ALTER TABLE `wyniki`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `zawody_wedkarskie`
--
ALTER TABLE `zawody_wedkarskie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `zgloszenia`
--
ALTER TABLE `zgloszenia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Baza danych: `matys`
--
CREATE DATABASE IF NOT EXISTS `matys` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `matys`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `karty_wedkarskie`
--

CREATE TABLE `karty_wedkarskie` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `adres` text DEFAULT NULL,
  `data_zezwolenia` date DEFAULT NULL,
  `punkty` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `karty_wedkarskie`
--

INSERT INTO `karty_wedkarskie` (`id`, `imie`, `nazwisko`, `adres`, `data_zezwolenia`, `punkty`) VALUES
(1, 'Jan', 'Kowalski', 'Warszawa, Aleje Jerozolimskie 65/4', '2018-02-15', 27),
(2, 'Andrzej', 'Nowak', 'Poznan, Dabowskiego 16/4', '2018-03-12', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lowisko`
--

CREATE TABLE `lowisko` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ryby_id` int(10) UNSIGNED NOT NULL,
  `akwen` text DEFAULT NULL,
  `wojewodztwo` text DEFAULT NULL,
  `rodzaj` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `lowisko`
--

INSERT INTO `lowisko` (`id`, `Ryby_id`, `akwen`, `wojewodztwo`, `rodzaj`) VALUES
(1, 2, 'Zalew Wegrowski', 'Mazowieckie', 4),
(2, 3, 'Zbiornik Bukowka', 'Dolnoslaskie', 2),
(3, 2, 'Jeziorko Bartbetowskie', 'Warminsko-Mazurskie', 2),
(4, 1, 'Warta-Obrzycko', 'Wielkopolskie', 3),
(5, 2, 'Stawy Milkow', 'Podkarpackie', 5),
(6, 7, 'Przemsza k. Okradzinowa', 'Slaskie', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `okres_ochronny`
--

CREATE TABLE `okres_ochronny` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ryby_id` int(10) UNSIGNED NOT NULL,
  `od_miesiaca` int(10) UNSIGNED DEFAULT NULL,
  `do_miesiaca` int(10) UNSIGNED DEFAULT NULL,
  `wymiar_ochronny` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `okres_ochronny`
--

INSERT INTO `okres_ochronny` (`id`, `Ryby_id`, `od_miesiaca`, `do_miesiaca`, `wymiar_ochronny`) VALUES
(1, 1, 1, 4, 50),
(2, 2, 0, 0, 30),
(3, 3, 1, 5, 50),
(4, 4, 0, 0, 15),
(5, 5, 11, 6, 70),
(6, 6, 0, 0, 0),
(7, 7, 0, 0, 0),
(8, 8, 0, 0, 25);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ryby`
--

CREATE TABLE `ryby` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` text DEFAULT NULL,
  `wystepowanie` text DEFAULT NULL,
  `styl_zycia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `ryby`
--

INSERT INTO `ryby` (`id`, `nazwa`, `wystepowanie`, `styl_zycia`) VALUES
(1, 'Szczupak', 'stawy, rzeki', 1),
(2, 'Karp', 'stawy, jeziora', 2),
(3, 'Sandacz', 'stawy, jeziora, rzeki', 1),
(4, 'Okon', 'rzeki', 1),
(5, 'Sum', 'jeziora, rzeki', 1),
(6, 'Dorsz', 'morza, oceany', 1),
(7, 'Leszcz', 'jeziora', 2),
(8, 'Lin', 'jeziora', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samochody`
--

CREATE TABLE `samochody` (
  `id` int(10) UNSIGNED NOT NULL,
  `marka` text DEFAULT NULL,
  `model` text DEFAULT NULL,
  `rocznik` year(4) DEFAULT NULL,
  `kolor` text DEFAULT NULL,
  `stan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `samochody`
--

INSERT INTO `samochody` (`id`, `marka`, `model`, `rocznik`, `kolor`, `stan`) VALUES
(1, 'Fiat', 'Punto', 2016, 'czerwony', 'bardzo dobry'),
(2, 'Fiat', 'Punto', 2002, 'czerwony', 'dobry'),
(3, 'Fiat', 'Punto', 2007, 'niebieski', 'bardzo bobry'),
(4, 'Opel', 'Corsa', 2016, 'grafitowy', 'bardzo dobry'),
(5, 'Opel', 'Astra', 2003, 'niebieski', 'porysowany lakier'),
(6, 'Toyota', 'Corolla', 2016, 'czerwony', 'bardzo dobry'),
(7, 'Toyota', 'Corolla', 2014, 'szary', 'dobry'),
(8, 'Toyota', 'Yaris', 2004, 'granatowy', 'dobry');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typy`
--

CREATE TABLE `typy` (
  `id` int(10) UNSIGNED NOT NULL,
  `kategoria` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `typy`
--

INSERT INTO `typy` (`id`, `kategoria`) VALUES
(1, 'Procesor'),
(2, 'RAM'),
(5, 'karta graficzna'),
(6, 'HDD');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczniowie`
--

CREATE TABLE `uczniowie` (
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `wiek` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `uczniowie`
--

INSERT INTO `uczniowie` (`imie`, `nazwisko`, `wiek`) VALUES
('Kamil', 'Ryba', 11),
('Karolina', 'Witecka', 8),
('Karol', 'Rybacki', 9),
('Marina', 'Damiencka', 9);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownik`
--

CREATE TABLE `uzytkownik` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `telefon` text DEFAULT NULL,
  `email` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `uzytkownik`
--

INSERT INTO `uzytkownik` (`id`, `imie`, `nazwisko`, `telefon`, `email`) VALUES
(1, 'Anna', 'Kowalska', '601601601', 'anna@poczta.pl'),
(2, 'Jan', 'Nowak', '608608608', 'jan@poczta.pl'),
(3, 'Jolanta', 'Jasny', '606606606', 'jolanta@poczta.pl'),
(4, 'qqq', 'www', '345', 'dsfsdklfs@daskl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wyniki`
--

CREATE TABLE `wyniki` (
  `id` int(10) UNSIGNED NOT NULL,
  `dyscyplina_id` int(10) UNSIGNED NOT NULL,
  `sportowiec_id` int(10) UNSIGNED NOT NULL,
  `wynik` decimal(5,2) DEFAULT NULL,
  `dataUstanowienia` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `wyniki`
--

INSERT INTO `wyniki` (`id`, `dyscyplina_id`, `sportowiec_id`, `wynik`, `dataUstanowienia`) VALUES
(1, 1, 1, '12.40', '2015-10-14'),
(2, 1, 1, '12.00', '2015-10-06'),
(3, 1, 2, '11.80', '2015-10-14'),
(4, 1, 2, '11.90', '2015-10-06'),
(5, 1, 3, '11.50', '2015-10-14'),
(6, 1, 3, '11.56', '2015-10-06'),
(7, 1, 4, '11.70', '2015-10-14'),
(8, 1, 4, '11.67', '2015-10-06'),
(9, 1, 5, '11.30', '2015-10-14'),
(10, 1, 5, '11.52', '2015-10-06'),
(11, 1, 6, '12.10', '2015-10-14'),
(12, 1, 6, '12.00', '2015-10-06'),
(13, 3, 1, '63.00', '2015-11-11'),
(14, 3, 1, '63.60', '2015-10-13'),
(15, 3, 2, '64.00', '2015-11-11'),
(16, 3, 2, '63.60', '2015-10-13'),
(17, 3, 3, '60.00', '2015-11-11'),
(18, 3, 3, '61.60', '2015-10-13'),
(19, 3, 4, '63.50', '2015-11-11'),
(20, 3, 4, '63.60', '2015-10-13'),
(21, 3, 5, '70.00', '2015-10-07'),
(22, 3, 6, '68.00', '2015-10-07');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id` int(10) UNSIGNED NOT NULL,
  `Samochody_id` int(10) UNSIGNED NOT NULL,
  `Klient` text DEFAULT NULL,
  `telefon` text DEFAULT NULL,
  `dataZam` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id`, `Samochody_id`, `Klient`, `telefon`, `dataZam`) VALUES
(1, 3, 'Anna Kowalska', '111222333', '2016-02-15'),
(2, 6, 'Jan Nowakowski', '222111333', '2016-02-15'),
(3, 8, 'Marcin Kolwal', '333111222', '2016-02-15');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zawody_wedkarskie`
--

CREATE TABLE `zawody_wedkarskie` (
  `id` int(10) UNSIGNED NOT NULL,
  `Karty_wedkarskie_id` int(10) UNSIGNED NOT NULL,
  `Lowisko_id` int(10) UNSIGNED NOT NULL,
  `data_zawodow` date DEFAULT NULL,
  `sedzia` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `zawody_wedkarskie`
--

INSERT INTO `zawody_wedkarskie` (`id`, `Karty_wedkarskie_id`, `Lowisko_id`, `data_zawodow`, `sedzia`) VALUES
(1, 1, 3, '2018-04-12', 'Jan Kowalewski'),
(2, 1, 5, '2018-05-01', 'Jan Kowalewski'),
(3, 1, 2, '2018-06-01', 'Jan Kowalewski'),
(4, 2, 1, '2018-06-21', 'Krzysztof Dobrowolski'),
(5, 2, 4, '0000-00-00', 'Andrzej Nowak'),
(6, 2, 4, '0000-00-00', 'Andrzej Nowak');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `karty_wedkarskie`
--
ALTER TABLE `karty_wedkarskie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `lowisko`
--
ALTER TABLE `lowisko`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `okres_ochronny`
--
ALTER TABLE `okres_ochronny`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ryby`
--
ALTER TABLE `ryby`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `samochody`
--
ALTER TABLE `samochody`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `typy`
--
ALTER TABLE `typy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uzytkownik`
--
ALTER TABLE `uzytkownik`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wyniki`
--
ALTER TABLE `wyniki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zawody_wedkarskie`
--
ALTER TABLE `zawody_wedkarskie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `karty_wedkarskie`
--
ALTER TABLE `karty_wedkarskie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `lowisko`
--
ALTER TABLE `lowisko`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `okres_ochronny`
--
ALTER TABLE `okres_ochronny`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `ryby`
--
ALTER TABLE `ryby`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `samochody`
--
ALTER TABLE `samochody`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `typy`
--
ALTER TABLE `typy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `uzytkownik`
--
ALTER TABLE `uzytkownik`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `wyniki`
--
ALTER TABLE `wyniki`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `zawody_wedkarskie`
--
ALTER TABLE `zawody_wedkarskie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Baza danych: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Zrzut danych tabeli `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"egzamin3\",\"table\":\"liga\"},{\"db\":\"egzamin3\",\"table\":\"zawodnik\"},{\"db\":\"egzamin3\",\"table\":\"pozycja\"},{\"db\":\"4ti\",\"table\":\"nauczyciel\"},{\"db\":\"4ti\",\"table\":\"lekcja\"},{\"db\":\"4tie\",\"table\":\"nauczyciel\"},{\"db\":\"egzamin1\",\"table\":\"odloty\"},{\"db\":\"egzamin1\",\"table\":\"samoloty\"},{\"db\":\"egzamin1\",\"table\":\"przyloty\"},{\"db\":\"egzamin\",\"table\":\"wynik\"}]');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Zrzut danych tabeli `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', '4tie', 'przedmiot', '{\"sorted_col\":\"`przedmiot`.`przedmiot` DESC\"}', '2023-02-20 11:13:24');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Zrzut danych tabeli `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-03-10 09:28:22', '{\"Console\\/Mode\":\"show\",\"lang\":\"pl\",\"Console\\/Height\":124.93999999999998}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeksy dla tabeli `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeksy dla tabeli `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeksy dla tabeli `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeksy dla tabeli `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeksy dla tabeli `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeksy dla tabeli `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeksy dla tabeli `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeksy dla tabeli `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeksy dla tabeli `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeksy dla tabeli `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeksy dla tabeli `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeksy dla tabeli `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeksy dla tabeli `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Baza danych: `podroze`
--
CREATE DATABASE IF NOT EXISTS `podroze` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `podroze`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `odloty`
--

CREATE TABLE `odloty` (
  `id` int(10) UNSIGNED NOT NULL,
  `samoloty_id` int(10) UNSIGNED NOT NULL,
  `nr_rejsu` varchar(8) DEFAULT NULL,
  `kierunek` varchar(10) DEFAULT NULL,
  `czas` time NOT NULL,
  `dzien` date DEFAULT NULL,
  `status_lotu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `odloty`
--

INSERT INTO `odloty` (`id`, `samoloty_id`, `nr_rejsu`, `kierunek`, `czas`, `dzien`, `status_lotu`) VALUES
(1, 1, 'FR1646', 'Neapol', '09:20:00', '2019-07-25', 'wystartowal'),
(2, 1, 'FR1327', 'ALICANTE', '09:10:00', '2019-07-25', 'Opozniony 10 min'),
(3, 2, 'W63425', 'Warszawa', '09:45:00', '2019-07-25', 'odprawa'),
(4, 3, 'LX5647', 'Londyn LT', '10:03:00', '2019-07-25', 'odprawa'),
(5, 3, 'LX5673', 'Malta', '10:06:00', '2019-07-25', 'opoznienie 20 min'),
(6, 3, 'LX5622', 'Wieden', '10:13:00', '2019-07-25', ''),
(7, 4, 'LH9821', 'Berlin', '10:16:00', '2019-07-25', ''),
(8, 4, 'LH9888', 'Hamburg', '10:19:00', '2019-07-25', ''),
(9, 4, 'LH9331', 'Monachium', '10:22:00', '2019-07-25', ''),
(10, 2, 'W68769', 'Zurych', '09:56:00', '2019-07-25', 'boarding');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przyloty`
--

CREATE TABLE `przyloty` (
  `id` int(10) UNSIGNED NOT NULL,
  `samoloty_id` int(10) UNSIGNED NOT NULL,
  `nr_rejsu` varchar(8) DEFAULT NULL,
  `kierunek` varchar(10) DEFAULT NULL,
  `czas` time DEFAULT NULL,
  `dzien` date DEFAULT NULL,
  `status_lotu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `przyloty`
--

INSERT INTO `przyloty` (`id`, `samoloty_id`, `nr_rejsu`, `kierunek`, `czas`, `dzien`, `status_lotu`) VALUES
(1, 2, 'W63454', 'Warszawa', '09:45:00', '2019-07-29', 'wyladowal'),
(2, 3, 'LX3447', 'Londyn LT', '10:03:00', '2019-07-29', 'opoznienie 10 min'),
(3, 3, 'LX5473', 'Malta', '10:06:00', '2019-07-29', 'planowy'),
(4, 3, 'LX5728', 'Wieden', '10:13:00', '2019-07-29', ''),
(5, 4, 'LH9829', 'Berlin', '10:16:00', '2019-07-29', ''),
(6, 4, 'LH9898', 'Hamburg', '10:19:00', '2019-07-29', ''),
(7, 4, 'LH3331', 'Monachium', '10:22:00', '2019-07-29', ''),
(8, 2, 'W68546', 'Zurych', '10:33:00', '2019-07-29', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samoloty`
--

CREATE TABLE `samoloty` (
  `id` int(10) UNSIGNED NOT NULL,
  `typ` varchar(20) DEFAULT NULL,
  `linie` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `samoloty`
--

INSERT INTO `samoloty` (`id`, `typ`, `linie`) VALUES
(1, 'Boening 787', 'RYANAIR'),
(2, 'Boening 737', 'WIZZAIR'),
(3, 'Boening 787', 'SWISS2'),
(4, 'Boening 737', 'LUFTHANSA');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `odloty`
--
ALTER TABLE `odloty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `przyloty`
--
ALTER TABLE `przyloty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `samoloty`
--
ALTER TABLE `samoloty`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `odloty`
--
ALTER TABLE `odloty`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `przyloty`
--
ALTER TABLE `przyloty`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `samoloty`
--
ALTER TABLE `samoloty`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Baza danych: `praktyki`
--
CREATE DATABASE IF NOT EXISTS `praktyki` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `praktyki`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `osoba`
--

CREATE TABLE `osoba` (
  `id` int(11) NOT NULL,
  `imie` varchar(45) NOT NULL,
  `nazwisko` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `osoba`
--

INSERT INTO `osoba` (`id`, `imie`, `nazwisko`) VALUES
(1, 'Jan', 'Kowalski'),
(2, 'Marek ', 'Nowak'),
(3, 'Tomasz', 'Kaczka'),
(4, 'Mateusz', 'Morowy');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `praktyka`
--

CREATE TABLE `praktyka` (
  `id` int(11) NOT NULL,
  `id_zaklad_pracy` int(11) NOT NULL,
  `id_osoba` int(11) NOT NULL,
  `data_rozpoczecia_praktyk` date NOT NULL,
  `data_rzakonczenia_praktyk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `praktyka`
--

INSERT INTO `praktyka` (`id`, `id_zaklad_pracy`, `id_osoba`, `data_rozpoczecia_praktyk`, `data_rzakonczenia_praktyk`) VALUES
(1, 3, 3, '2023-03-08', '2023-03-14'),
(2, 3, 3, '2023-03-08', '2023-03-14'),
(3, 3, 3, '2023-03-08', '2023-03-14'),
(4, 3, 3, '2023-03-02', '2023-03-03'),
(5, 2, 2, '2023-03-09', '2023-03-03');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zakład_pracy`
--

CREATE TABLE `zakład_pracy` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(45) NOT NULL,
  `miejscowosc` varchar(45) NOT NULL,
  `ulica` varchar(45) NOT NULL,
  `numer` varchar(20) NOT NULL,
  `telefon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `zakład_pracy`
--

INSERT INTO `zakład_pracy` (`id`, `nazwa`, `miejscowosc`, `ulica`, `numer`, `telefon`) VALUES
(1, 'Humisave', 'Jastrzębie-Zdrój', 'Katowicka', '24', 601701618),
(2, 'JSW IT Systems', 'Jastrzębie-Zdrój', 'Armii Krajowej ', '56', 327002710),
(3, 'Hostersi', 'Rybnik', 'Jankowicka', '7', 324229133),
(4, 'Alan Systems', 'Rybnik', 'Obwiednia Południowa', '22', 323593050),
(5, 'BlueSoft', 'Jastrzębie-Zdrój', 'Armii Krajowej ', '25', 324412877),
(6, 'Leon', 'Rybnik', 'Kilińskiego', '33d', 324408000);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `osoba`
--
ALTER TABLE `osoba`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `praktyka`
--
ALTER TABLE `praktyka`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zakład_pracy`
--
ALTER TABLE `zakład_pracy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `osoba`
--
ALTER TABLE `osoba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `praktyka`
--
ALTER TABLE `praktyka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `zakład_pracy`
--
ALTER TABLE `zakład_pracy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Baza danych: `samochudy`
--
CREATE DATABASE IF NOT EXISTS `samochudy` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `samochudy`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lowisko`
--

CREATE TABLE `lowisko` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ryby_id` int(10) UNSIGNED NOT NULL,
  `akwen` text DEFAULT NULL,
  `wojewodztwo` text DEFAULT NULL,
  `rodzaj` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `lowisko`
--

INSERT INTO `lowisko` (`id`, `Ryby_id`, `akwen`, `wojewodztwo`, `rodzaj`) VALUES
(1, 2, 'Zalew Wegrowski', 'Mazowieckie', 4),
(2, 3, 'Zbiornik Bukowka', 'Dolnoslaskie', 2),
(3, 2, 'Jeziorko Bartbetowskie', 'Warminsko-Mazurskie', 2),
(4, 1, 'Warta-Obrzycko', 'Wielkopolskie', 3),
(5, 2, 'Stawy Milkow', 'Podkarpackie', 5),
(6, 7, 'Przemsza k. Okradzinowa', 'Slaskie', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `okres_ochronny`
--

CREATE TABLE `okres_ochronny` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ryby_id` int(10) UNSIGNED NOT NULL,
  `od_miesiaca` int(10) UNSIGNED DEFAULT NULL,
  `do_miesiaca` int(10) UNSIGNED DEFAULT NULL,
  `wymiar_ochronny` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `okres_ochronny`
--

INSERT INTO `okres_ochronny` (`id`, `Ryby_id`, `od_miesiaca`, `do_miesiaca`, `wymiar_ochronny`) VALUES
(1, 1, 1, 4, 50),
(2, 2, 0, 0, 30),
(3, 3, 1, 5, 50),
(4, 4, 0, 0, 15),
(5, 5, 11, 6, 70),
(6, 6, 0, 0, 0),
(7, 7, 0, 0, 0),
(8, 8, 0, 0, 25);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ryby`
--

CREATE TABLE `ryby` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` text DEFAULT NULL,
  `wystepowanie` text DEFAULT NULL,
  `styl_zycia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `ryby`
--

INSERT INTO `ryby` (`id`, `nazwa`, `wystepowanie`, `styl_zycia`) VALUES
(1, 'Szczupak', 'stawy, rzeki', 1),
(2, 'Karp', 'stawy, jeziora', 2),
(3, 'Sandacz', 'stawy, jeziora, rzeki', 1),
(4, 'Okon', 'rzeki', 1),
(5, 'Sum', 'jeziora, rzeki', 1),
(6, 'Dorsz', 'morza, oceany', 1),
(7, 'Leszcz', 'jeziora', 2),
(8, 'Lin', 'jeziora', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samochody`
--

CREATE TABLE `samochody` (
  `id` int(10) UNSIGNED NOT NULL,
  `marka` text DEFAULT NULL,
  `model` text DEFAULT NULL,
  `rocznik` year(4) DEFAULT NULL,
  `kolor` text DEFAULT NULL,
  `stan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `samochody`
--

INSERT INTO `samochody` (`id`, `marka`, `model`, `rocznik`, `kolor`, `stan`) VALUES
(1, 'Fiat', 'Punto', 2016, 'czerwony', 'bardzo dobry'),
(2, 'Fiat', 'Punto', 2002, 'czerwony', 'dobry'),
(3, 'Fiat', 'Punto', 2007, 'niebieski', 'bardzo bobry'),
(4, 'Opel', 'Corsa', 2016, 'grafitowy', 'bardzo dobry'),
(5, 'Opel', 'Astra', 2003, 'niebieski', 'porysowany lakier'),
(6, 'Toyota', 'Corolla', 2016, 'czerwony', 'bardzo dobry'),
(7, 'Toyota', 'Corolla', 2014, 'szary', 'dobry'),
(8, 'Toyota', 'Yaris', 2004, 'granatowy', 'dobry');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typy`
--

CREATE TABLE `typy` (
  `id` int(10) UNSIGNED NOT NULL,
  `kategoria` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `typy`
--

INSERT INTO `typy` (`id`, `kategoria`) VALUES
(1, 'Procesor'),
(2, 'RAM'),
(5, 'karta graficzna'),
(6, 'HDD');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczniowie`
--

CREATE TABLE `uczniowie` (
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `wiek` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `uczniowie`
--

INSERT INTO `uczniowie` (`imie`, `nazwisko`, `wiek`) VALUES
('Kamil', 'Ryba', 11),
('Karolina', 'Witecka', 8),
('Karol', 'Rybacki', 9),
('Marina', 'Damiencka', 9);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownik`
--

CREATE TABLE `uzytkownik` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `telefon` text DEFAULT NULL,
  `email` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `uzytkownik`
--

INSERT INTO `uzytkownik` (`id`, `imie`, `nazwisko`, `telefon`, `email`) VALUES
(1, 'Anna', 'Kowalska', '601601601', 'anna@poczta.pl'),
(2, 'Jan', 'Nowak', '608608608', 'jan@poczta.pl'),
(3, 'Jolanta', 'Jasny', '606606606', 'jolanta@poczta.pl'),
(4, 'qqq', 'www', '345', 'dsfsdklfs@daskl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wyniki`
--

CREATE TABLE `wyniki` (
  `id` int(10) UNSIGNED NOT NULL,
  `dyscyplina_id` int(10) UNSIGNED NOT NULL,
  `sportowiec_id` int(10) UNSIGNED NOT NULL,
  `wynik` decimal(5,2) DEFAULT NULL,
  `dataUstanowienia` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `wyniki`
--

INSERT INTO `wyniki` (`id`, `dyscyplina_id`, `sportowiec_id`, `wynik`, `dataUstanowienia`) VALUES
(1, 1, 1, '12.40', '2015-10-14'),
(2, 1, 1, '12.00', '2015-10-06'),
(3, 1, 2, '11.80', '2015-10-14'),
(4, 1, 2, '11.90', '2015-10-06'),
(5, 1, 3, '11.50', '2015-10-14'),
(6, 1, 3, '11.56', '2015-10-06'),
(7, 1, 4, '11.70', '2015-10-14'),
(8, 1, 4, '11.67', '2015-10-06'),
(9, 1, 5, '11.30', '2015-10-14'),
(10, 1, 5, '11.52', '2015-10-06'),
(11, 1, 6, '12.10', '2015-10-14'),
(12, 1, 6, '12.00', '2015-10-06'),
(13, 3, 1, '63.00', '2015-11-11'),
(14, 3, 1, '63.60', '2015-10-13'),
(15, 3, 2, '64.00', '2015-11-11'),
(16, 3, 2, '63.60', '2015-10-13'),
(17, 3, 3, '60.00', '2015-11-11'),
(18, 3, 3, '61.60', '2015-10-13'),
(19, 3, 4, '63.50', '2015-11-11'),
(20, 3, 4, '63.60', '2015-10-13'),
(21, 3, 5, '70.00', '2015-10-07'),
(22, 3, 6, '68.00', '2015-10-07');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id` int(10) UNSIGNED NOT NULL,
  `Samochody_id` int(10) UNSIGNED NOT NULL,
  `Klient` text DEFAULT NULL,
  `telefon` text DEFAULT NULL,
  `dataZam` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id`, `Samochody_id`, `Klient`, `telefon`, `dataZam`) VALUES
(1, 3, 'Anna Kowalska', '111222333', '2016-02-15'),
(2, 6, 'Jan Nowakowski', '222111333', '2016-02-15'),
(3, 8, 'Marcin Kolwal', '333111222', '2016-02-15');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `lowisko`
--
ALTER TABLE `lowisko`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `okres_ochronny`
--
ALTER TABLE `okres_ochronny`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ryby`
--
ALTER TABLE `ryby`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `samochody`
--
ALTER TABLE `samochody`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `typy`
--
ALTER TABLE `typy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uzytkownik`
--
ALTER TABLE `uzytkownik`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wyniki`
--
ALTER TABLE `wyniki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `lowisko`
--
ALTER TABLE `lowisko`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `okres_ochronny`
--
ALTER TABLE `okres_ochronny`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `ryby`
--
ALTER TABLE `ryby`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `samochody`
--
ALTER TABLE `samochody`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `typy`
--
ALTER TABLE `typy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `uzytkownik`
--
ALTER TABLE `uzytkownik`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `wyniki`
--
ALTER TABLE `wyniki`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Baza danych: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Baza danych: `thc`
--
CREATE DATABASE IF NOT EXISTS `thc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `thc`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `karty_wedkarskie`
--

CREATE TABLE `karty_wedkarskie` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `adres` text DEFAULT NULL,
  `data_zezwolenia` date DEFAULT NULL,
  `punkty` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `karty_wedkarskie`
--

INSERT INTO `karty_wedkarskie` (`id`, `imie`, `nazwisko`, `adres`, `data_zezwolenia`, `punkty`) VALUES
(1, 'Jan', 'Kowalski', 'Warszawa, Aleje Jerozolimskie 65/4', '2018-02-15', 23),
(2, 'Andrzej', 'Nowak', 'Poznan, Dabowskiego 16/4', '2018-03-12', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lowisko`
--

CREATE TABLE `lowisko` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ryby_id` int(10) UNSIGNED NOT NULL,
  `akwen` text DEFAULT NULL,
  `wojewodztwo` text DEFAULT NULL,
  `rodzaj` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `lowisko`
--

INSERT INTO `lowisko` (`id`, `Ryby_id`, `akwen`, `wojewodztwo`, `rodzaj`) VALUES
(1, 2, 'Zalew Wegrowski', 'Mazowieckie', 4),
(2, 3, 'Zbiornik Bukowka', 'Dolnoslaskie', 2),
(3, 2, 'Jeziorko Bartbetowskie', 'Warminsko-Mazurskie', 2),
(4, 1, 'Warta-Obrzycko', 'Wielkopolskie', 3),
(5, 2, 'Stawy Milkow', 'Podkarpackie', 5),
(6, 7, 'Przemsza k. Okradzinowa', 'Slaskie', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `okres_ochronny`
--

CREATE TABLE `okres_ochronny` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ryby_id` int(10) UNSIGNED NOT NULL,
  `od_miesiaca` int(10) UNSIGNED DEFAULT NULL,
  `do_miesiaca` int(10) UNSIGNED DEFAULT NULL,
  `wymiar_ochronny` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `okres_ochronny`
--

INSERT INTO `okres_ochronny` (`id`, `Ryby_id`, `od_miesiaca`, `do_miesiaca`, `wymiar_ochronny`) VALUES
(1, 1, 1, 4, 50),
(2, 2, 0, 0, 30),
(3, 3, 1, 5, 50),
(4, 4, 0, 0, 15),
(5, 5, 11, 6, 70),
(6, 6, 0, 0, 0),
(7, 7, 0, 0, 0),
(8, 8, 0, 0, 25);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ryby`
--

CREATE TABLE `ryby` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` text DEFAULT NULL,
  `wystepowanie` text DEFAULT NULL,
  `styl_zycia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `ryby`
--

INSERT INTO `ryby` (`id`, `nazwa`, `wystepowanie`, `styl_zycia`) VALUES
(1, 'Szczupak', 'stawy, rzeki', 1),
(2, 'Karp', 'stawy, jeziora', 2),
(3, 'Sandacz', 'stawy, jeziora, rzeki', 1),
(4, 'Okon', 'rzeki', 1),
(5, 'Sum', 'jeziora, rzeki', 1),
(6, 'Dorsz', 'morza, oceany', 1),
(7, 'Leszcz', 'jeziora', 2),
(8, 'Lin', 'jeziora', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samochody`
--

CREATE TABLE `samochody` (
  `id` int(10) UNSIGNED NOT NULL,
  `marka` text DEFAULT NULL,
  `model` text DEFAULT NULL,
  `rocznik` year(4) DEFAULT NULL,
  `kolor` text DEFAULT NULL,
  `stan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `samochody`
--

INSERT INTO `samochody` (`id`, `marka`, `model`, `rocznik`, `kolor`, `stan`) VALUES
(1, 'Fiat', 'Punto', 2016, 'czerwony', 'bardzo dobry'),
(2, 'Fiat', 'Punto', 2002, 'czerwony', 'dobry'),
(3, 'Fiat', 'Punto', 2007, 'niebieski', 'bardzo bobry'),
(4, 'Opel', 'Corsa', 2016, 'grafitowy', 'bardzo dobry'),
(5, 'Opel', 'Astra', 2003, 'niebieski', 'porysowany lakier'),
(6, 'Toyota', 'Corolla', 2016, 'czerwony', 'bardzo dobry'),
(7, 'Toyota', 'Corolla', 2014, 'szary', 'dobry'),
(8, 'Toyota', 'Yaris', 2004, 'granatowy', 'dobry');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typy`
--

CREATE TABLE `typy` (
  `id` int(10) UNSIGNED NOT NULL,
  `kategoria` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `typy`
--

INSERT INTO `typy` (`id`, `kategoria`) VALUES
(1, 'Procesor'),
(2, 'RAM'),
(5, 'karta graficzna'),
(6, 'HDD');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczniowie`
--

CREATE TABLE `uczniowie` (
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `wiek` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `uczniowie`
--

INSERT INTO `uczniowie` (`imie`, `nazwisko`, `wiek`) VALUES
('Kamil', 'Ryba', 11),
('Karolina', 'Witecka', 8),
('Karol', 'Rybacki', 9),
('Marina', 'Damiencka', 9),
('Kamil', 'Ryba', 11),
('Karolina', 'Witecka', 8),
('Karol', 'Rybacki', 9),
('Marina', 'Damiencka', 9);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownik`
--

CREATE TABLE `uzytkownik` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `telefon` text DEFAULT NULL,
  `email` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `uzytkownik`
--

INSERT INTO `uzytkownik` (`id`, `imie`, `nazwisko`, `telefon`, `email`) VALUES
(1, 'Anna', 'Kowalska', '601601601', 'anna@poczta.pl'),
(2, 'Jan', 'Nowak', '608608608', 'jan@poczta.pl'),
(3, 'Jolanta', 'Jasny', '606606606', 'jolanta@poczta.pl'),
(4, 'qqq', 'www', '345', 'dsfsdklfs@daskl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wyniki`
--

CREATE TABLE `wyniki` (
  `id` int(10) UNSIGNED NOT NULL,
  `dyscyplina_id` int(10) UNSIGNED NOT NULL,
  `sportowiec_id` int(10) UNSIGNED NOT NULL,
  `wynik` decimal(5,2) DEFAULT NULL,
  `dataUstanowienia` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `wyniki`
--

INSERT INTO `wyniki` (`id`, `dyscyplina_id`, `sportowiec_id`, `wynik`, `dataUstanowienia`) VALUES
(1, 1, 1, '12.40', '2015-10-14'),
(2, 1, 1, '12.00', '2015-10-06'),
(3, 1, 2, '11.80', '2015-10-14'),
(4, 1, 2, '11.90', '2015-10-06'),
(5, 1, 3, '11.50', '2015-10-14'),
(6, 1, 3, '11.56', '2015-10-06'),
(7, 1, 4, '11.70', '2015-10-14'),
(8, 1, 4, '11.67', '2015-10-06'),
(9, 1, 5, '11.30', '2015-10-14'),
(10, 1, 5, '11.52', '2015-10-06'),
(11, 1, 6, '12.10', '2015-10-14'),
(12, 1, 6, '12.00', '2015-10-06'),
(13, 3, 1, '63.00', '2015-11-11'),
(14, 3, 1, '63.60', '2015-10-13'),
(15, 3, 2, '64.00', '2015-11-11'),
(16, 3, 2, '63.60', '2015-10-13'),
(17, 3, 3, '60.00', '2015-11-11'),
(18, 3, 3, '61.60', '2015-10-13'),
(19, 3, 4, '63.50', '2015-11-11'),
(20, 3, 4, '63.60', '2015-10-13'),
(21, 3, 5, '70.00', '2015-10-07'),
(22, 3, 6, '68.00', '2015-10-07');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id` int(10) UNSIGNED NOT NULL,
  `Samochody_id` int(10) UNSIGNED NOT NULL,
  `Klient` text DEFAULT NULL,
  `telefon` text DEFAULT NULL,
  `dataZam` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id`, `Samochody_id`, `Klient`, `telefon`, `dataZam`) VALUES
(1, 3, 'Anna Kowalska', '111222333', '2016-02-15'),
(2, 6, 'Jan Nowakowski', '222111333', '2016-02-15'),
(3, 8, 'Marcin Kolwal', '333111222', '2016-02-15');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zawody_wedkarskie`
--

CREATE TABLE `zawody_wedkarskie` (
  `id` int(10) UNSIGNED NOT NULL,
  `Karty_wedkarskie_id` int(10) UNSIGNED NOT NULL,
  `Lowisko_id` int(10) UNSIGNED NOT NULL,
  `data_zawodow` date DEFAULT NULL,
  `sedzia` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `zawody_wedkarskie`
--

INSERT INTO `zawody_wedkarskie` (`id`, `Karty_wedkarskie_id`, `Lowisko_id`, `data_zawodow`, `sedzia`) VALUES
(1, 1, 3, '2018-04-12', 'Jan Kowalewski'),
(2, 1, 5, '2018-05-01', 'Jan Kowalewski'),
(3, 1, 2, '2018-06-01', 'Jan Kowalewski'),
(4, 2, 1, '2018-06-21', 'Krzysztof Dobrowolski');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `karty_wedkarskie`
--
ALTER TABLE `karty_wedkarskie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `lowisko`
--
ALTER TABLE `lowisko`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `okres_ochronny`
--
ALTER TABLE `okres_ochronny`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ryby`
--
ALTER TABLE `ryby`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `samochody`
--
ALTER TABLE `samochody`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `typy`
--
ALTER TABLE `typy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uzytkownik`
--
ALTER TABLE `uzytkownik`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wyniki`
--
ALTER TABLE `wyniki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zawody_wedkarskie`
--
ALTER TABLE `zawody_wedkarskie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `karty_wedkarskie`
--
ALTER TABLE `karty_wedkarskie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `lowisko`
--
ALTER TABLE `lowisko`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `okres_ochronny`
--
ALTER TABLE `okres_ochronny`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `ryby`
--
ALTER TABLE `ryby`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `samochody`
--
ALTER TABLE `samochody`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `typy`
--
ALTER TABLE `typy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `uzytkownik`
--
ALTER TABLE `uzytkownik`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `wyniki`
--
ALTER TABLE `wyniki`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `zawody_wedkarskie`
--
ALTER TABLE `zawody_wedkarskie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
