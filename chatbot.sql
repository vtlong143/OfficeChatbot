-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: rasa
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `chitietduan`
--

DROP TABLE IF EXISTS `chitietduan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitietduan` (
  `idda` int NOT NULL,
  `idnv` int NOT NULL,
  PRIMARY KEY (`idda`,`idnv`),
  KEY `fk_duan_has_nhanvien_nhanvien1_idx` (`idnv`),
  KEY `fk_duan_has_nhanvien_duan1_idx` (`idda`),
  CONSTRAINT `fk_duan_has_nhanvien_duan1` FOREIGN KEY (`idda`) REFERENCES `duan` (`idda`),
  CONSTRAINT `fk_duan_has_nhanvien_nhanvien1` FOREIGN KEY (`idnv`) REFERENCES `nhanvien` (`idnv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietduan`
--

LOCK TABLES `chitietduan` WRITE;
/*!40000 ALTER TABLE `chitietduan` DISABLE KEYS */;
INSERT INTO `chitietduan` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(2,6),(2,7),(2,8),(2,9),(2,10),(3,11),(3,12),(3,13),(3,14),(3,15),(4,16),(4,17),(4,18),(4,19),(4,20),(5,21),(5,22),(5,23),(5,24),(5,25);
/*!40000 ALTER TABLE `chitietduan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitietevent`
--

DROP TABLE IF EXISTS `chitietevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitietevent` (
  `idev` int NOT NULL,
  `idnv` int NOT NULL,
  PRIMARY KEY (`idev`,`idnv`),
  KEY `fk_event_has_nhanvien_nhanvien1_idx` (`idnv`),
  KEY `fk_event_has_nhanvien_event1_idx` (`idev`),
  CONSTRAINT `fk_event_has_nhanvien_event1` FOREIGN KEY (`idev`) REFERENCES `event` (`idev`),
  CONSTRAINT `fk_event_has_nhanvien_nhanvien1` FOREIGN KEY (`idnv`) REFERENCES `nhanvien` (`idnv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietevent`
--

LOCK TABLES `chitietevent` WRITE;
/*!40000 ALTER TABLE `chitietevent` DISABLE KEYS */;
INSERT INTO `chitietevent` VALUES (1,1),(1,2),(1,3),(1,4),(2,4),(2,5),(2,6),(2,7),(2,8),(3,8),(3,9),(3,10),(3,11),(4,12),(4,13),(4,14),(4,15),(5,15),(5,16),(5,17),(5,18),(6,19),(6,20),(6,21),(7,22),(7,23),(7,24),(7,25);
/*!40000 ALTER TABLE `chitietevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chucvu`
--

DROP TABLE IF EXISTS `chucvu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chucvu` (
  `idchucvu` int NOT NULL,
  `tenchucvu` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idchucvu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chucvu`
--

LOCK TABLES `chucvu` WRITE;
/*!40000 ALTER TABLE `chucvu` DISABLE KEYS */;
INSERT INTO `chucvu` VALUES (1,'tr?????ng ph??ng'),(2,'ph?? ph??ng'),(3,'nh??n vi??n'),(4,'th???c t???p sinh');
/*!40000 ALTER TABLE `chucvu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duan`
--

DROP TABLE IF EXISTS `duan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `duan` (
  `idda` int NOT NULL AUTO_INCREMENT,
  `tenda` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thoigianthuchien` date NOT NULL,
  `kinhphi` bigint NOT NULL,
  `diadiem` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ghichu` varchar(5000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idda`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duan`
--

LOCK TABLES `duan` WRITE;
/*!40000 ALTER TABLE `duan` DISABLE KEYS */;
INSERT INTO `duan` VALUES (1,'Ph???n m???m Android','2020-06-21',200000,'T???ng 20','x??y d???ng ph???n m???m Android'),(2,'Chatbot','2020-05-21',100000,'t??a nh?? PVI','x??y d???ng chatbot office'),(3,'C?? s??? m???i','2019-10-09',2000000000,' T??y h???','x??y d???ng c?? s??? m???i c?? s???c ch???a tr??n 2000 ng?????i'),(4,'Ph???n m???m iOS','2020-07-21',300000,'T???ng 15','x??y d???ng ph???n m???m iOS'),(5,'Ch????ng tr??nh Web','2020-07-20',400000,'T???ng 13','x??y d???ng ch????ng tr??nh Web');
/*!40000 ALTER TABLE `duan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `idev` int NOT NULL AUTO_INCREMENT,
  `tenev` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thoigiantochuc` date NOT NULL,
  `kinhphi` bigint NOT NULL,
  `diadiem` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ghichu` varchar(5000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idev`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'H???p','2020-05-04',100000,'t??a nh?? pvi','h???p ki???m tra'),(2,'Quay s??? tr??ng th?????ng','2020-05-11',200000,'t???ng 1','xem ai tr??ng qu?? t???t'),(3,'Thi th??? thao','2020-05-22',300000,'c??ng vi??n c???u gi???y','thi c??c ho???t ?????ng th??? thao n??ng cao s???c kh???e cho nh??n vi??n'),(4,'Thi esports','2020-05-06',400000,'game center s??? 13 c??u gi???y','cu???c thi  cho c??c game th??? h??ng ????u c??ng ty'),(5,'Ho???t ?????ng ngo??i tr???i','2020-05-08',500000,'s??n c??ng ty','n?????ng'),(6,'T??? thi???n','2020-05-11',600000,'t???p chung s???nh c??ng ty','gi??p ????? ng?????i ngh??o khu v???c c???u gi???y'),(7,'B???o v??? m??i tr?????ng','2020-05-04',700000,'s???nh c??ng ty t???p chung','?????p xe  tuy??n truy???n');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `idnv` int NOT NULL AUTO_INCREMENT,
  `hoten` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sdt` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idpb` int NOT NULL,
  `idchucvu` int NOT NULL,
  `ghichu` varchar(5000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idnv`),
  KEY `idchucvu_idx` (`idchucvu`),
  KEY `idpb_idx` (`idpb`),
  CONSTRAINT `idchucvu` FOREIGN KEY (`idchucvu`) REFERENCES `chucvu` (`idchucvu`),
  CONSTRAINT `idpb` FOREIGN KEY (`idpb`) REFERENCES `phongban` (`idpb`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES (1,'H?????ng Xu??n An','1997-03-29','Nam','tri???u kh??c h?? n???i','0968124437','an2931997@gmial.com',1,4,'sinh vi??n th???c t???p'),(2,'Nguy???n V??n An','2020-03-18','N???','s??? 2 tr???n ph?? h?? ????ng h?? n???i','12422041','abc@gmail.com',2,1,'nh??n vi??n c?? th??m ni??n'),(3,'Nguy???n V??n Long','1998-01-01','Nam','s??? 1 tr???n ph?? h?? ????ng h?? n???i','0123456789','long123456@gmail.com',1,1,'nh??n vi??n c?? tashc nhi???m, ho??n th??nh nhi???u d??? ??n'),(4,'H?? Minh Hi???u','1997-11-12','Nam','s??? 12 Nguy???n Tr??i, Thanh Xu??n, H?? N???i','01234444334','hiu12345@gmail.com',3,1,'kh??ng c??\r\n'),(5,'B??i Tu???n Anh','1997-06-05','Nam','s??? 86 ng?? 122 ph??ng khoang m??? lao','019203987462','Tuan123455@gmial.com',4,1,'kh??ng c??'),(6,'????o V??n Ch??u','1997-01-01','N???','s??? 12 ???????ng c???u gi???y','0124856123','chauop@gmail.com',6,1,'ch??m ch??? l??m vi???c, c?? tr??ch nhi???m'),(7,'Tr???n V??n V??','1993-12-03','Nam','s??? 123 ???? la th??nh h??  N???i','03761274123','vu1245@gmail.com',5,1,'th??m ni??n c?? c??? g???ng, c???n th???n'),(8,'??inh Th??? L??','1994-10-04','N???','s??? 54 Tr???n duy H??ng , H?? N???i','054812578921','LY123@gmail.com',7,1,'t??? m??? ch??nh x??c, c?? kh??? n??ng giao ti???p t???t'),(9,'Nguy???n Ng???c Anh','1993-09-08','N???','s??? 34 h??? t??ng m???u h?? n???i','04871245932734','ngocanh@gmial.com',2,2,'kh??ng c??'),(10,'V?? Th??nh Long','1998-03-14','Nam','s??? 122 Nguy???n Tr??i, Thanh Xu??n, H?? N???i','0382694327','sepdra143@gmail.com',2,3,'kh??ng c??'),(11,'V?? Ng???c Hi???u','1998-05-05','Nam','s??? 154 Tr???n duy H??ng , H?? N???i','0246987568','hieu123@gmail.com',2,2,'kh??ng c??'),(12,'Nguy???n Anh Tu???n','1998-06-06','Nam','s??? 24 Nguy???n Xi???n, H?? N???i','0569431853','tuan123456@gmail.com',1,3,'kh??ng c??'),(13,'Nguy???n Quang Minh','1998-05-02','Nam','s??? 48 Nguy???n Du, H?? N???i','0548963496','quangminh@gmail.com',1,4,'kh??ng c??'),(14,'B??i Th??? Ng???c','1996-06-08','N???','s??? 40 T?? V??nh Di???n, H?? N???i','0364964792','ngoc23465@gmail.com',3,2,'kh??ng c??'),(15,'??o??n Th??? H????ng','1995-06-07','N???','s??? 60 ???????ng L??ng ,H?? N???i','0619493236','huong@gmail.com',3,3,'kh??ng c??'),(16,'V?? ????nh Khang','1996-03-06','Nam','s??? 20 T??n ?????c Th???ng ','0367493636','khang@gmail.com',4,2,'kh??ng c??'),(17,'Nguy???n H????ng Vi','1995-03-05','N???','s??? 30 L??ng, H?? N???i','0664926649','huongvi@gmail.com',4,3,'kh??ng c??'),(18,'Nguy???n B??ch Ng???c ','1997-03-08','N??? ','s??? 41 L??ng H???, H?? N???i','0664941616','bichngoc@gmail.com',5,2,'kh??ng c??'),(19,'Ho??ng Th??? Hu???','1998-12-12','N???','s??? 40 L??ng, H?? N???i','0654198912','hoanghue@gmail.com',5,3,'kh??ng c??'),(20,'Nguy???n Thu H???ng','1998-12-12','N???','s??? 420 T?? V??nh Di???n, H?? N???i','0651111961','thuhang@gmail.com',6,2,'kh??ng c??'),(21,'?????ng Thu H??','1992-11-11','N???','s??? 242 Nguy???n Xi???n, H?? N???i','0561992399','thuha@gmail.com',6,3,'kh??ng c??'),(22,'B??i Minh Hi???u','1991-12-03','Nam','s??? 342 h??? t??ng m???u h?? n???i','0566199523','minhhieu@gmail.com',7,2,'kh??ng c??'),(23,'Tr???n V??n Thanh','1998-05-03','Nam','s??? 1222 Nguy???n Tr??i, Thanh Xu??n, H?? N???i','0658949233','vanthanh@gmail.com',7,3,'kh??ng c??'),(24,'Nguy???n Ng???c ??nh','1992-11-11','N???','s??? 38 Nguy???n Du, H?? N???i','0367493636','ngocanh@gmail.com',2,3,'kh??ng c??'),(25,'B??i Tu???n Ng???c','1995-03-05','Nam','s??? 32 L??ng, H?? N???i','0561992399','tuanngoc@gmail.com',2,3,'kh??ng c??');
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phongban`
--

DROP TABLE IF EXISTS `phongban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phongban` (
  `idpb` int NOT NULL AUTO_INCREMENT,
  `tenpb` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `diadiem` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sonhanvien` int NOT NULL,
  `ghichu` varchar(5000) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  PRIMARY KEY (`idpb`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phongban`
--

LOCK TABLES `phongban` WRITE;
/*!40000 ALTER TABLE `phongban` DISABLE KEYS */;
INSERT INTO `phongban` VALUES (1,'Nh??n s???','t???ng 1',20,'qu???n l?? v???n ????? nh??n s???'),(2,'H??nh ch??nh','t???ng 1',10,'x??? l?? v???n ????? h??nh ch??nh'),(3,'Kinh doanh','t???ng 2',20,'qu???n l?? v???n ????? bu??n b??n s???n ph???m'),(4,'T??i ch??nh','t???ng 3',15,'ph??ng t??i ch??nh c???a c??ng ty'),(5,'Marketing','t???ng 4',12,'lo v???n ????? qu???ng b?? '),(6,'Tester','t???ng 11 a',30,'ki???m th??? c??c s???n ph???m\r\n????a ra ????nh gi?? c??ng nh?? nh???ng v???n ?????'),(7,'K??? thu???t','t???ng 10',20,'lo c??c v???n ????? k??? thu???t c???a c??ng ty');
/*!40000 ALTER TABLE `phongban` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-06 13:46:26
