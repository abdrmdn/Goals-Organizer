# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: goals.coxn0jql21wr.eu-west-1.rds.amazonaws.com (MySQL 5.7.23-log)
# Database: goals_organizer
# Generation Time: 2018-10-29 19:41:04 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table goals
# ------------------------------------------------------------

DROP TABLE IF EXISTS `goals`;

CREATE TABLE `goals` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `achieved_by` datetime NOT NULL,
  `prent_goal` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `goals` WRITE;
/*!40000 ALTER TABLE `goals` DISABLE KEYS */;

INSERT INTO `goals` (`id`, `name`, `achieved_by`, `prent_goal`)
VALUES
	(0,'zero base goal','0000-00-00 00:00:00',0),
	(3,'happy marriage','2028-01-01 00:00:00',0);

/*!40000 ALTER TABLE `goals` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table milestones
# ------------------------------------------------------------

DROP TABLE IF EXISTS `milestones`;

CREATE TABLE `milestones` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `goal_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `achieved_by` datetime DEFAULT NULL,
  `goal_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `milestones` WRITE;
/*!40000 ALTER TABLE `milestones` DISABLE KEYS */;

INSERT INTO `milestones` (`id`, `name`, `goal_id`, `type_id`, `created_at`, `achieved_by`, `goal_date`)
VALUES
	(2,'buy house in syria',3,5,'2018-10-24 19:44:56',NULL,'2020-10-24 19:44:59'),
	(3,'buy house in netherlands',3,4,'2018-10-24 19:44:59',NULL,'2019-10-24 19:44:59');

/*!40000 ALTER TABLE `milestones` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table milestones_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `milestones_types`;

CREATE TABLE `milestones_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `milestones_types` WRITE;
/*!40000 ALTER TABLE `milestones_types` DISABLE KEYS */;

INSERT INTO `milestones_types` (`id`, `name`)
VALUES
	(1,'day'),
	(2,'sprint'),
	(3,'quarter'),
	(4,'year'),
	(5,'2years'),
	(6,'3years'),
	(7,'4years'),
	(8,'5years'),
	(9,'10years');

/*!40000 ALTER TABLE `milestones_types` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
