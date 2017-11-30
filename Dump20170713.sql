-- MySQL dump 10.13  Distrib 5.7.18, for Linux (i686)
--
-- Host: localhost    Database: airBnbDatabase
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

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
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `cityId` int(40) NOT NULL AUTO_INCREMENT,
  `cityName` varchar(40) DEFAULT NULL,
  `countryId` int(30) DEFAULT NULL,
  PRIMARY KEY (`cityId`),
  KEY `countryId` (`countryId`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`countryId`) REFERENCES `countries` (`countryId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (22,'Jerusalem',1),(23,'Tel Aviv',1),(33,'Moskva',2),(34,'Saint Petersburg',2),(44,'New York',5),(45,'San Francisco',5),(55,'Paris',3),(56,'Marseille',3),(66,'London',4),(67,'Liverpool',4);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `countryId` int(30) NOT NULL AUTO_INCREMENT,
  `countryName` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`countryId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Israel'),(2,'Russia'),(3,'France'),(4,'United Kingdom'),(5,'United States\n');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `locationName` varchar(100) NOT NULL,
  `Bedroom` int(2) DEFAULT NULL,
  `bed` int(2) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `lat` int(20) DEFAULT NULL,
  `lng` int(20) DEFAULT NULL,
  `city` int(10) DEFAULT NULL,
  `about` varchar(900) DEFAULT NULL,
  `imageUrl` varchar(900) DEFAULT NULL,
  `maxGuests` int(3) DEFAULT NULL,
  `reviewsTable` varchar(30) DEFAULT NULL,
  `numbersOfReviews` int(10) DEFAULT NULL,
  `reviewsAverage` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (31,'joby',2,2,20,56,38,33,'The Off-grid itHouse brings together raw industrial aesthetics with the tactics of green design to forge a new home in the sunbaked wilds of the California high desert.','/static/img/pic1.jpg',3,'reviewsjoby31',1,'1.00'),(32,'Brear',3,3,30,60,30,34,'The world famous Seashell house is a gated property .... owners/architects live next door. You will have a private pool, two king beds kitchenette and BBQ . Free wifi, air conditioning. I am proud to be able to enable your stay .','/static/img/pic2.jpg',6,'reviewsBrear32',3,'1.67'),(33,'Dottie',3,3,50,60,30,34,'Red cinder leads you through the dense jungle to your secluded bamboo treehouse. Nestled on top of stilts 15\' up in the canopy of the local flora, ascend to your retreat via the trapdoor or begin your adventure in Volcano National Park 10 miles away.','/static/img/pic3.jpg',6,'reviewsDottie33',3,'4.00'),(34,'Gussie',3,3,70,49,2,55,'Suite of three beautifully furnished rooms set amongst the trees. Just minutes from downtown, this secluded property is an urban retreat like no other. The treehouse provides and intimate, simple and calming retreat for 2 people. The treehouse is the subject of innumerable articles, blogs and was recently featured on Treehouse Masters Ultimate Treehouses. The treehouse','/static/img/pic4.jpg',6,'reviewsGussie34',2,'4.50'),(35,'Ann-marie',4,4,80,43,5,56,'casaBARTHEL is a perfect place for a vacation and an artist residency, immersed in the Tuscan landscape only 15\' from the Duomo and 30\' from Siena. Come and live with us; enjoy our olive trees, the kitchen garden and our family life style away from the working rhythm. By providing wifi only in the communal courtyard we suggest our guests to utilize internet only when is really needed. Taking a break from been connected with elsewhere and enjoy the \'here and now\' could be our best present to you!','/static/img/pic5.jpg',5,'reviewsAnnmarie35',2,'4.00'),(36,'Ford',3,3,20,43,5,56,'Escape Los Angeles to this incredible getaway! Perched on a private bluff and surrounded by pristine nature and wildlife the airstream boasts infinite ocean views, quietness and style.','/static/img/pic6.jpg',3,'reviewsFord36',2,'4.00'),(37,'Cobbie',2,2,80,41,-74,44,'Charming and romantic,\' Round\' Cottage on the Santarella Estate in the Berkshires in Western Massachusetts. Formerly, the cottage was sculptor Henry Hudson Kitson\'s summer studio on the Santarella Estate. The two-story cottage has a charming bedroom with 35 foot high conical ceiling with canopied bed upstairs with views through massive, multi-paned \'mill windows\' to the trees and sky and out to the lily pond. The downstairs sitting room looks out on the babbling brook and lovely gardens.','/static/img/pic7.jpg',4,'reviewsCobbie37',2,'3.00'),(38,'Rhett',2,2,72,38,-122,45,'The Joshua Tree House is a two bed two bath 1949 hacienda located 10 minutes from the west entrance of Joshua Tree National Park in Joshua Tree, CA. This is a place for dreamers to reset, reflect, and create. Designed with a \'slow\' pace in mind, our hope is that you enjoy every part of your stay; from making local coffee by drip in the morning, choosing the perfect record to put on as the sun sets, or by relaxing in the hot tub surrounded by over 100 Joshua Trees and a starry night sky.','/static/img/pic8.jpg',4,'reviewsRhett38',3,'4.00'),(39,'Rubie',2,2,90,32,35,22,'Three apartments, architectural house in north Iceland. This is one of the apartments in Villa Lola, located in Vaðlaheiði near Akureyri, the capital of north Iceland. The villa is located in the exclusive residence area of Akureyri. This location offers you a quiet atmosfair and a touch of the nature. You will have a view over the bay and Akureyri . In the winter time you can enjoy the aurora borealis and in the summer time the midnight sun. ','/static/img/pic9.jpg',3,'reviewsRubie39',2,'4.00'),(40,'Hetti',5,5,100,32,35,23,'The house is located in a beautiful natural park, fully enclosed, supervised by a couple of \'caseiros\' (caretaker and gardener)** House for a minimum of 6 adults from 01/12 to 30/02Children under 5 do not pay their stay. From five years old price is similar as adult price.NB: the price of 79US$ is per person and per nightNB : sorry, dogs or animals are not admitted','/static/img/pic10.jpg',5,'reviewsHetti40',2,'4.00'),(41,'Brennen',2,2,60,53,-3,67,'*This cabin was just featured in the New York Times!* (January 2017) A magical homesteader cabin embedded in 5 acres of unfenced Joshua Tree desert wilderness, 12 minutes from downtown Joshua Tree. Experience peace, quiet, wildlife and STARS—on the grid but off the pavement.','/static/img/pic11.jpg',4,'reviewsBrennen41',2,'4.50'),(42,'Olivia',1,2,120,56,38,33,'Featured in numerous books on natural building, our cottage is a welcoming and cozy retreat hand sculpted of local, sustainable natural materials located on a lovely acreage with sheep, gardens and orchards.','/static/img/pic12.jpg',2,'reviewsOlivia42',2,'3.50'),(43,'Hillier',2,2,50,49,2,55,'Selected as one of Airbnb\'s top picks, Sunrise house has been delighting its guests and celebrities from all over. In such a tranquil setting, often with a gentle breeze blowing, our guests are soothed into sitting back, relaxing and marveling.XX SPECIAL NOTE: ONGOING ADJACENT CONSTRUCTION WITH BAMBOO MON TO FRI 8am to 5pm MAY CAUSE SOME NOISE XX','/static/img/pic13.jpg',4,'reviewsHillier43',2,'3.50'),(44,'Loretta',1,1,110,32,35,23,'Last Minute Rates for July 2017! The Love Villas (5) are maintained to high standards & offer excellent value for money as budget family Villas in the heart of 66 surf beach area. All Villas have private pools, daily servicing, speedy wifi, night security; ask about extras incl breakfast, airport transfers, motorbike hire & day trips.Love Villa4 is a traditional Balinese home converted to Villa: sleeps 6+ in 3 bedrooms, large open living to sunny pool, just 5min walk to amazing 66 surf beach.','/static/img/pic14.jpg',1,'reviewsLoretta44',2,'3.00'),(45,'Stacy',4,4,90,52,0,66,'An ancient trullo surrounded by panoramic contryside , away from the noise. Just relax, time taken lying on the hammock or a dip in our cristalline sea and in the evening a great apulian dinner in nearby villages. simple and authentic things','/static/img/pic15.jpg',5,'reviewsStacy45',2,'4.50'),(46,'Belia',3,3,70,60,30,34,'This room perfectly embodies the troglodyte spirit as desired by the owners. The classic period furniture as well as the open bathroom take you on a unique journey through the history of France.','/static/img/pic16.jpg',4,'reviewsBelia46',2,'3.00'),(47,'Belia',2,2,15,38,-122,45,'Hector Cave House, carved into the unique caldera cliff for more than 250 years, was originally used as a wine cellar.Then It became a family owned house, which then opened its doors to share its unique character to travelers from around the world. Since 2016 two additional cave houses have been renovated on top of the Hector Cave house.','/static/img/pic17.jpg',4,'reviewsBelia47',2,'2.00'),(48,'Mandie',3,3,80,32,35,23,'Very spacious apartment located in a modernist luxury building. Only a 10m walk to Plaza Catalunya and main sights. Fully equipped. 3 double bedrooms + 2 complete bathrooms + Giant living room & kitchen. Luxury details in a unique Barcelona style decoration.','/static/img/pic18.jpg',5,'reviewsMandie48',2,'2.50'),(49,'Branden',2,2,100,53,-3,67,'Be surrounded by nature and yet have all the comforts of home. Be our guest in this cozy log cabin surrounded by tall pines and mountains, and yet still a short drive to Lake Tahoe and the casinos.','/static/img/pic19.jpg',4,'reviewsBranden49',2,'3.00'),(50,'Der',1,1,80,43,5,56,'Escape the city bustle and experience the quiet and serenity of this tower guest retreat surrounded by thousands of acres of park lands for hiking, biking or just sitting on the deck bird watching or relaxing.','/static/img/pic20.jpg',2,'reviewsDer50',2,'4.00'),(51,'Gilburt',2,2,90,56,38,33,'A sturdy cabin with lots of natural light, right in a flowerful garden. It will feel like living outdoors, while inside the cabin there is a lingering aroma of larix wood and crackling of the woodstove. This charming garden room has a 180 degrees garden view, with large windows in the front and in the roof. (Full length curtains for the windows allow for privacy.)','/static/img/pic21.jpg',3,'reviewsGilburt51',2,'3.00'),(52,'Yvon',2,2,60,32,35,22,'This bamboo cottage is a secluded eco retreat down a quiet foot path nestled in the rice fields and only a five minute walk to central Ubud. Open air basket weave bedroom with mini loft, modern elegant bathroom and outdoor living area make this a truly unique Bali experience.','/static/img/pic22.jpg',4,'reviewsYvon52',2,'3.00'),(53,'Willis',2,2,50,49,2,55,'A new spacious villa, one floor. All commodities, jacuzzi and beautiful scenery. Ideal for families or friends. The villa is located in the exclusive residence area of Akureyri, the Northern capital of Iceland, offers easy access not only to the center of Akureyri but also all the interesting sites surrounding this Northern capital. Just to give an example of the numerous opportunities for excursions; the most popular being - the road skirting the beautiful western shore of the Eyjafjordur Fjord, the magnificent waterfalls, Goðafoss and Dettifoss, Dimmuborgir, Mývatn and the Grand Canyon of Jökulsárgljúfur. It is also possible to take an organized day trip from Akureyri to the island of Grimsey, which straddles the Arctic Circle.','/static/img/pic23.jpg',2,'reviewsWillis53',2,'3.50'),(54,'Joanne',1,1,25,49,2,55,'Choose from 15 grand rooms to call home with delicious breakfast in our fabulous relaxed castle in glorious Northern England which is our family home. Turrets, tudor panelling, gothic windows, it\'s all here. Evening meals available separately.','/static/img/pic24.jpg',1,'reviewsJoanne54',5,'4.20'),(55,'Debbie',3,3,80,56,38,33,'This cave house, hanging on the cliffs of the caldera, is part of a traditional synthesis of houses owned by a family of architects.','/static/img/pic25.jpg',5,'reviewsDebbie55',1,'2.00'),(56,'Bernete',1,3,53,32,35,22,'This inspired dwelling nestled right into the breathtaking Columbia River Gorge mountainside. Reverently framed by the iconic round doorway, the wondrous views will entrance your imagination and inspire an unforgettable journey. Every nook of this little habitation will warm your sole, every cranny will charm your expedition of repose. Up the pathway, tucked into the earth, an unbelievable adventure awaits!','/static/img/pic26.jpg',3,'reviewsBernete56',4,'3.25'),(57,'Lula',2,3,35,52,0,66,'Enjoy peace, quiet, and beautiful views in Cazadero. For each rental, $50 will be donated to Raphael House, a San Francisco organization whose goal is to help at-risk families achieve stable housing and financial independence.','/static/img/pic27.jpg',4,'reviewsLula57',4,'2.75'),(58,'Mavis',3,3,31,38,-122,45,'With a geodesic dome loft & a large deck in the trees, you\'ll feel like you\'re in a tree house in the woods. (As we book up months in advance, if you would like a nature retreat here, reserve our sweet Hummingbird Haven: https://www.airbnb.com/rooms/6562632) We are in a quiet yet convenient location. Shaded by Oak and Madrone trees and next to a Redwood grove, you can enjoy the outdoors from the deck. In the summer, it is cool and in the winter you might get to hear the creek running below.','/static/img/pic28.jpg',5,'reviewsMavis58',4,'3.00'),(59,'Jacquetta',2,3,20,43,5,56,'Located in the coffee region, in the Andean mountains of Colombia, South America, a charming cabana made from bamboo, with a great view and a \'sendero\' or pathway through the bamboo forest which criss-crosses our 5 acre organic farm, leading down to a stream. A place to relax and commune with nature.','/static/img/pic29.jpg',5,'reviewsJacquetta59',1,'3.00'),(60,'Mata',3,3,30,32,35,23,'Loft with a ton of personality and environmentally conscious! Located in a peaceful courtyard, still very central, just steps away from the vibrant night life of the Navigli. My loft and linen are exclusively cleaned with organic, low impact, detergents. Porta Ticinese, Bocconi, Naba and Tortona are at 10mins walk. 20 mins walk from the Duomo. Tram 9 and 3 stops are at doorstep. Easily sleeps 4 (+1 extra place on foldable bed). 10 mins walk from the Green Underground (Porta Genova)','/static/img/pic30.jpg',6,'reviewsMata60',5,'1.60');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservations` (
  `id` int(40) NOT NULL AUTO_INCREMENT,
  `checkIN` varchar(10) DEFAULT NULL,
  `checkOut` varchar(10) DEFAULT NULL,
  `guests` int(3) DEFAULT NULL,
  `nights` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsAnnmarie35`
--

DROP TABLE IF EXISTS `reviewsAnnmarie35`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsAnnmarie35` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsAnnmarie35`
--

LOCK TABLES `reviewsAnnmarie35` WRITE;
/*!40000 ALTER TABLE `reviewsAnnmarie35` DISABLE KEYS */;
INSERT INTO `reviewsAnnmarie35` VALUES (1,'not good','This place is out of the city :) From the bamboo house to the Statue is around 10-15 mins walk, and if you want to walk to Ubud palace, it\'s another 15 mins. Not a bad walk. The bed was big and the shower is ok. The water pressure is not enough and there are frogs noise all night long (haha, even there\'s one at the sink). It\'s a house with no lock and only curtains. It\'s pretty safe as nobody outside would come in. It\'s a good place to stay once in a life time. The view is awesome.',5,'Ann marie Gavrielly'),(2,'Khaki','This place is AMAZING! Even better than on the photos. It\'s surrounded by rice fields, so relaxing! The little cottage is super cute, and is immersed in nature: greens are climbing the bathroom walls, you fall asleep hearing the sound of the river and the sun rises behind your bed in the morning.',3,'Lorrie Blankenship');
/*!40000 ALTER TABLE `reviewsAnnmarie35` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsBelia46`
--

DROP TABLE IF EXISTS `reviewsBelia46`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsBelia46` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsBelia46`
--

LOCK TABLES `reviewsBelia46` WRITE;
/*!40000 ALTER TABLE `reviewsBelia46` DISABLE KEYS */;
INSERT INTO `reviewsBelia46` VALUES (1,'good','Great stay here in Ubud! The bamboo cottage was so beautiful and clean and the staff was super friendly. Would recommend to anyone traveling to Ubud!',3,'Belia Sandercroft'),(2,'Maroon','Its hard to get into the phone and talk to them that we could arrive but like to negociate if we can arrived in the morning to see the place because still check in hours, but no return call.',3,'Graig Worms');
/*!40000 ALTER TABLE `reviewsBelia46` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsBelia47`
--

DROP TABLE IF EXISTS `reviewsBelia47`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsBelia47` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsBelia47`
--

LOCK TABLES `reviewsBelia47` WRITE;
/*!40000 ALTER TABLE `reviewsBelia47` DISABLE KEYS */;
INSERT INTO `reviewsBelia47` VALUES (1,'good','First off, the people working here are an absolute delight. So helpful and kind. The structure of this cottage is stunning! Plus the landscape is beautiful. Make sure to get a massage closer up the road with incredible views of the rice fields. The only bummer was that the house is on the path to the other cottages/rooms further down the road, which meant people were walking by and peaking in our room. I wish there was more privacy.',3,'Belia Sandercroft'),(2,'Puce','Great location. Wayan\'s staff helped me reach the place. Hidden gem in the rice fields! Had the best sleeping experience with the nature. Breakfast was delicious. Perfect for nature lover. Best if you bring your own motor bike although the road through the rice fields can be challenging.',1,'Yvor Cramb');
/*!40000 ALTER TABLE `reviewsBelia47` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsBernete56`
--

DROP TABLE IF EXISTS `reviewsBernete56`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsBernete56` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsBernete56`
--

LOCK TABLES `reviewsBernete56` WRITE;
/*!40000 ALTER TABLE `reviewsBernete56` DISABLE KEYS */;
INSERT INTO `reviewsBernete56` VALUES (1,'good','We stayed in Wayan\'s place for four nights, two nights in eco bamboo house and another two in tree house. The experience is just incredible, but for us it was a little bit uncomfortable. But it\'s because we are not accustomed to such type of hotels, with just two nights would be enough.',3,'Doy Scarth'),(2,'bad','Beautiful naturally experience! The stuff is very friendly and helpful. The location is awesome... but we had many problems with big spiders so that we decided to moved in another hotel.',1,'Rupert Neicho'),(3,'great place','The stay at the cottage was amazing, one of the highlights of our Indonesia trip. Location is perfect, just in the middle of rise fields. The cottage itself and \'central facilities\' are great: Cottage looks exactly like on the photos, with shower under the sky, little tarrace where you can enjoy your breakfest, which is brought to you by the staff, etc.',5,'Kathrine Huckin'),(4,'nice place','Waiter is very friendly and people who walk pass my house will say hello to me,everything is so perfect.',4,'Danny Assiratti');
/*!40000 ALTER TABLE `reviewsBernete56` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsBranden49`
--

DROP TABLE IF EXISTS `reviewsBranden49`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsBranden49` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsBranden49`
--

LOCK TABLES `reviewsBranden49` WRITE;
/*!40000 ALTER TABLE `reviewsBranden49` DISABLE KEYS */;
INSERT INTO `reviewsBranden49` VALUES (1,'not good','Thank you for the unique and amazing experience! The house is exactly how it is in the pictures, very open and spacious. Showering under the stars was an unforgettable experience as well as being served breakfast in the patio overlooking the rice fields. Definitely recommend this place if your looking for something different and unique in Bali.',4,'Branden Ellesworthe'),(2,'Indigo','The eco cottage is situated in a really good spot but away from the hustle and bustle. It is in the countryside so you have to be brace with insects etc but it\'s worth it to see another side to Bali. You can see the farmers bless their rice and enjoy the peacefulness. Next to the cottage there is a lovely lounge and pool area where you can grab a drink and food.',2,'Nathanael Duigan');
/*!40000 ALTER TABLE `reviewsBranden49` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsBrear32`
--

DROP TABLE IF EXISTS `reviewsBrear32`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsBrear32` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsBrear32`
--

LOCK TABLES `reviewsBrear32` WRITE;
/*!40000 ALTER TABLE `reviewsBrear32` DISABLE KEYS */;
INSERT INTO `reviewsBrear32` VALUES (1,'good','Poor/no WiFi connection at the cottage (good signal at the other rooms) and due to humid weather, moist and stinky sheets. Cottage has some privacy issues even though it has its \'own\' and \'private\' path and enterance. Unfortunately all other visitors (and sorry to say that but some of staff) were abusing that enterance and private path by opening the door and not closing it... other than that; great and delicious food, amazing staff and team members. ',2,'Brear Althrop'),(2,'good','If you are into the eco lodging thing then it\'s probably your thing! It was a new and interesting, don\'t think I could do it for more than a week(just a personal thing). The staff was super friendly and the pool/social spot was a really fun spot. I feel like they actually under sell how nice the spot truly is. A couple bugs and some rice fields never hurt anyone. Great place to unwind.... ohh and the serve cold beer!',1,'Joby Ommundsen'),(3,'good','The cottage is surrounded by ricefield paddies, which is amazing. Even though it is only a small walk to the centre of Ubud the area around the cottage is very peaceful and quiet. We were surprised that there was a common area as well which included a bar and swimmingpool, which we didn\'t even know beforehand. Also, the breakfast was delicious. ',2,'Brear Althrop');
/*!40000 ALTER TABLE `reviewsBrear32` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsBrennen41`
--

DROP TABLE IF EXISTS `reviewsBrennen41`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsBrennen41` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsBrennen41`
--

LOCK TABLES `reviewsBrennen41` WRITE;
/*!40000 ALTER TABLE `reviewsBrennen41` DISABLE KEYS */;
INSERT INTO `reviewsBrennen41` VALUES (1,'good','Amazing cottage with awesome service. You\'all sleep in between the rice fields and are in for a very special stay. We\'ll certainly go back in the future and recommend this location to everyone!',5,'Brennen Houseago'),(2,'Mauv','We loved our stay here! We were nervous to stay here after arriving in Ubud because we thought it might not be secluded enough or uncomfortable to sleep in. However it was secluded in the rice fields in a great location close to the center of Ubud.',4,'Devin Gai');
/*!40000 ALTER TABLE `reviewsBrennen41` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsCobbie37`
--

DROP TABLE IF EXISTS `reviewsCobbie37`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsCobbie37` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsCobbie37`
--

LOCK TABLES `reviewsCobbie37` WRITE;
/*!40000 ALTER TABLE `reviewsCobbie37` DISABLE KEYS */;
INSERT INTO `reviewsCobbie37` VALUES (1,'good','Amazing place, surronded by nature. Not suitable for people not loving nature and animals (normal to find small frogs and ants in the bathroom; lizards in the cottage and small snakes in the fields). A bit far from the center of Ubud, but we definitely loved our stay!',4,'Cobbie Savile'),(2,'Maroon','I came across to the listing and book it immediately. I didn\'t know that there\'s also a pool when I made a reservation. So it was a really nice surprise for us. We love the experience, the place, the surroundings, and everything. We have done some glamping (glamorous camping) before, and Wayan\'s place took our glamping experience to the next level. Highly recommended to give your children exciting experience to stay in the middle of a rice field in Ubud.',2,'Titus Britner');
/*!40000 ALTER TABLE `reviewsCobbie37` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsDebbie55`
--

DROP TABLE IF EXISTS `reviewsDebbie55`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsDebbie55` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsDebbie55`
--

LOCK TABLES `reviewsDebbie55` WRITE;
/*!40000 ALTER TABLE `reviewsDebbie55` DISABLE KEYS */;
INSERT INTO `reviewsDebbie55` VALUES (1,'bad place','This was our favourite place we stayed at during our trip to Bali! The staff are very friendly and the surrounding areas are very beautiful. Would absolutely stay again and have recommended to a lot of our friends.',2,'Trumann Clouston');
/*!40000 ALTER TABLE `reviewsDebbie55` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsDer50`
--

DROP TABLE IF EXISTS `reviewsDer50`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsDer50` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsDer50`
--

LOCK TABLES `reviewsDer50` WRITE;
/*!40000 ALTER TABLE `reviewsDer50` DISABLE KEYS */;
INSERT INTO `reviewsDer50` VALUES (1,'not good','I stayed at the eco bamboo cottage for a night. The hosts were extremely gracious from the moment we arrived. Since the hut is hidden in a field they came to receive us and took our luggage. Gave us all the facilities. They have a fantastic common area(not in pictures) with a pool and some furniture. ',5,'Der Downage'),(2,'Mauv','If exploring unique places is your thing, this is definitely a must! Located within the rice fields of Ubud, the scenery is breathtaking and the common area is great. The cottage was super clean and it will definitely have you exposed to all wildlife.',3,'Aeriel Braker');
/*!40000 ALTER TABLE `reviewsDer50` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsDottie33`
--

DROP TABLE IF EXISTS `reviewsDottie33`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsDottie33` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsDottie33`
--

LOCK TABLES `reviewsDottie33` WRITE;
/*!40000 ALTER TABLE `reviewsDottie33` DISABLE KEYS */;
INSERT INTO `reviewsDottie33` VALUES (1,'good','We absolutely LOVED our stay here! All the staff were so lovely & welcoming and the grounds were breathtaking. If you love nature this is place is defiantly worth it! Thank you so much firefly family! - Laura & Jae x',3,'Dottie Marlon'),(2,'good','We stayed in the eco cottage on the edge of Wayan\'s property. The cottage is in the middle of a working rice field and feels very secluded. It is an inside/outside cottage (no complete walls - curtains are used) so there were a lot of bugs as expected but the beds came with good mosquito nets. Loved the outdoor shower. The service was great as well - Wayan is very communicative and helped show us to the property when we arrived late at night.',5,'Dottie Marlon'),(3,'great','This is a truly unique and exceptional cottage in a quiet area of Ubud (yet only a 10 min walk to the city centre). Was such a great experience sleeping amongst the rice fields, listening to the local wildlife (which is harmless!) and the river flowing. ',4,'Dot Brlon');
/*!40000 ALTER TABLE `reviewsDottie33` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsFord36`
--

DROP TABLE IF EXISTS `reviewsFord36`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsFord36` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsFord36`
--

LOCK TABLES `reviewsFord36` WRITE;
/*!40000 ALTER TABLE `reviewsFord36` DISABLE KEYS */;
INSERT INTO `reviewsFord36` VALUES (1,'not good','Great experience when looking for something more than the usual hotel/guesthouse. So peaceful, can hear nature at night instead of busy Ubud. Would definitely stay again and highly recommended others to stay here!',3,'Ford Tween'),(2,'Puce','The cottage is so picturesque, please take time to enjoy it fully as it is magical. I would say this is the perfect place for two, stretch it to three if you get on well and expect less comfort up top. However up top you get the view :) Safety is no issue at all as it is a peaceful place.',5,'Faulkner Dickin');
/*!40000 ALTER TABLE `reviewsFord36` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsGilburt51`
--

DROP TABLE IF EXISTS `reviewsGilburt51`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsGilburt51` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsGilburt51`
--

LOCK TABLES `reviewsGilburt51` WRITE;
/*!40000 ALTER TABLE `reviewsGilburt51` DISABLE KEYS */;
INSERT INTO `reviewsGilburt51` VALUES (1,'not good','Such a fun place to stay. Open air bamboo cottage in the rice paddies. Peaceful, away from noise of city, LIGHTENING BUGS! Thoughtful, friendly staff',4,'Gilburt Duligal'),(2,'Khaki','This place is idyllic and definitely a honeymoon kind of spot. Beautifully decorated, quiet out on the rice fields but not easy to find when looking for it. I would recommend it to anyone and everyone travelling through Ubud.',2,'Otho Francello');
/*!40000 ALTER TABLE `reviewsGilburt51` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsGussie34`
--

DROP TABLE IF EXISTS `reviewsGussie34`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsGussie34` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsGussie34`
--

LOCK TABLES `reviewsGussie34` WRITE;
/*!40000 ALTER TABLE `reviewsGussie34` DISABLE KEYS */;
INSERT INTO `reviewsGussie34` VALUES (1,'good','Great place, fantastic staff and very positive atmosphere. We liked the fact that guests were mainly adventurers, not posh/fussy people. Good location, close to the city but also very secluded. We had a scooter that was good, but ne aware that the path to the house is pretty narrow so at night is probably better to walk that distance if you are not a great scooter driver. It was a great stay! We will come back!',4,'Gussie Petruska'),(2,'Mauv','Beautifull place in the middle of the Rice field. Still the centre is walkable without luggage. Nice lodge only sometimes the wifi didnt came trough. But it could be because we where in the middle of nature. Nice place overall.',5,'Renado Jerdan');
/*!40000 ALTER TABLE `reviewsGussie34` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsHetti40`
--

DROP TABLE IF EXISTS `reviewsHetti40`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsHetti40` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsHetti40`
--

LOCK TABLES `reviewsHetti40` WRITE;
/*!40000 ALTER TABLE `reviewsHetti40` DISABLE KEYS */;
INSERT INTO `reviewsHetti40` VALUES (1,'not good','Our flight was delayed by 6 hours and our midnight checkin was flawless. Be prepared for a bit of a hike to the cottage. We mentioned that we were interested in sightseeing and the next morning we had a driver at our front entrance ready to take us all over the island. The view from our terrace was breathtaking and showering under the stars was a highlight.',4,'Hetti Whorton'),(2,'Mauv','Both the birds nest and the bambu cottage are great places to stay. We slept one night in each of them. The birds nest is very cozy, a bit like a tent. It\'s a tower of four sleeping capsules in top of each other. It looks quite impressive. We liked it a lot.',4,'Devin Gai');
/*!40000 ALTER TABLE `reviewsHetti40` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsHillier43`
--

DROP TABLE IF EXISTS `reviewsHillier43`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsHillier43` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsHillier43`
--

LOCK TABLES `reviewsHillier43` WRITE;
/*!40000 ALTER TABLE `reviewsHillier43` DISABLE KEYS */;
INSERT INTO `reviewsHillier43` VALUES (1,'not good','A true Bali\'s village life you will never experience in a city life. Definitely need to contact the host, Wayan before check-in so that he can bring you in to the hidden rice field. You will need to walk a narrow pathway for around 5mins in order to reach the Bamboo Cottage.',5,'Hillier Timblett'),(2,'Maroon','Place looks exactly like the pictures and as warned, stay only if you are ready to be one with nature! The only qualm I had was that there were so many ants and the bed wasn\'t exactly clean. I found soil and insects on it. But other than that, the surrounding was lovely and the host was great.',2,'Patsy Cowoppe');
/*!40000 ALTER TABLE `reviewsHillier43` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsJacquetta59`
--

DROP TABLE IF EXISTS `reviewsJacquetta59`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsJacquetta59` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsJacquetta59`
--

LOCK TABLES `reviewsJacquetta59` WRITE;
/*!40000 ALTER TABLE `reviewsJacquetta59` DISABLE KEYS */;
INSERT INTO `reviewsJacquetta59` VALUES (1,'cheap','Our stay at the Bamboo eco cottage in Ubud was nothing short of incredible, providing a unique experience that I think would be appreciated by any visitor to Bali. The cottage itself was beautiful, clean and fully equipped with anything you might expect from a holiday homestay, but was set against the backdrop of the stunning rice fields.',3,'Rasia Kristufek');
/*!40000 ALTER TABLE `reviewsJacquetta59` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsJoanne54`
--

DROP TABLE IF EXISTS `reviewsJoanne54`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsJoanne54` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsJoanne54`
--

LOCK TABLES `reviewsJoanne54` WRITE;
/*!40000 ALTER TABLE `reviewsJoanne54` DISABLE KEYS */;
INSERT INTO `reviewsJoanne54` VALUES (1,'great!','This is a living space in the middle of a rice field. We stayed in a separate hut. Near the \'main entrance\' thus people will go by us to go to the other living quarters. Our hut doesn\'t have door (it has got curtain though, but as people walk by us they would be able to see inside.',5,'Maynord Clemo'),(2,'nice','Great experience at the bamboo eco cottage. It\'s very secluded and quiet. We got to our cottage just in time before a thunderstorm hit and it was really cool and peaceful sitting in the cottage and watching the thunderstorm outside. The lack of privacy didn\'t bother us. The curtains did a good job of providing us privacy. ',4,'Aeriell Frear'),(3,'good','This was by far my favorite stay in Bali. Very close to everything you\'d want to go see. The staff is very friendly and very accommodating. I will definitely be coming back here.',3,'Taddeusz Wildish'),(4,'I will go back','If you travel to Ubud, which you should, then I highly advise staying here! A gem tucked away in a beautiful setting. We had nothing less than a spectacular time. This place isnt for everyone however.',5,'Aundrea MacVagh'),(5,'good place','Check in time was at 3 not at 2 yet they did not change it on Airbnb. This is for outdoor people. You sleep with a fan and a sort of net covering the bed. If you don\'t like bugs this is not your place. You have a 5-10 minute hike up to the location so pack light. The views are amazing though. place is a bit hard to find so make sure you have the host number ready for your driver. Breakfast was great.',4,'Moselle Jurkowski');
/*!40000 ALTER TABLE `reviewsJoanne54` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsLoretta44`
--

DROP TABLE IF EXISTS `reviewsLoretta44`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsLoretta44` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsLoretta44`
--

LOCK TABLES `reviewsLoretta44` WRITE;
/*!40000 ALTER TABLE `reviewsLoretta44` DISABLE KEYS */;
INSERT INTO `reviewsLoretta44` VALUES (1,'not good','Our stay was AWESOME! Though a scary scooter ride to get to, the staff couldn\'t have been more helpful about getting our things to the place and making sure we felt at home. ',2,'Loretta Dresser'),(2,'Aquamarine','Beautiful view. Cozy bamboo house. The host forgot to give us towels. Good wifi. Small pool but that\'s ok. Good breakfast and coffee. Not much privacy. Good for one or two nights for sure.',4,'Janaye Lanktree');
/*!40000 ALTER TABLE `reviewsLoretta44` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsLula57`
--

DROP TABLE IF EXISTS `reviewsLula57`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsLula57` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsLula57`
--

LOCK TABLES `reviewsLula57` WRITE;
/*!40000 ALTER TABLE `reviewsLula57` DISABLE KEYS */;
INSERT INTO `reviewsLula57` VALUES (1,'nice','Absolutely superb experience. I would recommend to everyone who would like to experience the real Ubud.',3,'Tamarra Webby'),(2,'bad place','This was our favorite place that we stayed while in Bali ( we were traveling around for 1 week and stayed at 4 places total). It is an unique experience that we couldn\'t imagine getting anywhere else. This is the ultimate \'glamping\' experience.',1,'Judy Bearfoot'),(3,'great place','This is so far the most beautiful place I\'ve ever visited in my life! The way through the rice field is an adventure, the service is really great; friendly and they are there whenever you need them.',5,'Jessika Ward'),(4,'don\'t go there','We were looked after right from the start. The cottages are at the end of a long path and we were unsure we were going the right way, we rang up and someone came to meet us on a scooter within minutes. The staff were very attentive, just great. The cottage was amazing! Outdoor shower and breakfast brought up to us in the morning. Incredible surroundings, it\'s hard to believe you\'re just minutes away from the buzzing streets of Ubud.',2,'Corabella Philipp');
/*!40000 ALTER TABLE `reviewsLula57` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsMandie48`
--

DROP TABLE IF EXISTS `reviewsMandie48`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsMandie48` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsMandie48`
--

LOCK TABLES `reviewsMandie48` WRITE;
/*!40000 ALTER TABLE `reviewsMandie48` DISABLE KEYS */;
INSERT INTO `reviewsMandie48` VALUES (1,'not good','I was disappointed with this place. It is quite expensive for Bali and I expected a little paradise in the natural world. We were staying in the first hut. It was a bit noisy at night. We heard some motor cycles (coming from the parking next to the hut probably) and people passing by. ',2,'Mandie Arlett'),(2,'Yellow','This is truely a special place to visit and stay. The hut is open to nature which can take some getting used to but once you have you can emmerse yourself in a true back to nature experience. The hut itself is beautiful and very romantic even if it is open to the world around it.',3,'Geoffry Gennerich');
/*!40000 ALTER TABLE `reviewsMandie48` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsMata60`
--

DROP TABLE IF EXISTS `reviewsMata60`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsMata60` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsMata60`
--

LOCK TABLES `reviewsMata60` WRITE;
/*!40000 ALTER TABLE `reviewsMata60` DISABLE KEYS */;
INSERT INTO `reviewsMata60` VALUES (1,'bad','We stayed in the bamboo hut for 1 night at the end of August. Make sure your driver calls as the location is on a dirt walk path. When we arrived we were blown away as it looks just like in the pictures! It is outside so you will hear nature and there are bugs so bring spray or something to keep them away.',1,'Adriane Duffet'),(2,'not good','We loved our stay in the Bamboo Eco Cottage! If you think of it like \'glamping\' then you will understand a bit better what it is like - basically, you\'re staying in a very fancy bamboo basket! The walls are an open weave, and there are no doors - just curtains that you can draw or open as you like.',1,'Maurie Gallaher'),(3,'don\'t go there','It\'s a little way out of Ubud, well within comfortable walking distance however. And the location is perfect. It\'s a beautiful escape from the loud busy streets of Ubud.',3,'Saba Ropp'),(4,'bad','A real must do while in Ubud, such a fantastic little spot. Within minutes of being in central Ubud you are taken to this tranquil setting. The staff were fantastic and catered for your every need if you desired. Breakfast is also very nice and something different to the norm. We never felt there were any privacy or security issues what so ever. Really cool little place we had a lovely few days, thank you.',1,'Angie O\'Lunny'),(5,'worst','It was a experience to stay in. It\'s a beautiful scenery. It was a long walk to the place but it was worth the walk to see all the scenery and all the fields. There was a bat fly in and a tokek making noises on top of the hut. But what do you expect in a place like it. Its part of the experience.',2,'Cassie Moores');
/*!40000 ALTER TABLE `reviewsMata60` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsMavis58`
--

DROP TABLE IF EXISTS `reviewsMavis58`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsMavis58` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsMavis58`
--

LOCK TABLES `reviewsMavis58` WRITE;
/*!40000 ALTER TABLE `reviewsMavis58` DISABLE KEYS */;
INSERT INTO `reviewsMavis58` VALUES (1,'bad','We had an amazing night in ubud, the cottage is lovely, with a nice view on the ricefields. The staff was very helpfull and the food was delicious. This place really feels like paradise!',2,'Hersh Clelle'),(2,'best place ever','Great experience in the bamboo eco cottage! Indeed I start missing it soon as I left Bali, wish I could stay in this lovely cottage longer. If you would like to experience the local culture, get in touch with nature, and something more than just a stay in a comfortable hotel- then this is the place to be!',5,'Robinson Attwill'),(3,'nice','The cottage is very cool. Definitely meant for the more hardcore backpacker/camper. The space is very exposed to nature and the walk to the cottage is a 5 minutes through the rice fields. Beautiful, but a bit long. Even though the surrounding area is open to some nice breezes, it can get quite hot at night. Now for the good parts!',3,'Marketa Vouls'),(4,'bad','The Bamboo cottage was such a fun experience! We were only in Ubud for one day and left in the night for a sunrise hike, but our time at the cottage was a welcome retreat from the hustle and bustle. Ketut (who helps run the place) was very accommodating.',2,'Merrel Perren');
/*!40000 ALTER TABLE `reviewsMavis58` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsOlivia42`
--

DROP TABLE IF EXISTS `reviewsOlivia42`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsOlivia42` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsOlivia42`
--

LOCK TABLES `reviewsOlivia42` WRITE;
/*!40000 ALTER TABLE `reviewsOlivia42` DISABLE KEYS */;
INSERT INTO `reviewsOlivia42` VALUES (1,'good','It is a experience to remember a long time if you seek for nature and something unusual. At first I was afraid of mosquitos, but there were fan in the cottage that blew some air and we didn`t get any mosquito bites during the whole night. We did not get any wifi in the room, but it was reachable in the lobby. Breakfast was really delicious and ducklings on the field were adorable. Friendly staff like commonly in Bali.',4,'Olivia Chandlar'),(2,'Purple','Out of this world...... amazing place. Don\'t miss the opportunity to stay at this place. You won\'t regret it.',3,'Nathanial O\'Flynn');
/*!40000 ALTER TABLE `reviewsOlivia42` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsRhett38`
--

DROP TABLE IF EXISTS `reviewsRhett38`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsRhett38` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsRhett38`
--

LOCK TABLES `reviewsRhett38` WRITE;
/*!40000 ALTER TABLE `reviewsRhett38` DISABLE KEYS */;
INSERT INTO `reviewsRhett38` VALUES (1,'good','Overall a good accommodation. The description on line is one year outdated. There is no goat any longer. Still beautiful surrounding and nice quite location. Recommended',4,'Rhett Dalman'),(2,'Green','A 5 minute walk through the rice fields to the property. An unforgettable experience hard to describe and must be experienced to appreciate. Good food, helpful friendly staff, interesting world travellers to meet and socialize with. Romantic \'back to nature\' experience in an amazingly beautiful setting. This place really made our trip to Bali a memorable experience.',4,'Tobin Stobbes'),(3,'Green','A must stay if you\'re in Ubud. You\'re situated in an upscale cottage in the middle of rice fields. Don\'t hesitate if you are planning to stay here.',4,'Tobin Stobbes');
/*!40000 ALTER TABLE `reviewsRhett38` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsRubie39`
--

DROP TABLE IF EXISTS `reviewsRubie39`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsRubie39` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsRubie39`
--

LOCK TABLES `reviewsRubie39` WRITE;
/*!40000 ALTER TABLE `reviewsRubie39` DISABLE KEYS */;
INSERT INTO `reviewsRubie39` VALUES (1,'not good','Amazing! Hands down such an great Airbnb. The cottage is exactly as pictured. They also brought us breakfast each morning and were the friendliest people. There\'s also a pool, swing and small bar/food that you can use. I\'d highly recommend it. Just be aware that there are a lot of bugs. I\'d recommend to friends & family 100%!',3,'Rubie Blamey'),(2,'Violet','Easily the best Airbnb we ever stayed at. The location is absolutely perfect - about ten minutes away from the busy streets of Ubud, completely away from any noise in the middle of the rice fields. The cottage is located away from the other rooms. ',5,'Roscoe Vasnev');
/*!40000 ALTER TABLE `reviewsRubie39` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsStacy45`
--

DROP TABLE IF EXISTS `reviewsStacy45`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsStacy45` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsStacy45`
--

LOCK TABLES `reviewsStacy45` WRITE;
/*!40000 ALTER TABLE `reviewsStacy45` DISABLE KEYS */;
INSERT INTO `reviewsStacy45` VALUES (1,'good','Great place to stay & get away! If you\'re not a fan of the outdoors not a great fit for you. But it really was a great experience and beautiful to stay in for the night.',5,'Stacy Caple'),(2,'Maroon','Is a great experience wet in there. Is realy amazing sleep in the open house in the midle of te rice camp. The place have a pool wifi beer and amazing view. Im sure im going back to this place',4,'Calypso Dracksford');
/*!40000 ALTER TABLE `reviewsStacy45` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsWillis53`
--

DROP TABLE IF EXISTS `reviewsWillis53`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsWillis53` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsWillis53`
--

LOCK TABLES `reviewsWillis53` WRITE;
/*!40000 ALTER TABLE `reviewsWillis53` DISABLE KEYS */;
INSERT INTO `reviewsWillis53` VALUES (1,'not good','Absoutly beautiful location, also not too far to walk into the centre of ubud. Ketut was super helpful and able to book tours for us. All the staff were very lovely and accommodating.',3,'Willis Ughelli'),(2,'Aquamarine','This place is unique and beautiful. It is an open concept so expect bugs to share the space with you and there is little privacy. This is perfect for people who likes to try something different from the usual hotels or villas. Staff are very friendly and are helpful. The listing doesn\'t mention of the pool but there is in fact a pool about a few meters from the cottage. Waking up in the middle of a rice field and witnessing the sunrise is something you won\'t soon forget.',4,'Svend Atter');
/*!40000 ALTER TABLE `reviewsWillis53` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsYvon52`
--

DROP TABLE IF EXISTS `reviewsYvon52`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsYvon52` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsYvon52`
--

LOCK TABLES `reviewsYvon52` WRITE;
/*!40000 ALTER TABLE `reviewsYvon52` DISABLE KEYS */;
INSERT INTO `reviewsYvon52` VALUES (1,'not good','Great stay. Beautiful location. The staff is great and very helpful. Would highly recommend this to nature lovers and folks who like outdoor living. Good restaurant a short walk away through the rice fields. We have no complaints. Stay here.',4,'Yvon Mahy'),(2,'Pink','Everyone that works here is super friendly and accommodating. Breakfasts were excellent. The eco cottage was so cool! Sleeping right in the rice paddies at night. Wonderful experience for me and my girlfriend. Definitely will be going back there on our next trip to Ubud. Can\'t wait',2,'Mair Collumbell');
/*!40000 ALTER TABLE `reviewsYvon52` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewsjoby31`
--

DROP TABLE IF EXISTS `reviewsjoby31`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewsjoby31` (
  `idReview` int(40) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `description` varchar(800) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idReview`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewsjoby31`
--

LOCK TABLES `reviewsjoby31` WRITE;
/*!40000 ALTER TABLE `reviewsjoby31` DISABLE KEYS */;
INSERT INTO `reviewsjoby31` VALUES (1,'good','We had an amazing stay in bamboo eco cottage, it was a very special experience to sleep in a real balinese strawhut in between rice fields far away from Bali\'s traffic, chaos, annoying people trying to sell you anything. It is defintely a hidden gem and the huts suit perfect into this location!',1,'Joby Ommundsen');
/*!40000 ALTER TABLE `reviewsjoby31` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `userPassword` varchar(40) NOT NULL,
  `wishListConnection` varchar(50) DEFAULT NULL,
  `emailAdress` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'rotem','plaut','123',NULL,'rotem@rotem.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishList`
--

DROP TABLE IF EXISTS `wishList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishList` (
  `id` int(40) NOT NULL AUTO_INCREMENT,
  `hotelId` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishList`
--

LOCK TABLES `wishList` WRITE;
/*!40000 ALTER TABLE `wishList` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishList` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-13 20:06:32
