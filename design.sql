-- MySQL dump 10.13  Distrib 5.1.62, for Win64 (unknown)
--
-- Host: localhost    Database: design
-- ------------------------------------------------------
-- Server version	5.1.62-community

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
-- Table structure for table `academy`
--

DROP TABLE IF EXISTS `academy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `academy` (
  `academy_no` varchar(20) NOT NULL,
  `academy_name` varchar(20) DEFAULT NULL,
  `academy_leader` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`academy_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academy`
--

LOCK TABLES `academy` WRITE;
/*!40000 ALTER TABLE `academy` DISABLE KEYS */;
INSERT INTO `academy` VALUES ('01','计算机学院','赵六');
/*!40000 ALTER TABLE `academy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `admin_id` varchar(20) NOT NULL,
  `admin_name` varchar(20) DEFAULT NULL,
  `userid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('a1','王五','a1');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `classno` varchar(20) NOT NULL,
  `classname` varchar(20) DEFAULT NULL,
  `classcount` int(11) DEFAULT NULL,
  `mno` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`classno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES ('01','软件1611',31,'01');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_class`
--

DROP TABLE IF EXISTS `class_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_class` (
  `classno` varchar(20) NOT NULL,
  `cou_classno` varchar(20) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `cou_classname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`classno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_class`
--

LOCK TABLES `class_class` WRITE;
/*!40000 ALTER TABLE `class_class` DISABLE KEYS */;
INSERT INTO `class_class` VALUES ('01','01',120,'软件16高数'),('02','02',100,'软件16数字逻辑');
/*!40000 ALTER TABLE `class_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cou_class`
--

DROP TABLE IF EXISTS `cou_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cou_class` (
  `cou_classno` varchar(20) NOT NULL,
  `term` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `cno` varchar(20) DEFAULT NULL,
  `tno` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cou_classno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cou_class`
--

LOCK TABLES `cou_class` WRITE;
/*!40000 ALTER TABLE `cou_class` DISABLE KEYS */;
INSERT INTO `cou_class` VALUES ('01','20161','正常','04','t1'),('02','20162','重修','02','01'),('03','20171','正常','03','t2'),('04','20172','正常','03','t1'),('05','20161','正常','04','04'),('06','20161','正常','04','t2'),('07','20161','正常','04',NULL);
/*!40000 ALTER TABLE `cou_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `cno` varchar(20) NOT NULL,
  `cname` varchar(20) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('01','高数',80,5,'正常'),('02','数字逻辑',64,3,'正常'),('03','数据结构',80,5,'正常'),('04','操作系统',80,5,'正常'),('05','Java程序设计',80,5,'正常');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dean`
--

DROP TABLE IF EXISTS `dean`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dean` (
  `dean_no` varchar(20) NOT NULL,
  `dean_name` varchar(20) DEFAULT NULL,
  `academy_no` varchar(20) DEFAULT NULL,
  `userid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`dean_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dean`
--

LOCK TABLES `dean` WRITE;
/*!40000 ALTER TABLE `dean` DISABLE KEYS */;
INSERT INTO `dean` VALUES ('d1','张四','01','d1');
/*!40000 ALTER TABLE `dean` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_set`
--

DROP TABLE IF EXISTS `grade_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_set` (
  `set_no` varchar(20) NOT NULL,
  `usual_grade` float DEFAULT NULL,
  `final_grade` float DEFAULT NULL,
  `cou_classno` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`set_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_set`
--

LOCK TABLES `grade_set` WRITE;
/*!40000 ALTER TABLE `grade_set` DISABLE KEYS */;
INSERT INTO `grade_set` VALUES ('01',0.4,0.6,'01');
/*!40000 ALTER TABLE `grade_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major`
--

DROP TABLE IF EXISTS `major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `major` (
  `mno` varchar(20) NOT NULL,
  `mname` varchar(20) DEFAULT NULL,
  `academy_no` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`mno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
INSERT INTO `major` VALUES ('01','软件工程','01');
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `office`
--

DROP TABLE IF EXISTS `office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `office` (
  `office_no` varchar(20) NOT NULL,
  `office_name` varchar(20) DEFAULT NULL,
  `academy_no` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`office_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `office`
--

LOCK TABLES `office` WRITE;
/*!40000 ALTER TABLE `office` DISABLE KEYS */;
INSERT INTO `office` VALUES ('01','软件教研室','01');
/*!40000 ALTER TABLE `office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_table`
--

DROP TABLE IF EXISTS `report_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_table` (
  `cou_classname` varchar(20) DEFAULT NULL,
  `avg_grade` float DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `unpass` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_table`
--

LOCK TABLES `report_table` WRITE;
/*!40000 ALTER TABLE `report_table` DISABLE KEYS */;
INSERT INTO `report_table` VALUES ('软件16高数',32.5,120,3),('软件16高数',32.5,120,1);
/*!40000 ALTER TABLE `report_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc`
--

DROP TABLE IF EXISTS `sc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sc` (
  `sno` varchar(20) DEFAULT NULL,
  `cou_classno` varchar(20) DEFAULT NULL,
  `cname` varchar(20) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `usual_score` int(11) DEFAULT NULL,
  `final_score` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc`
--

LOCK TABLES `sc` WRITE;
/*!40000 ALTER TABLE `sc` DISABLE KEYS */;
INSERT INTO `sc` VALUES ('s1','01','高等数学',80,'闭卷','重修',40,40,40),('s1','02','数字逻辑',80,'开卷','正常',80,80,80),('s1','03','数据结构',80,'开卷','正常',60,60,60),('s4','01','高等数学',8,'闭卷','正常',60,60,60),('s5','01','Java',8,'开卷','正常',10,10,10),('s3','01','高等数学',80,'闭卷','正常',10,10,10),('s3','02','数字逻辑',80,'闭卷','正常',NULL,NULL,NULL),('s3','04','C语言',80,'闭卷','正常',100,100,100),('s5','04','C语言',80,'闭卷','正常',100,100,100),('s2','02','数字逻辑',80,'开卷','正常',40,40,40),('11','1','1',1,'1','1',1,11,1),('s3','01','高等数学',5,'重修','正常',50,50,50);
/*!40000 ALTER TABLE `sc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `sno` varchar(20) NOT NULL,
  `sname` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `userid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('s1','张三','男','s1'),('s2','’张四','女','s2');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `tno` varchar(20) NOT NULL DEFAULT '',
  `tname` varchar(20) DEFAULT NULL,
  `userid` varchar(20) DEFAULT NULL,
  `office_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES ('t1','李四','t1','o1');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userid` varchar(20) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `permission` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('a1','a1','a1','admin'),('d1','d1','d1','dean'),('s1','s1','s1','student'),('t1','t1','t1','teacher');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-24 20:26:36
