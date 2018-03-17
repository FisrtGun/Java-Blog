/*
SQLyog Ultimate v12.09 (64 bit)
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

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `cid` int(10) NOT NULL AUTO_INCREMENT COMMENT 'GitChat id',
  `cwid` int(10) DEFAULT NULL COMMENT '作者id',
  `ctid` int(10) DEFAULT NULL COMMENT 'Chat主题id',
  `chattitle` varchar(50) DEFAULT NULL COMMENT 'Chat标题',
  `chathits` int(10) DEFAULT NULL COMMENT 'Chat点击量',
  `chattag` varchar(10) DEFAULT NULL COMMENT 'Chat标签',
  `chatprice` int(10) DEFAULT NULL COMMENT 'Chat价格',
  `chatcreatetime` date DEFAULT NULL COMMENT 'Chat创建时间',
  `cwjoinid` int(10) DEFAULT NULL COMMENT '已参与的知名用户id',
  PRIMARY KEY (`cid`),
  KEY `writer_chat_cwid` (`cwid`),
  KEY `writer_chat_cwjoinid` (`cwjoinid`),
  KEY `topic_chat_ctid` (`ctid`),
  CONSTRAINT `topic_chat_ctid` FOREIGN KEY (`ctid`) REFERENCES `chattopic` (`tid`),
  CONSTRAINT `writer_chat_cwid` FOREIGN KEY (`cwid`) REFERENCES `chatwriter` (`wid`),
  CONSTRAINT `writer_chat_cwjoinid` FOREIGN KEY (`cwjoinid`) REFERENCES `chatwriter` (`wid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `chat` */

insert  into `chat`(`cid`,`cwid`,`ctid`,`chattitle`,`chathits`,`chattag`,`chatprice`,`chatcreatetime`,`cwjoinid`) values (1,1,10,'如何用 Python 爬取网页制作电子书',390,'读者圈',1,'2018-03-09',NULL),(2,2,17,'提升 PPT 逼格的秘诀——善用圆角矩形',97,'读者圈',0,'2018-03-01',NULL),(3,3,11,'让你一场 Chat 学会 Git',297,'读者圈',2,'2018-03-05',NULL),(4,4,9,'Linux 内存管理之内核态剖析',58,'读者圈',2,'2018-03-10',NULL),(5,5,7,'初探 ZooKeeper 技术内幕',71,'读者圈',10,'2018-03-08',NULL),(6,6,17,'别让网络知识成为你跳槽时的瓶颈',125,'读者圈',5,'2018-03-02',NULL),(7,7,20,'如何写一手好文章：练习、技巧，以及艺术',220,NULL,4,'2018-03-03',NULL),(8,8,17,'一条挨踢老狗的 2017 年终总结',425,'读者圈',0,'2018-03-09',NULL),(9,1,17,'如何掌握苹果发布会 PPT 制作要点',197,NULL,2,'2018-03-07',NULL),(10,2,17,'程序员如何进行职业规划？',114,'读者圈',3,'2018-03-02',NULL),(11,3,9,'手把手教你如何向 Linux 内核提交代码',91,NULL,5,'2018-03-05',NULL),(12,4,7,'ZooKeeper 基本概念、使用方法、实践场景',156,NULL,10,'2018-03-09',NULL),(13,5,17,'程序员跳槽时，如何优雅地谈薪水',420,'读者圈',0,'2018-03-11',NULL),(14,6,7,'如何基于 Redis 构建应用程序组件',133,NULL,5,'2018-03-03',NULL),(15,7,19,'程序员与养生',161,'读者圈',0,'2018-03-15',NULL),(16,8,8,'从点线面体谈开发到架构师的转型',188,NULL,10,'2018-03-13',NULL);

/*Table structure for table `chatbanner` */

DROP TABLE IF EXISTS `chatbanner`;

CREATE TABLE `chatbanner` (
  `bid` int(10) NOT NULL COMMENT '轮播图图片id',
  `bannerimage` varchar(100) DEFAULT NULL COMMENT '轮播图路径',
  `bannerlink` varchar(100) DEFAULT NULL COMMENT '轮播图链接',
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `chatbanner` */

insert  into `chatbanner`(`bid`,`bannerimage`,`bannerlink`) values (1,'../../statics/picture/gitchat/475d2c24a7414ed994255268da9c1ddb.gif',NULL),(2,'../../statics/picture/gitchat/2322701fdd994c809de8399744d06e0f.gif',NULL),(3,'../../statics/picture/gitchat/e207b4392c904250bcd70d5b81660899.gif',NULL),(4,'../../statics/picture/gitchat/9f3c4f2bf96440318d5d0891b670181f.gif',NULL),(5,'../../statics/picture/gitchat/c23ddd46d0644e46bec3a907aeb85946.gif',NULL);

/*Table structure for table `chatclass` */

DROP TABLE IF EXISTS `chatclass`;

CREATE TABLE `chatclass` (
  `ccid` int(10) NOT NULL AUTO_INCREMENT COMMENT '达人课id',
  `cwid` int(10) DEFAULT NULL COMMENT '作者id',
  `chatclasshour` varchar(10) DEFAULT NULL COMMENT '达人课课时',
  `chatclassprice` int(10) DEFAULT NULL COMMENT '达人课价格',
  `chatclassbought` int(10) DEFAULT NULL COMMENT '购买人数',
  `chatclassprofile` varchar(255) DEFAULT NULL COMMENT '课程简介',
  `chatclassmenuid` int(10) DEFAULT NULL COMMENT '课程内容id',
  `chatclasssuitable` varchar(200) DEFAULT NULL COMMENT '适宜人群',
  `chatclassnotice` varchar(200) DEFAULT NULL COMMENT '购买须知',
  `chatclasstitle` varchar(50) DEFAULT NULL COMMENT '达人课标题',
  PRIMARY KEY (`ccid`),
  KEY `writer_class_cwid` (`cwid`),
  CONSTRAINT `writer_class_cwid` FOREIGN KEY (`cwid`) REFERENCES `chatwriter` (`wid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `chatclass` */

insert  into `chatclass`(`ccid`,`cwid`,`chatclasshour`,`chatclassprice`,`chatclassbought`,`chatclassprofile`,`chatclassmenuid`,`chatclasssuitable`,`chatclassnotice`,`chatclasstitle`) values (1,9,'9',10,131,'2009 年 AngularJS 第一个把“依赖注入”机制引入到了前端开发中，开创了用后端设计思想大规模入侵前端领域的先河。',NULL,'已经熟悉 Angular 基础知识的开发者','本课程为图文内容课程，共计 9 篇。\r\n付费用户可享受文章永久阅读权限。\r\n付费用户可获取读者圈 PASS 权限，与讲师进一步互动。\r\n本课程为虚拟产品，一经付费概不退款，敬请谅解。','Angular 小专题：玩转注射器'),(2,10,'9',10,192,'本课程是一个系列基础教程，目标是带领读者上手实战 Django Web 开发，课程以 Django 1.10 为基础，通过一个在线视频网站的构建，实战化的介绍 Django Web 开发中涉及的各大基本功能，从项目的创建和配置、到视图函数的创建和 URL 映射设置、到数据模型的创建使用和 Django 模板的运用，再到用户认证系统的实现，最后完成 Django 项目在 Ubuntu 上的部署。',NULL,'Python 的初学者\r\n对使用 Django 进行 Python Web 开发感兴趣的读者','本课程为图文内容课程，共计 9 篇。\r\n付费用户可享受文章永久阅读权限。\r\n付费用户可获取读者圈 PASS 权限，与讲师进一步互动。\r\n本课程为虚拟产品，一经付费概不退款，敬请谅解。','Django Web 开发极简实战'),(3,11,'13',10,311,'现代语言大部分会有 Runtime，类似在操作系统以外再抽象出一层虚拟机，它接管着很多东西，比如内存、垃圾回收、甚至包含现在的并发调度任务执行。内存管理、垃圾回收、并发调度是 Go 语言的 Runtime 中最核心的东西，本系列课程内容将深入剖析 Runtime 三大组件，内存分配器、垃圾回收器、Goroutine 调度。\r\n\r\n相关联的系列达人课：《编程语言底层之数据结构》和《编程语言底层之函数执行》。',NULL,'对语言实现感兴趣的开发人员 应用开发想转系统开发的开发人员 从事服务端架构设计的架构师、开发人员','本课程为图文内容课程，共计 13 篇。\r\n本课程限时特价 9.99 元，2018.3.25 零时恢复至原价 19.99 元。\r\n付费用户可享受文章永久阅读权限。\r\n付费用户可获取读者圈 PASS 权限，与讲师进一步互动。\r\n本课程为虚拟产品，一经付费概不退款，敬请谅解。','编程语言底层之系统和并发');

/*Table structure for table `chattopic` */

DROP TABLE IF EXISTS `chattopic`;

CREATE TABLE `chattopic` (
  `tid` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Chat主题id',
  `chattopic` varchar(10) DEFAULT NULL COMMENT 'Chat主题',
  `topicimage` varchar(200) DEFAULT NULL COMMENT '主题图片路径',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `chattopic` */

insert  into `chattopic`(`tid`,`chattopic`,`topicimage`) values (1,'前端','../../statics/images/gitchat/dd53cb80-1c05-11e7-8187-65a30c956cd7'),(2,'移动开发','../../statics/images/gitchat/4b807350-348a-11e7-8728-a9cb89af1d5d'),(3,'硬件与物联网','../../statics/images/gitchat/d5c726d0-b635-11e7-955b-b55efdfa1bf6'),(4,'区块链','../../statics/images/gitchat/45741e20-5bdc-11e7-a916-3bc36c078bd8'),(5,'人工智能','../../statics/images/gitchat/be039710-1c05-11e7-9d4d-1121a99bb498'),(6,'数学与算法','../../statics/images/gitchat/c0082920-b3f1-11e7-9e2f-8367361a88f2'),(7,'大数据','../../statics/images/gitchat/d5a56510-1c05-11e7-9d4d-1121a99bb498'),(8,'架构','../../statics/images/gitchat/cc8a9d60-1c05-11e7-8187-65a30c956cd7'),(9,'开源软件','../../statics/images/gitchat/29d250c0-bc89-11e7-a513-09587bc95d13'),(10,'编程语言','../../statics/images/gitchat/8c17e090-9f4e-11e7-b002-c1f7ed467750'),(11,'软件工程实践','../../statics/images/gitchat/064d9590-5179-11e7-8f9d-e1a46a00e053'),(12,'测试','../../statics/images/gitchat/b4495b10-1c05-11e7-8187-65a30c956cd7'),(13,'运维','../../statics/images/gitchat/fa6cb380-2b2d-11e7-93f9-893e15f43873'),(14,'安全','../../statics/images/gitchat/10953840-3ca3-11e7-9a83-95fed495c599'),(15,'技术管理','../../statics/images/gitchat/aa5b64e0-1c05-11e7-ba87-1ba9759a0caa'),(16,'敏捷','../../statics/images/gitchat/c5c3fee0-1c05-11e7-8187-65a30c956cd7'),(17,'职场','../../statics/images/gitchat/99722ba0-1c05-11e7-b2fd-1d704832d7d1'),(18,'产品与运营','../../statics/images/gitchat/a11dfa00-1c05-11e7-b2fd-1d704832d7d1'),(19,'生活','../../statics/images/gitchat/8d3f9ca0-1c05-11e7-ba87-1ba9759a0caa'),(20,'写作与翻译','../../statics/images/gitchat/17bbd190-9d0d-11e7-be01-51f282d58fd1'),(21,'教育','../../statics/images/gitchat/0186a7c0-2831-11e7-a4f0-afdbe5283f35'),(22,'其它','../../statics/images/gitchat/85241c80-1c05-11e7-9d4d-1121a99bb498');

/*Table structure for table `chatwriter` */

DROP TABLE IF EXISTS `chatwriter`;

CREATE TABLE `chatwriter` (
  `wid` int(10) NOT NULL AUTO_INCREMENT COMMENT '作者id',
  `writername` varchar(10) DEFAULT NULL COMMENT '作者昵称',
  `writerhead` varchar(100) DEFAULT NULL COMMENT '作者头像',
  `writerimage` varchar(100) DEFAULT NULL COMMENT '作者照片',
  `writertag` varchar(20) DEFAULT NULL COMMENT '作者标签',
  `writerdesc` varchar(200) DEFAULT NULL COMMENT '作者描述',
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `chatwriter` */

insert  into `chatwriter`(`wid`,`writername`,`writerhead`,`writerimage`,`writertag`,`writerdesc`) values (1,'孙亖','../../statics/picture/gitchat/6f1d56e5109544d0a8af38bff1ec7797.gif',NULL,'开发工程师','软件工程师，长期从事企业信息化系统的研发工作，主要擅长后台业务功能的设计开发。'),(2,'肃肃其羽','../../statics/picture/gitchat/4c618bba8b4a4091bec5a181fa9723e0.gif',NULL,'UI设计/平面设计/Python','目前已研究5年平面设计 + UI设计，积累一定设计经验，一只认真的00后小白。同时做过python开发，有若干开发经验。目前也涉猎机器学习等领域。微信suyu031117。'),(3,'王俊生','../../statics/picture/gitchat/111a9e862b56469d98f9e1838b3ebd46.gif',NULL,'新时代程序员','曾上线运营平台；报表自定义；养老护理中心信息化平台等项目。此外负责公司项目从svn到gitlab的迁移和公司十亿级数据迁移工作。日常喜欢运动、旅游、读书，励志做一个热衷技术、享受生活的新时代程序员。'),(4,'刘盼','../../statics/picture/gitchat/efcce6af3390443abfffaa09dbc24b53.gif',NULL,'高级研发工程师','Linux内核贡献者，CSDN博客专家，活跃于各大创客社区，精通ARM＋Linux＋Android的嵌入式开发，个人公众号《人人都是极客》。智道科技联合创始人，目前专注于嵌入式领域的人工智能研究。'),(5,'100offer','../../statics/picture/gitchat/4b10098221c94ac99277fdebc127deb7.gif',NULL,'100offer','100offer 严格筛选来自世界各地的优质公司，打造了一个优秀人才和公司的平台，致力于帮最好的人才发现更好的工作机会。使用 100offer ，互联网人可在一周内收到来自中国、美国、新加坡等数千家优质企业的工作机会。'),(6,'阿福','../../statics/picture/gitchat/060a824d699c4cb1812ccdf42b32e8f6.gif',NULL,'资深研发工程师','于电商行业的一家独角兽公司任职，专注于代码，热衷于分享'),(7,'宋璐','../../statics/picture/gitchat/02252f0c4cff463a933c0a50e0864556.gif',NULL,'今日头条架构组研发工程师','在传统IT做过基于网络IP层和链路层的协议优化; 目前在互联网公司做基于应用层和传输层的网络优化; 也写一些业务代码,主要开发语言还是C/C++以及Golang; 熟悉chromium内核,喜欢阅读各类开源代码;'),(8,'加兴','../../statics/picture/gitchat/e22c25519df441a2b28f9b4d87ae0e32.gif',NULL,'Agilean事业合伙人','中国敏捷精益领先咨询服务商Agilean事业合伙人，专注在金融数字化转型领域咨询和创新，目前是数家金融组织整体转型的首席顾问。曾主导过多家顶级企业的IT部门敏捷转型、产品一体化运作以及重大创新产品开发。'),(9,'大漠穷秋',NULL,'../../statics/picture/gitchat/10c86a4b518845a48d184edd55655e9f.gif','前端恶棍','大漠穷秋，10 年开发经验，其中 5 年后端、5 年前端。熟悉 Java 相关的技术体系：SpringMVC、MyBatis、Ehcache、ELK、MySQL 等。在前端技术方面尤其有深入的研究，先后使用并研究过 Flex、jQuery、Extjs、Backbone、Bootstrap、Angular 等常见的前端技术体系。'),(10,'杨健',NULL,'../../statics/picture/gitchat/8fd704a866994f34ab12175085ee3428.gif','Python 独立博客“州的先生”作者','杨健，新三板某电商企业技术部 Python 开发工程师，负责公司数据挖掘项目的构建，Python 独立教程博客主：州的先生，对 Python 多领域的运用（Web 开发、数据采集、数据分析和挖掘等）均有所研究和涉及。'),(11,'李永京',NULL,'../../statics/picture/gitchat/e7859936361747e29561149b6fcbf27a.gif','博客园知名博主','李永京，从事互联网后端系统开发，擅长高并发分布式系统，熟悉 Go、C、C#、Python 等语言。架构龙珠直播平台基础框架，开发过道具、任务、红包、直播、聊天、调度系统等。曾任职阿里妈妈，开发过移动广告 DMP、DSP、广告数据人群分析等。个人博客 积分排名前 30，300万 PV。');

/*Table structure for table `informationtitle` */

DROP TABLE IF EXISTS `informationtitle`;

CREATE TABLE `informationtitle` (
  `iid` int(20) NOT NULL AUTO_INCREMENT,
  `ititle` text COMMENT '新闻标题',
  `iconten` text COMMENT '新闻内容',
  `iauthor` varchar(255) DEFAULT NULL COMMENT '新闻作者',
  `itab` varchar(255) DEFAULT NULL COMMENT '标签',
  `icreateTime` date DEFAULT NULL COMMENT '创建时间',
  `ireads` int(24) DEFAULT NULL COMMENT '阅读量',
  `iimg` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `iarticle` varchar(50) DEFAULT NULL COMMENT '文章来源',
  `ifollower` int(20) DEFAULT NULL COMMENT '粉丝',
  `ilike` int(20) DEFAULT NULL COMMENT '喜欢',
  `idiscuss` int(20) DEFAULT NULL COMMENT '评论',
  `ithumb` int(20) DEFAULT NULL COMMENT '点赞',
  `igrade` varchar(50) DEFAULT NULL COMMENT '等级',
  `iview` int(20) DEFAULT NULL COMMENT '访问量',
  `iintegration` int(20) DEFAULT NULL COMMENT '积分',
  `iranking` int(30) DEFAULT NULL COMMENT '排名',
  `ipicture` varchar(255) DEFAULT NULL COMMENT '广告图片',
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `informationtitle` */

insert  into `informationtitle`(`iid`,`ititle`,`iconten`,`iauthor`,`itab`,`icreateTime`,`ireads`,`iimg`,`iarticle`,`ifollower`,`ilike`,`idiscuss`,`ithumb`,`igrade`,`iview`,`iintegration`,`iranking`,`ipicture`) values (1,'12000 颗卫星为地球织网！马斯克昨夜踏上改变世界的第6个征程','AAA','硅谷密探','AAAAA','2018-03-01',5442,'../../statics/picture/1_zlj925.jpg','ZA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Java学习笔记（第3天）','BBB','游骑兵HM','BBBBB','2018-03-07',2541,'../../statics/picture/1_woodcorpse.jpg','ZB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'陌陌7亿美元收购探探的深意，值否？','CCC','老胡说科技\r\n','CCCCC','2018-03-02',563,'../../statics/picture/1_weixin_37909391.jpg','ZC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'对比美国电影市场，国内春节票房爆发的思考','DDD','36kr\r\n','DDDDD','2018-03-17',4752,'../../statics/picture/1_bkmk01mz3w.jpg','ZD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'2018年人工智能领域的5个趋势','EEE','36kr\r\n','EEEEE','2018-03-12',1245,'../../statics/picture/1_bkmk01mz3w.jpg','ZE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'春节收心大法，专治各种不想学习','FFF','kangxidagege\r\n','FFFFF','2018-03-07',854,'../../statics/picture/1_wireless_com.jpg','ZF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'2018旗舰大PK！三星和华为你更偏爱谁？','GGG','比特网','GGGGG','2018-03-06',2347,'../../statics/picture/1_kangxidagege.jpg','ZG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'马斯克成功发射了互联网卫星，又一项疯狂计划的开端','HHH','36kr\r\n','HHHHH','2018-03-09',532,'../../statics/picture/1_bkmk01mz3w.jpg','ZH',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'康师傅和旺旺们失去的，正是达利和周黑鸭们拥有的','III','36kr\r\n','IIIII','2018-03-02',145,'../../statics/picture/1_bkmk01mz3w.jpg','ZI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'美国 GAFA 四大巨头分析（四）：苹果，消费级硬件的主宰','JJJ','36kr\r\n','JJJJJ','2018-03-07',421,'../../statics/picture/1_bkmk01mz3w.jpg','ZJ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'小米和Google搞大事！米粉大呼：有了它，麻麻再也不用担心我迷路了…','KKK\r\n','比特网','KKKKK','2018-03-05',152,'../../statics/picture/1_kangxidagege.jpg','ZK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'十大Wifi芯片原厂简述','LLL\r\n','一叶知秋dong','LLLLL','2018-03-08',158,'../../statics/picture/1_dxpqxb.jpg','ZL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'巴菲特年度致股东信：经济下滑正是赚钱良机，将继续负责投资业务','MMM\r\n','36kr\r\n','MMMMM','2018-03-09',326,'../../statics/picture/1_bkmk01mz3w.jpg','ZM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'要不是爱玩帆船，什么VR游戏他们早就不干了','NNN','36kr\r\n','NNNNN','2018-03-07',865,'../../statics/picture/1_bkmk01mz3w.jpg','ZN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'中国有13亿人，人民每天需要获得566亿-3206亿人民币...','OOO\r\n','fkzxf','OOOOO','2018-03-12',1652,'../../statics/picture/1_fkzxf.jpg','ZO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'壹佰大咖说丨想做互联网金融平台产品经理，你懂风控、通道吗？','PPP','周兰君','PPPPP','2018-03-15',548,'../../statics/picture/1_arpospf.jpg','ZP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `iteyediscussiongroup` */

DROP TABLE IF EXISTS `iteyediscussiongroup`;

CREATE TABLE `iteyediscussiongroup` (
  `gid` int(20) NOT NULL AUTO_INCREMENT,
  `gname` text COMMENT '组名',
  `gtopic` text COMMENT '讨论的话题',
  `gcreateTime` date DEFAULT NULL COMMENT '创建时间',
  `nview` int(11) DEFAULT NULL,
  `gRecoveryTime` date DEFAULT NULL COMMENT '回复时间',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `iteyediscussiongroup` */

insert  into `iteyediscussiongroup`(`gid`,`gname`,`gtopic`,`gcreateTime`,`nview`,`gRecoveryTime`) values (1,'aaaaaaaaaa','aaaaaaaaaa','2018-03-15',23,'2018-03-15'),(2,'bbbbbbbbbbb','bbbbbbbbbbb','2018-03-14',555,'2018-03-14'),(3,'ccccccccccccccccc','cccccccccccccccccccccc','2018-03-13',962,'2018-03-13'),(4,'ddddddddddddddd','ddddddddddddddddd','2018-03-12',132,'2018-03-12'),(18,'fffffff','aawdssd','2018-03-11',345,'2018-03-11'),(19,'oiiuuuuuu','iiiiii','2018-03-10',12,'2018-03-10'),(20,'rrrrrr','vvvvv','2018-03-09',44,'2018-03-09');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `newstitle` */

insert  into `newstitle`(`nid`,`ntitle`,`nconten`,`nauthor`,`ntab`,`ncreateTime`,`nreads`,`nimg`,`narticle`,`nfollower`,`nlike`,`ndiscuss`,`nthumb`,`ngrade`,`nview`,`nintegration`,`nranking`,`npicture`) values (1,'sadfsd','sadge','bdfb','html','2018-03-05',322,NULL,'sefwe',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/280574d4ca0f081d2751b723c6efc9c2.png'),(6,'kjshdf','sahdfj','bertr','fsahdfuiwe','2018-03-01',155,NULL,'kashfw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/af8a709a82143a435c2505c1fe9acc97.png'),(7,'kjshdf','sahdfj','bhtynty','fsahdfuiwe','2018-03-07',10,NULL,'kashfw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/36a508d94ba797fc252b67261cf4fde9.jpg'),(8,'kjshdf','sahdfj','n4wret','fsahdfuiwe','2018-03-09',9,NULL,'kashfw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/633575ce3e5cdf77ff89a22e747b5bb3.jpg'),(9,'kjshdf','sahdfj','2ewrter','fsahdfuiwe','2018-03-02',25,NULL,'kashfw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/78796413571a6b082225072853cf3839.jpg'),(10,'kjshdf','sahdfj','jryt','fsahdfuiwe','2018-03-02',22,NULL,'kashfw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/3248274de2648727b1a677771acf4081.jpg'),(11,'kjshdf','sahdfj','tyjtye','fsahdfuiwe','2018-03-10',11,NULL,'kashfw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/80f783d3a86393bd2bfa091c9c9d9323.png'),(12,'erhrthw','df','gdger','grthtr','2018-03-17',22,NULL,'tyjty',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'../../statics/picture/62105f7c32ace884d10dbf5d38003607.png');

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
