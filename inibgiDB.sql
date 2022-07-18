

DROP USER "admin"@"127.0.0.1";

CREATE USER "admin"@"127.0.0.1" IDENTIFIED BY "admin";
DROP DATABASE inebgiDB;
CREATE database inebgiDB;
use inebgiDB;

GRANT ALL ON inebgiDB.* TO "admin"@'127.0.0.1';


/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `coverImg` text DEFAULT NULL,
  `folowerLen` int(11) DEFAULT NULL,
  `folower` text DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `gender` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;


DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `dateUploade` timestamp NOT NULL DEFAULT current_timestamp(),
  `description` text DEFAULT NULL,
  `commentsToken` text DEFAULT NULL,
  `covers` text DEFAULT NULL,
  `likeLen` int(11) DEFAULT NULL,
  `commentLen` int(11) DEFAULT NULL,
  `likesUsers` text DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;



INSERT INTO `users` VALUES (12,'inebgi_bot','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',NULL,'30c80db6ff2872a4b165c2a472f40c37.png','17b18dcc6cbbf729471cce1c40d237ec.png',0,NULL,'2022-07-15 13:11:56',1,NULL,'tYu93Ri+gLiWT0dKlGbpiMeY4HjAm9os'),(13,'agelid','8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918',NULL,'1f4ff1f0dd337bb314b3bb0069b06b95.png','1b207ff81ed1a3262af86b00b25cd5b4.png',0,NULL,'2022-07-15 13:21:23',1,NULL,'oW5WAsxQHheB7GLYJ+ssInY0BZ08CVDr'),(14,'leptis_magnet','9486447f4fed5c342ce99b155f65f314eecb0e4a6ad6c587ccfd8245c14ff1dd',NULL,'8e09dc5520e6c306c53adb7c8b538182.png','ab795830b303ae84e21adc6c200fecd6.png',0,NULL,'2022-07-15 18:29:21',1,NULL,'SKfYMkEmJV8AkbgH0Q36foXPbV2XY+h6'),(15,'admin','8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918',NULL,'elyse.png','46f15c9d1595bddd832eb6567c2478ac.png',0,NULL,'2022-07-17 13:09:39',1,NULL,'+R7wstgDPP7AJjoq+4/Izh1Q8RnHpsYH');

INSERT INTO `posts` VALUES (59,'agelid','2022-07-15 13:28:32','Azul Fellawen !','Tpom4IWGRUP0mXtQfNN3xF1fSd5XzQJK','',2,0,'bot , agelid , admin , ',NULL),(60,'agelid','2022-07-15 13:29:06','Walit achal tecbah la photo-agi.','q1G8XjA/Ya5gL9fsYnkwlr/guiRdNaWv','d3632f1a46a6efdfeb6f2a54a76e00a1.png',3,0,'bot , agelid , inebgi_bot , admin , ',NULL),(61,'leptis_magnet','2022-07-15 18:29:52','Im The Authors Of This Web !','Cz+TwnwSuMf5inDFLxHIuee3leNOPhDD','',1,0,'bot , admin , ',NULL),(62,'admin','2022-07-17 13:10:18','Hello World !','J/yCdu4yWguzG8Ui3vkmH7CST6u7z0M7','',1,0,'bot , admin , ',NULL),(63,'admin','2022-07-17 13:11:18','','D/izRLO+g2kvoZ/zuemMYp08ZviEhc6O','0ccacb02b99359917ce11d67ed32d436.png',0,0,'bot , ',NULL);