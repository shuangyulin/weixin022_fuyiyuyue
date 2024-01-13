/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm60zs9
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm60zs9` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm60zs9`;

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
) ENGINE=InnoDB AUTO_INCREMENT=1615254169696 DEFAULT CHARSET=utf8 COMMENT='客服中心';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (31,'2021-03-09 09:25:01',1,1,'提问1','回复1',1),(32,'2021-03-09 09:25:01',2,2,'提问2','回复2',2),(33,'2021-03-09 09:25:01',3,3,'提问3','回复3',3),(34,'2021-03-09 09:25:01',4,4,'提问4','回复4',4),(35,'2021-03-09 09:25:01',5,5,'提问5','回复5',5),(36,'2021-03-09 09:25:01',6,6,'提问6','回复6',6),(1615253883814,'2021-03-09 09:38:03',11,NULL,'11111111111',NULL,0),(1615254044390,'2021-03-09 09:40:43',11,1,NULL,'这里回复用户的咨询',NULL),(1615254169695,'2021-03-09 09:42:49',1615254104476,NULL,'这里可以向管理员咨询',NULL,1);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm60zs9/upload/1615253998892.png'),(2,'picture2','http://localhost:8080/ssm60zs9/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm60zs9/upload/picture3.jpg'),(6,'homepage',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=1615254026041 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (41,'2021-03-09 09:25:01','标题1','简介1','http://localhost:8080/ssm60zs9/upload/news_picture1.jpg','内容1'),(42,'2021-03-09 09:25:01','标题2','简介2','http://localhost:8080/ssm60zs9/upload/news_picture2.jpg','内容2'),(43,'2021-03-09 09:25:01','标题3','简介3','http://localhost:8080/ssm60zs9/upload/news_picture3.jpg','内容3'),(44,'2021-03-09 09:25:01','标题4','简介4','http://localhost:8080/ssm60zs9/upload/news_picture4.jpg','内容4'),(45,'2021-03-09 09:25:01','标题5','简介5','http://localhost:8080/ssm60zs9/upload/news_picture5.jpg','内容5'),(46,'2021-03-09 09:25:01','标题6','简介6','http://localhost:8080/ssm60zs9/upload/news_picture6.jpg','内容6'),(1615254026040,'2021-03-09 09:40:25','这里添加系统公告信息','1111111111','http://localhost:8080/ssm60zs9/upload/1615254020591.jpg','<p><img src=\"http://localhost:8080/ssm60zs9/upload/1615254024903.jpg\"></p>');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','8ftjsmme4sf5nbn5wh9fxjnmdogtcd3p','2021-03-09 09:37:32','2021-03-09 10:42:56'),(2,1,'abo','users','管理员','8u810q6fxwruu5grsgnbp6v5w6hkhpeb','2021-03-09 09:38:24','2021-03-09 10:38:24'),(3,1615254104476,'001','yonghu','用户','qtogocj8p1w8h1fcd8qpcpbkd5ndtkkz','2021-03-09 09:41:51','2021-03-09 10:41:51');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-09 09:25:01'),(2,'000','000','管理员','2021-03-09 09:39:44');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1615254104477 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`,`shenfenzheng`) values (11,'2021-03-09 09:25:01','用户1','123456','姓名1','女','http://localhost:8080/ssm60zs9/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com','440300199101010001'),(12,'2021-03-09 09:25:01','用户2','123456','姓名2','男','http://localhost:8080/ssm60zs9/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com','440300199202020002'),(13,'2021-03-09 09:25:01','用户3','123456','姓名3','男','http://localhost:8080/ssm60zs9/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com','440300199303030003'),(14,'2021-03-09 09:25:01','用户4','123456','姓名4','男','http://localhost:8080/ssm60zs9/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com','440300199404040004'),(15,'2021-03-09 09:25:01','用户5','123456','姓名5','男','http://localhost:8080/ssm60zs9/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com','440300199505050005'),(16,'2021-03-09 09:25:01','用户6','123456','姓名6','男','http://localhost:8080/ssm60zs9/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com','440300199606060006'),(1615254104476,'2021-03-09 09:41:44','001','001','小李','女','http://localhost:8080/ssm60zs9/upload/1615254117680.jpg','13456512321','12@12.com','984565457812321232');

/*Table structure for table `zaixianyuyue` */

DROP TABLE IF EXISTS `zaixianyuyue`;

CREATE TABLE `zaixianyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebiaoti` varchar(200) NOT NULL COMMENT '预约标题',
  `yuyueleixing` varchar(200) NOT NULL COMMENT '预约类型',
  `yuyuetupian` varchar(200) DEFAULT NULL COMMENT '预约图片',
  `cailiaoneirong` longtext COMMENT '材料内容',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `yuyuebeizhu` varchar(200) DEFAULT NULL COMMENT '预约备注',
  `cailiaofujian` varchar(200) DEFAULT NULL COMMENT '材料附件',
  `banlididian` varchar(200) DEFAULT NULL COMMENT '办理地点',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615254153333 DEFAULT CHARSET=utf8 COMMENT='在线预约';

/*Data for the table `zaixianyuyue` */

insert  into `zaixianyuyue`(`id`,`addtime`,`yuyuebiaoti`,`yuyueleixing`,`yuyuetupian`,`cailiaoneirong`,`yuyueshijian`,`shenqingshijian`,`yuyuebeizhu`,`cailiaofujian`,`banlididian`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`,`userid`) values (21,'2021-03-09 09:25:01','预约标题1','预约类型1','http://localhost:8080/ssm60zs9/upload/zaixianyuyue_yuyuetupian1.jpg','材料内容1','2021-03-09 09:25:01','2021-03-09 09:25:01','预约备注1','','办理地点1','用户名1','姓名1','13823888881','是','',1),(22,'2021-03-09 09:25:01','预约标题2','预约类型2','http://localhost:8080/ssm60zs9/upload/zaixianyuyue_yuyuetupian2.jpg','材料内容2','2021-03-09 09:25:01','2021-03-09 09:25:01','预约备注2','','办理地点2','用户名2','姓名2','13823888882','是','',2),(23,'2021-03-09 09:25:01','预约标题3','预约类型3','http://localhost:8080/ssm60zs9/upload/zaixianyuyue_yuyuetupian3.jpg','材料内容3','2021-03-09 09:25:01','2021-03-09 09:25:01','预约备注3','','办理地点3','用户名3','姓名3','13823888883','是','',3),(24,'2021-03-09 09:25:01','预约标题4','预约类型4','http://localhost:8080/ssm60zs9/upload/zaixianyuyue_yuyuetupian4.jpg','材料内容4','2021-03-09 09:25:01','2021-03-09 09:25:01','预约备注4','','办理地点4','用户名4','姓名4','13823888884','是','',4),(25,'2021-03-09 09:25:01','预约标题5','预约类型5','http://localhost:8080/ssm60zs9/upload/zaixianyuyue_yuyuetupian5.jpg','材料内容5','2021-03-09 09:25:01','2021-03-09 09:25:01','预约备注5','','办理地点5','用户名5','姓名5','13823888885','是','',5),(26,'2021-03-09 09:25:01','预约标题6','预约类型6','http://localhost:8080/ssm60zs9/upload/zaixianyuyue_yuyuetupian6.jpg','材料内容6','2021-03-09 09:25:01','2021-03-09 09:25:01','预约备注6','','办理地点6','用户名6','姓名6','13823888886','是','',6),(1615253879478,'2021-03-09 09:37:59','AA预约','AA类型','http://localhost:8080/ssm60zs9/upload/1615253863763.jpg','1111111','2021-03-14 09:37:35','2021-03-11 09:37:35','111','http://localhost:8080/ssm60zs9/upload/1615253875938.docx','1111','用户1','姓名1','13823888881','是','111准时来办理',11),(1615254153332,'2021-03-09 09:42:32','这里进行预约','111','http://localhost:8080/ssm60zs9/upload/1615254137896.jpeg','1111111111111','2021-03-16 09:42:08','2021-03-12 13:42:08','111','http://localhost:8080/ssm60zs9/upload/1615254148849.docx','111111111','001','小李','13456512321','','',1615254104476);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
