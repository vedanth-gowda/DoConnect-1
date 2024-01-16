/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.0.25 : Database - petcares
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`petcares` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `petcares`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(222) DEFAULT NULL,
  `password` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `admin` */

insert  into `admin`(`id`,`email`,`password`) values 
(1,'admin@gmail.com','ad'),
(2,NULL,NULL);

/*Table structure for table `advise` */

DROP TABLE IF EXISTS `medicinepp`;

CREATE TABLE `medicinepp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `doctorEmail` varchar(222) DEFAULT NULL,
  `customerEmail` varchar(222) DEFAULT NULL,
  `message` varchar(222) DEFAULT NULL,
  `patientId` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `advise` */

insert  into `advise`(`id`,`doctorEmail`,`AdviseId`,`customerEmail`,`message`,`petId`) values 
(3,'k@gmail.com',3,'p@gmail.com','haiii',10);

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customerName` varchar(222) DEFAULT NULL,
  `customerEmail` varchar(222) DEFAULT NULL,
  `customerNumber` varchar(222) DEFAULT NULL,
  `petName` varchar(222) DEFAULT NULL,
  `age` varchar(222) DEFAULT NULL,
  `bread` varchar(222) DEFAULT NULL,
  `licience` varchar(222) DEFAULT NULL,
  `DateTime` varchar(222) DEFAULT NULL,
  `doctorEmail` varchar(222) DEFAULT NULL,
  `status` varchar(222) DEFAULT NULL,
  `PetId` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `book` */

insert  into `book`(`id`,`customerName`,`customerEmail`,`customerNumber`,`petName`,`age`,`bread`,`licience`,`DateTime`,`doctorEmail`,`status`,`PetId`) values 
(3,'Pavan','p@gmail.com','9553242972','parrot','11','High','high123','2023-05-12T16:38','k@gmail.com','Accept',10),
(4,'Pavan','p@gmail.com','9553242972','rabbit','11','High','high123','2023-05-12T17:42','k@gmail.com','Accept',11);

/*Table structure for table `contact` */

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message` varchar(222) DEFAULT NULL,
  `name` varchar(222) DEFAULT NULL,
  `email` varchar(222) DEFAULT NULL,
  `subject` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `contact` */

insert  into `contact`(`id`,`message`,`name`,`email`,`subject`) values 
(1,'haiii','pavan','p@gmail.com','nothing');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(222) DEFAULT NULL,
  `email` varchar(222) DEFAULT NULL,
  `password` varchar(222) DEFAULT NULL,
  `number` varchar(10) DEFAULT NULL,
  `address` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `customer` */

insert  into `customer`(`id`,`fullname`,`email`,`password`,`number`,`address`) values 
(1,'Pavan','p@gmail.com','pp','9553242972','Giet collegeStain hostel Diwancheruvu');

/*Table structure for table `doctor` */

DROP TABLE IF EXISTS `doctor`;

CREATE TABLE `doctor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(222) DEFAULT NULL,
  `email` varchar(222) DEFAULT NULL,
  `password` varchar(222) DEFAULT NULL,
  `number` varchar(222) DEFAULT NULL,
  `address` varchar(222) DEFAULT NULL,
  `specialist` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `doctor` */

insert  into `doctor`(`id`,`fullname`,`email`,`password`,`number`,`address`,`specialist`) values 
(1,'Pavan','p@gmail.com','p123','9553242922','kphb','Dog specialist'),
(2,'kalyan','k@gmail.com','k123','9553242923','hyd','cat specialist');

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `toemail` varchar(222) DEFAULT NULL,
  `subject` varchar(222) DEFAULT NULL,
  `message` varchar(222) DEFAULT NULL,
  `sudate` varchar(222) DEFAULT NULL,
  `email` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `message` */

insert  into `message`(`id`,`toemail`,`subject`,`message`,`sudate`,`email`) values 
(1,'k@gmail.com','haii','good','09/05/2023 01:10:52','p@gmail.com');

/*Table structure for table `notification` */

DROP TABLE IF EXISTS `notification`;

CREATE TABLE `notification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(222) DEFAULT NULL,
  `description` varchar(222) DEFAULT NULL,
  `datetime` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `notification` */

insert  into `notification`(`id`,`title`,`description`,`datetime`) values 
(1,'haii','hhello','2023-05-09T13:35');

/*Table structure for table `pet` */

DROP TABLE IF EXISTS `pet`;

CREATE TABLE `pet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pet_name` varchar(222) DEFAULT NULL,
  `age` varchar(222) DEFAULT NULL,
  `bread` varchar(222) DEFAULT NULL,
  `licience` varchar(222) DEFAULT NULL,
  `Vaccinatoin` varchar(222) DEFAULT NULL,
  `medical` varchar(222) DEFAULT NULL,
  `email` varchar(222) DEFAULT NULL,
  `doctor` varchar(222) DEFAULT NULL,
  `docId` int DEFAULT NULL,
  `deworming` varchar(222) DEFAULT NULL,
  `grooming` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `pet` */

insert  into `pet`(`id`,`pet_name`,`age`,`bread`,`licience`,`Vaccinatoin`,`medical`,`email`,`doctor`,`docId`,`deworming`,`grooming`) values 
(10,'parrot','11','High','high123','2023-05-12T18:20','all good','p@gmail.com','k@gmail.com',2,'2023-05-14T21:20','2023-05-13T18:20'),
(11,'rabbit','11','High','high123','2023-05-12','all good','p@gmail.com','k@gmail.com',2,NULL,NULL);

/*Table structure for table `subscription` */

DROP TABLE IF EXISTS `subscription`;

CREATE TABLE `subscription` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fromdate` varchar(222) DEFAULT NULL,
  `todate` varchar(222) DEFAULT NULL,
  `comment` varchar(222) DEFAULT NULL,
  `sudate` varchar(222) DEFAULT NULL,
  `email` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `subscription` */

insert  into `subscription`(`id`,`fromdate`,`todate`,`comment`,`sudate`,`email`) values 
(1,'2023-05-09','2023-05-10','haaa','09/05/2023 11:41:14','p@gmail.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
