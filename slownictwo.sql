-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 25, 2018 at 10:34 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slownictwo`
--

-- --------------------------------------------------------

--
-- Table structure for table `praca`
--

CREATE TABLE `praca` (
  `word` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `trans` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `praca`
--

INSERT INTO `praca` (`word`, `trans`) VALUES
('Księgowy', 'accountant'),
('opiekun/opiekunka do dziecka', 'babysitter'),
('kierowca autobusu', 'bus driver'),
('mechanik', 'car mechanic'),
('szef kuchni', 'chef'),
('farmaceuta', 'chemist/pharmacist'),
('sprzątacz/sprzątaczka', 'cleaner'),
('programista', 'computer programmer'),
('kucharz', 'cook'),
('dentysta', 'dentist'),
('lekarz', 'doctor'),
('krawiec', 'dressmaker'),
('instruktor nauki jazdy', 'driving instructor'),
('ekonomista', 'economist'),
('elektryk', 'electrician'),
('inżynier', 'engineer'),
('pracownik na kierowniczym stanowisku', 'executive'),
('rolnik', 'farmer'),
('projektant mody', 'fashion designer'),
('reżyser', 'film director'),
('strażak', 'firefighter'),
('steward/stewardesa', 'flight attendant'),
('osoba zbierająca owoce', 'fruit picker'),
('fryzjer', 'hairdresser'),
('gospodyni domowa', 'housewife'),
('instruktor', 'instructor'),
('informatyk', 'IT specialist'),
('dziennikarz', 'journalist'),
('prawnik', 'lawyer'),
('wykładowca', 'lecturer'),
('bibliotekarz', 'libarian'),
('pan przeprowadzający dzieci przez ulicę', 'lollipop man'),
('menadżer kierownik', 'manager'),
('górnik', 'miner'),
('muzyk', 'musician'),
('pielęgniarka', 'nurse'),
('malarz', 'painter'),
('fotograf', 'photographer'),
('pilot', 'pilot'),
('hydraulik', 'plumber'),
('policjan', 'police officer'),
('polityk', 'politician'),
('lisotonosz', 'postman'),
('osycholog', 'psychologist'),
('recepcjonista', 'receptionist'),
('przedstawiciel handlowy', 'sales representative/sales rep'),
('naukowiec', 'scientist'),
('sekretarz', 'secretary'),
('pracownik ochrony', 'security guard'),
('sprzedawca', 'shop assistant'),
('sklepikarz', 'shopkeeper'),
('makler giełdowy', 'stock broker'),
('chirurg', 'surgeon'),
('krawiec męski', 'tailor'),
('taksówkarz', 'taxi driver'),
('nauczyciel', 'teacher'),
('kontroler biletów', 'ticker inspector'),
('przewodnik', 'tour guide'),
('tłumacz', 'translator'),
('agent biura podróży', 'travel agent'),
('prezenter tv', 'TV presenter'),
('weterynarz', 'vet'),
('kelner', 'waiter'),
('kelnerka', 'waitress'),
('źle płatny', 'badly-paid'),
('pełnoetatowy', 'full-time'),
('fizyczny', 'manual'),
('w niepełnym wymiarze godzin', 'part-time'),
('stały', 'permanent'),
('tymczasowy', 'temporary'),
('dobrze płatny', 'well-paid'),
('osoba starająca się o pracę', 'applicant'),
('kandydat', 'candidate'),
('odpowiedni kandydant', 'suitable candidate'),
('umowa o pracę', 'employment contract'),
('doświadczenie', 'experience'),
('formularz', 'form'),
('formularz podania o pracę', 'application form'),
('praca', 'job'),
('ogłoszenie o pracę', 'job advertisement'),
('podanie o pracę', 'job application'),
('biuro pośrednictwa pracy', 'job centre'),
('rozmowa kwalifikacyjna', 'job interview'),
('okazja szansa', 'opportunity'),
('dotychczasowe doświadczenie', 'previous experience'),
('kwalifikacje', 'qualification'),
('rekrutacja', 'recruitment'),
('referencje', 'references'),
('umiejętności', 'skill'),
('szkolenie', 'traning'),
('wolna posada wakat', 'vacancy'),
('rekrutować', 'recruit'),
('złożyć podanie o pracę', 'apply for a job'),
('ubiegać się o stanowisko', 'apply for a position'),
('załączyć życiorys', 'enclose a CV'),
('wypełniać formularz', 'fill in a form'),
('znaleźć pracę', 'find work'),
('przeprowadzić rozmowę kwalifikacyjną z kandydatami', 'interview applicants'),
('szukać pracy', 'look for a job'),
('praca wymaga kontaktów z ludźmi', 'the job involves dealing with people'),
('premia', 'bonus'),
('zarobki', 'earnings'),
('wynagrodzenie(opłata) za usługi', 'fee'),
('świadczenia dodatkowe', 'fringe benefits/perks'),
('dochód', 'income'),
('płaca minimalna', 'minimum wage'),
('płaca', 'pay'),
('podwyższka wynagrodzenia', 'pay rise'),
('chorobowe', 'sick pay'),
('emerytura(renta)', 'pension'),
('pensja', 'salary'),
('wynagrodzenie za prace fizyczne', 'wages'),
('zarabiać', 'earn'),
('płacić', 'pay'),
('źle opłacany', 'badly paid'),
('dostać podwyższkę', 'get a pay rise'),
('otrzymać wynagrodzenie za nadgodziny', 'get paid overtime'),
('prospekty rozwoju zawodowego', 'career prospect'),
('termin wykonania', 'deadline'),
('zarządzanie', 'managment'),
('przepracowanie/nadgodziny', 'overwork'),
('odpowiedzialny za kogoś/coś', 'responsible for sb/sth'),
('warunki pracy', 'working conditions'),
('pomagać asystować komuś', 'assist sb'),
('zarządzać', 'manage'),
('pracować w firmie', 'work from a company'),
('pracować nad czymś', 'work on sth'),
('pracować na zmiany', 'work shifts'),
('rozpocząć strajk', 'go on strike'),
('pomagać komuś', 'give sb a hand'),
('wykonywać swoja pracę dobrze', 'do one\'s job well'),
('pracować cały dzień ciężko', 'do a hard day\'s work'),
('pracować z ludźmi', 'deal with people'),
('awansować', 'get promoted'),
('prowadzić działalnośćbe', 'self-employed'),
('urlop/zwolnienie', 'leave'),
('urlop macierzyński', 'maternity leave'),
('być na zwolnieniu lekarskim', 'be odd sick'),
('kolega z pracy', 'workmate'),
('pracodawca', 'employer'),
('peacownik', 'employee'),
('personel', 'staff'),
('zatrudniać', 'employ'),
('zatrudnienie', 'employment'),
('różnorodne/drobne prace na zlecenie', 'odd jobs'),
('zawód', 'profession'),
('kryzys gospodarczy', 'economic crisis'),
('emeryt', 'pensioner'),
('emerytura(okres)', 'retirement'),
('bezrobotny', 'unployed'),
('bezrobocie', 'unemployment'),
('zasiłek dla bezrobotnych', 'unemployment benefit'),
('złożyc rezygnacje', 'resign'),
('odejść na emryture', 'retire'),
('być na zasiłu dla bezrobotnych', 'be on the dole'),
('zwolnić z pracy', 'give the sack'),
('rzucić pracę', 'give up'),
('zbankrutować', 'go bankrupt');

-- --------------------------------------------------------

--
-- Table structure for table `rodzina`
--

CREATE TABLE `rodzina` (
  `id` int(11) NOT NULL,
  `word` varchar(50) DEFAULT NULL,
  `trans` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rodzina`
--
ALTER TABLE `rodzina`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rodzina`
--
ALTER TABLE `rodzina`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
