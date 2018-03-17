/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.16 : Database - firstgun
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`firstgun` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `firstgun`;

/*Table structure for table `iteyediscussiongroup` */

DROP TABLE IF EXISTS `iteyediscussiongroup`;

CREATE TABLE `iteyediscussiongroup` (
  `gid` int(20) NOT NULL AUTO_INCREMENT,
  `gname` text COMMENT '组名',
  `gtopic` text COMMENT '讨论的话题',
  `gnum` int(11) DEFAULT NULL,
  `gcreateTime` date DEFAULT NULL COMMENT '创建时间',
  `nview` int(11) DEFAULT NULL,
  `gRecoveryTime` date DEFAULT NULL COMMENT '回复时间',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `iteyediscussiongroup` */

insert  into `iteyediscussiongroup`(`gid`,`gname`,`gtopic`,`gnum`,`gcreateTime`,`nview`,`gRecoveryTime`) values (1,'aaaaa','aaaa',22,'2018-03-15',23,'2018-03-15'),(2,'bbbbb','bbbbb',31,'2018-03-14',555,'2018-03-14'),(3,'ccccc','ccccccc',332,'2018-03-13',962,'2018-03-13'),(4,'dddddd','ddddddd',532,'2018-03-12',132,'2018-03-12'),(18,'fffffff','aawdssd',221,'2018-03-11',345,'2018-03-11'),(19,'oiiuuuuuu','iiiiii',321,'2018-03-10',12,'2018-03-10'),(20,'rrrrrr','vvvvv',124,'2018-03-09',44,'2018-03-09');

/*Table structure for table `iteyeinformation` */

DROP TABLE IF EXISTS `iteyeinformation`;

CREATE TABLE `iteyeinformation` (
  `iid` int(20) NOT NULL AUTO_INCREMENT,
  `ititle` text COMMENT '资讯标题',
  `iconten` text COMMENT '资讯内容',
  `iauthor` varchar(255) DEFAULT NULL COMMENT '资讯作者',
  `icreateTime` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `iteyeinformation` */

insert  into `iteyeinformation`(`iid`,`ititle`,`iconten`,`iauthor`,`icreateTime`) values (1,'Java 程序员开发常用的工具','作为一名Java程序开发人员,如何选择一款适合自己的集成开发环境，如果选择得当，那么就能够使得开发工作事半功倍；否则事倍而功半。','qqqqqqqqqq','2018-03-15'),(2,'wwwwwwwwwwwww','qqqqqqqqqqqqq','wwwwwww','2018-03-14'),(3,'eeeeeeeeeee','aaaaaaaaaa','aaaaaa','2018-03-13'),(4,'sssssssssss','ssssssss','ssssss','2018-03-12'),(17,'zzzzzzzzzzzz','zzzzzzzzzz','zzzzzzz','2018-03-11');

/*Table structure for table `mycenter` */

DROP TABLE IF EXISTS `mycenter`;

CREATE TABLE `mycenter` (
  `userId` int(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL COMMENT '用户名',
  `upicture` varchar(255) DEFAULT NULL COMMENT '头像',
  `attention` int(11) DEFAULT NULL COMMENT '关注',
  `fans` int(20) DEFAULT NULL COMMENT '粉丝',
  `industry` varchar(20) DEFAULT NULL COMMENT '行业',
  `job` varchar(30) DEFAULT NULL COMMENT '职位',
  `sex` varchar(3) DEFAULT NULL COMMENT '性别',
  `birthday` varchar(20) DEFAULT NULL COMMENT '生日',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mycenter` */

/*Table structure for table `newstitle` */

DROP TABLE IF EXISTS `newstitle`;

CREATE TABLE `newstitle` (
  `nid` int(20) NOT NULL AUTO_INCREMENT,
  `ntitle` text COMMENT '新闻标题',
  `nconten` text COMMENT '新闻内容',
  `nauthor` varchar(255) DEFAULT NULL COMMENT '新闻作者',
  `ntab` varchar(255) DEFAULT NULL COMMENT '标签',
  `ncreateTime` date DEFAULT NULL COMMENT '创建时间',
  `nreads` int(24) DEFAULT NULL COMMENT '阅读量',
  `nimg` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `narticle` varchar(50) DEFAULT NULL COMMENT '文章来源',
  `nfollower` int(20) DEFAULT NULL COMMENT '粉丝',
  `nlike` int(20) DEFAULT NULL COMMENT '喜欢',
  `ndiscuss` int(20) DEFAULT NULL COMMENT '评论',
  `nthumb` int(20) DEFAULT NULL COMMENT '点赞',
  `ngrade` varchar(50) DEFAULT NULL COMMENT '等级',
  `nview` int(20) DEFAULT NULL COMMENT '访问量',
  `nintegration` int(20) DEFAULT NULL COMMENT '积分',
  `nranking` int(30) DEFAULT NULL COMMENT '排名',
  `npicture` varchar(255) DEFAULT NULL COMMENT '广告图片',
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `newstitle` */

insert  into `newstitle`(`nid`,`ntitle`,`nconten`,`nauthor`,`ntab`,`ncreateTime`,`nreads`,`nimg`,`narticle`,`nfollower`,`nlike`,`ndiscuss`,`nthumb`,`ngrade`,`nview`,`nintegration`,`nranking`,`npicture`) values (1,'sadfsd','sadge','bdfb','html','2018-03-05',322,'','sefwe',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/280574d4ca0f081d2751b723c6efc9c2.png'),(2,'kjshdf','sahdfj','bertr','fsahdfuiwe','2018-03-01',155,'','kashfw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/af8a709a82143a435c2505c1fe9acc97.png'),(3,'kjshdf','sahdfj','bhtynty','fsahdfuiwe','2018-03-07',10,'../../statics/ITeyeImages/12d8ea3d-4199-3941-8a17-acd5024729b8.jpg','kashfw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/36a508d94ba797fc252b67261cf4fde9.jpg'),(4,'kjshdf','sahdfj','n4wret','fsahdfuiwe','2018-03-09',9,'../../statics/ITeyeImages/23e1c30e-ef8c-3702-aa3c-e83277ffca91.png','kashfw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/633575ce3e5cdf77ff89a22e747b5bb3.jpg'),(5,'kjshdf','sahdfj','2ewrter','fsahdfuiwe','2018-03-02',25,'../../statics/ITeyeImages/eace7a35-2604-38a7-aa1e-e77dd4bea5e4.jpg','kashfw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/78796413571a6b082225072853cf3839.jpg'),(6,'kjshdf','sahdfj','jryt','fsahdfuiwe','2018-03-02',22,'../../statics/ITeyeImages/877aca81-daac-33c8-8bf9-3a886cebc6c3.jpg','kashfw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/3248274de2648727b1a677771acf4081.jpg'),(7,'kjshdf','sahdfj','tyjtye','fsahdfuiwe','2018-03-10',11,'../../statics/ITeyeImages/ad26f909-6440-35a9-b4e9-9aea825bd38e.png','kashfw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/80f783d3a86393bd2bfa091c9c9d9323.png'),(12,'erhrthw','df','gdger','grthtr','2018-03-17',22,'','tyjty',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/62105f7c32ace884d10dbf5d38003607.png'),(13,'ntitle','asdas','fscds','frjuh','2018-03-16',NULL,'snfd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'aaaaaa','                                ===============================欢迎写博客===============================\r\n                            ','admin','repost','2018-03-16',NULL,'../../statics/images/fg.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `other` */

DROP TABLE IF EXISTS `other`;

CREATE TABLE `other` (
  `nid` int(20) NOT NULL AUTO_INCREMENT,
  `ntitle` text COMMENT '新闻标题',
  `nconten` text COMMENT '新闻内容',
  `nauthor` varchar(255) DEFAULT NULL COMMENT '新闻作者',
  `ntab` varchar(255) DEFAULT NULL COMMENT '标签',
  `ncreateTime` date DEFAULT NULL COMMENT '创建时间',
  `nreads` int(24) DEFAULT NULL COMMENT '阅读量',
  `nimg` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `narticle` varchar(50) DEFAULT NULL COMMENT '文章来源',
  `nfollower` int(20) DEFAULT NULL COMMENT '粉丝',
  `nlike` int(20) DEFAULT NULL COMMENT '喜欢',
  `ndiscuss` int(20) DEFAULT NULL COMMENT '评论',
  `nthumb` int(20) DEFAULT NULL COMMENT '点赞',
  `ngrade` varchar(50) DEFAULT NULL COMMENT '等级',
  `nview` int(20) DEFAULT NULL COMMENT '访问量',
  `nintegration` int(20) DEFAULT NULL COMMENT '积分',
  `nranking` int(30) DEFAULT NULL COMMENT '排名',
  `npicture` varchar(255) DEFAULT NULL COMMENT '广告图片',
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `other` */

insert  into `other`(`nid`,`ntitle`,`nconten`,`nauthor`,`ntab`,`ncreateTime`,`nreads`,`nimg`,`narticle`,`nfollower`,`nlike`,`ndiscuss`,`nthumb`,`ngrade`,`nview`,`nintegration`,`nranking`,`npicture`) values (1,'grewefw','qwdwqd','wedwed','weffwe','2018-03-15',343,NULL,'sdfsfd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/280574d4ca0f081d2751b723c6efc9c2.png'),(3,'asdas','asdasd','zxczc','htrd','2018-03-14',44,NULL,'scdccs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/af8a709a82143a435c2505c1fe9acc97.png'),(4,'dsd','dsccds','dwqdvf','hchg','2018-03-15',322,NULL,'jufgf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/36a508d94ba797fc252b67261cf4fde9.jpg'),(5,'uihygf','dsccds','dwqdvf','hchg','2018-03-08',322,NULL,'jufgf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/633575ce3e5cdf77ff89a22e747b5bb3.jpg'),(6,'uoijhg','vddvrt','dwryttqdvf','hchg','2018-03-14',32,NULL,'fggf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/f1c9aca64561ae2b6d26ea3d6abc4588.jpg'),(7,'iojkhgfdsg','wescec','scd','hchg','2018-03-13',3,NULL,'ascd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/3b1fca6be181efb23a9d75629a46c755.jpg'),(8,'fgxxxhgfdsg','ddess','scxcvd','hchg','2018-03-12',3,NULL,'fvhfgd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/80f783d3a86393bd2bfa091c9c9d9323.png'),(9,'cccvvvvgfdsg','ddess','scxcvd','hchg','2018-03-11',53,NULL,'sfnbvc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/62105f7c32ace884d10dbf5d38003607.png'),(10,'qqqqqqgfdsg','ddess','scxcvd','hchg','2018-03-10',563,NULL,'sfnbvc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/70d8dfd3ba8c89236c747f181ea71b16.jpg'),(11,'hhhhhfdsg','ffdf','fghgfhf','cvbcv','2018-03-09',56,NULL,'bvvbb',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/a7f37fbad97f3cdb0ee36c0fcd9628ae.jpg'),(12,'bbbbbbbb','dddddd','asdfd','gtf','2018-03-09',33,NULL,'fgbf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/d53977a1da22a0ba27f38bf71f16d4f3.jpg'),(13,'fsfffff','rrrrrr','ggsd','gdddd','2018-03-08',444,NULL,'sdscsc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/fd7c5c8fd40a537feb63fb44df8cf5ea.jpg'),(14,'3333eeeeee','ddddxxxxxx','asdac','zxcadqw','2018-03-07',321,NULL,'cccccc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/481f31224e31a114adbf35cbdde4b24b.png'),(15,'rwefsd','dscfv','vdvd','sdddd','2018-03-06',421,NULL,'fffff',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/fef6fa64e5d526bc9bc9e1522b9d020d.png'),(16,'sfdghjkhgfxcccc','dasdacsa','sdaczx','asdqwr','2018-03-05',367,NULL,'sdcscs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/9b4ea6a8403891f274d3f8b714658744.png');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) DEFAULT NULL,
  `upwd` varchar(50) DEFAULT NULL,
  `upicture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`uid`,`uname`,`upwd`,`upicture`) values (1,'admin','123','images/fg.png'),(2,'111','222','333'),(3,'qqqq','123','images/fg.png'),(4,'11111','111111','images/fg.png'),(5,'11111','111111','images/fg.png'),(6,'123456','12345','images/fg.png'),(7,'3333','333','images/fg.png'),(8,'32','23','images/fg.png'),(9,'1111111','111111111111','images/fg.png'),(10,'322222','222','images/fg.png'),(11,'222','123','images/fg.png'),(12,'23456','2345','images/fg.png'),(13,'5432','222','images/fg.png'),(14,'444','444','images/fg.png'),(15,'55','55','images/fg.png'),(16,'76543','432','images/fg.png'),(17,'4444','44','images/fg.png'),(18,'3333','444','images/fg.png'),(19,'33','444','images/fg.png'),(20,'5555','5555','images/fg.png'),(21,'3333','77','images/fg.png'),(22,'3456789','444','images/fg.png'),(23,'22','22','images/fg.png'),(24,'4567890','3456789','images/fg.png'),(25,'12324','1234','images/fg.png'),(26,'','','images/fg.png'),(27,'admin','aaa','images/fg.png'),(28,'','','images/fg.png'),(29,'','','images/fg.png'),(30,'','','images/fg.png'),(31,'admin','2','images/fg.png'),(32,'12345','','images/fg.png'),(33,'12345','','images/fg.png'),(34,'234567','','images/fg.png'),(35,'','','images/fg.png'),(36,'','','images/fg.png');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
