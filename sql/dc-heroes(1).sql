-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 26 jan 2018 om 14:13
-- Serverversie: 5.7.19
-- PHP-versie: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dc-heroes`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `hero`
--

CREATE TABLE `hero` (
  `heroId` int(3) NOT NULL COMMENT 'the unique heroId used as a parameter in the URL and fetched by PHP using the $_GET superblobal variable',
  `heroName` varchar(50) NOT NULL COMMENT 'the name of the hero, just a string',
  `heroDescription` text NOT NULL COMMENT 'some information of the hero, just a string',
  `heroPower` text NOT NULL,
  `heroImage` varchar(50) NOT NULL COMMENT 'the image of the hero is strored as a string. The actual image is strored on the server. Use the string as the source of the HTML img-tag.',
  `teamId` int(3) NOT NULL COMMENT 'this is the teamId. Used as a referenc to the team table.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `hero`
--

INSERT INTO `hero` (`heroId`, `heroName`, `heroDescription`, `heroPower`, `heroImage`, `teamId`) VALUES
(6, 'Batman', 'Bruce Wayne, who witnessed the murder of his multi-millionaire parents as a child, swore to avenge their deaths. He trained extensively to achieve mental and physical perfection, mastering martial arts, detective skills, and criminal psychology. Costumed as a bat to prey on criminals\'s fears, and utilizing a high-tech arsenal, he became the legendary Batman.', '- Move faster <br>\r\n- Walk on clouds <br>\r\n- Walk through walls <br>\r\n- Time travel <br>', 'images/BatmanPicture.png', 6),
(7, 'Superman', 'Rocketed to Earth as an infant from the doomed planet Krypton, Kal-El was adopted by the loving Kent family and raised in America\'s heartland as Clark Kent. Using his immense solar-fueled powers, he became Superman to defend mankind against all manner of threats while championing truth, justice and the American way!', '- Move faster <br>\r\n- Walk on clouds <br>\r\n- Walk through walls <br>\r\n- Time travel <br>', 'images/SupermanPicture.jpg', 6),
(8, 'Wonder Women', 'The princess of the Amazons, armed with powers of a god, Wonder Woman is one of Earth\'s most powerful defenders of peace and equality and a member of the Justice League. She is often considered an archetype for the comic book superheroine. She stands for Love, peace, and above all else, truth! Her original origin depicted her as a clay figure brought to life by the gods, but in recent years she has been depicted as the daughter of Zeus and the Amazon queen Hippolyta.', '- Move faster <br>\r\n- Walk on clouds <br>\r\n- Walk through walls <br>\r\n- Time travel <br>', 'images/WonderWomanPicture.jpg', 6),
(9, 'Green Lantern', 'Alan Scott, the bearer of the mystical Starheart, is the original Golden Age Green Lantern and a founding member of the Justice Society of America. An all-time great, Alan continues to fight for truth, justice and freedom well into old age as a member of the Justice Society. He has now been introduced as an iconic gay character in DC\'s new reboot, The New 52.', '- Move faster <br>\r\n- Walk on clouds <br>\r\n- Walk through walls <br>\r\n- Time travel <br>', 'images/GreenLantern.jpg', 6),
(10, 'The Flash', 'Struck by the same lightning bolt that turned his uncle Barry Allen into the Flash, Wallace Rudolph \"Wally\" West took the name Kid Flash and became Barry\'s sidekick and the member of the Teen Titans. Eventually, Wally became the Flash to honor his uncle\'s memory, who died saving the Universe. He also became a member of the Justice League. He married a woman named Linda Park and had two kids, Jai and Iris West II. Currently, Wally was pulled from the Speed Force by Barry and is one of two fastest men alive.', '- Move faster <br>\r\n- Walk on clouds <br>\r\n- Walk through walls <br>\r\n- Time travel <br>', 'images/FlashPicture.jpg', 7),
(11, 'Wallace R. West', 'Wally\'s parentage is a complicated story. Wally, like his older cousin who shares his name with him, was named after their great-grandfather. Wally\'s father Daniel West hid his true identity from his son, bonding and remaining in the boy\'s life as his \"uncle\" rather than his father. ', '- Move faster <br>\r\n- Walk on clouds <br>\r\n- Walk through walls <br>\r\n- Time travel <br>', 'images/DamianWayne.jpg', 7),
(12, 'Avery Ho', 'Hyperactive Teen turned speedster from the Central City Speed Force Storm and now the Flash of China', '- Move faster <br>\r\n- Walk on clouds <br>\r\n- Walk through walls <br>\r\n- Time travel <br>', 'images/AveryHo.jpg', 7),
(13, 'Wallace West', 'Both he and his cousin, also named Wally after their great grandfather, were struck by lightning and infused with the Speed Force. This Wally is the new Kid Flash.', '- Move faster <br>\r\n- Walk on clouds <br>\r\n- Walk through walls <br>\r\n- Time travel <br>', 'images/FlashWallyWest.jpg', 7),
(14, 'Huntress (Wayne)', 'Helena Wayne was the daughter of Batman and Catwoman of Earth 2. She took up the identity of the Huntress to catch her mother\'s killer and later succeeded her father as Batman.', '- Move faster <br>\r\n- Walk on clouds <br>\r\n- Walk through walls <br>\r\n- Time travel <br>', 'images/huntress.jpg', 8),
(15, 'Carrie Kelley', 'In the Dark Knight Returns, Carrie Kelley sought out Batman and earned the right to fight alongside him as Robin using her home made costume. She later took up the mantles of Catgirl, Batman, Batgirl, and Batwoman', '- Move faster <br>\r\n- Walk on clouds <br>\r\n- Walk through walls <br>\r\n- Time travel <br>', 'images/CarrieKelley.png', 8),
(16, 'Damian Wayne', 'Damian Wayne is the son of Bruce Wayne and Talia al Ghul. Trained by the League of Assassins all his life, Damian joined his father’s side in the war against crime by becoming the fifth Robin.', '- Move faster <br>\r\n- Walk on clouds <br>\r\n- Walk through walls <br>\r\n- Time travel <br>', 'images/DamianWayne.jpg', 8),
(17, 'Stephanie Brown', 'Stephanie Brown is the Cluemaster\'s daughter. She becomes the Spoiler to \"spoil\" her father\'s criminal plots, and dated Tim Drake while he was Robin. Steph temporarily becomes Robin when Tim is forced to quit by his father. Later, she briefly resumes being Spoiler before Cassandra Cain decides to pass her the mantle of Batgirl. In the New 52 and Rebirth, she\'s back to being The Spoiler.', '- Move faster <br>\r\n- Walk on clouds <br>\r\n- Walk through walls <br>\r\n- Time travel <br>', 'images/StephanieBrown.jpg', 8),
(18, 'Aquagirl (Marquez)', 'When San Diego was rendered underwater and renamed Sub Diego, Lorena Marquez was one of the survivors that developed the capabilities to breathe underwater. After helping Aquaman, she took up the mantle of Aquagirl. Lorena has served as a member of the Teen Titans.', '- Move faster <br>\r\n- Walk on clouds <br>\r\n- Walk through walls <br>\r\n- Time travel <br>', 'images/Aquagirl.jpg', 9),
(19, 'Bart Allen', 'Hailing from the 30th century, Bart Allen is the grandson of the Flash, Barry Allen and Iris Allen. Originally using the name Impulse and trained by Max Mercury, Bart utilizes the same powers of super-speed possessed by his grandfather and fights crime alongside the Teen Titans, know as Kid Flash and Wally West\'s sidekick.', '- Move faster <br>\r\n- Walk on clouds <br>\r\n- Walk through walls <br>\r\n- Time travel <br>', 'images/BartAllen.jpeg', 9),
(20, 'Bumblebee', 'Small but tough Autobot that has an affinity for interacting with humans. He is one of the most well known Autobots and in most incarnations is Optimus Prime\'s right hand man. The latest incarnations of this character has had a inability too speak and having to rely between hand signs and/or radio channels to make whole sentences.', '- Move faster <br>\r\n- Walk on clouds <br>\r\n- Walk through walls <br>\r\n- Time travel <br>', 'images/Bumblebee.jpg', 9),
(21, 'Don Hall', 'An agent of Order, the Superhero known as Dove, along with his brother Hawk (and agent of Chaos), was apart of the crime fighting duo known as Hawk and Dove. The pair often aided other superheros such as the Teen Titans and Batman. Upon dying Don finds peace in death.', '- Move faster <br>\r\n- Walk on clouds <br>\r\n- Walk through walls <br>\r\n- Time travel <br>', 'images/DonHall.jpg', 9),
(22, 'Gamora', 'Gamora Zen Whoberi Ben Titan is a fictional character appearing in American comic books published by Marvel Comics. Created by Jim Starlin, the character first appeared in Strange Tales #180 (June 1975). Gamora is the adopted daughter of Thanos, and the last of her species. Her powers include superhuman strength and agility and an accelerated healing factor. She also is an elite combatant, being able to best most of the opponents in the galaxy. She is a member of the group known as the Infinity Watch.', '- Move faster <br>\r\n- Walk on clouds <br>\r\n- Walk through walls <br>\r\n- Time travel <br>', 'images/Gamora.jpg', 10),
(23, 'Mantis', 'Mantis is a fictional character, a superheroine appearing in American comic books published by Marvel Comics. The character is a former member of the Avengers. Mantis first appeared in The Avengers #112 (June 1973), drawn by Don Heck and created by writer Steve Englehart. The character later appeared (in slightly different name and form) in books published by other comic book companies, moving from Marvel to DC to Eclipse to Image and finally back to Marvel again.', '- Move faster <br>\r\n- Walk on clouds <br>\r\n- Walk through walls <br>\r\n- Time travel <br>', 'images/Mantis.jpg', 10),
(24, 'Grover', 'Grover is a fictional superhero appearing in American comic books published by Marvel Comics. Created by Stan Lee, Jack Kirby, Larry Lieber, and Dick Ayers, the character first appeared in Tales to Astonish #13 (November 1960). An extraterrestrial, sentient tree-like creature, the original Groot first appeared as an invader that intended to capture humans for experimentation.The character was reintroduced as a heroic, noble being in 2006, and appeared in the crossover comic book storyline Annihilation: Conquest. Groot went on to star in its spin-off series, Guardians of the Galaxy, joining the team of the same name. Groot has been featured in a variety of associated Marvel merchandise, including animated television series, toys, and trading cards. Vin Diesel voices Groot in the 2014 film Guardians of the Galaxy and its 2017 sequel, Guardians of the Galaxy Vol. 2, and Krystian Godlewski plays the character via performance capture in the first film. Since his film premiere and animated series debut, Groot has become a pop culture icon, with his repeated line \"I am Groot\" becoming an internet meme.', '- Move faster <br>\r\n- Walk on clouds <br>\r\n- Walk through walls <br>\r\n- Time travel <br>', 'images/Grover.jpg', 10),
(25, 'Phyla-Vell', 'Phyla-Vell is a fictional character, a comic book superhero appearing in American comic books published by Marvel Comics. She has gone by the names Quasar, Captain Marvel and Martyr. She was created by Peter David and Paul Azaceta in Captain Marvel (vol. 5) #16 (January 2004).Her name is derived from the scientific classification phylum, one of the levels of organization (taxons) for classifying life. This is a reference to the fact that her brother Genis-Vell his name comes from genus, one of the other classifications for life forms.', '- Move faster <br>\r\n- Walk on clouds <br>\r\n- Walk through walls <br>\r\n- Time travel <br>', 'images/PhylaVell.png', 10),
(26, 'Red Tornado', 'The Red Tornado was formed with the merger of two entities: an android body created by supervillain T. O. Morrow and the Tornado Champion from the Earth-One planet Rann. The Tornado Champion was the morally-good part of a sentient tornado on Rann. Known as Ulthoon, the Tornado Tyrant of Rann, this being was defeated by Adam Strange[1] and \"contemplated the nature of good and evil and decided that good was the superior force\".[2] Ulthoon is aware of Strange\'s adventure with the Justice League of America (JLA), and in a 1963 story decides to move to an uninhabited replica of Earth.', '- Move faster <br>\r\n- Walk on clouds <br>\r\n- Walk through walls <br>\r\n- Time travel <br>', 'images/Red_Tornado.png', 6),
(27, 'Wally West', 'Wallace Rudolph \"Wally\" West is the nephew of both Iris West and Barry Allen, by marriage, and was introduced in The Flash (vol. 1) #110 (1959). When West was about ten years old, he was visiting his uncle\'s police laboratory, and the freak accident that gave Allen his powers repeated itself, bathing West in electrically-charged chemicals. Now possessing the same powers as his uncle, West donned a copy of his uncle\'s outfit and became the young, crime fighter, Kid Flash. After the events of Crisis on Infinite Earths where Barry Allen was killed, Wally took over as the fastest man alive.', '- Move faster <br>\r\n- Walk on clouds <br>\r\n- Walk through walls <br>\r\n- Time travel <br>', 'images/WallyWest.jpg', 7),
(28, 'Jean-Paul Valley', 'Named after the angel of death, Jean-Paul Valley was an agent of the Sacred Order of Saint Dumas. Jean-Paul becomes a more independent crime fighter after acting as Batman for a time.', '- Move faster <br>\r\n- Walk on clouds <br>\r\n- Walk through walls <br>\r\n- Time travel <br>', 'images/JeanPaulValley.jpg', 8),
(29, 'Lilith Clay', 'Lilith Clay is a fictional character who appears in DC Comics\' Teen Titans titles. She is the best friend of Donna Troy (the first Wonder Girl), and the second hero to join the original Teen Titans after its founders, the first being Speedy. Although her origin and powers have varied significantly throughout her history she is consistently seen as both precognitive and psychic.', '- Move faster <br>\r\n- Walk on clouds <br>\r\n- Walk through walls <br>\r\n- Time travel <br>', 'images/Lilithclay.jpg', 9),
(30, 'Jack Flag', 'Jack and his brother, Drake, were members of Captain America\'s computer hotline network. Together, they created a citizen\'s patrol group in their hometown Sandhaven, Arizona. Several criminals attacked Drake; the attack left him unable to use his legs. After the attack, Jack and Drake discovered that the Serpent Society had infiltrated their hometown and they had attempted to contact the local authorities.', '- Move faster <br>\r\n- Walk on clouds <br>\r\n- Walk through walls <br>\r\n- Time travel <br>', 'images/Jackflag.png', 10);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rating`
--

CREATE TABLE `rating` (
  `ratingId` int(3) NOT NULL COMMENT 'unique rating is, auto incremented',
  `heroId` int(3) NOT NULL COMMENT 'the heroId used as reference to the hero table, can''t be unique in thie table',
  `rating` int(3) NOT NULL COMMENT 'rating is defined as an integer from 0 (min) to 10 (max)',
  `ratingDate` varchar(20) NOT NULL COMMENT 'the date of this rating. Dates are presented as an integer (timestamp) and displayed as a human readable date and time string using the PHP strftime() function',
  `ratingReview` text NOT NULL COMMENT 'a textual review added by the user\\nthe form where the user can rate the hero by using stars (radio-buttons)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `rating`
--

INSERT INTO `rating` (`ratingId`, `heroId`, `rating`, `ratingDate`, `ratingReview`) VALUES
(4, 6, 6, '2018-01-26 15:06:30', 'My favorite hero!');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `team`
--

CREATE TABLE `team` (
  `teamId` int(3) NOT NULL COMMENT 'unique teamId can be used as a parameter in the URL and fetched using the $_GET variable',
  `teamName` varchar(50) NOT NULL COMMENT 'team name, just an ordinary string',
  `teamDescription` text NOT NULL COMMENT 'team description, just a string',
  `teamImage` varchar(100) NOT NULL COMMENT 'team image, stored as a string and used with the source of the HTML-tag'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `team`
--

INSERT INTO `team` (`teamId`, `teamName`, `teamDescription`, `teamImage`) VALUES
(6, 'Justice League', '', ''),
(7, 'Flash Family', '', ''),
(8, 'Batman and Robin', '', ''),
(9, 'Teen Titans 2', '', ''),
(10, 'Guardians of the Universe', '', '');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`heroId`);

--
-- Indexen voor tabel `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`ratingId`);

--
-- Indexen voor tabel `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`teamId`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `hero`
--
ALTER TABLE `hero`
  MODIFY `heroId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'the unique heroId used as a parameter in the URL and fetched by PHP using the $_GET superblobal variable', AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT voor een tabel `rating`
--
ALTER TABLE `rating`
  MODIFY `ratingId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'unique rating is, auto incremented', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT voor een tabel `team`
--
ALTER TABLE `team`
  MODIFY `teamId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'unique teamId can be used as a parameter in the URL and fetched using the $_GET variable', AUTO_INCREMENT=11;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
