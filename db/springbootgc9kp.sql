-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ecommunity
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `ecommunity`
--

/*!40000 DROP DATABASE IF EXISTS `ecommunity`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ecommunity` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ecommunity`;

--
-- Table structure for table `baoxiuchuli`
--

DROP TABLE IF EXISTS `baoxiuchuli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baoxiuchuli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baoxiudanhao` varchar(200) DEFAULT NULL COMMENT '报修单号',
  `baoxiumingcheng` varchar(200) DEFAULT NULL COMMENT '报修名称',
  `chuliqingkuang` varchar(200) DEFAULT NULL COMMENT '处理情况',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `chuliriqi` date DEFAULT NULL COMMENT '处理日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1680230922042 DEFAULT CHARSET=utf8 COMMENT='报修处理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baoxiuchuli`
--

LOCK TABLES `baoxiuchuli` WRITE;
/*!40000 ALTER TABLE `baoxiuchuli` DISABLE KEYS */;
INSERT INTO `baoxiuchuli` VALUES (81,'2023-03-31 02:40:08','报修单号1','报修名称1','处理情况1','员工工号1','员工姓名1','2023-03-31','用户名1',1,1),(82,'2023-03-31 02:40:08','报修单号2','报修名称2','处理情况2','员工工号2','员工姓名2','2023-03-31','用户名2',2,2),(83,'2023-03-31 02:40:08','报修单号3','报修名称3','处理情况3','员工工号3','员工姓名3','2023-03-31','用户名3',3,3),(84,'2023-03-31 02:40:08','报修单号4','报修名称4','处理情况4','员工工号4','员工姓名4','2023-03-31','用户名4',4,4),(85,'2023-03-31 02:40:08','报修单号5','报修名称5','处理情况5','员工工号5','员工姓名5','2023-03-31','用户名5',5,5),(86,'2023-03-31 02:40:08','报修单号6','报修名称6','处理情况6','员工工号6','员工姓名6','2023-03-31','用户名6',6,6),(87,'2023-03-31 02:40:08','报修单号7','报修名称7','处理情况7','员工工号7','员工姓名7','2023-03-31','用户名7',7,7),(88,'2023-03-31 02:40:08','报修单号8','报修名称8','处理情况8','员工工号8','员工姓名8','2023-03-31','用户名8',8,8),(1680230922041,'2023-03-31 02:48:41','1680230648330','111','12','员工工号1','员工姓名1','2023-03-31','111',1,1680230655862);
/*!40000 ALTER TABLE `baoxiuchuli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baoxiuxinxi`
--

DROP TABLE IF EXISTS `baoxiuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baoxiuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baoxiudanhao` varchar(200) DEFAULT NULL COMMENT '报修单号',
  `baoxiumingcheng` varchar(200) DEFAULT NULL COMMENT '报修名称',
  `baomingleixing` varchar(200) NOT NULL COMMENT '报修类型',
  `baoxiutupian` longtext COMMENT '报修图片',
  `baoxiuneirong` longtext COMMENT '报修内容',
  `baoxiuriqi` date DEFAULT NULL COMMENT '报修日期',
  `baoxiubeizhu` varchar(200) DEFAULT NULL COMMENT '报修备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `louhao` varchar(200) NOT NULL COMMENT '楼号',
  `fanghao` varchar(200) DEFAULT NULL COMMENT '房号',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`),
  UNIQUE KEY `baoxiudanhao` (`baoxiudanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1680230655863 DEFAULT CHARSET=utf8 COMMENT='报修信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baoxiuxinxi`
--

LOCK TABLES `baoxiuxinxi` WRITE;
/*!40000 ALTER TABLE `baoxiuxinxi` DISABLE KEYS */;
INSERT INTO `baoxiuxinxi` VALUES (61,'2023-03-31 02:40:08','1111111111','报修名称1','个人','upload/baoxiuxinxi_baoxiutupian1.jpg,upload/baoxiuxinxi_baoxiutupian2.jpg,upload/baoxiuxinxi_baoxiutupian3.jpg','报修内容1','2023-03-31','报修备注1','用户名1','手机1','楼号1','房号1',''),(62,'2023-03-31 02:40:08','2222222222','报修名称2','个人','upload/baoxiuxinxi_baoxiutupian2.jpg,upload/baoxiuxinxi_baoxiutupian3.jpg,upload/baoxiuxinxi_baoxiutupian4.jpg','报修内容2','2023-03-31','报修备注2','用户名2','手机2','楼号2','房号2',''),(63,'2023-03-31 02:40:08','3333333333','报修名称3','个人','upload/baoxiuxinxi_baoxiutupian3.jpg,upload/baoxiuxinxi_baoxiutupian4.jpg,upload/baoxiuxinxi_baoxiutupian5.jpg','报修内容3','2023-03-31','报修备注3','用户名3','手机3','楼号3','房号3',''),(64,'2023-03-31 02:40:08','4444444444','报修名称4','个人','upload/baoxiuxinxi_baoxiutupian4.jpg,upload/baoxiuxinxi_baoxiutupian5.jpg,upload/baoxiuxinxi_baoxiutupian6.jpg','报修内容4','2023-03-31','报修备注4','用户名4','手机4','楼号4','房号4',''),(65,'2023-03-31 02:40:08','5555555555','报修名称5','个人','upload/baoxiuxinxi_baoxiutupian5.jpg,upload/baoxiuxinxi_baoxiutupian6.jpg,upload/baoxiuxinxi_baoxiutupian7.jpg','报修内容5','2023-03-31','报修备注5','用户名5','手机5','楼号5','房号5',''),(66,'2023-03-31 02:40:08','6666666666','报修名称6','个人','upload/baoxiuxinxi_baoxiutupian6.jpg,upload/baoxiuxinxi_baoxiutupian7.jpg,upload/baoxiuxinxi_baoxiutupian8.jpg','报修内容6','2023-03-31','报修备注6','用户名6','手机6','楼号6','房号6',''),(67,'2023-03-31 02:40:08','7777777777','报修名称7','个人','upload/baoxiuxinxi_baoxiutupian7.jpg,upload/baoxiuxinxi_baoxiutupian8.jpg,upload/baoxiuxinxi_baoxiutupian9.jpg','报修内容7','2023-03-31','报修备注7','用户名7','手机7','楼号7','房号7',''),(68,'2023-03-31 02:40:08','8888888888','报修名称8','个人','upload/baoxiuxinxi_baoxiutupian8.jpg,upload/baoxiuxinxi_baoxiutupian9.jpg,upload/baoxiuxinxi_baoxiutupian10.jpg','报修内容8','2023-03-31','报修备注8','用户名8','手机8','楼号8','房号8',''),(1680230655862,'2023-03-31 02:44:14','1680230648330','111','公共','upload/1680230652053.jpeg','阿达大大','2023-03-31','1','111','16546545651','5号楼','1105','1');
/*!40000 ALTER TABLE `baoxiuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `gonggaoleixing` varchar(200) NOT NULL COMMENT '公告类型',
  `gonggaotupian` longtext COMMENT '公告图片',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1680230887670 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (31,'2023-03-31 02:40:08','公告标题1','资讯','upload/gonggaoxinxi_gonggaotupian1.jpg,upload/gonggaoxinxi_gonggaotupian2.jpg,upload/gonggaoxinxi_gonggaotupian3.jpg','公告内容1','2023-03-31'),(32,'2023-03-31 02:40:08','公告标题2','资讯','upload/gonggaoxinxi_gonggaotupian2.jpg,upload/gonggaoxinxi_gonggaotupian3.jpg,upload/gonggaoxinxi_gonggaotupian4.jpg','公告内容2','2023-03-31'),(33,'2023-03-31 02:40:08','公告标题3','资讯','upload/gonggaoxinxi_gonggaotupian3.jpg,upload/gonggaoxinxi_gonggaotupian4.jpg,upload/gonggaoxinxi_gonggaotupian5.jpg','公告内容3','2023-03-31'),(34,'2023-03-31 02:40:08','公告标题4','资讯','upload/gonggaoxinxi_gonggaotupian4.jpg,upload/gonggaoxinxi_gonggaotupian5.jpg,upload/gonggaoxinxi_gonggaotupian6.jpg','公告内容4','2023-03-31'),(35,'2023-03-31 02:40:08','公告标题5','资讯','upload/gonggaoxinxi_gonggaotupian5.jpg,upload/gonggaoxinxi_gonggaotupian6.jpg,upload/gonggaoxinxi_gonggaotupian7.jpg','公告内容5','2023-03-31'),(36,'2023-03-31 02:40:08','公告标题6','资讯','upload/gonggaoxinxi_gonggaotupian6.jpg,upload/gonggaoxinxi_gonggaotupian7.jpg,upload/gonggaoxinxi_gonggaotupian8.jpg','公告内容6','2023-03-31'),(37,'2023-03-31 02:40:08','公告标题7','资讯','upload/gonggaoxinxi_gonggaotupian7.jpg,upload/gonggaoxinxi_gonggaotupian8.jpg,upload/gonggaoxinxi_gonggaotupian9.jpg','公告内容7','2023-03-31'),(38,'2023-03-31 02:40:08','公告标题8','资讯','upload/gonggaoxinxi_gonggaotupian8.jpg,upload/gonggaoxinxi_gonggaotupian9.jpg,upload/gonggaoxinxi_gonggaotupian10.jpg','公告内容8','2023-03-31'),(1680230887669,'2023-03-31 02:48:06','1212','通知','upload/1680230885527.jpeg','<p>啊实打实大厦</p>','2023-03-31');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaofeixinxi`
--

DROP TABLE IF EXISTS `jiaofeixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaofeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaofeileixing` varchar(200) NOT NULL COMMENT '缴费类型',
  `jiaofeijine` int(11) NOT NULL COMMENT '缴费金额',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `louhao` varchar(200) DEFAULT NULL COMMENT '楼号',
  `fanghao` varchar(200) DEFAULT NULL COMMENT '房号',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `chaobiaoxinxi` longtext COMMENT '抄表信息',
  `jiaofeiriqi` date DEFAULT NULL COMMENT '缴费日期',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1680230907591 DEFAULT CHARSET=utf8 COMMENT='缴费信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaofeixinxi`
--

LOCK TABLES `jiaofeixinxi` WRITE;
/*!40000 ALTER TABLE `jiaofeixinxi` DISABLE KEYS */;
INSERT INTO `jiaofeixinxi` VALUES (51,'2023-03-31 02:40:08','物业费',1,'用户名1','姓名1','楼号1','房号1','13823888881','抄表信息1','2023-03-31','已支付'),(52,'2023-03-31 02:40:08','物业费',2,'用户名2','姓名2','楼号2','房号2','13823888882','抄表信息2','2023-03-31','未支付'),(53,'2023-03-31 02:40:08','物业费',3,'用户名3','姓名3','楼号3','房号3','13823888883','抄表信息3','2023-03-31','未支付'),(54,'2023-03-31 02:40:08','物业费',4,'用户名4','姓名4','楼号4','房号4','13823888884','抄表信息4','2023-03-31','未支付'),(55,'2023-03-31 02:40:08','物业费',5,'用户名5','姓名5','楼号5','房号5','13823888885','抄表信息5','2023-03-31','未支付'),(56,'2023-03-31 02:40:08','物业费',600,'用户名6','姓名6','楼号6','房号6','13823888886','抄表信息6','2023-01-29','未支付'),(57,'2023-03-31 02:40:08','物业费',700,'用户名7','姓名7','楼号7','房号7','13823888887','抄表信息7','2023-04-08','未支付'),(58,'2023-03-31 02:40:08','物业费',80,'用户名8','姓名8','楼号8','房号8','13823888888','抄表信息8','2023-02-27','未支付'),(1680230907590,'2023-03-31 02:48:26','水费',100,'111','小李','5号楼','1105','16546545651','啊实打实','2023-03-31','已支付');
/*!40000 ALTER TABLE `jiaofeixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoliuxinxi`
--

DROP TABLE IF EXISTS `jiaoliuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoliuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `jiaoliuneirong` longtext COMMENT '交流内容',
  `jiaoliuriqi` date DEFAULT NULL COMMENT '交流日期',
  `fayanren` varchar(200) DEFAULT NULL COMMENT '发言人',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1680230691414 DEFAULT CHARSET=utf8 COMMENT='交流信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoliuxinxi`
--

LOCK TABLES `jiaoliuxinxi` WRITE;
/*!40000 ALTER TABLE `jiaoliuxinxi` DISABLE KEYS */;
INSERT INTO `jiaoliuxinxi` VALUES (111,'2023-03-31 02:40:08','用户名1','交流内容1','2023-03-31','发言人1',''),(112,'2023-03-31 02:40:08','用户名2','交流内容2','2023-03-31','发言人2',''),(113,'2023-03-31 02:40:08','用户名3','交流内容3','2023-03-31','发言人3',''),(114,'2023-03-31 02:40:08','用户名4','交流内容4','2023-03-31','发言人4',''),(115,'2023-03-31 02:40:08','用户名5','交流内容5','2023-03-31','发言人5',''),(116,'2023-03-31 02:40:08','用户名6','交流内容6','2023-03-31','发言人6',''),(117,'2023-03-31 02:40:08','用户名7','交流内容7','2023-03-31','发言人7',''),(118,'2023-03-31 02:40:08','用户名8','交流内容8','2023-03-31','发言人8',''),(1680230691413,'2023-03-31 02:44:50','用户名1','12112','2023-03-31','111','222');
/*!40000 ALTER TABLE `jiaoliuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `louyuxinxi`
--

DROP TABLE IF EXISTS `louyuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `louyuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `fangwuchaoxiang` varchar(200) DEFAULT NULL COMMENT '房屋朝向',
  `fangwumianji` varchar(200) DEFAULT NULL COMMENT '房屋面积',
  `fangwuzhuangtai` varchar(200) DEFAULT NULL COMMENT '房屋状态',
  `fangwujieshao` longtext COMMENT '房屋介绍',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='楼宇信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `louyuxinxi`
--

LOCK TABLES `louyuxinxi` WRITE;
/*!40000 ALTER TABLE `louyuxinxi` DISABLE KEYS */;
INSERT INTO `louyuxinxi` VALUES (41,'2023-03-31 02:40:08','房屋名称1','房屋类型1','房屋朝向1','房屋面积1','已入住','房屋介绍1','2023-03-31'),(42,'2023-03-31 02:40:08','房屋名称2','房屋类型2','房屋朝向2','房屋面积2','未入住','房屋介绍2','2023-03-31'),(43,'2023-03-31 02:40:08','房屋名称3','房屋类型3','房屋朝向3','房屋面积3','已入住','房屋介绍3','2023-03-31'),(44,'2023-03-31 02:40:08','房屋名称4','房屋类型4','房屋朝向4','房屋面积4','已入住','房屋介绍4','2023-03-31'),(45,'2023-03-31 02:40:08','房屋名称5','房屋类型5','房屋朝向5','房屋面积5','已入住','房屋介绍5','2023-03-31'),(46,'2023-03-31 02:40:08','房屋名称6','房屋类型6','房屋朝向6','房屋面积6','已入住','房屋介绍6','2023-03-31'),(47,'2023-03-31 02:40:08','房屋名称7','房屋类型7','房屋朝向7','房屋面积7','已入住','房屋介绍7','2023-03-31'),(48,'2023-03-31 02:40:08','房屋名称8','房屋类型8','房屋朝向8','房屋面积8','已入住','房屋介绍8','2023-03-31');
/*!40000 ALTER TABLE `louyuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1680230622668,'111','yezhu','业主','k8y6g7jxto4xh6laemz7g1bwpf29g524','2023-03-31 02:43:46','2023-03-31 03:49:44'),(2,1,'admin','users','管理员','l2i9lh27xyo0xtepsclfoo72k8lrwtjm','2023-03-31 02:45:01','2023-03-31 03:50:03'),(3,11,'用户名1','yezhu','业主','p22h0y9n4iq7oi8jpt4rzh9xjfrcmg3n','2023-03-31 02:49:23','2023-03-31 03:49:23');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tousuchuli`
--

DROP TABLE IF EXISTS `tousuchuli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tousuchuli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tousudanhao` varchar(200) DEFAULT NULL COMMENT '投诉单号',
  `tousubiaoti` varchar(200) DEFAULT NULL COMMENT '投诉标题',
  `chulineirong` varchar(200) DEFAULT NULL COMMENT '处理内容',
  `chuliriqi` date DEFAULT NULL COMMENT '处理日期',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1680230937336 DEFAULT CHARSET=utf8 COMMENT='投诉处理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tousuchuli`
--

LOCK TABLES `tousuchuli` WRITE;
/*!40000 ALTER TABLE `tousuchuli` DISABLE KEYS */;
INSERT INTO `tousuchuli` VALUES (91,'2023-03-31 02:40:08','投诉单号1','投诉标题1','处理内容1','2023-03-31','员工工号1','员工姓名1','用户名1',1,1),(92,'2023-03-31 02:40:08','投诉单号2','投诉标题2','处理内容2','2023-03-31','员工工号2','员工姓名2','用户名2',2,2),(93,'2023-03-31 02:40:08','投诉单号3','投诉标题3','处理内容3','2023-03-31','员工工号3','员工姓名3','用户名3',3,3),(94,'2023-03-31 02:40:08','投诉单号4','投诉标题4','处理内容4','2023-03-31','员工工号4','员工姓名4','用户名4',4,4),(95,'2023-03-31 02:40:08','投诉单号5','投诉标题5','处理内容5','2023-03-31','员工工号5','员工姓名5','用户名5',5,5),(96,'2023-03-31 02:40:08','投诉单号6','投诉标题6','处理内容6','2023-03-31','员工工号6','员工姓名6','用户名6',6,6),(97,'2023-03-31 02:40:08','投诉单号7','投诉标题7','处理内容7','2023-03-31','员工工号7','员工姓名7','用户名7',7,7),(98,'2023-03-31 02:40:08','投诉单号8','投诉标题8','处理内容8','2023-03-31','员工工号8','员工姓名8','用户名8',8,8),(1680230937335,'2023-03-31 02:48:56','1680230658946','1212','12','2023-03-31','员工工号1','员工姓名1','111',1,1680230664627);
/*!40000 ALTER TABLE `tousuchuli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tousuxinxi`
--

DROP TABLE IF EXISTS `tousuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tousuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tousudanhao` varchar(200) DEFAULT NULL COMMENT '投诉单号',
  `tousubiaoti` varchar(200) NOT NULL COMMENT '投诉标题',
  `tousutupian` longtext COMMENT '投诉图片',
  `tousuneirong` longtext NOT NULL COMMENT '投诉内容',
  `tousuriqi` date DEFAULT NULL COMMENT '投诉日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `louhao` varchar(200) DEFAULT NULL COMMENT '楼号',
  `fanghao` varchar(200) DEFAULT NULL COMMENT '房号',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tousudanhao` (`tousudanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1680230664628 DEFAULT CHARSET=utf8 COMMENT='投诉信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tousuxinxi`
--

LOCK TABLES `tousuxinxi` WRITE;
/*!40000 ALTER TABLE `tousuxinxi` DISABLE KEYS */;
INSERT INTO `tousuxinxi` VALUES (71,'2023-03-31 02:40:08','1111111111','投诉标题1','upload/tousuxinxi_tousutupian1.jpg,upload/tousuxinxi_tousutupian2.jpg,upload/tousuxinxi_tousutupian3.jpg','投诉内容1','2023-03-31','用户名1','姓名1','13823888881','楼号1','房号1',''),(72,'2023-03-31 02:40:08','2222222222','投诉标题2','upload/tousuxinxi_tousutupian2.jpg,upload/tousuxinxi_tousutupian3.jpg,upload/tousuxinxi_tousutupian4.jpg','投诉内容2','2023-03-31','用户名2','姓名2','13823888882','楼号2','房号2',''),(73,'2023-03-31 02:40:08','3333333333','投诉标题3','upload/tousuxinxi_tousutupian3.jpg,upload/tousuxinxi_tousutupian4.jpg,upload/tousuxinxi_tousutupian5.jpg','投诉内容3','2023-03-31','用户名3','姓名3','13823888883','楼号3','房号3',''),(74,'2023-03-31 02:40:08','4444444444','投诉标题4','upload/tousuxinxi_tousutupian4.jpg,upload/tousuxinxi_tousutupian5.jpg,upload/tousuxinxi_tousutupian6.jpg','投诉内容4','2023-03-31','用户名4','姓名4','13823888884','楼号4','房号4',''),(75,'2023-03-31 02:40:08','5555555555','投诉标题5','upload/tousuxinxi_tousutupian5.jpg,upload/tousuxinxi_tousutupian6.jpg,upload/tousuxinxi_tousutupian7.jpg','投诉内容5','2023-03-31','用户名5','姓名5','13823888885','楼号5','房号5',''),(76,'2023-03-31 02:40:08','6666666666','投诉标题6','upload/tousuxinxi_tousutupian6.jpg,upload/tousuxinxi_tousutupian7.jpg,upload/tousuxinxi_tousutupian8.jpg','投诉内容6','2023-03-31','用户名6','姓名6','13823888886','楼号6','房号6',''),(77,'2023-03-31 02:40:08','7777777777','投诉标题7','upload/tousuxinxi_tousutupian7.jpg,upload/tousuxinxi_tousutupian8.jpg,upload/tousuxinxi_tousutupian9.jpg','投诉内容7','2023-03-31','用户名7','姓名7','13823888887','楼号7','房号7',''),(78,'2023-03-31 02:40:08','8888888888','投诉标题8','upload/tousuxinxi_tousutupian8.jpg,upload/tousuxinxi_tousutupian9.jpg,upload/tousuxinxi_tousutupian10.jpg','投诉内容8','2023-03-31','用户名8','姓名8','13823888888','楼号8','房号8',''),(1680230664627,'2023-03-31 02:44:24','1680230658946','1212','upload/1680230662415.jpeg','啊实打实大','2023-03-31','111','小李','16546545651','5号楼','1105','22');
/*!40000 ALTER TABLE `tousuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-03-31 02:40:08');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yezhu`
--

DROP TABLE IF EXISTS `yezhu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yezhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `louhao` varchar(200) DEFAULT NULL COMMENT '楼号',
  `fanghao` varchar(200) DEFAULT NULL COMMENT '房号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1680230622669 DEFAULT CHARSET=utf8 COMMENT='业主';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yezhu`
--

LOCK TABLES `yezhu` WRITE;
/*!40000 ALTER TABLE `yezhu` DISABLE KEYS */;
INSERT INTO `yezhu` VALUES (11,'2023-03-31 02:40:08','用户名1','e10adc3949ba59abbe56e057f20f883e','姓名1','男','upload/yezhu_touxiang1.jpg','13823888881','楼号1','房号1'),(12,'2023-03-31 02:40:08','用户名2','e10adc3949ba59abbe56e057f20f883e','姓名2','男','upload/yezhu_touxiang2.jpg','13823888882','楼号2','房号2'),(13,'2023-03-31 02:40:08','用户名3','e10adc3949ba59abbe56e057f20f883e','姓名3','男','upload/yezhu_touxiang3.jpg','13823888883','楼号3','房号3'),(14,'2023-03-31 02:40:08','用户名4','e10adc3949ba59abbe56e057f20f883e','姓名4','男','upload/yezhu_touxiang4.jpg','13823888884','楼号4','房号4'),(15,'2023-03-31 02:40:08','用户名5','e10adc3949ba59abbe56e057f20f883e','姓名5','男','upload/yezhu_touxiang5.jpg','13823888885','楼号5','房号5'),(16,'2023-03-31 02:40:08','用户名6','e10adc3949ba59abbe56e057f20f883e','姓名6','男','upload/yezhu_touxiang6.jpg','13823888886','楼号6','房号6'),(17,'2023-03-31 02:40:08','用户名7','e10adc3949ba59abbe56e057f20f883e','姓名7','男','upload/yezhu_touxiang7.jpg','13823888887','楼号7','房号7'),(18,'2023-03-31 02:40:08','用户名8','e10adc3949ba59abbe56e057f20f883e','姓名8','男','upload/yezhu_touxiang8.jpg','13823888888','楼号8','房号8'),(1680230622668,'2023-03-31 02:43:42','111','698d51a19d8a121ce581499d7b701668','小李','女','upload/1680230615701.jpeg','16546545651','5号楼','1105');
/*!40000 ALTER TABLE `yezhu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yijianfankui`
--

DROP TABLE IF EXISTS `yijianfankui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yijianfankui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fankuibiaoti` varchar(200) DEFAULT NULL COMMENT '反馈标题',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `fankuiriqi` datetime DEFAULT NULL COMMENT '反馈日期',
  `yijianneirong` longtext COMMENT '意见内容',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1680230683901 DEFAULT CHARSET=utf8 COMMENT='意见反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yijianfankui`
--

LOCK TABLES `yijianfankui` WRITE;
/*!40000 ALTER TABLE `yijianfankui` DISABLE KEYS */;
INSERT INTO `yijianfankui` VALUES (101,'2023-03-31 02:40:08','反馈标题1','用户名1','2023-03-31 10:40:08','意见内容1',''),(102,'2023-03-31 02:40:08','反馈标题2','用户名2','2023-03-31 10:40:08','意见内容2',''),(103,'2023-03-31 02:40:08','反馈标题3','用户名3','2023-03-31 10:40:08','意见内容3',''),(104,'2023-03-31 02:40:08','反馈标题4','用户名4','2023-03-31 10:40:08','意见内容4',''),(105,'2023-03-31 02:40:08','反馈标题5','用户名5','2023-03-31 10:40:08','意见内容5',''),(106,'2023-03-31 02:40:08','反馈标题6','用户名6','2023-03-31 10:40:08','意见内容6',''),(107,'2023-03-31 02:40:08','反馈标题7','用户名7','2023-03-31 10:40:08','意见内容7',''),(108,'2023-03-31 02:40:08','反馈标题8','用户名8','2023-03-31 10:40:08','意见内容8',''),(1680230683900,'2023-03-31 02:44:43','121','111','2023-03-31 10:44:41','1111','1111');
/*!40000 ALTER TABLE `yijianfankui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhuzhi` varchar(200) DEFAULT NULL COMMENT '住址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (21,'2023-03-31 02:40:08','员工工号1','员工姓名1','男','upload/yuangong_touxiang1.jpg,upload/yuangong_touxiang2.jpg,upload/yuangong_touxiang3.jpg','13823888881','住址1'),(22,'2023-03-31 02:40:08','员工工号2','员工姓名2','男','upload/yuangong_touxiang2.jpg,upload/yuangong_touxiang3.jpg,upload/yuangong_touxiang4.jpg','13823888882','住址2'),(23,'2023-03-31 02:40:08','员工工号3','员工姓名3','男','upload/yuangong_touxiang3.jpg,upload/yuangong_touxiang4.jpg,upload/yuangong_touxiang5.jpg','13823888883','住址3'),(24,'2023-03-31 02:40:08','员工工号4','员工姓名4','男','upload/yuangong_touxiang4.jpg,upload/yuangong_touxiang5.jpg,upload/yuangong_touxiang6.jpg','13823888884','住址4'),(25,'2023-03-31 02:40:08','员工工号5','员工姓名5','男','upload/yuangong_touxiang5.jpg,upload/yuangong_touxiang6.jpg,upload/yuangong_touxiang7.jpg','13823888885','住址5'),(26,'2023-03-31 02:40:08','员工工号6','员工姓名6','男','upload/yuangong_touxiang6.jpg,upload/yuangong_touxiang7.jpg,upload/yuangong_touxiang8.jpg','13823888886','住址6'),(27,'2023-03-31 02:40:08','员工工号7','员工姓名7','男','upload/yuangong_touxiang7.jpg,upload/yuangong_touxiang8.jpg,upload/yuangong_touxiang9.jpg','13823888887','住址7'),(28,'2023-03-31 02:40:08','员工工号8','员工姓名8','男','upload/yuangong_touxiang8.jpg,upload/yuangong_touxiang9.jpg,upload/yuangong_touxiang10.jpg','13823888888','住址8');
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-04 22:23:38
