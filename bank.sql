/*
SQLyog Ultimate v9.62 
MySQL - 5.7.40-log : Database - bank
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bank` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bank`;

/*Table structure for table `t_chuhu` */

DROP TABLE IF EXISTS `t_chuhu`;

CREATE TABLE `t_chuhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chuhu_no` varchar(500) DEFAULT NULL COMMENT '卡号',
  `chuhu_pass` varchar(500) DEFAULT NULL COMMENT '密码',
  `chuhu_date` varchar(500) DEFAULT NULL COMMENT '开户日期',
  `chuhu_yue` varchar(500) DEFAULT NULL COMMENT '帐户余额',
  `chuhu_name` varchar(500) DEFAULT NULL COMMENT '姓名',
  `chuhu_sex` varchar(500) DEFAULT NULL COMMENT '性别:男/女',
  `chuhu_idno` varchar(500) DEFAULT NULL COMMENT '身份证',
  `chuhu_phone` varchar(500) DEFAULT NULL COMMENT '联系方式',
  `chuhu_address` varchar(500) DEFAULT NULL COMMENT '住址',
  `chuhu_text` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='储户';

/*Data for the table `t_chuhu` */

insert  into `t_chuhu`(`id`,`chuhu_no`,`chuhu_pass`,`chuhu_date`,`chuhu_yue`,`chuhu_name`,`chuhu_sex`,`chuhu_idno`,`chuhu_phone`,`chuhu_address`,`chuhu_text`) values (1,'686868686868','12345','2022-12-23','28888.5','张三','女','310202200105065865','13588888888','上海浦东新区88号','这是VIP客户'),(2,'239340110233','123133','2020-12-24','12344','李四','男','233344543546675477','12345234545','上海浦东新区8号','普通用户'),(3,'243546366746','123456','2022-1-4','234525','王五','男','234552566436636666','13855555555','上海浦东新区1号','普通用户'),(4,'957474774757','766743','2022-1-5','736344','刘鹏飞','男','215879546367363366','15464645777','上海浦东新区1号','普通用户'),(5,'256363736663','257466','2022-1-6','34546','赵宏伟','男','268585474746573457','12567746674','上海浦东新区2号','普通用户'),(6,'255754345366','357625','2022-1-7','3467','柏扎强','男','324685684576747477','12694764087','上海浦东新区3号','普通用户'),(7,'235675235655','325734','2022-1-9','8466','夏雪松','女','854736874747436366','16278038000','上海浦东新区4号','普通用户'),(8,'256886312885','854744','2022-1-10','2673','李长生','男','235674795327857477','14367808054','上海浦东新区5号','普通用户'),(9,'754526884653','366467','2022-1-11','256862','刘建军','男','325868362586846777','13254363466','上海浦东新区6号','普通用户'),(10,'156856645444','237733','2022-1-12','26762','王海山','女','145768462351646353','18944346634','上海浦东新区7号','普通用户'),(11,'146876545677','346783','2022-1-13','2525','邓倩语','女','124690746325325256','14677566643','上海浦东新区8号','普通用户'),(12,'468925099574','237834','2022-1-14','2725','聂佳艳','女','124745735346474776','14364632466','上海浦东新区9号','普通用户'),(13,'908525768932','963677','2022-1-15','9743','杨正文','男','241241256473643666','12343525533','上海浦东新区10号','普通用户'),(14,'256853456366','367777','2022-1-16','8353','钟涵涵','女','634367747474635736','12455634363','上海浦东新区11号','普通用户'),(15,'254636672546','366836','2022-1-17','3752','闻兴为','男','124638456573453633','15362664366','上海浦东新区12号','普通用户'),(16,'863523547834','567743','2022-1-18','2366','孔柔雅','女','257646367367436663','14356754666','上海浦东新区13号','普通用户'),(17,'256899453633','364734','2022-1-19','2567','尹奇文','男','235648357736674774','17857474574','上海浦东新区14号','普通用户'),(18,'145789043677','257433','2022-1-20','2578','文鸿熙','男','254567843783674547','13563653433','上海浦东新区15号','普通用户'),(19,'800765534666','257367','2022-1-21','9734','孟贝琳','女','235374890645346364','12456526623','上海浦东新区16号','普通用户'),(20,'235680845445','256743','2022-1-22','7457','傅嘉佑','男','974536346373737733','14535235257','上海浦东新区17号','普通用户');

/*Table structure for table `t_emp` */

DROP TABLE IF EXISTS `t_emp`;

CREATE TABLE `t_emp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `emp_no` varchar(500) DEFAULT NULL COMMENT '工号',
  `emp_name` varchar(500) DEFAULT NULL COMMENT '姓名',
  `emp_sex` varchar(500) DEFAULT NULL COMMENT '性别:男/女',
  `emp_phone` varchar(500) DEFAULT NULL COMMENT '联系方式',
  `emp_zhiwei` varchar(500) DEFAULT NULL COMMENT '职位',
  `emp_text` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `t_emp` */

insert  into `t_emp`(`id`,`emp_no`,`emp_name`,`emp_sex`,`emp_phone`,`emp_zhiwei`,`emp_text`) values (1,'111','李四','女','13688888888','对公业务','非常勤劳，发展了很多客户'),(2,'222','小王','男','13899999999','大堂经理','喜欢偷懒，建议开除 '),(3,'333','小刘','男','12666666666','副经理','非常能干'),(4,'444','小李','男','18335325566','总经理','管理能力强');

/*Table structure for table `t_notice` */

DROP TABLE IF EXISTS `t_notice`;

CREATE TABLE `t_notice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `notice_name` varchar(500) DEFAULT NULL COMMENT '标题',
  `notice_text` varchar(500) DEFAULT NULL COMMENT '内容',
  `notice_type` varchar(500) DEFAULT NULL COMMENT '类型',
  `create_date` varchar(500) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `t_notice` */

insert  into `t_notice`(`id`,`notice_name`,`notice_text`,`notice_type`,`create_date`) values (1,'系统上线了！','欢迎大家使用','资讯','2022-1-2');

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(500) DEFAULT NULL COMMENT '用户名',
  `password` varchar(500) DEFAULT NULL COMMENT '密码',
  `real_name` varchar(500) DEFAULT NULL COMMENT '姓名',
  `user_sex` varchar(500) DEFAULT NULL COMMENT '性别:男/女',
  `user_phone` varchar(500) DEFAULT NULL COMMENT '手机',
  `user_text` varchar(500) DEFAULT NULL COMMENT '备注',
  `user_type` varchar(500) DEFAULT NULL COMMENT '类型:管理员/普通用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`username`,`password`,`real_name`,`user_sex`,`user_phone`,`user_text`,`user_type`)
values (1,'admin','123456','老王','女','13588888888','是一个好人','管理员'),
       (2,'lw','123456','王五','男','13855555555','5555','普通用户'),
       (3,'zs','12345','张三','女','13588888888','8888','普通用户'),
       (4,'wef','23456','刘鹏飞','男','15464645777','1','普通用户'),
       (5,'nf','24563','赵宏伟','男','12567746674','2','普通用户'),
       (6,'fnf','84557','柏扎强','男','12694764087','3','普通用户'),
       (7,'kp','95633','夏雪松','女','16278038000','4','普通用户'),
       (8,'bc','25546','李长生','男','14367808054','5','普通用户'),
       (9,'drj','23577','刘建军','男','16354867932','6','普通用户'),
       (10,'hl','21245','王海山','男','18944346634','7','普通用户'),
       (11,'wwe','13455','邓倩语','女','14699526734','8','普通用户'),
       (12,'bsd','96342','聂佳艳','女','14893463456','9','普通用户'),
       (13,'sg','74353','杨正文','男','14253467366','10','普通用户'),
       (14,'py','05342','钟涵涵','女','17346758965','11','普通用户'),
       (15,'ag','15885','闻兴为','男','10974556352','12','普通用户'),
       (16,'qt','37793','孔柔雅','女','12408456634','13','普通用户'),
       (17,'md','25680','尹奇文','女','19054367355','14','普通用户'),
       (18,'zg','14389','文鸿熙','男','15433266734','15','普通用户'),
       (19,'bj','15689','孟贝琳','女','10463532556','16','普通用户'),
       (20,'su','12468','傅嘉佑','男','10753569657','17','普通用户');

# /*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
# /*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
# /*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
# /*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
