-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Már 16. 10:09
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `idez`
-- CREATE DATABASE `idez`

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eredmenyek`
--

CREATE TABLE `eredmenyek` (
  `id` int(11) NOT NULL,
  `nev` varchar(100) DEFAULT NULL,
  `pont` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `eredmenyek`
--

INSERT INTO `eredmenyek` (`id`, `nev`, `pont`) VALUES
(1, 'asasfdf', 1),
(2, 'bdhfghfghfghfghf', 3),
(3, 'a', 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `idezetek`
--

CREATE TABLE `idezetek` (
  `id` int(11) NOT NULL,
  `kolto` varchar(100) NOT NULL,
  `versz_cim` varchar(100) NOT NULL,
  `versz_reszlet` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `idezetek`
--

INSERT INTO `idezetek` (`id`, `kolto`, `versz_cim`, `versz_reszlet`) VALUES
(46, 'József Attila', 'Tiszta szívvel', 'Nincsen apám, se anyám,\r\nse istenem, se hazám,\r\nse bölcsőm, se szemfedőm,\r\nse csókom, se szeretőm.'),
(47, 'József Attila', 'Születésnapomra', 'Harminckét éves lettem én -\r\nmeglepetés e költemény\r\ncsecse\r\nbecse...'),
(48, 'Ady Endre', 'Őrizem a szemed', 'Már vénülő kezemmel\r\nFogom meg a kezedet,\r\nMár vénülő szememmel\r\nŐrizem a szemedet.'),
(49, 'Ady Endre', 'Sem utódja, sem boldog őse...', 'Sem utódja, sem boldog őse,\r\nSem rokona, sem ismerőse\r\nNem vagyok senkinek,\r\nNem vagyok senkinek.'),
(50, 'József Attila', 'Mama', 'Már egy hete csak a mamára\r\ngondolok mindíg, meg-megállva.\r\nNyikorgó kosárral ölében,\r\nment a padlásra, ment serényen.'),
(52, 'Petőfi Sándor', 'Szeptember végén', 'Még nyílnak a völgyben a kerti virágok,\r\nMég zöldel a nyárfa az ablak előtt,\r\nDe látod amottan a téli világot?\r\nMár hó takará el a bérci tetőt.'),
(54, 'Petőfi Sándor', 'Szeptember végén', 'Még nyílnak a völgyben a kerti virágok,\r\nMég zöldel a nyárfa az ablak előtt,\r\nDe látod amottan a téli világot?\r\nMár hó takará el a bérci tetőt.'),
(56, 'Petőfi Sándor', 'Az álom...', 'Az álom\r\nA természetnek legszebb adománya.\r\nMegnyílik ekkor vágyink tartománya.\r\nMit nem lelünk meg ébren a világon.'),
(57, 'József Attila', 'Óh szív! Nyugodj!', 'Fegyverben réved fönn a téli ég,\r\nkemény a menny és vándor a vidék,\r\nhalkul a hó, megáll az elmenő,\r\nlehellete a lobbant keszkenő.'),
(59, 'József Attila', 'A Dunánál', 'A rakodópart alsó kövén ültem,\r\nnéztem, hogy úszik el a dinnyehéj.'),
(60, 'József Attila', 'Gyermekké tettél', 'Gyermekké tettél. Hiába növesztett\r\nharminc csikorgó télen át a kín.\r\nNem tudok járni s nem ülhetek veszteg.\r\nHozzád vonszolnak, löknek tagjaim.'),
(61, 'Ady Endre', 'Elbocsátó, szép üzenet', 'Törjön százegyszer százszor-tört varázs:\r\nHát elbocsátlak még egyszer, utólszor,\r\nHa hitted, hogy még mindig tartalak,\r\nS hitted, hogy kell még elbocsáttatás.'),
(62, 'József Attila', 'Amit szivedbe rejtesz', 'Amit szivedbe rejtesz,\r\nszemednek tárd ki azt;\r\namit szemeddel sejtesz,\r\nsziveddel várd ki azt.'),
(63, 'Petőfi Sándor', 'Itt van az ősz, itt van ujra...\r\n\r\n', 'Itt van az ősz, itt van ujra,\r\nS szép, mint mindig, énnekem.\r\nTudja isten, hogy mi okból\r\nSzeretem? de szeretem.'),
(64, 'Petőfi Sándor', 'A XIX. század költői', 'Ne fogjon senki könnyelműen\r\nA húrok pengetésihez!\r\nNagy munkát vállal az magára,\r\nKi most kezébe lantot vesz.\r\nHa nem tudsz mást, mint eldalolni\r\nSaját fájdalmad s örömed:\r\nNincs rád szüksége a világnak,\r\nS azért a szent fát félrete'),
(66, 'Juhász Gyula', 'Emlék', 'A szálló évekkel\r\nSok minden megy el,\r\nDe a szív, a koldus,\r\nTovább énekel.'),
(67, 'Ady Endre', 'Az én menyasszonyom', 'Mit bánom én, ha utcasarkok rongya,\r\nDe elkisérjen egész a síromba.'),
(68, 'Ady Endre', 'Sorsunk', 'Van az életben egy-egy pillanat,\r\nErősnek hisszük szerfelett magunkat.\r\nLelkünk repül, száll, magával ragad,\r\nBús aggodalmak mindhiába húznak.'),
(69, 'Juhász Gyula', 'Sorsunk', 'Van az életben egy-egy pillanat,\r\nErősnek hisszük szerfelett magunkat.\r\nLelkünk repül, száll, magával ragad,\r\nBús aggodalmak mindhiába húznak.'),
(71, 'Ady Endre', 'Tüzes seb vagyok', 'Tüzes, sajgó seb vagyok, égek,\r\nKínoz a fény és kínoz a harmat,\r\nTéged akarlak, eljöttem érted,\r\nTöbb kínra vágyom: téged akarlak.'),
(72, 'Petőfi Sándor', 'Egy gondolat bánt engemet', 'Egy gondolat bánt engemet:\r\nÁgyban, párnák közt halni meg!\r\nLassan hervadni el, mint a virág,\r\nAmelyen titkos féreg foga rág;\r\nElfogyni lassan, mint a gyertyaszál,\r\nMely elhagyott, üres szobában áll.'),
(73, 'Petőfi Sándor', 'Ha férfi vagy, légy férfi...', 'Ha férfi vagy, légy férfi,\r\nS ne hitvány gyönge báb,\r\nMit kény és kedv szerint lök\r\nA sors idébb-odább.'),
(74, 'Juhász Gyula', 'Milyen volt...', 'Milyen volt szőkesége, nem tudom már,\r\nDe azt tudom, hogy szőkék a mezők,\r\nHa dús kalásszal jő a sárguló nyár\r\nS e szőkeségben újra érzem őt.'),
(75, 'Juhász Gyula', 'Emlék', 'A szálló évekkel\r\nSok minden megy el,\r\nDe a szív, a koldus,\r\nTovább énekel.'),
(76, 'József Attila', 'Altató', 'Lehunyja kék szemét az ég,\r\nlehunyja sok szemét a ház,\r\ndunna alatt alszik a rét -\r\naludj el szépen, kis Balázs.'),
(77, 'Petőfi Sándor', 'Egy gondolat bánt engemet', 'Egy gondolat bánt engemet:\r\nÁgyban, párnák közt halni meg!\r\nLassan hervadni el, mint a virág,\r\nAmelyen titkos féreg foga rág;\r\nElfogyni lassan, mint a gyertyaszál,\r\nMely elhagyott, üres szobában áll.'),
(78, 'Petőfi Sándor', 'Ha férfi vagy, légy férfi...', 'Ha férfi vagy, légy férfi,\r\nS ne hitvány gyönge báb,\r\nMit kény és kedv szerint lök\r\nA sors idébb-odább.'),
(79, 'Ady Endre', 'Karácsony', 'Harang csendül,\r\nÉnek zendül,\r\nMessze zsong a hálaének,\r\nAz én kedves kis falumban\r\nKarácsonykor\r\nMagába száll minden lélek.'),
(80, 'Vörösmarty Mihály', 'Szózat', 'Hazádnak rendületlenűl\r\nLégy híve, oh magyar;\r\nBölcsőd az s majdan sírod is,\r\nMely ápol s eltakar.'),
(81, 'Juhász Gyula', 'Szerelem?', 'Én nem tudom, mi ez, de jó nagyon,\r\nElrévedezni némely szavadon,\r\nMint alkonyég felhőjén, mely ragyog\r\nÉs rajta túl derengő csillagok.'),
(82, 'Petőfi Sándor', 'A farkasok dala', 'Süvölt a zivatar\r\nA felhős ég alatt,\r\nA tél iker fia,\r\nEső és hó szakad.'),
(83, 'Juhász Gyula', 'Emlék', 'Egy arc fölbukkan néha a homályból,\r\nHová eldugta őt a feledés,\r\nEgy régi társnak arca, aki bátor\r\nTekintetével a lelkedbe néz.'),
(85, 'Vörösmarty Mihály', 'Ábránd', 'Szerelmedért\r\nFeldúlnám eszemet\r\nÉs annak minden gondolatját,\r\nS képzelmim édes tartományát;\r\nEltépném lelkemet\r\nSzerelmedért.'),
(86, 'Petőfi Sándor', 'Ha én kedvesemről gondolkodom...', 'Ha én kedvesemről gondolkodom,\r\nEgy-egy virág minden gondolatom,\r\nGondolkodom rólad, szép kedvesem,\r\nEzt teszem napestig, egyebet se'),
(87, 'Vörösmarty Mihály', 'Fekete szem', 'Szép a kék szem, nem tagadom,\r\nÉn a kékre sem haragszom,\r\nDe a barna szem sugára\r\nEmlékeztet éjszakára,\r\nA sötétes éjszakára,\r\nBoldog szeretők napjára!'),
(88, 'Vörösmarty Mihály', 'Zrinyi a költő', '\"E lantot, koszorútlant bár Violája kezétől,\r\nMely Szigetet zengé s hősei áldozatát;\r\nÉs e rettenetes szablyát, sok erősnek ölőjét...'),
(89, 'Vörösmarty Mihály', 'A szerelmes', 'Hah kié vagy most, ki csak értem égél,\r\nÉletem, kedvem s örömim reménye?\r\nMért remegsz bágyadt szemeimbe nézni?\r\nSzómra felelni?'),
(90, 'Vörösmarty Mihály', 'A hitlen', 'Láttam, megindult a tavasz, illatos\r\nSzellő kerengett zöldesedő nyomán,\r\nReszketve megnyiltak virági\r\nHarmatosan, s ragyogó kebellel.'),
(91, 'Vörösmarty Mihály', 'A vén cigány', 'Húzd rá cigány, megittad az árát,\r\nNe lógasd a lábadat hiába;\r\nMit ér a gond kenyéren és vizen,\r\nTölts hozzá bort a rideg kupába.'),
(92, 'Vörösmarty Mihály', 'A magyartalan hölgyhöz', 'Mert szép vagy, kellemid\r\nVarázsát bámulom;\r\nMert jó vagy, tisztelet\r\nDíjával áldozom...'),
(95, 'Juhász Gyula', 'Stanza a Tiszánál', 'Elnézem őt, a régesrégi társat,\r\nKi mindig szótlan és lomhán halad,\r\nÓ, láttam véle együtt annyi tájat\r\nA fakó, bágyadt honi ég alatt\r\nÉs elmaradtak ők, a messze tájak...'),
(96, 'Juhász Gyula', 'Vidéki rejtekben', 'Csönd és magány révében hallgatom,\r\nMiket susog a hírek rádiója,\r\nSzelíd akácra nyílik ablakom,\r\nAz utcán egy talicska megy kocogva.'),
(97, 'Juhász Gyula', 'Régi nyári éj', 'Fekete jegenyék között\r\nPirosan kelt a nyári hold,\r\nA táj bársonyba öltözött,\r\nA Tisza csöndben szunditott.'),
(98, 'Juhász Gyula', 'Mindenkiért', 'Ki eddig árva egymagamba rogytam\r\nFenséges és szemérmes bánatomban,\r\nMa búmat, mint szent zászlót lengetem meg\r\nTestvéreimnek, sok, sok ezredemnek!'),
(99, 'Juhász Gyula', 'Életérzés', 'Már annyiszor döbbentem meg halálos\r\nMély döbbenéssel a csodán, hogy élek,\r\nHogy én vagyok e különös, talányos,\r\nBús és gúnyos valaki, aki évek\r\nHosszú során át megy az ismeretlen\r\nÖrök sötétbe és közben dalolgat,\r\nAkit elhagytak ifjúság, szerelmek...'),
(100, 'Juhász Gyula', 'Édesanyám', 'A Tisza partján él egy özvegyasszony;\r\nSzeméből könnyet egyet se fakasszon\r\nA nyomorúság, a gond és a bánat:\r\nÓ áldd meg Isten, édes jó anyámat!'),
(101, 'Radnóti Miklós', 'Sirató', 'Az öregasszonyban, akinek házánál élek,\r\nazt hiszem tegnap meghalt az asszony\r\néjjel, mert reggelre kelve teli torokkal\r\nénekelt, sokáig állva az ágya fölött s\r\nmost mint a gyerek, loppal jár az ünnepes...'),
(102, 'Radnóti Miklós', 'Táj, szeretőkkel', 'Tegnap még sínek mellett álltam\r\na páristjárt fiatal magyarokkal,\r\nde most már egyedül élek egy lengő\r\npipaccsal a lábam előtt és a lányok\r\nmesszi dalával az alkonyodó...'),
(103, 'Radnóti Miklós', 'Szerelmes játék', 'Ma reggel vakondot fogott a kedves,\r\nhogy járt a réten a túrás fölött;\r\ncsak meséli most fekete, prémes\r\ncsudáját tenyerének s földi\r\nillatokkal ideadja nékem\r\na kezét bolondos szagolásra...'),
(104, 'Radnóti Miklós', 'A mécsvirág kinyílik', 'A mécsvirág kinyílik\r\ns a húnyó láthatárnak\r\nkönyörg a napraforgó;\r\na tücskök már riszálnak,\r\nodvában dong a dongó\r\ns álmos kedvét a bársony\r\nestében égre írta\r\negy röppenő pacsirta...'),
(105, 'Radnóti Miklós', 'Békesség', 'Te, ez olyan jó, - ez a matató\r\nhallgató, szomorú játék,\r\néjjeli játék szomorú szivvel\r\nés szemekkel, magamellé\r\nszeliden, hosszan odaejtett...'),
(106, 'Radnóti Miklós', 'Nem tudhatom...', 'Nem tudhatom, hogy másnak e tájék mit jelent,\r\nnekem szülőhazám itt e lángoktól ölelt\r\nkis ország, messzeringó gyerekkorom világa.\r\nBelőle nőttem én, mint fatörzsből gyönge ága\r\ns remélem, testem is majd e földbe süpped el.'),
(107, 'Radnóti Miklós', 'Mint észrevétlenül', 'Mint észrevétlenül álomba hull az ember,\r\núgy hull az ifjukorból a férfikorba át;\r\nmár múltja van s leül szemközt komoly szeszekkel\r\ns apányi lett körötte már egyre több barát.'),
(108, 'Radnóti Miklós', 'Október, délután', 'Mellettem alszik a tölgy alatt Fanni,\r\ns mióta alszik, annyi makk hullt a fáról,\r\nhogy minden jámbor lombbal veszekszem érte, -\r\nmikor átkarolt, kérte, őrizzem pihenését.'),
(109, 'Radnóti Miklós', 'Huszonkilenc év', 'Huszonkilenc év! most csütörtökön\r\nvolt egy hete, hogy ennyi lettem;\r\nverset szoktam írni én ilyenkor,\r\nmár évek óta verssel ünnepeltem\r\ne szörnyü fordulót, de aznap\r\nnem békitett meg semmisem,\r\nnem maradt meg semmisem vigasznak.'),
(110, 'Radnóti Miklós', 'Pogány köszöntő', 'Nézd! dércsipte fáink megőszült\r\nfején ül most a szél és lengő\r\nharangú tornyok között csak\r\nmegkondúlnak a jámbor imák!');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `eredmenyek`
--
ALTER TABLE `eredmenyek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `idezetek`
--
ALTER TABLE `idezetek`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `eredmenyek`
--
ALTER TABLE `eredmenyek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `idezetek`
--
ALTER TABLE `idezetek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
