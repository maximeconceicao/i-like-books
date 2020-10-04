-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 27 mars 2020 à 10:51
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ilikebooks`
--

-- --------------------------------------------------------

--
-- Structure de la table `authors`
--

DROP TABLE IF EXISTS `authors`;
CREATE TABLE IF NOT EXISTS `authors` (
  `author_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `authors`
--

INSERT INTO `authors` (`author_id`, `name`) VALUES
(1, 'Yuval Noah Harari'),
(4, 'Stephen King'),
(5, 'Patrick Süskind'),
(6, 'Aldous Huxley'),
(7, 'George Orwell'),
(8, 'Jostein Gaarder'),
(9, 'Albert Camus'),
(10, 'Franz Kafka'),
(11, 'Ray Bradbury'),
(12, 'Jordan Peterson'),
(13, 'F. Scott Fitzgerald');

-- --------------------------------------------------------

--
-- Structure de la table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `publication_date` date NOT NULL,
  `total_pages` int(11) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `summary` varchar(1000) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `books`
--

INSERT INTO `books` (`book_id`, `title`, `publication_date`, `total_pages`, `cover`, `summary`) VALUES
(1, 'The Great Gatsby', '1925-04-10', 218, 'the_great_gatsby.png', 'The Great Gatsby, F. Scott Fitzgerald’s third book, stands as the supreme achievement of his career. First published in 1925, this quintessential novel of the Jazz Age has been acclaimed by generations of readers. The story of the mysteriously wealthy Jay Gatsby and his love for the beautiful Daisy Buchanan, of lavish parties on Long Island at a time when The New York Times noted “gin was the national drink and sex the national obsession,” it is an exquisitely crafted tale of America in the 1920s.'),
(2, 'L\'Étranger', '1942-05-19', 159, 'the_stranger.png', 'Through the story of an ordinary man unwittingly drawn into a senseless murder on an Algerian beach, Camus explored what he termed \"the nakedness of man faced with the absurd.'),
(3, 'Perfume', '1985-01-01', 263, 'perfume.png', 'Patrick Süskind\'s Perfume is a classic novel of death and sensuality in Paris\'In eighteenth-century France there lived a man who was one of the most gifted and abominable personages in an era that knew no lack of gifted and abominable personages. His name was Jean-Baptiste Grenouille, and if his name has been forgotten today, it is certainly not because Grenouille fell short of those more famous blackguards when it came to arrogance, misanthropy, immorality, or, more succinctly, wickedness, but because his gifts and his sole ambition were restricted to a domain that leaves no traces in history: to the fleeting realm of scent.'),
(4, 'Brave New World', '1932-01-01', 285, 'brave_new_world.png', 'Aldous Huxley\'s profoundly important classic of world literature, Brave New World is a searching vision of an unequal, technologically-advanced future where humans are genetically bred, socially indoctrinated, and pharmaceutically anesthetized to passively uphold an authoritarian ruling order–all at the cost of our freedom, full humanity, and perhaps also our souls.'),
(5, 'Nineteen Eighty-Four', '1949-06-08', 328, '1984.png', 'One of Britain\'s most popular novels, George Orwell\'s dystopian tale Nineteen Eighty-Four is set in a society terrorised by a totalitarian ideology propagated by The Party. \'It was a bright cold day in April, and the clocks were striking thirteen.\'Winston Smith works for the Ministry of Truth in London, chief city of Airstrip One. Big Brother stares out from every poster, the Thought Police uncover every act of betrayal. When Winston finds love with Julia, he discovers that life does not have to be dull and deadening, and awakens to new possibilities. Despite the police helicopters that hover and circle overhead, Winston and Julia begin to question the Party; they are drawn towards conspiracy. Yet Big Brother will not tolerate dissent - even in the mind.'),
(6, 'Fahrenheit 451', '1953-10-19', 256, 'fahrenheit_451.png', 'Ray Bradbury\'s internationally acclaimed novel \"Fahrenheit 451\"is a masterwork of twentieth-century literature set in a bleak, dystopian future.\r\nGuy Montag is a fireman. In his world, where television rules and literature is on the brink of extinction, firemen start fires rather than put them out. His job is to destroy the most illegal of commodities, the printed book, along with the houses in which they are hidden.'),
(7, 'Sophie\'s World', '1991-01-01', 623, 'sophies_world.png', 'One day fourteen-year-old Sophie Amundsen comes home from school to find in her mailbox two notes, with one question on each: \"Who are you?\" and \"Where does the world come from?\" From that irresistible beginning, Sophie becomes obsessed with questions that take her far beyond what she knows of her Norwegian village. Through those letters, she enrolls in a kind of correspondence course, covering Socrates to Sartre, with a mysterious philosopher, while receiving letters addressed to another girl. Who is Hilde? And why does her mail keep turning up? To unravel this riddle, Sophie must use the philosophy she is learning--but the truth turns out to be far more complicated than she could have imagined.'),
(8, 'The Castle', '1926-01-01', 316, 'the_castle.png', ' \"K.\" arrives in a village and struggles to gain access to the mysterious authorities who govern it from a castle.'),
(9, 'Sapiens: A Brief History of Humankind', '2011-01-01', 443, 'sapiens.png', 'Earth is 4.5 billion years old. In just a fraction of that time, one species among countless others has conquered it: us.\r\n\r\nIn this bold and provocative book, Yuval Noah Harari explores who we are, how we got here and where we’re going.'),
(10, '12 Rules for Life', '2018-01-16', 448, '12_rules_for_life.png', 'What does the nervous system of the lowly lobster have to tell us about standing up straight (with our shoulders back) and about success in life? Why did ancient Egyptians worship the capacity to pay careful attention as the highest of gods? What dreadful paths do people tread when they become resentful, arrogant and vengeful? Dr. Peterson journeys broadly, discussing discipline, freedom, adventure and responsibility, distilling the world\'s wisdom into 12 practical and profound rules for life.'),
(11, 'The Stand', '1978-10-03', 823, 'the_stand.png', 'A patient escapes from a biological testing facility, unknowingly carrying a deadly weapon: a mutated strain of super-flu that will wipe out 99 percent of the world’s population within a few weeks. Those who remain are scared, bewildered, and in need of a leader. Two emerge—Mother Abagail, the benevolent 108-year-old woman who urges them to build a peaceful community in Boulder, Colorado; and Randall Flagg, the nefarious “Dark Man,” who delights in chaos and violence. As the dark man and the peaceful woman gather power, the survivors will have to choose between them—and ultimately decide the fate of all humanity.');

-- --------------------------------------------------------

--
-- Structure de la table `books_authors`
--

DROP TABLE IF EXISTS `books_authors`;
CREATE TABLE IF NOT EXISTS `books_authors` (
  `book_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`book_id`,`author_id`),
  KEY `fk_author` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `books_authors`
--

INSERT INTO `books_authors` (`book_id`, `author_id`) VALUES
(9, 1),
(11, 4),
(3, 5),
(4, 6),
(5, 7),
(7, 8),
(2, 9),
(8, 10),
(6, 11),
(10, 12),
(1, 13);

-- --------------------------------------------------------

--
-- Structure de la table `books_genres`
--

DROP TABLE IF EXISTS `books_genres`;
CREATE TABLE IF NOT EXISTS `books_genres` (
  `book_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  PRIMARY KEY (`book_id`,`genre_id`),
  KEY `fk_genre` (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `books_genres`
--

INSERT INTO `books_genres` (`book_id`, `genre_id`) VALUES
(11, 4),
(11, 5),
(3, 6),
(11, 6),
(9, 7),
(4, 8),
(4, 9),
(5, 9),
(6, 9),
(8, 9),
(8, 10),
(3, 11),
(8, 11),
(2, 12),
(7, 12),
(10, 13),
(3, 14),
(1, 15);

-- --------------------------------------------------------

--
-- Structure de la table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `genre_id` int(11) NOT NULL AUTO_INCREMENT,
  `genre` varchar(255) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `genres`
--

INSERT INTO `genres` (`genre_id`, `genre`) VALUES
(4, 'Post-apocalyptic'),
(5, 'Fantasy'),
(6, 'Horror'),
(7, 'Non-fiction'),
(8, 'Science fiction'),
(9, 'Dystopian'),
(10, 'Political'),
(11, 'Absurd'),
(12, 'Philosophical novel'),
(13, 'Personal development'),
(14, 'Mystery'),
(15, 'Tragedy');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `books_authors`
--
ALTER TABLE `books_authors`
  ADD CONSTRAINT `fk_author` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_book_author` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `books_genres`
--
ALTER TABLE `books_genres`
  ADD CONSTRAINT `fk_book_genre` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_genre` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
