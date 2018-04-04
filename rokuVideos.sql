-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 04, 2018 at 12:48 PM
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
-- Table structure for table `tbl_kids`
--

CREATE TABLE `tbl_kids` (
  `kids_id` int(10) UNSIGNED NOT NULL,
  `kids_title` varchar(100) NOT NULL,
  `kids_images` varchar(150) NOT NULL,
  `kids_videos` varchar(150) NOT NULL,
  `kids_desc` varchar(500) NOT NULL,
  `kids_reviews` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_kids`
--

INSERT INTO `tbl_kids` (`kids_id`, `kids_title`, `kids_images`, `kids_videos`, `kids_desc`, `kids_reviews`) VALUES
(1, 'A Wrinkle in Time', 'images/awrinkleintime.jpg', 'videokids/awrinkleintime.mp4', '\r\nFollowing the discovery of a new form of space travel as well as Meg\'s father\'s disappearance, she, her brother, and her friend must join three magical beings - Mrs. Whatsit, Mrs. Who, and Mrs. Which - to travel across the universe to rescue him from a terrible evil.', ''),
(2, 'Coco', 'images/coco.jpg', 'videokids/coco.mp4', 'Despite his family\'s baffling generations-old ban on music, Miguel dreams of becoming an accomplished musician like his idol, Ernesto de la Cruz. Desperate to prove his talent, Miguel finds himself in the stunning and colorful Land of the Dead following a mysterious chain of events. Along the way, he meets charming trickster Hector, and together, they set off on an extraordinary journey to unlock the real story behind Miguel\'s family history.', ''),
(3, 'Kubo and the Two Strings', 'images/kubo.jpg', 'videokids/kubo.mp4', 'Kubo lives a quiet, normal life in a small shoreside village until a spirit from the past turns his life upside down by re-igniting an age-old vendetta. This causes all sorts of havoc as gods and monsters chase Kubo who, in order to survive, must locate a magical suit of armor once worn by his late father, a legendary Samurai warrior.', ''),
(4, 'Miss Granny', 'images/missgranny.jpg', 'videokids/missgranny.mp4', 'A 74-year-old widow realizes she is becoming a burden on her family. She mysteriously regains her physical appearance from the age of 20.', ''),
(5, 'Moana', 'images/moana.jpg', 'videokids/moana.mp4', 'Moana Waialiki is a sea voyaging enthusiast and the only daughter of a chief in a long line of navigators. When her island\'s fishermen can\'t catch any fish and the crops fail, she learns that the demigod Maui caused the blight by stealing the heart of the goddess, Te Fiti. The only way to heal the island is to persuade Maui to return Te Fiti\'s heart, so Moana sets off on an epic journey across the Pacific. The film is based on stories from Polynesian mythology.', ''),
(6, 'Stand By Me, Doraemon', 'images/standbyme.jpg', 'videokids/standbyme.mp4', 'In the suburbs of Tokyo some time ago, there lived a clumsy boy about 10 years old. There appeared in front of him named Sewashi, Nobita\'s descendant of four generations later from the 22nd century, and Doraemon, a 22nd century cat-type caretaker robot who helps people with its secret gadgets.', ''),
(7, 'Teiichi : Battle of Supreme High', 'images/teiichibattleofsupremehigh.jpg', 'videokids/teiichibattleofsupremehigh.mp4', 'Teiichi dreams of one day being the ruler of his own empire, but to get there he needs to make sure that his candidate for class president at his elite high school wins the election. This is a high school election fought with all the fervor or a nasty, national campaign. Lies, bribery, sabotage and scandal all come into play as the boys fight it out to determine who will be the next class president.', ''),
(8, 'Time Trip App ', 'images/timetripapp.jpg', 'videokids/timetripapp.mp4', 'In 1868, a battle between new government forces and shogunate forces are about to take place in Edo. Katsu Kaishu (Hiroshi Tamaki) wants to avoid useless bloodshed and sends a peace envoy to Takamori Saigo, but Katsu Kaishu is unable to get a response from Takamori Saigo. One day, Katsu Kaishu meets high school teacher Mikako (Satomi Ishihara) and her student Masaya who is captivated by the shogunate.', ''),
(9, 'My Neighbour Totoro', 'images/totoro.jpg', 'videokids/totoro.mp4', 'Two young girls, Satsuki and her younger sister Mei, move into a house in the country with their father to be closer to their hospitalized mother. Satsuki and Mei discover that the nearby forest is inhabited by magical creatures called Totoros (pronounced toe-toe-ro). They soon befriend these Totoros, and have several magical adventures.', ''),
(10, 'WALL-E', 'images/walle.jpg', 'videokids/walle.mp4', 'In a distant, but not so unrealistic, future where mankind has abandoned earth because it has become covered with trash from products sold by the powerful multi-national Buy N Large corporation, WALL-E, a garbage collecting robot has been left to clean up the mess. ', ''),
(11, 'A Tale of Mari and the Three Puppies', 'images/ataleofmariandthreepuppies.jpg', 'videokids/ataleofmariandthreepuppies.png', 'A tale of Mari and three puppies is based on a true story. It tells about the situation Mari and her puppies have gone through after a massive destruction brought by an earthquake that striked Japan in October 23, 2004.', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_parents`
--

CREATE TABLE `tbl_parents` (
  `parents_id` smallint(50) UNSIGNED NOT NULL,
  `parents_title` varchar(100) NOT NULL,
  `parents_images` varchar(150) NOT NULL,
  `parents_videos` varchar(150) NOT NULL,
  `parents_desc` varchar(500) NOT NULL,
  `parents_reviews` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_parents`
--

INSERT INTO `tbl_parents` (`parents_id`, `parents_title`, `parents_images`, `parents_videos`, `parents_desc`, `parents_reviews`) VALUES
(1, 'Black Panther', 'images/blackpanther.jpg', 'videoparents/blackpanther.mp4', 'After the events of Captain America: Civil War, King T\'Challa returns home to the reclusive, technologically advanced African nation of Wakanda to serve as his country\'s new leader. However, T\'Challa soon finds that he is challenged for the throne from factions within his own country.', ''),
(2, 'Bad Genius', 'images/badgenius.jpg', 'videoparents/badgenius.mp4', 'Lynn, a genius high school student who makes money by cheating tests, receives a new task that leads her to set foot on Sydney, Australia. In order to complete the millions-Baht task, Lynn and her classmates have to finish the international STIC(SAT) exam and deliver the answers back to her friends in Thailand before the exam takes place once again in her home country.', ''),
(3, 'Blade Runner 2049', 'images/bladerunner.jpg', 'videoparents/bladerunner.mp4', 'Thirty years after the events of the first film, a new blade runner, LAPD Officer K (Ryan Gosling), unearths a long-buried secret that has the potential to plunge what\'s left of society into chaos. K\'s discovery leads him on a quest to find Rick Deckard (Harrison Ford), a former LAPD blade runner who has been missing for 30 years.', ''),
(5, 'Co Ba Sai Gon', 'images/cobasaigon.jpg', 'videoparents/cobasaigon.mp4', 'The re-enactment of a long dress era in the 1960s is thought to be the heyday of traditional Vietnamese costumes. Interwoven into that transformation in the style and style of the ao dai in modern times are told through the story of the character of Ba. ', ''),
(6, 'Dunkirk', 'images/dunkirk.jpg', 'videoparents/dunkirk.mp4', 'Evacuation of Allied soldiers from the British Empire, and France, who were cut off and surrounded by the German army from the beaches and harbor of Dunkirk, France, between May 26- June 04, 1940, during Battle of France in World War II. ', ''),
(7, 'Seondal : The Man Who Sells the River', 'images/kimseondal.jpg', 'videoparents/kimseondal.mp4', 'In-hong is drafted into the army by force to fight in China during the Qing Dynasty. During the struggle to survive in the battlefield, he meets Bo-won and Gyeon. Three men return to Korea to find no means to make living, and decide to form a con ring. Their cons range from selling a chicken as phoenix and disguising an ordinary sword as one that belonged to the great Admiral Yi Shun-shin. ', ''),
(8, 'Kokuhaku (Confessions)', 'images/kokuhaku.jpg', 'videoparents/kokuhaku.mp4', 'A psychological thriller of a grieving mother turned cold-blooded avenger with a twisty master plan to pay back those who were responsible for her daughter\'s death.', ''),
(9, 'Parasyte Part 1', 'images/parasyte.jpg', 'videoparents/parasyte.mp4', 'The humanity is suffering from murders all over the globe, called \"Mincemeat murders\". High school student, Izumi Shinichi has a parasite living off him, having replaced his right hand, and he might be the discoverer of truth.', ''),
(10, 'Star Wars : The Last Jedi', 'images/starwarsthelastjedi.jpg', 'videoparents/starwarsthelastjedi.mp4', 'Rey develops her newly discovered abilities with the guidance of Luke Skywalker, who is unsettled by the strength of her powers. Meanwhile, the Resistance prepares for battle with the First Order.', ''),
(11, 'The Chase ', 'images/thechase.jpg', 'videoparents/thechase.mp4', 'Sim Deok-soo is a grumpy landlord running a run-down apartment complex. Suddenly his tenants begin disappearing under suspicious circumstances. A retired ex-detective shows up, claiming a serial murderer from 30 years back has returned.', ''),
(12, 'The Greatest Showman', 'images/thegreatestshowman.jpg', 'videoparents/thegreatestshowman.mp4', 'Orphaned, penniless but ambitious and with a mind crammed with imagination and fresh ideas, the American Phineas Taylor Barnum will always be remembered as the man with the gift to effortlessly blur the line between reality and fiction. ', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_kids`
--
ALTER TABLE `tbl_kids`
  ADD PRIMARY KEY (`kids_id`);

--
-- Indexes for table `tbl_parents`
--
ALTER TABLE `tbl_parents`
  ADD PRIMARY KEY (`parents_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_kids`
--
ALTER TABLE `tbl_kids`
  MODIFY `kids_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_parents`
--
ALTER TABLE `tbl_parents`
  MODIFY `parents_id` smallint(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
