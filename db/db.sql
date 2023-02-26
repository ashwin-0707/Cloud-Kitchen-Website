/*
SQLyog - Free MySQL GUI v5.13
Host - 5.0.22-community-nt : Database - restaurant
*********************************************************************
Server version : 5.0.22-community-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `restaurant`;

USE `restaurant`;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `admintable` */

DROP TABLE IF EXISTS `admintable`;

CREATE TABLE `admintable` (
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admintable` */

insert into `admintable` (`username`,`password`) values ('admin','admin');

/*Table structure for table `attendance` */

DROP TABLE IF EXISTS `attendance`;

CREATE TABLE `attendance` (
  `username` varchar(50) default NULL,
  `datetime1` varchar(50) default NULL,
  `attendance` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `attendance` */

insert into `attendance` (`username`,`datetime1`,`attendance`) values ('tester','2022/06/10 11:35:27','Present');

/*Table structure for table `blockedipaddress` */

DROP TABLE IF EXISTS `blockedipaddress`;

CREATE TABLE `blockedipaddress` (
  `ipaddress` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `blockedipaddress` */

insert into `blockedipaddress` (`ipaddress`) values ('192.168.150.1');

/*Table structure for table `carddetails` */

DROP TABLE IF EXISTS `carddetails`;

CREATE TABLE `carddetails` (
  `cardtype` varchar(50) default NULL,
  `holdername` varchar(50) default NULL,
  `cardnumber` varchar(50) default NULL,
  `cardvaliddate` varchar(50) default NULL,
  `cvvno` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `carddetails` */

insert into `carddetails` (`cardtype`,`holdername`,`cardnumber`,`cardvaliddate`,`cvvno`) values ('credit','tester','123456789','12/20','123');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `username` varchar(50) default NULL,
  `productid` varchar(50) default NULL,
  `productname` varchar(50) default NULL,
  `quantity` varchar(50) default NULL,
  `price` varchar(50) default NULL,
  `totprice` varchar(50) default NULL,
  `status` varchar(50) default NULL,
  `id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cart` */

insert into `cart` (`username`,`productid`,`productname`,`quantity`,`price`,`totprice`,`status`,`id`) values ('tester','2','Egg briyani','2','1300','2600','purchased',1);
insert into `cart` (`username`,`productid`,`productname`,`quantity`,`price`,`totprice`,`status`,`id`) values ('tester','2','Chicken Briyani','2','1300','2600','purchased',2);
insert into `cart` (`username`,`productid`,`productname`,`quantity`,`price`,`totprice`,`status`,`id`) values ('tester','1','Egg Briyani','2','2500','5000','purchased',3);
insert into `cart` (`username`,`productid`,`productname`,`quantity`,`price`,`totprice`,`status`,`id`) values ('tester','1','Chicken Briyani','2','2500','5000','purchased',4);
insert into `cart` (`username`,`productid`,`productname`,`quantity`,`price`,`totprice`,`status`,`id`) values ('tester','3','Egg briyani','2','90','180','cart',5);

/*Table structure for table `empdetails` */

DROP TABLE IF EXISTS `empdetails`;

CREATE TABLE `empdetails` (
  `name` varchar(50) default NULL,
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `emailid` varchar(50) default NULL,
  `phonenum` varchar(50) default NULL,
  `address` varchar(50) default NULL,
  `city` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `empdetails` */

insert into `empdetails` (`name`,`username`,`password`,`emailid`,`phonenum`,`address`,`city`) values ('tester','tester','tester','tester@gmail.com',NULL,'cbe','cbe');

/*Table structure for table `productdetails` */

DROP TABLE IF EXISTS `productdetails`;

CREATE TABLE `productdetails` (
  `fileid` int(11) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `company` varchar(100) default NULL,
  `description` varchar(300) default NULL,
  `price` varchar(50) default NULL,
  `filename` varchar(200) default NULL,
  PRIMARY KEY  (`fileid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `productdetails` */

insert into `productdetails` (`fileid`,`name`,`company`,`description`,`price`,`filename`) values (3,'Egg briyani','Non Veg','egg briyani','90','egg.jpg');
insert into `productdetails` (`fileid`,`name`,`company`,`description`,`price`,`filename`) values (3,'Chinken briyani','Non Veg','Chicken briyani','120','download.jpg');

/*Table structure for table `usercomments` */

DROP TABLE IF EXISTS `usercomments`;

CREATE TABLE `usercomments` (
  `id` int(11) NOT NULL auto_increment,
  `productid` varchar(50) default NULL,
  `productname` varchar(50) default NULL,
  `username` varchar(50) default NULL,
  `comments` varchar(300) default NULL,
  `ratings` varchar(50) default NULL,
  `datetime1` varchar(50) default NULL,
  `ipaddress` varchar(50) default NULL,
  `reviewstatus` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usercomments` */

insert into `usercomments` (`id`,`productid`,`productname`,`username`,`comments`,`ratings`,`datetime1`,`ipaddress`,`reviewstatus`) values (2,'2','Egg Briyani','tester','delicious','5','2020/05/01 10:48:06','192.168.150.1','normal');
insert into `usercomments` (`id`,`productid`,`productname`,`username`,`comments`,`ratings`,`datetime1`,`ipaddress`,`reviewstatus`) values (3,'1','Egg Briyani','tester','good','5','2020/05/01 19:29:46','192.168.150.1','normal');
insert into `usercomments` (`id`,`productid`,`productname`,`username`,`comments`,`ratings`,`datetime1`,`ipaddress`,`reviewstatus`) values (4,'2','Chicken Briyani','tester','good','5','2020/05/01 19:30:12','192.168.150.1','normal');

/*Table structure for table `userdetails` */

DROP TABLE IF EXISTS `userdetails`;

CREATE TABLE `userdetails` (
  `name` varchar(50) default NULL,
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `emailid` varchar(50) default NULL,
  `phonenum` varchar(50) default NULL,
  `address` varchar(50) default NULL,
  `city` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userdetails` */

insert into `userdetails` (`name`,`username`,`password`,`emailid`,`phonenum`,`address`,`city`) values ('user','user','user','user@gmail.com','null','cbe','cbe');
insert into `userdetails` (`name`,`username`,`password`,`emailid`,`phonenum`,`address`,`city`) values ('tester','tester','tester','tester@gmail.com','null','cbe','cbe');

SET SQL_MODE=@OLD_SQL_MODE;