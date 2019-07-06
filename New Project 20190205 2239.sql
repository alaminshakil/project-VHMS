-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.41-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema lunch_box
--

CREATE DATABASE IF NOT EXISTS lunch_box;
USE lunch_box;

--
-- Definition of table `manager`
--

DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `Manager_ID` int(11) NOT NULL auto_increment,
  `Manager Name` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `Area` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY  (`Manager_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` (`Manager_ID`,`Manager Name`,`City`,`Area`,`Phone`,`Email`,`Password`) VALUES 
 (1,'Md Al Amin','Dhaka','Palton','01515261234','admin','admin'),
 (2,'Saiful Islam','Comilla','Town Hall','01812793516','saiful@gmail.com','123'),
 (3,'Lutfun Nahar Lata','Noakhali','Sadar','015152611244','lata','lata');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;


--
-- Definition of table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `idmenu` int(11) NOT NULL auto_increment,
  `item_name` varchar(45) NOT NULL,
  `sell_price` int(11) NOT NULL,
  `purchase_price` int(11) NOT NULL,
  `item_unit` int(11) NOT NULL,
  PRIMARY KEY  (`idmenu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` (`idmenu`,`item_name`,`sell_price`,`purchase_price`,`item_unit`) VALUES 
 (1,'Kacci',220,200,10),
 (2,'Teheri',150,35,5),
 (3,'Biriani',150,200,100),
 (4,'Khicuri',80,50,50),
 (5,'Rice',20,200,200),
 (6,'Rui',80,50,200),
 (7,'Elish',80,20,20),
 (8,'Beef',120,30,30),
 (9,'Mutton',120,30,30),
 (10,'Chicken',60,50,50),
 (11,'Pizza',220,20,20),
 (12,'Burger',120,20,20),
 (13,'Fried Rice',200,20,20),
 (14,'Fried Chicken',60,20,20),
 (15,'Soup',60,50,50),
 (16,'Sandwitch',65,20,20),
 (17,'Borhani',50,20,20),
 (18,'Sprite',15,20,20),
 (19,'Coke',15,60,60),
 (20,'7UP',15,25,25),
 (21,'Lassi',50,35,35),
 (22,'Coffee',40,30,30),
 (23,'Cold Drinks',50,20,-24),
 (24,'Harun',100,1,0);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;


--
-- Definition of table `sales_man`
--

DROP TABLE IF EXISTS `sales_man`;
CREATE TABLE `sales_man` (
  `salesman_id` int(11) NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY  USING BTREE (`salesman_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_man`
--

/*!40000 ALTER TABLE `sales_man` DISABLE KEYS */;
INSERT INTO `sales_man` (`salesman_id`,`name`,`address`,`age`,`email`,`password`) VALUES 
 (1,'alamin','Dhaka','28','alamin@gmail.com','123'),
 (2,'Al Amin Shakil','2/a, Polashpur, Donia, Dhaka','28','sales@admin.com','123'),
 (3,'Harun Or Rashid','Mohakhali, Dhaka','29','harun','123'),
 (4,'Lamha Islam','Donia, Dhaka','26','lamha@gmail.com','123');
/*!40000 ALTER TABLE `sales_man` ENABLE KEYS */;


--
-- Definition of table `sold_item`
--

DROP TABLE IF EXISTS `sold_item`;
CREATE TABLE `sold_item` (
  `invoice_no` varchar(45) NOT NULL default '',
  `date` varchar(45) NOT NULL,
  `customer_name` varchar(45) NOT NULL,
  `phone_no` varchar(45) NOT NULL,
  `total_sold` varchar(45) NOT NULL,
  `profit` varchar(45) NOT NULL,
  PRIMARY KEY  (`invoice_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sold_item`
--

/*!40000 ALTER TABLE `sold_item` DISABLE KEYS */;
INSERT INTO `sold_item` (`invoice_no`,`date`,`customer_name`,`phone_no`,`total_sold`,`profit`) VALUES 
 ('001','06-02-2019','Shakil','01812793516','58797','12657'),
 ('20190201-001','01-02-2019','Tofa','01878646444','25458','800'),
 ('20190202-001','02-02-2019','Sakil','01515454521','200','100'),
 ('20190202-002','02-02-2019','Lamha','015254689778','1578','200'),
 ('20190203- 001','03-02-2019','Tofail','015487832','1240','490'),
 ('20190203- 002','03-02-2019','Saiful','0187987564','870','210'),
 ('20190203- 003','03-02-2019','Doha','01547987988','700','140'),
 ('20190203- 004','03-02-2019','Tofail','01545454545','1110','405'),
 ('20190203- 005','03-02-2019','Shibbir','015458748754','2200','1160'),
 ('20190203- 006','03-02-2019','Afreen','015458865','3770','3130'),
 ('20190204-','04-02-2019','Al Amin Shakil','01912785478','4500','3450'),
 ('20190204-0010','04-02-2019','Al Amin Shakil','01845796578','2200','200'),
 ('20190205-001','06-02-2019','Al Amin','01515261234','12987','6587'),
 ('20190205-002','05-02-2019','Md Al Amin','01515261234','5410','3120');
/*!40000 ALTER TABLE `sold_item` ENABLE KEYS */;


--
-- Definition of table `temp_cart`
--

DROP TABLE IF EXISTS `temp_cart`;
CREATE TABLE `temp_cart` (
  `sl_no` int(10) unsigned NOT NULL auto_increment,
  `item_name` varchar(45) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `sell_unit` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `item_profit` varchar(45) default NULL,
  PRIMARY KEY  USING BTREE (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_cart`
--

/*!40000 ALTER TABLE `temp_cart` DISABLE KEYS */;
INSERT INTO `temp_cart` (`sl_no`,`item_name`,`unit_price`,`sell_unit`,`price`,`item_profit`) VALUES 
 (1,'Kacci',220,2,440,'40'),
 (2,'Teheri',150,33,4950,'3795'),
 (3,'Rui',80,3,240,'90'),
 (4,'Elish',80,33,2640,'1980'),
 (5,'Cold Drinks',50,5,250,'150'),
 (6,'Borhani',50,3,150,'90');
/*!40000 ALTER TABLE `temp_cart` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
