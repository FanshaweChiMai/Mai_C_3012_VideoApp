-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 24, 2018 at 02:02 AM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rokuVideos`
--

-- --------------------------------------------------------

--
-- Table structure for table `par_mpaa`
--

CREATE TABLE `par_mpaa` (
  `par_mpaa_id` int(11) NOT NULL,
  `parents_id` int(11) NOT NULL,
  `mpaa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `comments_id` int(10) UNSIGNED NOT NULL,
  `comments_auth` varchar(125) DEFAULT NULL,
  `comments_copy` text NOT NULL,
  `comments_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comments_movie` int(11) NOT NULL,
  `comments_rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`comments_id`, `comments_auth`, `comments_copy`, `comments_date`, `comments_movie`, `comments_rating`) VALUES
(1, NULL, 'Loved it. Chris Pratt is my hero! I LOVE YOU STAR LORD!!', '2018-03-26 19:08:41', 1, 5),
(2, NULL, 'Not quite as good as the first Guardians, but still WAY better that any DC movie... ', '2018-03-26 19:09:57', 1, 4),
(3, NULL, 'It sucked.', '2018-04-01 14:54:32', 1, 1),
(4, NULL, 'It was amazing. I really liked this way better than any DC movie that\'s ever been made, EVER.\n\nCuz DC movies are garbage.', '2018-04-01 14:55:29', 1, 3),
(5, NULL, 'I thought Logan was great.THIS is the way you do comic book dystopia.', '2018-04-01 14:56:55', 3, 4),
(6, NULL, 'Way too violent. I thought Hugh Jackman would at least do a song and dance, but was VERY disappointed.', '2018-04-01 14:57:35', 3, 1),
(7, NULL, 'OMG i can\'t get enough Deadpool.. what a great movie', '2018-04-01 15:11:30', 7, 5),
(8, NULL, 'I really liked this. Prof X made me sad tho. What a way to go...', '2018-04-01 15:51:58', 3, 4),
(9, NULL, 'Amazing', '2018-04-19 23:12:10', 2, 4),
(10, NULL, 'NOOOOOOO', '2018-04-23 21:54:58', 1, 3),
(11, NULL, 'NOOOOOOOOO ', '2018-04-23 21:56:22', 1, 3),
(12, NULL, 'yessss', '2018-04-23 22:02:51', 1, 4),
(13, NULL, 'lkiinefdrgrd', '2018-04-23 22:27:37', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_director`
--

CREATE TABLE `tbl_director` (
  `director_id` int(10) UNSIGNED NOT NULL,
  `director_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_director`
--

INSERT INTO `tbl_director` (`director_id`, `director_name`) VALUES
(1, 'Ava DuVernay'),
(2, 'Lee Unkrich'),
(3, 'Travis Knight'),
(4, 'Dong-hyuk Hwang'),
(5, 'Ron Clements'),
(6, 'Takashi Yamazaki'),
(7, 'Akira Nagai'),
(8, 'Toshio Lee'),
(9, 'Hayao Miyazaki'),
(10, 'Andrew Stanton'),
(11, 'Ryuichi Inomata'),
(12, 'Ryan Coogler'),
(13, 'Nattawut Poonpiriya'),
(14, 'Denis Villeneuve'),
(15, 'Kay Nguyen'),
(16, 'Christopher Nolan'),
(17, 'Dae-min Park'),
(18, 'Tetsuya Nakashima'),
(19, 'Rian Johnson'),
(20, 'Hong-seon Kim'),
(21, 'Michael Gracey');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` int(10) UNSIGNED NOT NULL,
  `genre_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Animation'),
(4, 'Comedy'),
(5, 'Crime'),
(6, 'Drama'),
(7, 'Historical'),
(8, 'Horror'),
(9, 'Musical'),
(10, 'Science-Fiction'),
(11, 'Romance'),
(12, 'Thriller'),
(13, 'Mystery'),
(14, 'Family'),
(15, 'Fantasy');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kids`
--

CREATE TABLE `tbl_kids` (
  `kids_id` int(10) UNSIGNED NOT NULL,
  `kids_title` varchar(100) NOT NULL,
  `kids_images` varchar(150) NOT NULL,
  `kids_year` int(11) NOT NULL,
  `kids_run` varchar(100) NOT NULL,
  `kids_videos` varchar(150) NOT NULL,
  `kids_desc` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_kids`
--

INSERT INTO `tbl_kids` (`kids_id`, `kids_title`, `kids_images`, `kids_year`, `kids_run`, `kids_videos`, `kids_desc`) VALUES
(1, 'A Wrinkle in Time', 'images/awrinkleintime.jpg', 2018, '1h 49m', 'videokids/awrinkleintime.mp4', '\r\nFollowing the discovery of a new form of space travel as well as Meg\'s father\'s disappearance, she, her brother, and her friend must join three magical beings - Mrs. Whatsit, Mrs. Who, and Mrs. Which - to travel across the universe to rescue him from a terrible evil.'),
(2, 'Coco', 'images/coco.jpg', 2017, '1h 45m', 'videokids/coco.mp4', 'Despite his family\'s baffling generations-old ban on music, Miguel dreams of becoming an accomplished musician like his idol, Ernesto de la Cruz. Desperate to prove his talent, Miguel finds himself in the stunning and colorful Land of the Dead following a mysterious chain of events. Along the way, he meets charming trickster Hector, and together, they set off on an extraordinary journey to unlock the real story behind Miguel\'s family history.'),
(3, 'Kubo and the Two Strings', 'images/kubo.jpg', 2016, '1h 41m', 'videokids/kubo.mp4', 'Kubo lives a quiet, normal life in a small shoreside village until a spirit from the past turns his life upside down by re-igniting an age-old vendetta. This causes all sorts of havoc as gods and monsters chase Kubo who, in order to survive, must locate a magical suit of armor once worn by his late father, a legendary Samurai warrior.'),
(4, 'Miss Granny', 'images/missgranny.jpg', 2014, '2h 4m', 'videokids/missgranny.mp4', 'A 74-year-old widow realizes she is becoming a burden on her family. She mysteriously regains her physical appearance from the age of 20.'),
(5, 'Moana', 'images/moana.jpg', 2016, '1h 47m', 'videokids/moana.mp4', 'Moana Waialiki is a sea voyaging enthusiast and the only daughter of a chief in a long line of navigators. When her island\'s fishermen can\'t catch any fish and the crops fail, she learns that the demigod Maui caused the blight by stealing the heart of the goddess, Te Fiti. The only way to heal the island is to persuade Maui to return Te Fiti\'s heart, so Moana sets off on an epic journey across the Pacific. The film is based on stories from Polynesian mythology.'),
(6, 'Stand By Me, Doraemon', 'images/standbyme.jpg', 2014, '1h 35m', 'videokids/standbyme.mp4', 'In the suburbs of Tokyo some time ago, there lived a clumsy boy about 10 years old. There appeared in front of him named Sewashi, Nobita\'s descendant of four generations later from the 22nd century, and Doraemon, a 22nd century cat-type caretaker robot who helps people with its secret gadgets.'),
(7, 'Teiichi : Battle of Supreme High', 'images/teiichibattleofsupremehigh.jpg', 2017, '1h 58m', 'videokids/teiichibattleofsupremehigh.mp4', 'Teiichi dreams of one day being the ruler of his own empire, but to get there he needs to make sure that his candidate for class president at his elite high school wins the election. This is a high school election fought with all the fervor or a nasty, national campaign. Lies, bribery, sabotage and scandal all come into play as the boys fight it out to determine who will be the next class president.'),
(8, 'Time Trip App ', 'images/timetripapp.jpg', 2014, '1h 48m', 'videokids/timetripapp.mp4', 'In 1868, a battle between new government forces and shogunate forces are about to take place in Edo. Katsu Kaishu (Hiroshi Tamaki) wants to avoid useless bloodshed and sends a peace envoy to Takamori Saigo, but Katsu Kaishu is unable to get a response from Takamori Saigo. One day, Katsu Kaishu meets high school teacher Mikako (Satomi Ishihara) and her student Masaya who is captivated by the shogunate.'),
(9, 'My Neighbour Totoro', 'images/totoro.jpg', 1988, '1h 26m', 'videokids/totoro.mp4', 'Two young girls, Satsuki and her younger sister Mei, move into a house in the country with their father to be closer to their hospitalized mother. Satsuki and Mei discover that the nearby forest is inhabited by magical creatures called Totoros (pronounced toe-toe-ro). They soon befriend these Totoros, and have several magical adventures.'),
(10, 'WALL-E', 'images/walle.jpg', 2008, '1h 38m', 'videokids/walle.mp4', 'In a distant, but not so unrealistic, future where mankind has abandoned earth because it has become covered with trash from products sold by the powerful multi-national Buy N Large corporation, WALL-E, a garbage collecting robot has been left to clean up the mess. '),
(11, 'A Tale of Mari and the Three Puppies', 'images/ataleofmariandthreepuppies.jpg', 2007, '2h 4m', 'videokids/ataleofmariandthreepuppies.png', 'A tale of Mari and three puppies is based on a true story. It tells about the situation Mari and her puppies have gone through after a massive destruction brought by an earthquake that striked Japan in October 23, 2004.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kids_director`
--

CREATE TABLE `tbl_kids_director` (
  `kids_director_id` int(10) UNSIGNED NOT NULL,
  `kids_id` int(11) NOT NULL,
  `director_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_kids_director`
--

INSERT INTO `tbl_kids_director` (`kids_director_id`, `kids_id`, `director_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kids_genre`
--

CREATE TABLE `tbl_kids_genre` (
  `kids_genre_id` int(10) UNSIGNED NOT NULL,
  `kids_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_kids_genre`
--

INSERT INTO `tbl_kids_genre` (`kids_genre_id`, `kids_id`, `genre_id`) VALUES
(1, 1, 2),
(2, 1, 10),
(3, 1, 14),
(4, 1, 15),
(5, 2, 2),
(6, 2, 3),
(7, 2, 4),
(8, 2, 9),
(9, 2, 13),
(10, 2, 14),
(11, 2, 15),
(12, 3, 1),
(13, 3, 2),
(14, 3, 3),
(15, 3, 14),
(16, 3, 15),
(17, 4, 4),
(18, 4, 9),
(19, 4, 15),
(20, 5, 2),
(21, 5, 3),
(22, 5, 4),
(23, 5, 9),
(24, 5, 14),
(25, 5, 15),
(26, 6, 3),
(27, 6, 4),
(28, 6, 6),
(29, 6, 10),
(30, 6, 14),
(31, 7, 6),
(32, 8, 6),
(33, 8, 7),
(34, 8, 10),
(35, 9, 3),
(36, 9, 14),
(37, 9, 15),
(38, 10, 2),
(39, 10, 3),
(40, 10, 10),
(41, 10, 14),
(42, 11, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kids_mpaa`
--

CREATE TABLE `tbl_kids_mpaa` (
  `kids_mpaa_id` int(10) UNSIGNED NOT NULL,
  `kids_id` int(11) NOT NULL,
  `mpaa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_kids_mpaa`
--

INSERT INTO `tbl_kids_mpaa` (`kids_mpaa_id`, `kids_id`, `mpaa_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 2),
(4, 4, 2),
(5, 5, 2),
(6, 6, 1),
(7, 7, 2),
(8, 8, 2),
(9, 9, 1),
(10, 10, 1),
(11, 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mpaa`
--

CREATE TABLE `tbl_mpaa` (
  `mpaa_id` int(10) UNSIGNED NOT NULL,
  `mpaa_name` varchar(10) NOT NULL,
  `mpaa_desc` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mpaa`
--

INSERT INTO `tbl_mpaa` (`mpaa_id`, `mpaa_name`, `mpaa_desc`) VALUES
(1, 'G', 'G – General Audiences\r\nAll ages admitted. Nothing that would offend parents for viewing by children.'),
(2, 'PG', 'PG – Parental Guidance Suggested\r\nSome material may not be suitable for children. Parents urged to give \"parental guidance\". May contain some material parents might not like for their young children.'),
(3, 'PG-13', 'PG-13 – Parents Strongly Cautioned\r\nSome material may be inappropriate for children under 13. Parents are urged to be cautious. Some material may be inappropriate for pre-teenagers.'),
(4, 'R', 'R – Restricted\r\nUnder 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them.'),
(5, 'NC-17', 'NC-17 – Adults Only\r\nNo One 17 and Under Admitted. Clearly adult. Children are not admitted.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_parents`
--

CREATE TABLE `tbl_parents` (
  `parents_id` smallint(50) UNSIGNED NOT NULL,
  `parents_title` varchar(100) NOT NULL,
  `parents_images` varchar(150) NOT NULL,
  `parents_year` int(11) NOT NULL,
  `parents_run` varchar(100) NOT NULL,
  `parents_videos` varchar(150) NOT NULL,
  `parents_desc` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_parents`
--

INSERT INTO `tbl_parents` (`parents_id`, `parents_title`, `parents_images`, `parents_year`, `parents_run`, `parents_videos`, `parents_desc`) VALUES
(1, 'Black Panther', 'blackpanther.jpg', 2018, '2h 14m', 'blackpanther.mp4', 'After the events of Captain America: Civil War, King T\'Challa returns home to the reclusive, technologically advanced African nation of Wakanda to serve as his country\'s new leader. However, T\'Challa soon finds that he is challenged for the throne from factions within his own country.'),
(2, 'Bad Genius', 'badgenius.jpg', 2017, '2h 10m', 'badgenius.mp4', 'Lynn, a genius high school student who makes money by cheating tests, receives a new task that leads her to set foot on Sydney, Australia. In order to complete the millions-Baht task, Lynn and her classmates have to finish the international STIC(SAT) exam and deliver the answers back to her friends in Thailand before the exam takes place once again in her home country.'),
(3, 'Blade Runner 2049', 'bladerunner.jpg', 2017, '2h 44m', 'bladerunner.mp4', 'Thirty years after the events of the first film, a new blade runner, LAPD Officer K (Ryan Gosling), unearths a long-buried secret that has the potential to plunge what\'s left of society into chaos. K\'s discovery leads him on a quest to find Rick Deckard (Harrison Ford), a former LAPD blade runner who has been missing for 30 years.'),
(5, 'Co Ba Sai Gon', 'cobasaigon.jpg', 2017, '1h 40m', 'cobasaigon.mp4', 'The re-enactment of a long dress era in the 1960s is thought to be the heyday of traditional Vietnamese costumes. Interwoven into that transformation in the style and style of the ao dai in modern times are told through the story of the character of Ba. '),
(6, 'Dunkirk', 'dunkirk.jpg', 2017, '1h 46m', 'dunkirk.mp4', 'Evacuation of Allied soldiers from the British Empire, and France, who were cut off and surrounded by the German army from the beaches and harbor of Dunkirk, France, between May 26- June 04, 1940, during Battle of France in World War II. '),
(7, 'Seondal : The Man Who Sells the River', 'kimseondal.jpg', 2016, '2h', 'kimseondal.mp4', 'In-hong is drafted into the army by force to fight in China during the Qing Dynasty. During the struggle to survive in the battlefield, he meets Bo-won and Gyeon. Three men return to Korea to find no means to make living, and decide to form a con ring. Their cons range from selling a chicken as phoenix and disguising an ordinary sword as one that belonged to the great Admiral Yi Shun-shin. '),
(8, 'Kokuhaku (Confessions)', 'kokuhaku.jpg', 2010, '1h 46m', 'kokuhaku.mp4', 'A psychological thriller of a grieving mother turned cold-blooded avenger with a twisty master plan to pay back those who were responsible for her daughter\'s death.'),
(9, 'Parasyte Part 1', 'parasyte.jpg', 2014, '1h 49m', 'parasyte.mp4', 'The humanity is suffering from murders all over the globe, called \"Mincemeat murders\". High school student, Izumi Shinichi has a parasite living off him, having replaced his right hand, and he might be the discoverer of truth.'),
(10, 'Star Wars : The Last Jedi', 'starwarsthelastjedi.jpg', 2017, '2h 32m', 'starwarsthelastjedi.mp4', 'Rey develops her newly discovered abilities with the guidance of Luke Skywalker, who is unsettled by the strength of her powers. Meanwhile, the Resistance prepares for battle with the First Order.'),
(11, 'The Chase ', 'thechase.jpg', 2017, '1h 50m', 'thechase.mp4', 'Sim Deok-soo is a grumpy landlord running a run-down apartment complex. Suddenly his tenants begin disappearing under suspicious circumstances. A retired ex-detective shows up, claiming a serial murderer from 30 years back has returned.'),
(12, 'The Greatest Showman', 'thegreatestshowman.jpg', 2017, '1h 45m', 'thegreatestshowman.mp4', 'Orphaned, penniless but ambitious and with a mind crammed with imagination and fresh ideas, the American Phineas Taylor Barnum will always be remembered as the man with the gift to effortlessly blur the line between reality and fiction. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_parents_genre`
--

CREATE TABLE `tbl_parents_genre` (
  `par_genre_id` int(10) UNSIGNED NOT NULL,
  `parents_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_parents_genre`
--

INSERT INTO `tbl_parents_genre` (`par_genre_id`, `parents_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 10),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 2, 12),
(8, 3, 6),
(9, 3, 10),
(10, 3, 12),
(11, 3, 13),
(12, 5, 6),
(13, 6, 1),
(14, 6, 6),
(15, 6, 7),
(16, 6, 12),
(17, 6, 16),
(18, 7, 2),
(19, 7, 4),
(20, 7, 7),
(21, 8, 6),
(22, 8, 12),
(23, 9, 1),
(24, 9, 6),
(25, 9, 8),
(26, 9, 10),
(27, 10, 1),
(28, 10, 2),
(29, 10, 10),
(30, 10, 15),
(31, 11, 6),
(32, 11, 12),
(33, 12, 6),
(34, 12, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_parents_mpaa`
--

CREATE TABLE `tbl_parents_mpaa` (
  `par_mpaa_id` int(10) UNSIGNED NOT NULL,
  `parents_id` int(11) NOT NULL,
  `mpaa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_parents_mpaa`
--

INSERT INTO `tbl_parents_mpaa` (`par_mpaa_id`, `parents_id`, `mpaa_id`) VALUES
(1, 1, 3),
(2, 2, 3),
(3, 3, 4),
(4, 5, 3),
(5, 6, 3),
(6, 7, 2),
(7, 8, 4),
(8, 9, 3),
(9, 10, 3),
(10, 11, 3),
(11, 12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_par_director`
--

CREATE TABLE `tbl_par_director` (
  `par_director_id` int(10) UNSIGNED NOT NULL,
  `parents_id` int(11) NOT NULL,
  `director_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_par_director`
--

INSERT INTO `tbl_par_director` (`par_director_id`, `parents_id`, `director_id`) VALUES
(1, 1, 12),
(2, 2, 13),
(3, 3, 14),
(4, 5, 15),
(5, 6, 16),
(6, 7, 17),
(7, 8, 18),
(8, 9, 6),
(9, 10, 19),
(10, 11, 20),
(11, 12, 21);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `par_mpaa`
--
ALTER TABLE `par_mpaa`
  ADD PRIMARY KEY (`par_mpaa_id`);

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`comments_id`);

--
-- Indexes for table `tbl_director`
--
ALTER TABLE `tbl_director`
  ADD PRIMARY KEY (`director_id`);

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_kids`
--
ALTER TABLE `tbl_kids`
  ADD PRIMARY KEY (`kids_id`);

--
-- Indexes for table `tbl_kids_director`
--
ALTER TABLE `tbl_kids_director`
  ADD PRIMARY KEY (`kids_director_id`);

--
-- Indexes for table `tbl_kids_genre`
--
ALTER TABLE `tbl_kids_genre`
  ADD PRIMARY KEY (`kids_genre_id`);

--
-- Indexes for table `tbl_kids_mpaa`
--
ALTER TABLE `tbl_kids_mpaa`
  ADD PRIMARY KEY (`kids_mpaa_id`);

--
-- Indexes for table `tbl_mpaa`
--
ALTER TABLE `tbl_mpaa`
  ADD PRIMARY KEY (`mpaa_id`);

--
-- Indexes for table `tbl_parents`
--
ALTER TABLE `tbl_parents`
  ADD PRIMARY KEY (`parents_id`);

--
-- Indexes for table `tbl_parents_genre`
--
ALTER TABLE `tbl_parents_genre`
  ADD PRIMARY KEY (`par_genre_id`);

--
-- Indexes for table `tbl_parents_mpaa`
--
ALTER TABLE `tbl_parents_mpaa`
  ADD PRIMARY KEY (`par_mpaa_id`);

--
-- Indexes for table `tbl_par_director`
--
ALTER TABLE `tbl_par_director`
  ADD PRIMARY KEY (`par_director_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `par_mpaa`
--
ALTER TABLE `par_mpaa`
  MODIFY `par_mpaa_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `comments_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_director`
--
ALTER TABLE `tbl_director`
  MODIFY `director_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_kids`
--
ALTER TABLE `tbl_kids`
  MODIFY `kids_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_kids_director`
--
ALTER TABLE `tbl_kids_director`
  MODIFY `kids_director_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_kids_genre`
--
ALTER TABLE `tbl_kids_genre`
  MODIFY `kids_genre_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_kids_mpaa`
--
ALTER TABLE `tbl_kids_mpaa`
  MODIFY `kids_mpaa_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_mpaa`
--
ALTER TABLE `tbl_mpaa`
  MODIFY `mpaa_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_parents`
--
ALTER TABLE `tbl_parents`
  MODIFY `parents_id` smallint(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_parents_genre`
--
ALTER TABLE `tbl_parents_genre`
  MODIFY `par_genre_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_parents_mpaa`
--
ALTER TABLE `tbl_parents_mpaa`
  MODIFY `par_mpaa_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_par_director`
--
ALTER TABLE `tbl_par_director`
  MODIFY `par_director_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
