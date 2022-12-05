-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 30 Lis 2022, 11:34
-- Wersja serwera: 10.1.38-MariaDB
-- Wersja PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `biblioteka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategorie`
--

CREATE TABLE `kategorie` (
  `Id_kategorii` int(11) NOT NULL,
  `Nazwa` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `Opis` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `kategorie`
--

INSERT INTO `kategorie` (`Id_kategorii`, `Nazwa`, `Opis`) VALUES
(1, 'Fantasy', 'Gatunek literacki używający magicznych i innych nadprzyrodzonych form, motywów, jako pierwszorzędnego składnika fabuły, myśli przewodniej, czasu, miejsca akcji, postaci i okoliczności zdarzeń.'),
(2, 'Horror', 'Fantastyka grozy – odmiana fantastyki polegająca na budowaniu świata przedstawionego na wzór rzeczywistości i praw nią rządzących po to, aby wprowadzić w jego obręb zjawiska kwestionujące te prawa i niedające się wytłumaczyć bez odwoływania się do zjawisk nadprzyrodzonych.'),
(3, 'Sci Fiction', 'Gatunek literacki o fabule osnutej na przewidywanych osiągnięciach nauki i techniki oraz ukazującej ich wpływ na życie jednostki lub społeczeństwa'),
(4, 'Manga', 'Japoński komiks z charakterystycznym stylem rysowania, czarno-biały i czytany od prawej do lewej.'),
(5, 'Biografia', 'Opis życia postaci autentycznej, który może mieć charakter naukowy, literacki lub popularyzatorski.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

CREATE TABLE `ksiazki` (
  `id_ksiazki` int(11) NOT NULL,
  `tytuł` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `autor` varchar(100) COLLATE utf8mb4_polish_ci NOT NULL,
  `wydawnictwo` varchar(70) COLLATE utf8mb4_polish_ci NOT NULL,
  `rok_wydania` date NOT NULL,
  `id_kategorii` int(11) NOT NULL,
  `opis` text COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `ksiazki`
--

INSERT INTO `ksiazki` (`id_ksiazki`, `tytuł`, `autor`, `wydawnictwo`, `rok_wydania`, `id_kategorii`, `opis`) VALUES
(1, 'Ballada Ptaków i Węży', 'Suzzane Collins', 'Media Rodzina', '2020-06-15', 3, 'AMBICJA GO NAPĘDZA.\r\nRYWALIZACJA GO MOTYWUJE.\r\nWŁADZA JEDNAK MA SWOJĄ CENĘ.\r\nDziesiąte Głodowe Igrzyska rozpoczyna poranek dożynek. W Kapitolu osiemnastoletni Coriolanus Snow zamierza skwapliwie skorzystać z szansy, jaką jest rola mentora, i zdobyć sławę. Potężny niegdyś ród Snowów podupadł i niepewny los Coriolanusa zależy teraz od tego, czy zdoła on pokonać innych mentorów urokiem osobistym i sprytem.\r\nTyle że los nie bardzo mu sprzyja. W udziale przypadła mu dziewczyna z Dystryktu Dwunastego, najbiedniejszego z biednych. Losy obojga splotą się ciasno – każda decyzja, którą podejmie Snow, może prowadzić do sukcesu lub porażki, triumfu lub klęski. Na arenie rozgrywa walkę na śmierć i życie, ale poza areną zaczyna się w nim budzić współczucie… Tylko jak postępować według zasad, gdy pragnie się przetrwać za wszelką cenę?'),
(2, 'Pustynny książę księga 1', 'Peter V. Brett', 'Fabryka słów Sp. z o.o.', '2021-09-29', 1, 'Zupełnie nowa epicka przygoda osadzona w słynnym świecie Cyklu Demonicznego!﻿\r\n \r\nPiętnaście lat minęło od zakończenia wojny z demonami, istotami ciemności, które pojawiały się nocą, by polować na ludzi.\r\n \r\nBohaterowie tamtych zmagań przeszli do legendy. Jednak ich następcy - ﻿nowe pokolenie - wyrosłe na opowieściach o nich, nie chcą podążać ścieżką wytyczoną przez rodziców. Niełatwo jest być dzieckiem tych, którzy uratowali świat od zagłady.\r\n \r\nKsiężniczka Olive Papiernik i Darin Bales dorastali w nowym, pokojowym świecie, gdzie demony zostały niemal wytępione. Jedyne czego pragną to wolność i możliwość samodzielnego decydowania o swoich losach. ﻿Jednak, gdy okazuje się, że za sukcesy rodziców cenę zapłacą dzieci, a prawdziwe zagrożenie puka do drzwi, muszą w swoje niedoświadczone i niechętne temu ręce ﻿wziąć losy świata...'),
(3, 'Wiedzmin ostatnie życzenie', 'Andrzej Sapkowski', 'superNOWA', '2014-11-01', 1, 'Później mówiono, że człowiek ów nadszedł od północy, od Bramy Powroźniczej. Nie był stary, ale włosy miał zupełnie białe. Kiedy ściągnął płaszcz, okazało się, że na pasie za plecami ma miecz.\r\nBiałowłosego przywiodło do miasta królewskie orędzie: trzy tysiące orenów nagrody za odczarowanie nękającej mieszkańców Wyzimy strzygi.\r\nTakie czasy nastały. Dawniej po lasach jeno wilki wyły, teraz namnożyło się rozmaitego paskudztwa – gdzie spojrzysz, tam upiory, bazyliszki, diaboły, żywiołaki, wiły i utopce plugawe. A i niebacznie uwolniony z amfory dżinn, potrafiący zamienić życie spokojnego miasta w koszmar, się trafi.\r\nTu nie wystarczą zwykłe czary ani osinowe kołki. Tu trzeba zawodowca.\r\nWIEDŹMINA.\r\nMistrza magii i miecza. Tajemną sztuką wyuczonego, by strzec na świecie moralnej i biologicznej równowagi.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczniowie`
--

CREATE TABLE `uczniowie` (
  `Id_ucznia` int(11) NOT NULL,
  `Imie` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `Nazwisko` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `Login` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `Haslo` varchar(25) COLLATE utf8_polish_ci NOT NULL,
  `Miejscowosc` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `Ulica` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `Nr_domu` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `Kod_pocztowy` varchar(6) COLLATE utf8_polish_ci NOT NULL,
  `Data_urodzenia` date NOT NULL,
  `Telefon` varchar(12) COLLATE utf8_polish_ci NOT NULL,
  `Email` varchar(150) COLLATE utf8_polish_ci NOT NULL,
  `Plec` varchar(30) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `uczniowie`
--

INSERT INTO `uczniowie` (`Id_ucznia`, `Imie`, `Nazwisko`, `Login`, `Haslo`, `Miejscowosc`, `Ulica`, `Nr_domu`, `Kod_pocztowy`, `Data_urodzenia`, `Telefon`, `Email`, `Plec`) VALUES
(1, 'Marcin', 'Malinowski', 'malina321', 'qwerty', 'Warszawa', 'Towarowa', '45', '00-001', '2004-09-24', '+48823948249', 'malinowski555@dmail.com', 'M'),
(2, 'Joanna', 'Chojnowska', 'choina877', 'asdfg', 'Łomża', 'Wojska Polskiego', '26', '18-400', '2001-05-16', '+48395560356', 'chojnowskajoanna@onet.pl', 'K'),
(3, 'Jakub', 'Przetak', 'kubus', 'qwerty', 'Warszawa', 'Papieska', '21', '00-001', '2002-08-14', '+48924602747', 'kubaprzetak@gmail.com', 'M'),
(4, 'Ernest', 'Kalicki', 'kanest', 'zxcvb', 'Łomża', 'Rządowa', '6', '18-400', '2003-11-05', '+48390831247', 'kalickiernest@gmail.com', 'M'),
(5, 'kendra', 'karwowska', 'kendra2137', '', 'ÅomÅ¼a', 'zielona', '3', '18-400', '2003-06-04', '999888777', 'kendra@gmail.com', 'K'),
(6, 'Kacper', 'Kondracki', 'kondrow', '1234567890', 'Grondy Woniecko', 'Grondy Woniecko', '51', '18-400', '2003-01-15', '772690833', 'kkondracki03@gmail.com', 'M');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypozyczenia`
--

CREATE TABLE `wypozyczenia` (
  `Id_wypozyczenia` int(11) NOT NULL,
  `Id_ucznia` int(11) NOT NULL,
  `Id_ksiazki` int(11) NOT NULL,
  `Data_wyporzyczenia` date NOT NULL,
  `Data_zwrotu` date NOT NULL,
  `Uwagi` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`Id_kategorii`);

--
-- Indeksy dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`id_ksiazki`),
  ADD KEY `id_kategorii` (`id_kategorii`);

--
-- Indeksy dla tabeli `uczniowie`
--
ALTER TABLE `uczniowie`
  ADD PRIMARY KEY (`Id_ucznia`);

--
-- Indeksy dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD PRIMARY KEY (`Id_wypozyczenia`),
  ADD KEY `Id_ksiazki` (`Id_ksiazki`),
  ADD KEY `Id_ucznia` (`Id_ucznia`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `Id_kategorii` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  MODIFY `id_ksiazki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `uczniowie`
--
ALTER TABLE `uczniowie`
  MODIFY `Id_ucznia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  MODIFY `Id_wypozyczenia` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD CONSTRAINT `ksiazki_ibfk_1` FOREIGN KEY (`id_kategorii`) REFERENCES `kategorie` (`Id_kategorii`);

--
-- Ograniczenia dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD CONSTRAINT `wypozyczenia_ibfk_1` FOREIGN KEY (`Id_ksiazki`) REFERENCES `ksiazki` (`id_ksiazki`),
  ADD CONSTRAINT `wypozyczenia_ibfk_2` FOREIGN KEY (`Id_ucznia`) REFERENCES `uczniowie` (`Id_ucznia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
