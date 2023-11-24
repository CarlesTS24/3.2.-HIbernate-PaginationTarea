-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: esports_db
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `players`
--
Create database Players;
Use Players;
-- DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `player_id` int NOT NULL,
  `birth_date` date NOT NULL,
  `first_name` varchar(14) NOT NULL,
  `last_name` varchar(16) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `join_date` date NOT NULL,
  `nick` varchar(20) NOT NULL,
  `game_played` varchar(50) NOT NULL,
  `team` varchar(50) NOT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `players` VALUES
(1, '1995-02-20', 'Lee', 'Faker', 'M', '2013-04-01', 'Faker', 'League of Legends', 'SK Telecom T1'),
(2, '1999-07-08', 'Søren', 'Bjerg', 'M', '2014-09-15', 'Bjergsen', 'League of Legends', 'Team SoloMid'),
(3, '1997-11-18', 'Yiliang', 'Doublelift', 'M', '2012-01-10', 'Doublelift', 'League of Legends', 'Team Liquid'),
(4, '1994-03-26', 'Jian', 'Uzi', 'M', '2016-05-01', 'Uzi', 'League of Legends', 'Royal Never Give Up'),
(5, '1996-09-03', 'Kang', 'TheShy', 'M', '2018-03-01', 'TheShy', 'League of Legends', 'Invictus Gaming'),
(6, '1993-05-12', 'Rasmus', 'Caps', 'M', '2016-11-10', 'Caps', 'League of Legends', 'Fnatic'),
(7, '1998-12-28', 'Kai', 'Rekkles', 'M', '2014-02-01', 'Rekkles', 'League of Legends', 'G2 Esports'),
(8, '1992-08-02', 'Jian', 'JackeyLove', 'M', '2017-12-20', 'JackeyLove', 'League of Legends', 'Top Esports'),
(9, '1995-06-21', 'Sang-hyeok', 'Faker2', 'M', '2013-04-01', 'Faker2', 'League of Legends', 'T1'),
(10, '1994-01-20', 'Kang', 'TheShy2', 'M', '2018-03-01', 'TheShy2', 'League of Legends', 'Damwon Gaming'),
(11, '1998-04-12', 'João', 'Revolta', 'M', '2012-08-01', 'Revolta', 'League of Legends', 'INTZ'),
(12, '1996-11-05', 'Danil', 'Diamondprox', 'M', '2012-01-01', 'Diamondprox', 'League of Legends', 'Unicorns of Love'),
(13, '1997-08-04', 'Kasper', 'Kobbe', 'M', '2014-02-15', 'Kobbe', 'League of Legends', 'Misfits Gaming'),
(14, '1993-09-20', 'Kwon', 'Ruler', 'M', '2016-01-10', 'Ruler', 'League of Legends', 'Gen.G'),
(15, '1992-12-01', 'Kang', 'TheShy3', 'M', '2018-03-01', 'TheShy3', 'League of Legends', 'SK Telecom T1'),
(16, '1998-06-05', 'Rasmus', 'Rekkles2', 'M', '2014-02-01', 'Rekkles2', 'League of Legends', 'Fnatic'),
(17, '1997-03-30', 'Jang-hyeon', 'Wolf', 'M', '2013-11-01', 'Wolf', 'League of Legends', 'SK Telecom T1'),
(18, '1995-08-25', 'Kim', 'Doinb', 'M', '2014-05-01', 'Doinb', 'League of Legends', 'FunPlus Phoenix'),
(19, '1996-01-20', 'Kang', 'TheShy4', 'M', '2018-03-01', 'TheShy4', 'League of Legends', 'SK Telecom T1'),
(20, '1993-12-10', 'Zdravets', 'Hylissang', 'M', '2013-01-01', 'Hylissang', 'League of Legends', 'Fnatic'),
(21, '1998-09-08', 'Xiu-ting', 'Meiko', 'M', '2015-12-15', 'Meiko', 'League of Legends', 'EDward Gaming'),
(22, '1997-04-20', 'Liang', 'Uzi2', 'M', '2016-05-01', 'Uzi2', 'League of Legends', 'Royal Never Give Up'),
(23, '1994-07-07', 'Yeon-seong', 'Khan', 'M', '2015-01-01', 'Khan', 'League of Legends', 'FunPlus Phoenix'),
(24, '1996-11-12', 'Byung-ho', 'Cuzz', 'M', '2016-11-01', 'Cuzz', 'League of Legends', 'T1'),
(25, '1999-02-22', 'Yihong', 'JackeyLove2', 'M', '2018-12-20', 'JackeyLove2', 'League of Legends', 'Invictus Gaming'),
-- Add more players as needed

-- Insert players for "Counter-Strike: Global Offensive" and teams
(26, '1994-10-11', 'Oleksandr', 's1mple', 'M', '2014-03-01', 's1mple', 'CS:GO', 'Natus Vincere'),
(27, '1995-04-23', 'Nicolai', 'dev1ce', 'M', '2013-04-01', 'dev1ce', 'CS:GO', 'Astralis'),
(28, '1998-08-30', 'Marcelo', 'coldzera', 'M', '2015-02-20', 'coldzera', 'CS:GO', 'FaZe Clan'),
(29, '1996-11-15', 'Keith', 'NAF', 'M', '2016-07-01', 'NAF', 'CS:GO', 'Team Liquid'),
(30, '1992-06-05', 'Gabriel', 'FalleN', 'M', '2012-01-15', 'FalleN', 'CS:GO', 'MIBR'),
(31, '1997-09-18', 'Nikola', 'NiKo', 'M', '2015-03-10', 'NiKo', 'CS:GO', 'G2 Esports'),
(32, '1991-12-03', 'Ladislav', 'GuardiaN', 'M', '2010-08-20', 'GuardiaN', 'CS:GO', 'Natus Vincere'),
(33, '1994-02-28', 'Andreas', 'Xyp9x', 'M', '2012-05-01', 'Xyp9x', 'CS:GO', 'Astralis'),
(34, '1990-05-07', 'Christopher', 'GeT_RiGhT', 'M', '2007-11-01', 'GeT_RiGhT', 'CS:GO', 'Dignitas'),
(35, '1993-03-21', 'Freddy', 'KRIMZ', 'M', '2013-06-01', 'KRIMZ', 'CS:GO', 'Fnatic'),
(36, '1996-03-12', 'Aleksandar', 'kassad', 'M', '2014-08-01', 'kassad', 'CS:GO', 'G2 Esports'),
(37, '1997-06-08', 'Jaccob', 'yay', 'M', '2017-05-01', 'yay', 'CS:GO', 'EXTREMUM'),
(38, '1991-03-18', 'Ricardo', 'fox', 'M', '2009-01-01', 'fox', 'CS:GO', 'FaZe Clan'),
(39, '1995-01-30', 'Josh', 'steel', 'M', '2013-12-15', 'steel', 'CS:GO', 'Chaos Esports Club'),
(40, '1994-09-17', 'Marcelo', 'coldzera2', 'M', '2015-02-20', 'coldzera2', 'CS:GO', 'FaZe Clan'),

-- Add more players as needed

-- Insert players for another game and teams
(41, '1996-05-02', 'Jaden', 'Ninja', 'M', '2017-08-10', 'Ninja', 'Fortnite', 'Luminosity Gaming'),
(42, '1993-12-15', 'Tyler', 'Tyler1', 'M', '2016-03-01', 'Tyler1', 'League of Legends', 'Solo Queue Stars'),
(43, '1991-09-25', 'Alex', 'Xmithie', 'M', '2011-07-01', 'Xmithie', 'League of Legends', 'Immortals'),
(44, '1997-02-18', 'Zyanya', 'Zywoo', 'M', '2018-12-01', 'Zywoo', 'CS:GO', 'Vitality'),
(45, '1994-07-30', 'Mathieu', 'Misfits', 'M', '2015-05-15', 'Misfits', 'Overwatch', 'Florida Mayhem'),
(46, '1998-08-03', 'Kyle', 'Bugha', 'M', '2018-07-01', 'Bugha', 'Fortnite', 'Sentinels'),
(47, '1996-04-25', 'Matthew', 'Mongraal', 'M', '2017-12-01', 'Mongraal', 'Fortnite', 'FaZe Clan'),
(48, '1993-11-22', 'Nicolò', 'Aqua', 'M', '2019-05-15', 'Aqua', 'Fortnite', 'Cooler Esport'),
(49, '1997-02-05', 'Alec', 'Attach', 'M', '2013-06-01', 'Attach', 'Call of Duty', 'Minnesota RØKKR'),
(50, '1995-12-08', 'Harrison', 'Huke', 'M', '2014-11-01', 'Huke', 'Call of Duty', 'Dallas Empire');
-- Add more players as needed