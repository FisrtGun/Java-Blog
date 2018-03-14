/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.7.17-log : Database - firstgun
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `newstitle` */

insert  into `newstitle`(`nid`,`ntitle`,`nconten`,`nauthor`,`ntab`,`ncreateTime`,`nreads`,`nimg`,`narticle`,`nfollower`,`nlike`,`ndiscuss`,`nthumb`,`ngrade`,`nview`,`nintegration`,`nranking`,`npicture`) values (1,'sadfsd','sadge','bdfb','html','2018-03-05',322,NULL,'sefwe',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/280574d4ca0f081d2751b723c6efc9c2.png'),(6,'kjshdf','sahdfj','bertr','fsahdfuiwe','2018-03-01',155,NULL,'kashfw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/af8a709a82143a435c2505c1fe9acc97.png'),(7,'kjshdf','sahdfj','bhtynty','fsahdfuiwe','2018-03-07',10,NULL,'kashfw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/36a508d94ba797fc252b67261cf4fde9.jpg'),(8,'kjshdf','sahdfj','n4wret','fsahdfuiwe','2018-03-09',9,NULL,'kashfw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/633575ce3e5cdf77ff89a22e747b5bb3.jpg'),(9,'kjshdf','sahdfj','2ewrter','fsahdfuiwe','2018-03-02',25,NULL,'kashfw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/78796413571a6b082225072853cf3839.jpg'),(10,'kjshdf','sahdfj','jryt','fsahdfuiwe','2018-03-02',22,NULL,'kashfw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/3248274de2648727b1a677771acf4081.jpg'),(11,'kjshdf','sahdfj','tyjtye','fsahdfuiwe','2018-03-10',11,NULL,'kashfw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/80f783d3a86393bd2bfa091c9c9d9323.png'),(12,'erhrthw','df','gdger','grthtr','2018-03-17',22,NULL,'tyjty',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/62105f7c32ace884d10dbf5d38003607.png');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
