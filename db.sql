/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shangpinxiaoshou
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shangpinxiaoshou` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shangpinxiaoshou`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617413248651 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-01-25 11:42:19',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-01-25 11:42:19',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-01-25 11:42:19',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-01-25 11:42:19',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-01-25 11:42:19',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-01-25 11:42:19',6,'宇宙银河系月球1号','月某','13823888886','是'),(1611546786896,'2021-01-25 11:53:06',1611546730956,'广东省梅州市梅县区新城街道丽景湾(嘉应西二巷)','1','12312312312','是'),(1614566611576,'2021-03-01 10:43:31',11,'陕西省西安市蓝田县葛牌镇五凤山','123','12312312311','否'),(1617413248650,'2021-04-03 09:27:28',1617412982937,'河南省平顶山市宝丰县杨庄镇宋湾移民居民区','123','12312312312','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617413273535 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

insert  into `cart`(`id`,`addtime`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`) values (1616499729428,'2021-04-02 19:42:08','shangpinxinxi',11,33,'商品名称3','http://localhost:8080/shangpinxiaoshou/upload/1616498421331.webp',1,99.9,0);

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617413321941 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (61,'2021-01-25 11:42:19',1,1,'提问1','回复1',1),(62,'2021-01-25 11:42:19',2,2,'提问2','回复2',2),(63,'2021-01-25 11:42:19',3,3,'提问3','回复3',3),(64,'2021-01-25 11:42:19',4,4,'提问4','回复4',4),(65,'2021-01-25 11:42:19',5,5,'提问5','回复5',5),(66,'2021-01-25 11:42:19',6,6,'提问6','回复6',6),(1611546951493,'2021-01-25 11:55:51',1611546730956,NULL,'在吗',NULL,0),(1611546961573,'2021-01-25 11:56:01',1611546730956,NULL,'优惠券怎么领',NULL,0),(1611547021004,'2021-01-25 11:57:00',1611546730956,1,NULL,'HJRTRY',NULL),(1614570630596,'2021-03-01 11:50:30',11,NULL,'1321323122',NULL,0),(1614570669178,'2021-03-01 11:51:08',11,1,NULL,'huifu',0),(1616499754378,'2021-04-02 19:42:33',11,NULL,'aaaaaaaaaaa',NULL,0),(1616499755663,'2021-04-02 19:42:35',11,NULL,'aaaaaaaaaaa',NULL,0),(1616499756823,'2021-04-02 19:42:36',11,NULL,'aaaaaaaaaaa',NULL,0),(1616499757344,'2021-04-02 19:42:36',11,NULL,'aaaaaaaaaaa',NULL,0),(1616499786274,'2021-04-02 19:43:05',11,1,NULL,'123123132',0),(1616499810684,'2021-04-02 19:43:30',11,1,NULL,'123123',0),(1616499819644,'2021-04-02 19:43:39',11,1,NULL,'421123rrq221 sdfwet ',0),(1616499820019,'2021-04-02 19:43:39',11,1,NULL,'421123rrq221 sdfwet ',0),(1616499821168,'2021-04-02 19:43:40',11,1,NULL,'421123rrq221 sdfwet ',0),(1616499821187,'2021-04-02 19:43:40',11,1,NULL,'421123rrq221 sdfwet ',NULL),(1617413321940,'2021-04-03 09:28:41',1617412982937,NULL,'123123',NULL,1);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/shangpinxiaoshou/upload/1614565768022.jpg'),(2,'picture2','http://localhost:8080/shangpinxiaoshou/upload/1614565776564.jpg'),(3,'picture3','http://localhost:8080/shangpinxiaoshou/upload/1614565783678.jpg'),(6,'picture4','http://localhost:8080/shangpinxiaoshou/upload/1614565801742.jpg'),(7,'picture5','http://localhost:8080/shangpinxiaoshou/upload/1614565817751.jpg');

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617413212169 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (121,'2021-01-25 11:42:20',1,1,'评论内容1','回复内容1'),(122,'2021-01-25 11:42:20',2,2,'评论内容2','回复内容2'),(123,'2021-01-25 11:42:20',3,3,'评论内容3','回复内容3'),(124,'2021-01-25 11:42:20',4,4,'评论内容4','回复内容4'),(125,'2021-01-25 11:42:20',5,5,'评论内容5','回复内容5'),(126,'2021-01-25 11:42:20',6,6,'评论内容6','回复内容6'),(1611547054320,'2021-01-25 11:57:34',1611546568410,1611546730956,'很不错的花',NULL),(1617413212168,'2021-04-03 09:26:51',31,1617412982937,'123123',NULL);

/*Table structure for table `gongyingshang` */

DROP TABLE IF EXISTS `gongyingshang`;

CREATE TABLE `gongyingshang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '供应商名称 Search',
  `goods` varchar(200) DEFAULT NULL COMMENT '供应商品',
  `phone` varchar(200) DEFAULT NULL COMMENT '供应商联系方式',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='供应商';

/*Data for the table `gongyingshang` */

insert  into `gongyingshang`(`id`,`name`,`goods`,`phone`,`create_time`) values (1,'供应商1','商品1','123123123123',NULL),(2,'供应商2','商品2','12312312312',NULL),(3,'供应商3','商品3','12312312312',NULL),(4,'供应商4','商品4','12312312312',NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COMMENT='商品资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-01-25 11:42:19','标题1','简介1','http://localhost:8080/shangpinxiaoshou/upload/1617357628439.jpg','<p><span style=\"color: rgb(96, 98, 102);\">内容1</span></p>'),(112,'2021-01-25 11:42:19','标题2','简介2','http://localhost:8080/shangpinxiaoshou/upload/1614566011372.jpg','<p>内容2</p>'),(113,'2021-01-25 11:42:19','标题3','简介3','http://localhost:8080/shangpinxiaoshou/upload/1614566021050.jpg','<p>内容3</p>'),(114,'2021-01-25 11:42:19','标题4','简介4','http://localhost:8080/shangpinxiaoshou/upload/1614566031144.jpg','<p>内容4</p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1617413306762 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1617413277951,'2021-04-03 09:27:57','2021439275780184829','shangpinxinxi',1617412982937,33,'商品名称3','http://localhost:8080/shangpinxiaoshou/upload/1617357582348.jpg',1,99.9,99.9,99.9,99.9,1,'未支付','河南省平顶山市宝丰县杨庄镇宋湾移民居民区'),(1617413306448,'2021-04-03 09:28:26','2021439282622247237','shangpinxinxi',1617412982937,31,'商品名称1','http://localhost:8080/shangpinxiaoshou/upload/1617357565717.jpg',5,99.9,99.9,1498.5,499.5,1,'已完成','河南省平顶山市宝丰县杨庄镇宋湾移民居民区'),(1617413306526,'2021-04-03 09:28:26','2021439282623924837','shangpinxinxi',1617412982937,33,'商品名称3','http://localhost:8080/shangpinxiaoshou/upload/1617357582348.jpg',5,99.9,99.9,1498.5,499.5,1,'已退款','河南省平顶山市宝丰县杨庄镇宋湾移民居民区'),(1617413306761,'2021-04-03 09:28:26','2021439282622761531','shangpinxinxi',1617412982937,32,'商品名称2','http://localhost:8080/shangpinxiaoshou/upload/1617357575166.jpg',5,99.9,99.9,1498.5,499.5,1,'已支付','河南省平顶山市宝丰县杨庄镇宋湾移民居民区');

/*Table structure for table `shangpinchuku` */

DROP TABLE IF EXISTS `shangpinchuku`;

CREATE TABLE `shangpinchuku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617413079445 DEFAULT CHARSET=utf8 COMMENT='商品出库';

/*Data for the table `shangpinchuku` */

insert  into `shangpinchuku`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`dengjishijian`,`beizhu`) values (51,'2021-01-25 11:42:19','商品名称1','商品分类1',1,'2021-01-25','备注1'),(52,'2021-01-25 11:42:19','商品名称2','商品分类2',2,'2021-01-25','备注2'),(53,'2021-01-25 11:42:19','商品名称3','商品分类3',3,'2021-01-25','备注3'),(54,'2021-01-25 11:42:19','商品名称4','商品分类4',4,'2021-01-25','备注4'),(55,'2021-01-25 11:42:19','商品名称5','商品分类5',5,'2021-01-25','备注5'),(56,'2021-01-25 11:42:19','商品名称6','商品分类6',6,'2021-01-25','备注6'),(1617413079444,'2021-04-03 09:24:39','商品名称6','商品分类2',51,'2021-04-15','备注2');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1617413014021 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (21,'2021-01-25 11:42:19','商品分类1'),(22,'2021-01-25 11:42:19','商品分类2'),(23,'2021-01-25 11:42:19','商品分类3'),(24,'2021-01-25 11:42:19','商品分类4'),(1617413014020,'2021-04-03 09:23:33','商品分类5');

/*Table structure for table `shangpinruku` */

DROP TABLE IF EXISTS `shangpinruku`;

CREATE TABLE `shangpinruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617413066285 DEFAULT CHARSET=utf8 COMMENT='商品入库';

/*Data for the table `shangpinruku` */

insert  into `shangpinruku`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`dengjishijian`,`beizhu`) values (41,'2021-01-25 11:42:19','商品名称1','商品分类1',1,'2021-01-25','备注1'),(42,'2021-01-25 11:42:19','商品名称2','商品分类2',2,'2021-01-25','备注2'),(43,'2021-01-25 11:42:19','商品名称3','商品分类3',3,'2021-01-25','备注3'),(44,'2021-01-25 11:42:19','商品名称4','商品分类4',4,'2021-01-25','备注4'),(45,'2021-01-25 11:42:19','商品名称5','商品分类5',5,'2021-01-25','备注5'),(46,'2021-01-25 11:42:19','商品名称6','商品分类6',6,'2021-01-25','备注6'),(1617413066284,'2021-04-03 09:24:25','商品名称6','商品分类2',100,'2021-04-07','备注1');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `chima` varchar(200) DEFAULT NULL COMMENT '尺码',
  `yanshe` varchar(200) DEFAULT NULL COMMENT '颜色',
  `shangpinyongtu` varchar(200) DEFAULT NULL COMMENT '商品用途',
  `zengsongduixiang` varchar(200) DEFAULT NULL COMMENT '赠送对象',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617413043348 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`chima`,`yanshe`,`shangpinyongtu`,`zengsongduixiang`,`shuliang`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`) values (31,'2021-01-25 11:42:19','商品名称1','商品分类1','http://localhost:8080/shangpinxiaoshou/upload/1617357565717.jpg','尺码1','颜色1','爱情','恋人',1,'<p>商品详情1</p>','2021-04-03 09:28:26',12,99.9),(32,'2021-01-25 11:42:19','商品名称2','商品分类2','http://localhost:8080/shangpinxiaoshou/upload/1617357575166.jpg','尺码2','颜色2','爱情','恋人',2,'<p>商品详情2</p>','2021-04-03 09:28:26',19,99.9),(33,'2021-01-25 11:42:19','商品名称3','商品分类3','http://localhost:8080/shangpinxiaoshou/upload/1617357582348.jpg','尺码3','颜色3','爱情','恋人',3,'<p>商品详情3</p>','2021-04-03 09:28:32',19,99.9),(34,'2021-01-25 11:42:19','商品名称4','商品分类4','http://localhost:8080/shangpinxiaoshou/upload/1617357590205.jpg','尺码4','颜色4','爱情','恋人',4,'<p>商品详情4</p>','2021-04-02 17:59:46',9,99.9),(35,'2021-01-25 11:42:19','商品名称5','商品分类5','http://localhost:8080/shangpinxiaoshou/upload/1617357601434.jpg','尺码5','颜色5','爱情','恋人',5,'<p><br></p><p><img src=\"http://localhost:8080/shangpinxiaoshou/upload/1614566510015.webp\"></p><p>商品详情5</p>','2021-04-03 09:27:07',31,99.9),(36,'2021-01-25 11:42:19','商品名称6','商品分类6','http://localhost:8080/shangpinxiaoshou/upload/1617357612450.jpg','尺码6','颜色6','爱情','恋人',6,'<p>商品详情6</p>','2021-04-03 09:26:20',17,99.9),(1617413043347,'2021-04-03 09:24:03','商品名称6','商品分类2','http://localhost:8080/shangpinxiaoshou/upload/1617413034911.jpg','','',NULL,'',50,'<p>商品详情</p><p>11</p>',NULL,0,1111);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617413263307 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1611546871926,'2021-01-25 11:54:31',1611546730956,1611546568410,'shangpinxinxi','白玫瑰花束','http://localhost:8080/shangpinxiaoshou/upload/1611546536278.jpg'),(1611546915118,'2021-01-25 11:55:14',1611546730956,36,'shangpinxinxi','商品名称6','http://localhost:8080/shangpinxiaoshou/upload/1611546364108.jpg'),(1616499718658,'2021-04-02 19:41:58',11,33,'shangpinxinxi','商品名称3','http://localhost:8080/shangpinxiaoshou/upload/1616498421331.webp'),(1617413261578,'2021-04-03 09:27:40',1617412982937,32,'shangpinxinxi','商品名称2','http://localhost:8080/shangpinxiaoshou/upload/1617357575166.jpg'),(1617413263306,'2021-04-03 09:27:42',1617412982937,33,'shangpinxinxi','商品名称3','http://localhost:8080/shangpinxiaoshou/upload/1617357582348.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','vqzynkazy68yegfb73va2n704xlz9p1p','2021-01-25 11:44:06','2021-04-03 10:34:00'),(2,1611546730956,'1','yonghu','用户','ccbp71gdyn9y2unb0yj8338zspj3duqk','2021-01-25 11:52:16','2021-01-25 12:57:10'),(3,11,'111','yonghu','用户','apegsbikymqixbf7kpvxqs8fcjad8frz','2021-02-27 21:35:59','2021-04-02 20:41:28'),(4,1617412982937,'123','yonghu','用户','krwuo7b5c7ws64tcro7jprlcet1tt8ht','2021-04-03 09:25:25','2021-04-03 10:29:32');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-01-25 11:42:20');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `money` float DEFAULT '0' COMMENT '余额',
  `shenfen` varchar(255) DEFAULT '0' COMMENT '身份',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1617412982938 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`,`dizhi`,`money`,`shenfen`) values (11,'2021-01-25 11:42:19','111','111','姓名1','男','http://localhost:8080/shangpinxiaoshou/upload/1617356843012.jpg','13823888881','地址1',123041,'1'),(12,'2021-01-25 11:42:19','用户2','123456','姓名2','男','http://localhost:8080/shangpinxiaoshou/upload/1617356852137.jpg','13823888882','地址2',100,'1'),(13,'2021-01-25 11:42:19','用户3','123456','姓名3','男','http://localhost:8080/shangpinxiaoshou/upload/1617356312499.jpg','13823888883','地址3',100,'0'),(14,'2021-01-25 11:42:19','用户4','123456','姓名4','男','http://localhost:8080/shangpinxiaoshou/upload/1617356324863.jpg','13823888884','地址4',100,'0'),(15,'2021-01-25 11:42:19','用户5','123456','姓名5','男','http://localhost:8080/shangpinxiaoshou/upload/1617356338015.jpg','13823888885','地址5',100,'0'),(16,'2021-01-25 11:42:19','用户6','123456','姓名6','男','http://localhost:8080/shangpinxiaoshou/upload/1617356346628.jpg','13823888886','地址6',100,'0'),(1617412982937,'2021-04-03 09:23:02','123','123','123','女','http://localhost:8080/shangpinxiaoshou/upload/1617412977715.jpg','12312312312','12312312312',123120000,'1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
