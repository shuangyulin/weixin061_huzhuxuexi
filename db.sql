/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm83l7u
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm83l7u` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm83l7u`;

/*Table structure for table `banjifenlei` */

DROP TABLE IF EXISTS `banjifenlei`;

CREATE TABLE `banjifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='班级分类';

/*Data for the table `banjifenlei` */

insert  into `banjifenlei`(`id`,`addtime`,`leixing`) values (71,'2021-05-25 11:36:29','类型1');
insert  into `banjifenlei`(`id`,`addtime`,`leixing`) values (72,'2021-05-25 11:36:29','类型2');
insert  into `banjifenlei`(`id`,`addtime`,`leixing`) values (73,'2021-05-25 11:36:29','类型3');
insert  into `banjifenlei`(`id`,`addtime`,`leixing`) values (74,'2021-05-25 11:36:29','类型4');
insert  into `banjifenlei`(`id`,`addtime`,`leixing`) values (75,'2021-05-25 11:36:29','类型5');
insert  into `banjifenlei`(`id`,`addtime`,`leixing`) values (76,'2021-05-25 11:36:29','类型6');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm83l7u/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm83l7u/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm83l7u/upload/picture3.jpg');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='学习论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (81,'2021-05-25 11:36:29','帖子标题1','帖子内容1',1,1,'用户名1','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (82,'2021-05-25 11:36:29','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (83,'2021-05-25 11:36:29','帖子标题3','帖子内容3',3,3,'用户名3','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (84,'2021-05-25 11:36:29','帖子标题4','帖子内容4',4,4,'用户名4','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (85,'2021-05-25 11:36:29','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (86,'2021-05-25 11:36:29','帖子标题6','帖子内容6',6,6,'用户名6','开放');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `suojiaobanji` varchar(200) DEFAULT NULL COMMENT '所教班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1621913867026 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhicheng`,`suojiaobanji`,`shouji`,`youxiang`,`touxiang`) values (21,'2021-05-25 11:36:29','教师1','123456','教师姓名1','男','职称1','所教班级1','13823888881','773890001@qq.com','http://localhost:8080/ssm83l7u/upload/jiaoshi_touxiang1.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhicheng`,`suojiaobanji`,`shouji`,`youxiang`,`touxiang`) values (22,'2021-05-25 11:36:29','教师2','123456','教师姓名2','男','职称2','所教班级2','13823888882','773890002@qq.com','http://localhost:8080/ssm83l7u/upload/jiaoshi_touxiang2.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhicheng`,`suojiaobanji`,`shouji`,`youxiang`,`touxiang`) values (23,'2021-05-25 11:36:29','教师3','123456','教师姓名3','男','职称3','所教班级3','13823888883','773890003@qq.com','http://localhost:8080/ssm83l7u/upload/jiaoshi_touxiang3.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhicheng`,`suojiaobanji`,`shouji`,`youxiang`,`touxiang`) values (24,'2021-05-25 11:36:29','教师4','123456','教师姓名4','男','职称4','所教班级4','13823888884','773890004@qq.com','http://localhost:8080/ssm83l7u/upload/jiaoshi_touxiang4.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhicheng`,`suojiaobanji`,`shouji`,`youxiang`,`touxiang`) values (25,'2021-05-25 11:36:29','教师5','123456','教师姓名5','男','职称5','所教班级5','13823888885','773890005@qq.com','http://localhost:8080/ssm83l7u/upload/jiaoshi_touxiang5.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhicheng`,`suojiaobanji`,`shouji`,`youxiang`,`touxiang`) values (26,'2021-05-25 11:36:29','教师6','123456','教师姓名6','男','职称6','所教班级6','13823888886','773890006@qq.com','http://localhost:8080/ssm83l7u/upload/jiaoshi_touxiang6.jpg');
insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhicheng`,`suojiaobanji`,`shouji`,`youxiang`,`touxiang`) values (1621913867025,'2021-05-25 11:37:47','2','2','2','男',NULL,'类型1',NULL,NULL,NULL);

/*Table structure for table `kechengfenlei` */

DROP TABLE IF EXISTS `kechengfenlei`;

CREATE TABLE `kechengfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='课程分类';

/*Data for the table `kechengfenlei` */

insert  into `kechengfenlei`(`id`,`addtime`,`leixing`) values (61,'2021-05-25 11:36:29','类型1');
insert  into `kechengfenlei`(`id`,`addtime`,`leixing`) values (62,'2021-05-25 11:36:29','类型2');
insert  into `kechengfenlei`(`id`,`addtime`,`leixing`) values (63,'2021-05-25 11:36:29','类型3');
insert  into `kechengfenlei`(`id`,`addtime`,`leixing`) values (64,'2021-05-25 11:36:29','类型4');
insert  into `kechengfenlei`(`id`,`addtime`,`leixing`) values (65,'2021-05-25 11:36:29','类型5');
insert  into `kechengfenlei`(`id`,`addtime`,`leixing`) values (66,'2021-05-25 11:36:29','类型6');

/*Table structure for table `kechengpingjia` */

DROP TABLE IF EXISTS `kechengpingjia`;

CREATE TABLE `kechengpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `kechengpingfen` int(11) DEFAULT NULL COMMENT '课程评分',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiashijian` date DEFAULT NULL COMMENT '评价时间',
  `kechengtupian` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='课程评价';

/*Data for the table `kechengpingjia` */

insert  into `kechengpingjia`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`jiaoshigonghao`,`kechengpingfen`,`pingjianeirong`,`pingjiashijian`,`kechengtupian`,`xuehao`,`xueshengxingming`,`banji`,`userid`) values (41,'2021-05-25 11:36:29','课程名称1','课程类型1','教师工号1',1,'评价内容1','2021-05-25','http://localhost:8080/ssm83l7u/upload/kechengpingjia_kechengtupian1.jpg','学号1','学生姓名1','班级1',1);
insert  into `kechengpingjia`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`jiaoshigonghao`,`kechengpingfen`,`pingjianeirong`,`pingjiashijian`,`kechengtupian`,`xuehao`,`xueshengxingming`,`banji`,`userid`) values (42,'2021-05-25 11:36:29','课程名称2','课程类型2','教师工号2',2,'评价内容2','2021-05-25','http://localhost:8080/ssm83l7u/upload/kechengpingjia_kechengtupian2.jpg','学号2','学生姓名2','班级2',2);
insert  into `kechengpingjia`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`jiaoshigonghao`,`kechengpingfen`,`pingjianeirong`,`pingjiashijian`,`kechengtupian`,`xuehao`,`xueshengxingming`,`banji`,`userid`) values (43,'2021-05-25 11:36:29','课程名称3','课程类型3','教师工号3',3,'评价内容3','2021-05-25','http://localhost:8080/ssm83l7u/upload/kechengpingjia_kechengtupian3.jpg','学号3','学生姓名3','班级3',3);
insert  into `kechengpingjia`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`jiaoshigonghao`,`kechengpingfen`,`pingjianeirong`,`pingjiashijian`,`kechengtupian`,`xuehao`,`xueshengxingming`,`banji`,`userid`) values (44,'2021-05-25 11:36:29','课程名称4','课程类型4','教师工号4',4,'评价内容4','2021-05-25','http://localhost:8080/ssm83l7u/upload/kechengpingjia_kechengtupian4.jpg','学号4','学生姓名4','班级4',4);
insert  into `kechengpingjia`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`jiaoshigonghao`,`kechengpingfen`,`pingjianeirong`,`pingjiashijian`,`kechengtupian`,`xuehao`,`xueshengxingming`,`banji`,`userid`) values (45,'2021-05-25 11:36:29','课程名称5','课程类型5','教师工号5',5,'评价内容5','2021-05-25','http://localhost:8080/ssm83l7u/upload/kechengpingjia_kechengtupian5.jpg','学号5','学生姓名5','班级5',5);
insert  into `kechengpingjia`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`jiaoshigonghao`,`kechengpingfen`,`pingjianeirong`,`pingjiashijian`,`kechengtupian`,`xuehao`,`xueshengxingming`,`banji`,`userid`) values (46,'2021-05-25 11:36:29','课程名称6','课程类型6','教师工号6',6,'评价内容6','2021-05-25','http://localhost:8080/ssm83l7u/upload/kechengpingjia_kechengtupian6.jpg','学号6','学生姓名6','班级6',6);

/*Table structure for table `kechengxinxi` */

DROP TABLE IF EXISTS `kechengxinxi`;

CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `kechengneirong` longtext COMMENT '课程内容',
  `kechengshipin` varchar(200) DEFAULT NULL COMMENT '课程视频',
  `kaikeshijian` datetime DEFAULT NULL COMMENT '开课时间',
  `jiekeshijian` datetime DEFAULT NULL COMMENT '结课时间',
  `kechengtupian` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kechengxinxi` */

insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`banji`,`kechengneirong`,`kechengshipin`,`kaikeshijian`,`jiekeshijian`,`kechengtupian`,`jiaoshigonghao`,`jiaoshixingming`,`userid`) values (31,'2021-05-25 11:36:29','课程名称1','课程类型1','班级1','课程内容1','','2021-05-25 11:36:29','2021-05-25 11:36:29','http://localhost:8080/ssm83l7u/upload/kechengxinxi_kechengtupian1.jpg','教师工号1','教师姓名1',1);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`banji`,`kechengneirong`,`kechengshipin`,`kaikeshijian`,`jiekeshijian`,`kechengtupian`,`jiaoshigonghao`,`jiaoshixingming`,`userid`) values (32,'2021-05-25 11:36:29','课程名称2','课程类型2','班级2','课程内容2','','2021-05-25 11:36:29','2021-05-25 11:36:29','http://localhost:8080/ssm83l7u/upload/kechengxinxi_kechengtupian2.jpg','教师工号2','教师姓名2',2);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`banji`,`kechengneirong`,`kechengshipin`,`kaikeshijian`,`jiekeshijian`,`kechengtupian`,`jiaoshigonghao`,`jiaoshixingming`,`userid`) values (33,'2021-05-25 11:36:29','课程名称3','课程类型3','班级3','课程内容3','','2021-05-25 11:36:29','2021-05-25 11:36:29','http://localhost:8080/ssm83l7u/upload/kechengxinxi_kechengtupian3.jpg','教师工号3','教师姓名3',3);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`banji`,`kechengneirong`,`kechengshipin`,`kaikeshijian`,`jiekeshijian`,`kechengtupian`,`jiaoshigonghao`,`jiaoshixingming`,`userid`) values (34,'2021-05-25 11:36:29','课程名称4','课程类型4','班级4','课程内容4','','2021-05-25 11:36:29','2021-05-25 11:36:29','http://localhost:8080/ssm83l7u/upload/kechengxinxi_kechengtupian4.jpg','教师工号4','教师姓名4',4);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`banji`,`kechengneirong`,`kechengshipin`,`kaikeshijian`,`jiekeshijian`,`kechengtupian`,`jiaoshigonghao`,`jiaoshixingming`,`userid`) values (35,'2021-05-25 11:36:29','课程名称5','课程类型5','班级5','课程内容5','','2021-05-25 11:36:29','2021-05-25 11:36:29','http://localhost:8080/ssm83l7u/upload/kechengxinxi_kechengtupian5.jpg','教师工号5','教师姓名5',5);
insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`banji`,`kechengneirong`,`kechengshipin`,`kaikeshijian`,`jiekeshijian`,`kechengtupian`,`jiaoshigonghao`,`jiaoshixingming`,`userid`) values (36,'2021-05-25 11:36:29','课程名称6','课程类型6','班级6','课程内容6','','2021-05-25 11:36:29','2021-05-25 11:36:29','http://localhost:8080/ssm83l7u/upload/kechengxinxi_kechengtupian6.jpg','教师工号6','教师姓名6',6);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (111,'2021-05-25 11:36:29',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (112,'2021-05-25 11:36:29',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (113,'2021-05-25 11:36:29',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (114,'2021-05-25 11:36:30',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (115,'2021-05-25 11:36:30',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (116,'2021-05-25 11:36:30',6,'用户名6','留言内容6','回复内容6');

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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='校园资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-05-25 11:36:29','标题1','简介1','http://localhost:8080/ssm83l7u/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (102,'2021-05-25 11:36:29','标题2','简介2','http://localhost:8080/ssm83l7u/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (103,'2021-05-25 11:36:29','标题3','简介3','http://localhost:8080/ssm83l7u/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (104,'2021-05-25 11:36:29','标题4','简介4','http://localhost:8080/ssm83l7u/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (105,'2021-05-25 11:36:29','标题5','简介5','http://localhost:8080/ssm83l7u/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (106,'2021-05-25 11:36:29','标题6','简介6','http://localhost:8080/ssm83l7u/upload/news_picture6.jpg','内容6');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1621913867025,'2','jiaoshi','教师','29tm8dp7lsd51fg5gwyj5mdgqgy872ce','2021-05-25 11:37:52','2021-05-25 12:37:52');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1,'abo','users','管理员','3mtkhdwqgpu7zdhvqs4rwh5jewgxgmsg','2021-05-25 11:40:33','2021-05-25 12:40:34');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1621914203685,'1','xuesheng','学生','mhn8emohghzazu9f5e1myx05403ahfsw','2021-05-25 11:43:28','2021-05-25 12:43:29');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-25 11:36:30');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1621914203686 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`yuanxi`,`banji`,`shouji`,`shenfenzheng`,`touxiang`) values (11,'2021-05-25 11:36:29','学生1','123456','学生姓名1','男','院系1','班级1','13823888881','440300199101010001','http://localhost:8080/ssm83l7u/upload/xuesheng_touxiang1.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`yuanxi`,`banji`,`shouji`,`shenfenzheng`,`touxiang`) values (12,'2021-05-25 11:36:29','学生2','123456','学生姓名2','男','院系2','班级2','13823888882','440300199202020002','http://localhost:8080/ssm83l7u/upload/xuesheng_touxiang2.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`yuanxi`,`banji`,`shouji`,`shenfenzheng`,`touxiang`) values (13,'2021-05-25 11:36:29','学生3','123456','学生姓名3','男','院系3','班级3','13823888883','440300199303030003','http://localhost:8080/ssm83l7u/upload/xuesheng_touxiang3.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`yuanxi`,`banji`,`shouji`,`shenfenzheng`,`touxiang`) values (14,'2021-05-25 11:36:29','学生4','123456','学生姓名4','男','院系4','班级4','13823888884','440300199404040004','http://localhost:8080/ssm83l7u/upload/xuesheng_touxiang4.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`yuanxi`,`banji`,`shouji`,`shenfenzheng`,`touxiang`) values (15,'2021-05-25 11:36:29','学生5','123456','学生姓名5','男','院系5','班级5','13823888885','440300199505050005','http://localhost:8080/ssm83l7u/upload/xuesheng_touxiang5.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`yuanxi`,`banji`,`shouji`,`shenfenzheng`,`touxiang`) values (16,'2021-05-25 11:36:29','学生6','123456','学生姓名6','男','院系6','班级6','13823888886','440300199606060006','http://localhost:8080/ssm83l7u/upload/xuesheng_touxiang6.jpg');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`yuanxi`,`banji`,`shouji`,`shenfenzheng`,`touxiang`) values (1621914203685,'2021-05-25 11:43:23','1','1','1','男',NULL,'类型1',NULL,NULL,NULL);

/*Table structure for table `xuexijihua` */

DROP TABLE IF EXISTS `xuexijihua`;

CREATE TABLE `xuexijihua` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `jihuamubiao` varchar(200) DEFAULT NULL COMMENT '计划目标',
  `xuexianpai` longtext COMMENT '学习安排',
  `kechengtupian` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='学习计划';

/*Data for the table `xuexijihua` */

insert  into `xuexijihua`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`jihuamubiao`,`xuexianpai`,`kechengtupian`,`xuehao`,`xueshengxingming`,`userid`) values (51,'2021-05-25 11:36:29','课程名称1','课程类型1','计划目标1','学习安排1','http://localhost:8080/ssm83l7u/upload/xuexijihua_kechengtupian1.jpg','学号1','学生姓名1',1);
insert  into `xuexijihua`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`jihuamubiao`,`xuexianpai`,`kechengtupian`,`xuehao`,`xueshengxingming`,`userid`) values (52,'2021-05-25 11:36:29','课程名称2','课程类型2','计划目标2','学习安排2','http://localhost:8080/ssm83l7u/upload/xuexijihua_kechengtupian2.jpg','学号2','学生姓名2',2);
insert  into `xuexijihua`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`jihuamubiao`,`xuexianpai`,`kechengtupian`,`xuehao`,`xueshengxingming`,`userid`) values (53,'2021-05-25 11:36:29','课程名称3','课程类型3','计划目标3','学习安排3','http://localhost:8080/ssm83l7u/upload/xuexijihua_kechengtupian3.jpg','学号3','学生姓名3',3);
insert  into `xuexijihua`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`jihuamubiao`,`xuexianpai`,`kechengtupian`,`xuehao`,`xueshengxingming`,`userid`) values (54,'2021-05-25 11:36:29','课程名称4','课程类型4','计划目标4','学习安排4','http://localhost:8080/ssm83l7u/upload/xuexijihua_kechengtupian4.jpg','学号4','学生姓名4',4);
insert  into `xuexijihua`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`jihuamubiao`,`xuexianpai`,`kechengtupian`,`xuehao`,`xueshengxingming`,`userid`) values (55,'2021-05-25 11:36:29','课程名称5','课程类型5','计划目标5','学习安排5','http://localhost:8080/ssm83l7u/upload/xuexijihua_kechengtupian5.jpg','学号5','学生姓名5',5);
insert  into `xuexijihua`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`jihuamubiao`,`xuexianpai`,`kechengtupian`,`xuehao`,`xueshengxingming`,`userid`) values (56,'2021-05-25 11:36:29','课程名称6','课程类型6','计划目标6','学习安排6','http://localhost:8080/ssm83l7u/upload/xuexijihua_kechengtupian6.jpg','学号6','学生姓名6',6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
