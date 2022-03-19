-- MySQL dump 10.13  Distrib 5.7.21, for Win64 (x86_64)
--
-- Host: localhost    Database: barang
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('97ukii2k4i1gp2jm1gqer05gr4v0c07d','127.0.0.1',1643873883,'__ci_last_regenerate|i:1643873595;'),('m4nv1d4jgbqdprj0i04rh1ked8pcvt88','::1',1645415076,'__ci_last_regenerate|i:1645415040;'),('m8j4kh0s2rtlkrg1qs1a8eecc7aufhdl','127.0.0.1',1643874497,'__ci_last_regenerate|i:1643874496;'),('p3vlaooedrk2nacqocthm0mo8m8macas','::1',1645493918,'__ci_last_regenerate|i:1645493905;');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail`
--

DROP TABLE IF EXISTS `detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detail` (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `detail_package_id` int(11) DEFAULT NULL,
  `detail_product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail`
--

LOCK TABLES `detail` WRITE;
/*!40000 ALTER TABLE `detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `idmenu` int(11) NOT NULL AUTO_INCREMENT,
  `namamenu` varchar(100) DEFAULT NULL,
  `harga` int(4) DEFAULT NULL,
  PRIMARY KEY (`idmenu`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (2,'Jus jeruk',3000),(4,'Ayam goreng',10000),(5,'Es kosong',1000),(7,'menu bau',1233),(9,'es hampir berisi',5000),(10,'jus mangga',6000),(11,'nasi ramas',15000),(12,'ayam bakar',8000),(13,'jus pokat',5000),(14,'ayam kangkung',10000),(15,'jasjus',2000),(16,'sdfdsfsd',10000),(17,'mzmz',1000),(18,'sdkfhdsjhfds',234),(19,'mnbv',12333),(20,'mmnmn',1000),(21,'mnmnmnm',12344),(22,'zxzxzx',123123213),(23,'qwq',123123),(24,'nsnd',10000),(25,'qaa',1000),(26,'qaz',10000),(27,'qazzz',10000),(28,'kjfkjfk',10000),(29,'mcnvcv',15000),(30,'vcvcvcv',1233),(31,'AYAM KECAP',10000),(32,'sdfcvc',10000),(33,'mzz',2000),(34,'test',10000),(35,'eee',2000),(36,'e2',10000),(37,'e123456',10000),(38,'e3',10000),(39,'JUS MANGGA',10000),(40,'susu',3000);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package` (
  `package_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_name` varchar(100) DEFAULT NULL,
  `package_created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelanggan`
--

DROP TABLE IF EXISTS `pelanggan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelanggan` (
  `idpelanggan` int(11) NOT NULL AUTO_INCREMENT,
  `namapelanggan` varchar(80) DEFAULT NULL,
  `jeniskelamin` tinyint(1) DEFAULT NULL,
  `nohp` varchar(13) DEFAULT NULL,
  `alamat` varchar(95) DEFAULT NULL,
  PRIMARY KEY (`idpelanggan`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelanggan`
--

LOCK TABLES `pelanggan` WRITE;
/*!40000 ALTER TABLE `pelanggan` DISABLE KEYS */;
INSERT INTO `pelanggan` VALUES (1,'raga',1,'085326161','lsjdflksjdf'),(2,'raga2',1,'082137','jskdhfksjdf'),(3,'raga3',1,'0853216111','jalan utama gang cipta'),(4,'raga4',1,'0853216161','jalan utama gang cipta'),(5,'raga5',1,'08532111','jalan utama gang cipta'),(6,'raga6',1,'08532161744','jalan utama gcang'),(7,'raga7',1,'08532161744','jalan utama gnacdf'),(8,'raga8',1,'0853216','ksdfkshdf'),(9,'cool',1,'08536344','jalan utama gang cipta'),(10,'cool2',1,'08536314','jalan utama gang cipta'),(11,'cool3',1,'085363213123','jalads'),(12,'cool4',1,'923743264','sdfsdf'),(13,'cool5',1,'3234','dfsdf'),(14,'cool6',1,'085213','jhskjdfhsdf'),(15,'cool7',1,'213123123','sdhfskdjfhdsf'),(16,'cool8',1,'085363123','jalan utama gang cipta'),(17,'andi',1,'234234234','jalan utama gang cipta'),(18,'cil2',1,'192839213','jalan utama ganc tip\\r\\n'),(19,'cil3',1,'234234234','jalan utama gang cipta'),(20,'cil4',1,'072932384','kjhksdhfkdsf'),(21,'dika',1,'078564856','ksdhfkshfsd');
/*!40000 ALTER TABLE `pelanggan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pesanan`
--

DROP TABLE IF EXISTS `pesanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pesanan` (
  `idpesanan` int(11) NOT NULL AUTO_INCREMENT,
  `kodepesanan` varchar(15) DEFAULT NULL,
  `menu_idmenu` int(11) NOT NULL,
  `pelanggan_idpelanggan` int(11) NOT NULL,
  `user_iduser` int(11) NOT NULL,
  `jumlah` tinyint(1) NOT NULL,
  `dibuat` date DEFAULT NULL,
  PRIMARY KEY (`idpesanan`),
  KEY `fk_pesanan_menu1_idx` (`menu_idmenu`),
  KEY `fk_pesanan_pelanggan1_idx` (`pelanggan_idpelanggan`),
  KEY `user_iduser` (`user_iduser`),
  CONSTRAINT `fk_pesanan_menu1` FOREIGN KEY (`menu_idmenu`) REFERENCES `menu` (`idmenu`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_pesanan_pelanggan1` FOREIGN KEY (`pelanggan_idpelanggan`) REFERENCES `pelanggan` (`idpelanggan`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`user_iduser`) REFERENCES `user` (`iduser`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesanan`
--

LOCK TABLES `pesanan` WRITE;
/*!40000 ALTER TABLE `pesanan` DISABLE KEYS */;
INSERT INTO `pesanan` VALUES (3,'ABCCCFB12DGAF3',4,1,2,1,'2019-02-21'),(4,'ABCCCFB12DGAF3',5,1,2,2,'2019-02-21'),(5,'ABADEDFDG3C51F',14,5,2,3,'2019-02-21'),(7,'ABBCBBFGBCE31F',4,21,2,2,'2019-02-25');
/*!40000 ALTER TABLE `pesanan` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`cpu-201`@`%`*/ /*!50003 TRIGGER `insert_transaksi` AFTER INSERT ON `pesanan` FOR EACH ROW INSERT INTO transaksi SET
transaksi.idtransaksi = new.kodepesanan,
transaksi.total = (SELECT menu.harga * new.jumlah FROM menu WHERE menu.idmenu = new.menu_idmenu)

ON duplicate KEY UPDATE transaksi.total = transaksi.total + (SELECT menu.harga * new.jumlah FROM menu WHERE menu.idmenu = new.menu_idmenu) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`cpu-201`@`%`*/ /*!50003 TRIGGER `before_delete_pesanan` BEFORE DELETE ON `pesanan` FOR EACH ROW UPDATE transaksi SET
transaksi.total = transaksi.total - (SELECT menu.harga * old.jumlah FROM menu WHERE menu.idmenu = old.menu_idmenu)
WHERE transaksi.idtransaksi = old.kodepesanan */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaksi` (
  `idtransaksi` varchar(15) NOT NULL,
  `total` int(1) DEFAULT NULL,
  `bayar` int(4) DEFAULT '0',
  `kembalian` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idtransaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi`
--

LOCK TABLES `transaksi` WRITE;
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
INSERT INTO `transaksi` VALUES ('ABADEDFDG3C51F',30000,32000,2000,1),('ABBCBBFGBCE31F',20000,20000,0,1),('ABCCCFB12DGAF3',12000,13000,1000,1);
/*!40000 ALTER TABLE `transaksi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `namauser` varchar(80) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `akses` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'admin','21232f297a57a5a743894a0e4a801fc3',1),(3,'naruto','cf9ee5bcb36b4936dd7064ee9b2f139e',2),(4,'sasuke','93207db25ad357906be2fd0c3f65f3dc',3),(5,'owner','72122ce96bfec66e2396d2e25225d70a',4),(6,'anto','2c946c0178ec72aaefa54f786540d301',3);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `v_pesanan`
--

DROP TABLE IF EXISTS `v_pesanan`;
/*!50001 DROP VIEW IF EXISTS `v_pesanan`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_pesanan` AS SELECT 
 1 AS `idpesanan`,
 1 AS `kodepesanan`,
 1 AS `namapelanggan`,
 1 AS `namamenu`,
 1 AS `jumlah`,
 1 AS `total`,
 1 AS `dibuat`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_transaksi`
--

DROP TABLE IF EXISTS `v_transaksi`;
/*!50001 DROP VIEW IF EXISTS `v_transaksi`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_transaksi` AS SELECT 
 1 AS `idtransaksi`,
 1 AS `total`,
 1 AS `bayar`,
 1 AS `kembalian`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'barang'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `delete_transaksi` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = '+00:00' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `delete_transaksi` ON SCHEDULE EVERY 1 SECOND STARTS '2019-02-19 10:16:15' ON COMPLETION NOT PRESERVE ENABLE DO DELETE FROM transaksi WHERE transaksi.total <= 0 */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'barang'
--
/*!50003 DROP PROCEDURE IF EXISTS `parse_pelanggan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `parse_pelanggan`(IN `p` VARCHAR(45), OUT `res` VARCHAR(45))
SELECT pelanggan.idpelanggan INTO res FROM pelanggan WHERE pelanggan.namapelanggan = p ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `v_pesanan`
--

/*!50001 DROP VIEW IF EXISTS `v_pesanan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_pesanan` AS select `pesanan`.`idpesanan` AS `idpesanan`,`pesanan`.`kodepesanan` AS `kodepesanan`,`pelanggan`.`namapelanggan` AS `namapelanggan`,`menu`.`namamenu` AS `namamenu`,`pesanan`.`jumlah` AS `jumlah`,(select (`menu`.`harga` * `pesanan`.`jumlah`) from `menu` where (`menu`.`idmenu` = `pesanan`.`menu_idmenu`)) AS `total`,`pesanan`.`dibuat` AS `dibuat` from ((`pesanan` join `pelanggan` on((`pelanggan`.`idpelanggan` = `pesanan`.`pelanggan_idpelanggan`))) join `menu` on((`menu`.`idmenu` = `pesanan`.`menu_idmenu`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_transaksi`
--

/*!50001 DROP VIEW IF EXISTS `v_transaksi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_transaksi` AS select `transaksi`.`idtransaksi` AS `idtransaksi`,`transaksi`.`total` AS `total`,`transaksi`.`bayar` AS `bayar`,`transaksi`.`kembalian` AS `kembalian`,`transaksi`.`status` AS `status` from `transaksi` where (`transaksi`.`status` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-22  8:39:54
