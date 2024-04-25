/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zhinnegxiaofeijizhang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zhinnegxiaofeijizhang` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zhinnegxiaofeijizhang`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-19 09:35:38'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-19 09:35:38'),(3,'shouru_types','收入类型',1,'收入类型1',NULL,NULL,'2022-03-19 09:35:38'),(4,'shouru_types','收入类型',2,'收入类型2',NULL,NULL,'2022-03-19 09:35:38'),(5,'shouru_types','收入类型',3,'收入类型3',NULL,NULL,'2022-03-19 09:35:38'),(6,'zhichu_types','支出类型',1,'支出类型1',NULL,NULL,'2022-03-19 09:35:38'),(7,'zhichu_types','支出类型',2,'支出类型2',NULL,NULL,'2022-03-19 09:35:38'),(8,'zhichu_types','支出类型',3,'支出类型3',NULL,NULL,'2022-03-19 09:35:38'),(9,'yusuan_types','预算类型',1,'收入预算',NULL,NULL,'2022-03-19 09:35:38'),(10,'yusuan_types','预算类型',2,'支出预算',NULL,NULL,'2022-03-19 09:35:38'),(11,'yusuan_erji_types','二级类型',1,'收入预算1',1,NULL,'2022-03-19 09:35:38'),(12,'yusuan_erji_types','二级类型',2,'收入预算2',1,NULL,'2022-03-19 09:35:38'),(13,'yusuan_erji_types','二级类型',3,'支出预算1',2,NULL,'2022-03-19 09:35:38'),(14,'yusuan_erji_types','二级类型',4,'支出预算2',2,NULL,'2022-03-19 09:35:38'),(15,'yusuan_erji_types','二级类型',5,'支出预算3',2,NULL,'2022-03-19 09:35:38'),(16,'yusuan_erji_types','二级类型',6,'支出预算4',2,'','2022-03-19 10:53:01');

/*Table structure for table `shouru` */

DROP TABLE IF EXISTS `shouru`;

CREATE TABLE `shouru` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shouru_uuid_number` varchar(200) DEFAULT NULL COMMENT '收入唯一编号 Search111 ',
  `shouru_name` varchar(200) DEFAULT NULL COMMENT '收入名称 Search111 ',
  `shouru_types` int(11) DEFAULT NULL COMMENT '收入类型 Search111',
  `shouru_number` decimal(10,2) DEFAULT NULL COMMENT '收入金额 ',
  `shangjia_content` text COMMENT '收入备注 ',
  `shoru_time` timestamp NULL DEFAULT NULL COMMENT '收入时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='收入';

/*Data for the table `shouru` */

insert  into `shouru`(`id`,`yonghu_id`,`shouru_uuid_number`,`shouru_name`,`shouru_types`,`shouru_number`,`shangjia_content`,`shoru_time`,`insert_time`,`create_time`) values (1,1,'16476539096838','收入名称1',2,'170.23','收入备注1','2022-03-19 09:38:29','2022-03-19 09:38:29','2022-03-19 09:38:29'),(2,1,'16476539096843','收入名称2',1,'990.97','收入备注2','2022-03-19 09:38:29','2022-03-19 09:38:29','2022-03-19 09:38:29'),(3,1,'164765390968412','收入名称3',3,'481.20','收入备注3','2022-03-19 09:38:29','2022-03-19 09:38:29','2022-03-19 09:38:29'),(4,3,'16476539096848','收入名称4',1,'857.95','收入备注4','2022-03-19 09:38:29','2022-03-19 09:38:29','2022-03-19 09:38:29'),(5,1,'164765390968413','收入名称5',3,'287.22','收入备注5','2022-03-19 09:38:29','2022-03-19 09:38:29','2022-03-19 09:38:29'),(7,1,'16476539096843','收入名称2',1,'390.97','收入备注2','2022-02-19 09:38:29','2022-02-19 09:38:29','2022-02-19 09:38:29'),(8,1,'164765390968412','收入名称3',3,'281.20','收入备注3','2022-02-19 09:38:29','2022-02-19 09:38:29','2022-02-19 09:38:29'),(9,3,'16476539096848','收入名称4',1,'157.95','收入备注4','2022-02-19 09:38:29','2022-02-19 09:38:29','2022-02-19 09:38:29');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','kd5mla7855ah7sb4u8lmbo2vaxonvuao','2022-03-19 09:41:27','2022-03-19 12:13:35'),(2,1,'a1','yonghu','用户','msq0sxlbamur1pizvue65asx3uhwb4oy','2022-03-19 09:54:13','2022-03-19 11:53:32');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/zhinnegxiaofeijizhang/upload/yonghu1.jpg',1,'1@qq.com','2022-03-19 09:38:29'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/zhinnegxiaofeijizhang/upload/yonghu2.jpg',2,'2@qq.com','2022-03-19 09:38:29'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/zhinnegxiaofeijizhang/upload/yonghu3.jpg',1,'3@qq.com','2022-03-19 09:38:29');

/*Table structure for table `yusuan` */

DROP TABLE IF EXISTS `yusuan`;

CREATE TABLE `yusuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yusuan_uuid_number` varchar(200) DEFAULT NULL COMMENT '预算唯一编号 Search111 ',
  `yusuan_name` varchar(200) DEFAULT NULL COMMENT '预算名称 Search111 ',
  `yusuan_types` int(11) DEFAULT NULL COMMENT '预算大类型 Search111',
  `yusuan_erji_types` int(11) DEFAULT NULL COMMENT '二级类型 Search111',
  `yusuan_number` decimal(10,2) DEFAULT NULL COMMENT '预算金额 ',
  `shangjia_content` text COMMENT '预算备注 ',
  `shoru_time` timestamp NULL DEFAULT NULL COMMENT '预算使用时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='预算';

/*Data for the table `yusuan` */

insert  into `yusuan`(`id`,`yonghu_id`,`yusuan_uuid_number`,`yusuan_name`,`yusuan_types`,`yusuan_erji_types`,`yusuan_number`,`shangjia_content`,`shoru_time`,`insert_time`,`create_time`) values (1,1,'16476539096905','预算名称1',1,1,'292.43','预算备注1','2022-03-19 09:38:29','2022-03-19 09:38:29','2022-03-19 09:38:29'),(2,3,'164765390969012','预算名称2',1,2,'773.25','预算备注2','2022-03-19 09:38:29','2022-03-19 09:38:29','2022-03-19 09:38:29'),(3,1,'164765390969016','预算名称3',2,3,'945.40','预算备注3','2022-03-19 09:38:29','2022-03-19 09:38:29','2022-03-19 09:38:29'),(4,1,'164765390969118','预算名称4',1,2,'763.82','预算备注4','2022-03-19 09:38:29','2022-03-19 09:38:29','2022-03-19 09:38:29'),(5,3,'16476539096911','预算名称5',2,4,'77.31','预算备注5','2022-03-19 09:38:29','2022-03-19 09:38:29','2022-03-19 09:38:29'),(7,1,'164765390969012','预算名称2',1,2,'373.25','预算备注2','2022-02-19 09:38:29','2022-02-19 09:38:29','2022-02-19 09:38:29'),(9,3,'164765390969118','预算名称4',1,2,'563.82','预算备注4','2022-02-19 09:38:29','2022-02-19 09:38:29','2022-02-19 09:38:29'),(15,1,'1647659460125','收入预算名称7',1,1,'330.30','','2022-03-19 10:19:20','2022-03-19 11:11:00','2022-03-19 11:11:00'),(16,1,'1647659460125','收入预算名称8',1,2,'2330.30','','2022-03-19 10:19:19','2022-03-19 11:11:00','2022-03-19 11:11:00'),(17,1,'1647659460125','支出预算名称7',2,3,'330.30','','2022-03-19 10:19:20','2022-03-19 11:11:00','2022-03-19 11:11:00'),(20,1,'1647659471161','111',2,6,'111.00','<p>1111</p>','2022-03-20 00:00:00','2022-03-19 11:11:27','2022-03-19 11:11:27');

/*Table structure for table `zhichu` */

DROP TABLE IF EXISTS `zhichu`;

CREATE TABLE `zhichu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhichu_uuid_number` varchar(200) DEFAULT NULL COMMENT '支出唯一编号 Search111 ',
  `zhichu_name` varchar(200) DEFAULT NULL COMMENT '支出名称 Search111 ',
  `zhichu_types` int(11) DEFAULT NULL COMMENT '支出类型 Search111',
  `zhichu_number` decimal(10,2) DEFAULT NULL COMMENT '支出金额 ',
  `shangjia_content` text COMMENT '支出原因 ',
  `shoru_time` timestamp NULL DEFAULT NULL COMMENT '支出时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='支出';

/*Data for the table `zhichu` */

insert  into `zhichu`(`id`,`yonghu_id`,`zhichu_uuid_number`,`zhichu_name`,`zhichu_types`,`zhichu_number`,`shangjia_content`,`shoru_time`,`insert_time`,`create_time`) values (1,2,'164765390969519','支出名称1',2,'281.58','支出原因1','2022-03-19 09:38:29','2022-03-19 09:38:29','2022-03-19 09:38:29'),(2,1,'164765390969518','支出名称2',2,'32.63','支出原因2','2022-03-19 09:38:29','2022-03-19 09:38:29','2022-03-19 09:38:29'),(3,1,'16476539096956','支出名称3',2,'984.13','支出原因3','2022-03-19 09:38:29','2022-03-19 09:38:29','2022-03-19 09:38:29'),(4,1,'16476539096955','支出名称4',3,'673.50','支出原因4','2022-03-19 09:38:29','2022-03-19 09:38:29','2022-03-19 09:38:29'),(5,2,'16476539096951','支出名称5',2,'858.82','支出原因5','2022-03-19 09:38:29','2022-03-19 09:38:29','2022-03-19 09:38:29'),(6,2,'16476539096956','支出名称3',1,'984.13','支出原因3','2022-02-19 09:38:29','2022-02-19 09:38:29','2022-02-19 09:38:29'),(7,1,'16476539096955','支出名称4',3,'673.50','支出原因4','2022-02-19 09:38:29','2022-02-19 09:38:29','2022-02-19 09:38:29'),(8,1,'16476539096951','支出名称5',2,'858.82','支出原因5','2022-02-19 09:38:29','2022-02-19 09:38:29','2022-02-19 09:38:29'),(9,1,'16476539096951','支出名称5',1,'758.82','支出原因5','2022-02-19 09:38:29','2022-02-19 09:38:29','2022-02-19 09:38:29');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
