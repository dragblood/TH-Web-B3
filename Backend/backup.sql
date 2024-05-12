-- MariaDB dump 10.17  Distrib 10.4.2-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: database    Database: getflix
-- ------------------------------------------------------
-- Server version	10.4.2-MariaDB-1:10.4.2+maria~bionic

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `achievements`
--

DROP TABLE IF EXISTS `achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievements` (
  `userID` int(10) NOT NULL AUTO_INCREMENT,
  `movie_achievement1` bit(1) NOT NULL DEFAULT b'0',
  `movie_achievement3` bit(1) NOT NULL DEFAULT b'0',
  `movie_achievement5` bit(1) NOT NULL DEFAULT b'0',
  `comment_achievement1` bit(1) NOT NULL DEFAULT b'0',
  `comment_achievement3` bit(1) NOT NULL DEFAULT b'0',
  `comment_achievement5` bit(1) NOT NULL DEFAULT b'0',
  `contact_achievement` bit(1) NOT NULL DEFAULT b'0',
  `achievements_all` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievements`
--

LOCK TABLES `achievements` WRITE;
/*!40000 ALTER TABLE `achievements` DISABLE KEYS */;
INSERT INTO `achievements` VALUES (1,'','\0','\0','\0','','\0','\0','\0'),(2,'','','','','','','',''),(3,'','','','\0','\0','\0','\0','\0'),(4,'','\0','\0','','\0','\0','\0','\0');
/*!40000 ALTER TABLE `achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `commentID` int(10) NOT NULL AUTO_INCREMENT,
  `userID` int(10) NOT NULL,
  `movieID` int(10) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `comment_date` datetime NOT NULL DEFAULT curtime(),
  PRIMARY KEY (`commentID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,1,1,'Watched this so much as a kid the VHS tape broke :)','2021-11-29 15:05:42'),(2,2,1,'It\'s okay','2021-11-29 15:05:42'),(3,3,3,'NU;r8iJDY7E8SB-i:}G7)L@W;uY{.v@e&4&/hX7tF$t9E%Ztqk7VgUA+:H6((pTwV{HWG6KBQ#4,6M22bRR#QJfKFbL.Dwbq$/=-wi2X7X-v5z7%P39zR-G,D:/V85M!H[P%26%5$,e,L.P)_2Tt@[2e[@3qJmvyp6@qE+-27e$i+QF%XnM[etZ7VYEcPiQG*?ZzTmVg*%=rLe?kz/NiMBU_*ddY6;ACb(Li{zJ9+n3qwcCuZ#u6N.yeU:?Y7.j','2021-11-29 15:05:42'),(4,4,3,'The comment above mine is 255 characters long, the max allowed','2021-11-29 15:05:42'),(5,2,3,'Making a bunch of comments on the same movie to check the autoscroll for the popup','2021-11-29 15:05:42'),(6,2,3,'That\'s a great idea','2021-11-29 15:05:42');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `messageID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `issue` varchar(225) NOT NULL,
  `message` varchar(255) NOT NULL,
  `contact_date` datetime NOT NULL DEFAULT curtime(),
  PRIMARY KEY (`messageID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'Pixie','notindatabase@gmail.com','Achievement not unlocking','I want to unsubscribe for the service','2021-11-29 15:05:42'),(2,'Dixie','daniel@getflix.com','No movies in home','Love this, you should charge more','2021-11-29 15:05:42');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `movieID` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `trailer` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `rating` float NOT NULL,
  `synopsis` varchar(255) NOT NULL,
  PRIMARY KEY (`movieID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'King Richard','https://image.tmdb.org/t/p/w500/qQl0QS5P15vVzUcaP8rAqxbQ6Wp.jpg','https://www.youtube.com/watch?v=BKP_0z52ZAw','18',8.4,'The TRUE STORY of how Richard Williams served as a coach to his daughters Venus and Serena, who will soon become two of the most legendary tennis players in history.'),(2,'Shang-Chi and the Legend of the Ten Rings','https://image.tmdb.org/t/p/w500/1BIoJGKbXjdFDAqUEiA2VHqkK1Z.jpg','https://www.youtube.com/watch?v=8YjFbMbfXaQ','28,12,14',7.9,'Shang-Chi must confront the past he thought he left behind when he is drawn into the web of the mysterious Ten Rings organization.'),(3,'Eternals','https://image.tmdb.org/t/p/w500/4DiJQ1mBp4ztoznZADIrPg69v46.jpg','https://www.youtube.com/watch?v=x_me3xsvDgk','28,12,878,14',7.1,'The Eternals are a team of ancient aliens who have been living on Earth in secret for thousands of years. When an unexpected tragedy forces them out of the shadows, they are forced to reunite against mankindâ€™s most ancient enemy, the Deviants.'),(4,'Jungle Cruise','https://image.tmdb.org/t/p/w500/9dKCd55IuTT5QRs989m9Qlb7d2B.jpg','https://www.youtube.com/watch?v=hJZ82pwwJqA','12,14,35,28',7.7,'Dr. Lily Houghton enlists the aid of wisecracking skipper Frank Wolff to take her down the Amazon in his dilapidated boat. Together, they search for an ancient tree that holds the power to heal â€“ a discovery that will change the future of medicine.'),(5,'The Suicide Squad','https://image.tmdb.org/t/p/w500/kb4s0ML0iVZlG6wAKbbs9NAm6X.jpg','https://www.youtube.com/watch?v=eg5ciqQzmK0','28,12,14',7.8,'Supervillains Harley Quinn, Bloodsport, Peacemaker and a collection of nutty cons at Belle Reve prison join the super-secret, super-shady Task Force X as they are dropped off at the remote, enemy-infused island of Corto Maltese.'),(6,'Luca','https://image.tmdb.org/t/p/w500/jTswp6KyDYKtvC52GbHagrZbGvD.jpg','https://www.youtube.com/watch?v=mYfJxlgR2jw','16,35,10751,14',8,'Luca and his best friend Alberto experience an unforgettable summer on the Italian Riviera. But all the fun is threatened by a deeply-held secret: they are sea monsters from another world just below the waterâ€™s surface.'),(7,'Dragon Fury','https://image.tmdb.org/t/p/w500/6WcJ4cV2Y3gnTYp5zHu968TYmTJ.jpg','','27,14,9648',6.5,'A group of soldiers are taken to the mountains of Wales to investigate a strange looking monster.'),(8,'Ghostbusters: Afterlife','https://image.tmdb.org/t/p/w500/kHNWm8YDl1Pf6tyzluLagbtkU94.jpg','https://www.youtube.com/watch?v=lnKmAVLC3jU','35,14,12,878',7.5,'When a single mom and her two kids arrive in a small town, they begin to discover their connection to the original Ghostbusters and the secret legacy their grandfather left behind.'),(9,'Godzilla vs. Kong','https://image.tmdb.org/t/p/w500/pgqgaUx1cJb5oZQQ5v0tNARCeBp.jpg','https://www.youtube.com/watch?v=odM92ap8_c0','28,14,878',7.9,'In a time when monsters walk the Earth, humanityâ€™s fight for its future sets Godzilla and Kong on a collision course that will see the two most powerful forces of nature on the planet collide in a spectacular battle for the ages.'),(10,'Spider-Man','https://image.tmdb.org/t/p/w500/gSZyYEK5AfZuOFFjnVPUCLvdOD6.jpg','https://www.youtube.com/watch?v=O7zvehDxttM','14,28',7.2,'After being bitten by a genetically altered spider at Oscorp, nerdy but endearing high school student Peter Parker is endowed with amazing powers to become the superhero known as Spider-Man.'),(11,'Injustice','https://image.tmdb.org/t/p/w500/iy3Q3QcarTjvsE5ZzPCABZLH4mJ.jpg','https://www.youtube.com/watch?v=EofvPQAyYp8','16,878,14,28',8,'When Lois Lane is killed, an unhinged Superman decides to take control of the Earth. Determined to stop him, Batman creates a team of freedom-fighting heroes. But when superheroes go to war, can the world survive?'),(12,'7 Prisoners','https://image.tmdb.org/t/p/w500/5svMKCGnR6Yvj8wxldvDvgUi0Jk.jpg','https://www.youtube.com/watch?v=vupNkHJGBQ8','18,80',7.7,'An impoverished teen seeking to escape the clutches of a human trafficker must weigh living up to his moral code against his struggle to survive.'),(13,'Never Back Down: Revolt','https://image.tmdb.org/t/p/w500/icAG01wZyy1ZpS3UEnPReph3jMV.jpg','https://www.youtube.com/watch?v=SZ8X3uF1FQM','28,18',6.2,'An amateur fighter is lured by a trafficking syndicate specializing in elite underground fighting where her brutal captor forces her to fight or face certain death.'),(14,'Dhamaka','https://image.tmdb.org/t/p/w500/KowKEuyWziUtnCYicv6zhzTQIv.jpg','https://www.youtube.com/watch?v=qRESnWFYYho','53,18,80',7.1,'When a cynical ex-TV news anchor gets an alarming call on his radio show, he sees a chance for a career comeback â€” but it may cost his conscience.'),(15,'tick, tick... BOOM!','https://image.tmdb.org/t/p/w500/fAB3mWtSZ5yunwY0CI18gK5l1z9.jpg','https://www.youtube.com/watch?v=YJserno8tyU','18,10402',8,'On the cusp of his 30th birthday, Jonathon Larson, a promising young theater composer, navigates love, friendship, and the pressures of life as an artist in New York City.'),(16,'House of Gucci','https://image.tmdb.org/t/p/w500/cy6fvTf9YqehVhReYnm5cc3GqhZ.jpg','https://www.youtube.com/watch?v=eGNnpVKxV6s','18,80,53',7.2,'When Patrizia Reggiani, an outsider from humble beginnings, marries into the Gucci family, her unbridled ambition begins to unravel the family legacy and triggers a reckless spiral of betrayal, decadence, revenge, and ultimatelyâ€¦murder.'),(17,'Grudge','https://image.tmdb.org/t/p/w500/xSqtHT2DWbWBZ4dUvvMs6z1OfFK.jpg','','80,18,53',6.6,'Ahead of a promotion, a police chief becomes entangled in a deadly incident and uncovers an intrigue fueled by grudge that threatens his colleagues.'),(18,'King Richard','https://image.tmdb.org/t/p/w500/qQl0QS5P15vVzUcaP8rAqxbQ6Wp.jpg','https://www.youtube.com/watch?v=BKP_0z52ZAw','18',8.4,'The TRUE STORY of how Richard Williams served as a coach to his daughters Venus and Serena, who will soon become two of the most legendary tennis players in history.'),(19,'After We Collided','https://image.tmdb.org/t/p/w500/kiX7UYfOpYrMFSAGbI6j1pFkLzQ.jpg','https://www.youtube.com/watch?v=2SvwX3ux_-8','10749,18',7.3,'Tessa finds herself struggling with her complicated relationship with Hardin; she faces a dilemma that could change their lives forever.'),(20,'Narco Sub','https://image.tmdb.org/t/p/w500/7p0O4mKYLIhU2E5Zcq9Z3vOZ4e9.jpg','','28,18,80',7.1,'A man will become a criminal to save his family.  Director: Shawn Welling  Writer: Derek H. Potts  Stars: Tom Vera, Tom Sizemore, Lee Majors |'),(21,'Rurouni Kenshin: The Beginning','https://image.tmdb.org/t/p/w500/rODS466qSdrwMlGdbUwPENhDN2c.jpg','https://www.youtube.com/watch?v=s0vN_2MRR50','28,12,18',7.9,'Before he was a protector, Kenshin was a fearsome assassin known as Battosai. But when he meets gentle Tomoe Yukishiro, a beautiful young woman who carries a huge burden in her heart, his life will change forever.'),(22,'Venom: Let There Be Carnage','https://image.tmdb.org/t/p/w500/rjkmN1dniUHVYAtwuV3Tji7FsDO.jpg','https://www.youtube.com/watch?v=NMzJbD53ODc','878,28,12',7.2,'After finding a host body in investigative reporter Eddie Brock, the alien symbiote must face a new enemy, Carnage, the alter ego of serial killer Cletus Kasady.'),(23,'Shang-Chi and the Legend of the Ten Rings','https://image.tmdb.org/t/p/w500/1BIoJGKbXjdFDAqUEiA2VHqkK1Z.jpg','https://www.youtube.com/watch?v=8YjFbMbfXaQ','28,12,14',7.9,'Shang-Chi must confront the past he thought he left behind when he is drawn into the web of the mysterious Ten Rings organization.'),(24,'Eternals','https://image.tmdb.org/t/p/w500/4DiJQ1mBp4ztoznZADIrPg69v46.jpg','https://www.youtube.com/watch?v=x_me3xsvDgk','28,12,878,14',7.1,'The Eternals are a team of ancient aliens who have been living on Earth in secret for thousands of years. When an unexpected tragedy forces them out of the shadows, they are forced to reunite against mankindâ€™s most ancient enemy, the Deviants.'),(25,'Never Back Down: Revolt','https://image.tmdb.org/t/p/w500/icAG01wZyy1ZpS3UEnPReph3jMV.jpg','https://www.youtube.com/watch?v=SZ8X3uF1FQM','28,18',6.2,'An amateur fighter is lured by a trafficking syndicate specializing in elite underground fighting where her brutal captor forces her to fight or face certain death.'),(26,'Free Guy','https://image.tmdb.org/t/p/w500/xmbU4JTUm8rsdtn7Y3Fcm30GpeT.jpg','https://www.youtube.com/watch?v=cttnRmcr_ME','35,28,12,878',7.8,'A bank teller called Guy realizes he is a background character in an open world video game called Free City that will soon go offline.'),(27,'Army of Thieves','https://image.tmdb.org/t/p/w500/iPTZGFmPs7HsXHYxiuxGolihjOH.jpg','https://www.youtube.com/watch?v=Ith2WetKXlg','28,80,53',7,'A mysterious woman recruits bank teller Ludwig Dieter to lead a group of aspiring thieves on a top-secret heist during the early stages of the zombie apocalypse.'),(28,'Jungle Cruise','https://image.tmdb.org/t/p/w500/9dKCd55IuTT5QRs989m9Qlb7d2B.jpg','https://www.youtube.com/watch?v=hJZ82pwwJqA','12,14,35,28',7.7,'Dr. Lily Houghton enlists the aid of wisecracking skipper Frank Wolff to take her down the Amazon in his dilapidated boat. Together, they search for an ancient tree that holds the power to heal â€“ a discovery that will change the future of medicine.'),(29,'The Suicide Squad','https://image.tmdb.org/t/p/w500/kb4s0ML0iVZlG6wAKbbs9NAm6X.jpg','https://www.youtube.com/watch?v=eg5ciqQzmK0','28,12,14',7.8,'Supervillains Harley Quinn, Bloodsport, Peacemaker and a collection of nutty cons at Belle Reve prison join the super-secret, super-shady Task Force X as they are dropped off at the remote, enemy-infused island of Corto Maltese.'),(30,'Gunpowder Milkshake','https://image.tmdb.org/t/p/w500/5AaKulwpUtkscAokKWtLenGTfVS.jpg','https://www.youtube.com/watch?v=YLMT5uXjFLY','28,53,80',6.5,'In her turbulent life as a professional assassin, Sam has no choice but to go rogue to save the life of an innocent 8-year-old girl in the middle of the gang war she has unleashed.'),(31,'Deathstroke: Knights & Dragons - The Movie','https://image.tmdb.org/t/p/w500/vFIHbiy55smzi50RmF8LQjmpGcx.jpg','https://www.youtube.com/watch?v=MsdVLe2xi9g','16,28,12,878',7,'The assassin Deathstroke tries to save his family from the wrath of H.I.V.E. and the murderous Jackal.'),(32,'The Simpsons in Plusaversary','https://image.tmdb.org/t/p/w500/p5jzbffrXuBTjsiwrQ3aOMTrvCj.jpg','','16,35',6.9,'The Simpsons host a Disney+ Day party and everyone is on the listâ€¦ except Homer. With friends from across the service and music fit for a Disney Princess, Plusaversary is Springfieldâ€™s event of the year.'),(33,'Free Guy','https://image.tmdb.org/t/p/w500/xmbU4JTUm8rsdtn7Y3Fcm30GpeT.jpg','https://www.youtube.com/watch?v=cttnRmcr_ME','35,28,12,878',7.8,'A bank teller called Guy realizes he is a background character in an open world video game called Free City that will soon go offline.'),(34,'Home Sweet Home Alone','https://image.tmdb.org/t/p/w500/fP3VvqUjEBjawxZHL4sYCq2ZdJD.jpg','https://www.youtube.com/watch?v=FOXW8ur2jr4','10751,35',5.5,'After being left at home by himself for the holidays, 10-year-old Max Mercer must work to defend his home from a married couple who tries to steal back a valuable heirloom.'),(35,'The Addams Family 2','https://image.tmdb.org/t/p/w500/ld7YB9vBRp1GM1DT3KmFWSmtBPB.jpg','https://www.youtube.com/watch?v=946LiJiMQrQ','16,12,35,10751',7.3,'The Addams get tangled up in more wacky adventures and find themselves involved in hilarious run-ins with all sorts of unsuspecting characters.'),(36,'Jungle Cruise','https://image.tmdb.org/t/p/w500/9dKCd55IuTT5QRs989m9Qlb7d2B.jpg','https://www.youtube.com/watch?v=hJZ82pwwJqA','12,14,35,28',7.7,'Dr. Lily Houghton enlists the aid of wisecracking skipper Frank Wolff to take her down the Amazon in his dilapidated boat. Together, they search for an ancient tree that holds the power to heal â€“ a discovery that will change the future of medicine.'),(37,'PAW Patrol: The Movie','https://image.tmdb.org/t/p/w500/ic0intvXZSfBlYPIvWXpU1ivUCO.jpg','https://www.youtube.com/watch?v=LRMTr2VZcr8','16,10751,12,35',7.6,'Ryder and the pups are called to Adventure City to stop Mayor Humdinger from turning the bustling metropolis into a state of chaos.'),(38,'Luca','https://image.tmdb.org/t/p/w500/jTswp6KyDYKtvC52GbHagrZbGvD.jpg','https://www.youtube.com/watch?v=mYfJxlgR2jw','16,35,10751,14',8,'Luca and his best friend Alberto experience an unforgettable summer on the Italian Riviera. But all the fun is threatened by a deeply-held secret: they are sea monsters from another world just below the waterâ€™s surface.'),(39,'Nobody Sleeps in the Woods Tonight 2','https://image.tmdb.org/t/p/w500/6QvepemlDGIiiYsVs0Y1ieFuG7N.jpg','https://www.youtube.com/watch?v=R_wIaGkiUBI','27,53,35',4,'When something horrible happens to the only survivor of a bloody massacre, an insecure rookie cop must overcome his fears to stop further carnage.'),(40,'Ghostbusters: Afterlife','https://image.tmdb.org/t/p/w500/kHNWm8YDl1Pf6tyzluLagbtkU94.jpg','https://www.youtube.com/watch?v=lnKmAVLC3jU','35,14,12,878',7.5,'When a single mom and her two kids arrive in a small town, they begin to discover their connection to the original Ghostbusters and the secret legacy their grandfather left behind.'),(41,'Home Sweet Home Alone','https://image.tmdb.org/t/p/w500/fP3VvqUjEBjawxZHL4sYCq2ZdJD.jpg','https://www.youtube.com/watch?v=FOXW8ur2jr4','10751,35',5.5,'After being left at home by himself for the holidays, 10-year-old Max Mercer must work to defend his home from a married couple who tries to steal back a valuable heirloom.'),(42,'The Addams Family 2','https://image.tmdb.org/t/p/w500/ld7YB9vBRp1GM1DT3KmFWSmtBPB.jpg','https://www.youtube.com/watch?v=946LiJiMQrQ','16,12,35,10751',7.3,'The Addams get tangled up in more wacky adventures and find themselves involved in hilarious run-ins with all sorts of unsuspecting characters.'),(43,'PAW Patrol: The Movie','https://image.tmdb.org/t/p/w500/ic0intvXZSfBlYPIvWXpU1ivUCO.jpg','https://www.youtube.com/watch?v=LRMTr2VZcr8','16,10751,12,35',7.6,'Ryder and the pups are called to Adventure City to stop Mayor Humdinger from turning the bustling metropolis into a state of chaos.'),(44,'Luca','https://image.tmdb.org/t/p/w500/jTswp6KyDYKtvC52GbHagrZbGvD.jpg','https://www.youtube.com/watch?v=mYfJxlgR2jw','16,35,10751,14',8,'Luca and his best friend Alberto experience an unforgettable summer on the Italian Riviera. But all the fun is threatened by a deeply-held secret: they are sea monsters from another world just below the waterâ€™s surface.'),(45,'Miraculous World: Shanghai â€“ The Legend of Ladydragon','https://image.tmdb.org/t/p/w500/qQ0VKsGRQ2ofAmswGNzZnvC1xPE.jpg','','16,35,10751,12',8,'On school break, Marinette heads to Shanghai to meet Adrien. But after arriving, Marinette loses all her stuff, including the Miraculous that allows her to turn into Ladybug!'),(46,'LOL Surprise: The Movie','https://image.tmdb.org/t/p/w500/vbc8H3SR3BM6TZkJw6UBN4ekdjK.jpg','','16,10751',7.3,'Dazzling doll sisters Queen Bee and Royal Bee make their first movie with help from their fashionable friends in this one-of-a-kind magical adventure.'),(47,'Miraculous World: New York, United HeroeZ','https://image.tmdb.org/t/p/w500/19kfvGktytDZInUmpv3WlaHoTxP.jpg','','16,10751,35,12,10770',8.3,'During a school field trip, Ladybug and Cat Noir meet the American superheroes, whom they have to save from an akumatised super-villain. They discover that Miraculous exist in the United States too.'),(48,'Straight Outta Nowhere: Scooby-Doo! Meets Courage the Cowardly Dog','https://image.tmdb.org/t/p/w500/uIdMpWrQ30SHPINsy7LcPFloyvO.jpg','https://www.youtube.com/watch?v=2vnTvMK3vVc','16,35,9648,10751,14',8.3,'With Mystery, Inc. on the tail of a strange object in Nowhere, Kansas, the strange hometown of Eustice, Muriel, and Courage, the gang soon find themselves contending with a giant cicada monster and her winged warriors.');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userID` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `acc_date` datetime NOT NULL DEFAULT curtime(),
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'kjkjkjkj','lewa','987456123Op','2021-11-29 15:05:42'),(2,'brigita@getflix.com','Brigita Sabutyte','12345','2021-11-29 15:05:42'),(3,'kjkjkjkj','lewa','987456123Op','2021-11-29 15:05:42'),(4,'sjksjsk','Teo','testpass','2021-11-29 15:05:42');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-01 10:40:43
