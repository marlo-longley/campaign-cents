-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: kochtracker
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `state_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'PK: Unique state ID',
  `state_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT 'State name with first letter capital',
  `state` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Optional state abbreviation (US is 2 capital letters)',
  `center_lat` decimal(9,6) NOT NULL,
  `center_lng` decimal(9,6) NOT NULL,
  `ne_lat` decimal(9,6) NOT NULL,
  `ne_lng` decimal(9,6) NOT NULL,
  `sw_lat` decimal(9,6) NOT NULL,
  `sw_lng` decimal(9,6) NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Alabama','AL',32.318231,-86.902298,35.007889,-84.888246,30.194133,-88.473227),(2,'Alaska','AK',64.200841,-149.493673,71.390235,-129.994556,51.214766,172.444517),(3,'Arizona','AZ',34.048928,-111.093731,37.004260,-109.045223,31.332177,-114.816591),(4,'Arkansas','AR',35.201050,-91.831833,36.499749,-89.646815,33.004106,-94.617919),(5,'California','CA',36.778261,-119.417932,42.009517,-114.131211,32.534232,-124.409620),(6,'Colorado','CO',39.550051,-105.782067,41.003444,-102.040878,36.992424,-109.060256),(7,'Connecticut','CT',41.603221,-73.087749,42.050587,-71.787239,40.985060,-73.727775),(8,'Delaware','DE',38.910833,-75.527670,39.839484,-75.048346,38.451018,-75.789148),(9,'District of Columbia','DC',38.905985,-77.033418,38.995548,-76.909393,38.803149,-77.119740),(10,'Florida','FL',27.664827,-81.515754,31.000968,-80.031137,24.950488,-87.634896),(11,'Georgia','GA',32.165622,-82.900075,35.000659,-80.840787,30.355591,-85.605165),(12,'Hawaii','HI',19.896766,-155.582782,22.370000,-154.480000,18.550000,-160.530000),(13,'Idaho','ID',44.068202,-114.742041,49.001146,-111.043495,41.988005,-117.241366),(14,'Illinois','IL',40.633125,-89.398528,42.508338,-87.495199,36.973315,-91.511817),(15,'Indiana','IN',40.267194,-86.134902,41.760697,-84.784662,37.771742,-88.097892),(16,'Iowa','IA',41.878003,-93.097702,43.501196,-90.142625,40.375437,-96.639535),(17,'Kansas','KS',39.011902,-98.484247,40.004542,-94.588387,36.993016,-102.051769),(18,'Kentucky','KY',37.839333,-84.270018,39.147458,-81.964971,36.497220,-89.569328),(19,'Louisiana','LA',30.984298,-91.962333,33.019544,-88.818046,28.927209,-94.043352),(20,'Maine','ME',45.253783,-69.445469,47.459673,-66.949607,42.974705,-71.084334),(21,'Maryland','MD',39.045755,-76.641271,39.723037,-75.049181,37.889743,-79.487651),(22,'Massachusetts','MA',42.407211,-71.382437,42.886790,-69.927992,41.239090,-73.508142),(23,'Michigan','MI',44.314844,-85.602364,48.198608,-82.413474,41.696118,-90.418136),(24,'Minnesota','MN',46.729553,-94.685900,49.384358,-89.491833,43.499361,-97.239196),(25,'Mississippi','MS',32.354668,-89.398528,34.996109,-88.099430,30.174103,-91.652994),(26,'Missouri','MO',37.964253,-91.831833,40.613640,-89.104460,35.995683,-95.774704),(27,'Montana','MT',46.879682,-110.362566,49.001390,-104.039563,44.358209,-116.050003),(28,'Nebraska','NE',41.492537,-99.901813,43.001707,-95.308290,39.999932,-104.053514),(29,'Nevada','NV',38.802610,-116.419389,42.002207,-114.039648,35.001857,-120.006473),(30,'New Hampshire','NH',43.193852,-71.572395,45.305476,-70.602656,42.696985,-72.557185),(31,'New Jersey','NJ',40.058324,-74.405661,41.357423,-73.902439,38.928625,-75.559792),(32,'New Mexico','NM',34.519940,-105.870090,37.000293,-103.001964,31.332172,-109.050173),(33,'New York','NY',43.299429,-74.217933,45.015865,-71.856264,40.496019,-79.762144),(34,'North Carolina','NC',35.759573,-79.019300,36.588157,-75.460666,33.840969,-84.321869),(35,'North Dakota','ND',47.551493,-101.002012,49.000692,-96.554491,45.935072,-104.050040),(36,'Ohio','OH',40.417287,-82.907123,41.977302,-80.518200,38.403423,-84.820305),(37,'Oklahoma','OK',35.007752,-97.092877,37.002312,-94.430662,33.617219,-103.002455),(38,'Oregon','OR',43.804133,-120.554201,46.292016,-116.463262,41.991794,-124.612937),(39,'Pennsylvania','PA',41.203322,-77.194525,42.269387,-74.689502,39.719799,-80.519895),(40,'Rhode Island','RI',41.580095,-71.477429,42.018800,-71.120559,41.146656,-71.892343),(41,'South Carolina','SC',33.836081,-81.163725,35.215540,-78.540817,32.034560,-83.353259),(42,'South Dakota','SD',43.969515,-99.901813,45.945713,-96.436589,42.479686,-104.057739),(43,'Tennessee','TN',35.517491,-86.580447,36.677985,-81.646900,34.982924,-90.310298),(44,'Texas','TX',31.968599,-99.901813,36.501509,-93.508039,25.837164,-106.645646),(45,'Utah','UT',39.320980,-111.093731,42.001618,-109.041058,36.997903,-114.052998),(46,'Vermont','VT',44.558803,-72.577841,45.016659,-71.465039,42.726850,-73.430527),(47,'Virginia','VA',37.431573,-78.656894,39.466012,-75.242157,36.540759,-83.675415),(48,'Washington','WA',47.751074,-120.740139,49.002431,-116.915580,45.548599,-124.785717),(49,'West Virginia','WV',38.597626,-80.454903,40.638801,-77.718968,37.201540,-82.644413),(50,'Wisconsin','WI',43.784440,-88.787868,47.080718,-86.763998,42.491864,-92.889433),(51,'Wyoming','WY',43.075968,-107.290284,45.005904,-104.052245,40.994746,-111.056889);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-11 16:59:46
