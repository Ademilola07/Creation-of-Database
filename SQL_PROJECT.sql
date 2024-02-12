# Create database named sql_invoicing2 with 4 tables

DROP DATABASE IF EXISTS `sql_invoicing2`;
CREATE DATABASE `sql_invoicing2`;
USE `sql_invoicing2`;

CREATE TABLE `Clients` (
`Client_id` INT(11) NOT NULL, 
`Name` VARCHAR(50) NOT NULL, 
`Address` VARCHAR(50) NOT NULL, 
`City` VARCHAR(50) NOT NULL, 
`State` CHAR(2) NOT NULL, 
`Phone` VARCHAR(50) DEFAULT NULL,
PRIMARY KEY (`Client_id`));

INSERT INTO `Clients` VALUES (1, 'Vinte', '3 Nevada Parkway', 'Syracuse', 'NY', '315-252-7305');
INSERT INTO `Clients` VALUES(2,'Myworks', '34267 Glendale Parkway', 'Huntington', 'WV', '304-659-1170');
INSERT INTO `Clients` VALUES(3, 'Yadel', '096 Pawling Parkway', 'San Francisco', 'CA', '415-144-6037');
INSERT INTO `Clients` VALUES(4, 'Kwideo', '81674 Westerfield Circle', 'Waco', 'TX', '254-750-0784');
INSERT INTO `Clients` VALUES(5, 'Topiclounge', '0863 Farmco Road', 'Portland', 'OR', '971-888-9129');


CREATE TABLE `Invoices` (
`Invoice_id` INT(12) NOT NULL, 
`Number` VARCHAR(55) NOT NULL, 
`Client_id` INT(8) NOT NULL, 
`Invoice_total` DECIMAL(8,5) NOT NULL, 
`Payment_total` DECIMAL(8,5) NOT NULL, 
`invoice_date` DATE NOT NULL, 
`Due_date` DATE NOT NULL, 
`Payment_date` DATE DEFAULT NULL,
PRIMARY KEY (`Invoice_id`));

INSERT INTO `Invoices` VALUES (1, '91-953-3396',2,101.79,0.00, '2019-03-09', '2019-03-29', NULL);
INSERT INTO `Invoices` VALUES (2, '03-898-6735',5,175.32,8.18, '2019-06-11', '2019-07-01', '2019-02-12');
INSERT INTO `Invoices` VALUES (3, '20-228-0335',5,147.99,0.00, '2019-07-31', '2019-08-20', NULL);
INSERT INTO `invoices` VALUES (4,'56-934-0748',3,152.21,0.00,'2019-03-08','2019-03-28',NULL);
INSERT INTO `invoices` VALUES (5,'87-052-3121',5,169.36,0.00,'2019-07-18','2019-08-07',NULL);
INSERT INTO `invoices` VALUES (6,'75-587-6626',1,157.78,74.55,'2019-01-29','2019-02-18','2019-01-03');
INSERT INTO `invoices` VALUES (7,'68-093-9863',3,133.87,0.00,'2019-09-04','2019-09-24',NULL);
INSERT INTO `invoices` VALUES (8,'78-145-1093',1,189.12,0.00,'2019-05-20','2019-06-09',NULL);
INSERT INTO `invoices` VALUES (9,'77-593-0081',5,172.17,0.00,'2019-07-09','2019-07-29',NULL);
INSERT INTO `invoices` VALUES (10,'48-266-1517',1,159.50,0.00,'2019-06-30','2019-07-20',NULL);
INSERT INTO `invoices` VALUES (11,'20-848-0181',3,126.15,0.03,'2019-01-07','2019-01-27','2019-01-11');
INSERT INTO `invoices` VALUES (13,'41-666-1035',5,135.01,87.44,'2019-06-25','2019-07-15','2019-01-26');
INSERT INTO `invoices` VALUES (15,'55-105-9605',3,167.29,80.31,'2019-11-25','2019-12-15','2019-01-15');
INSERT INTO `invoices` VALUES (16,'10-451-8824',1,162.02,0.00,'2019-03-30','2019-04-19',NULL);
INSERT INTO `invoices` VALUES (17,'33-615-4694',3,126.38,68.10,'2019-07-30','2019-08-19','2019-01-15');
INSERT INTO `invoices` VALUES (18,'52-269-9803',5,180.17,42.77,'2019-05-23','2019-06-12','2019-01-08');
INSERT INTO `invoices` VALUES (19,'83-559-4105',1,134.47,0.00,'2019-11-23','2019-12-13',NULL);

CREATE TABLE `Payments` (
  `Payment_id` INT(12) NOT NULL AUTO_INCREMENT,
  `Client_id` INT(12) NOT NULL,
  `Invoice_id` INT(12) NOT NULL,
  `Date` DATE NOT NULL,
  `Amount` DECIMAL(9,2) NOT NULL,
  `Payment_method` TINYINT(4) NOT NULL,
  PRIMARY KEY (`Payment_id`));
  
INSERT INTO `Payments` VALUES (1,5,2,'2019-02-12',8.18,1);
INSERT INTO `Payments` VALUES (2,1,6,'2019-01-03',74.55,1);
INSERT INTO `Payments` VALUES (3,3,11,'2019-01-11',0.03,1);
INSERT INTO `Payments` VALUES (4,5,13,'2019-01-26',87.44,1);
INSERT INTO `Payments` VALUES (5,3,15,'2019-01-15',80.31,1);
INSERT INTO `Payments` VALUES (6,3,17,'2019-01-15',68.10,1);
INSERT INTO `Payments` VALUES (7,5,18,'2019-01-08',32.77,1);
INSERT INTO `Payments` VALUES (8,5,18,'2019-01-08',10.00,2);

CREATE TABLE `Payments_method` (
  `Payment_method_id` INT(12) NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(12) NOT NULL,
  PRIMARY KEY (`Payment_method_id`));





#Create database named sql_store2 with 7 tables

DROP DATABASE IF EXISTS `sql_store2`;
CREATE DATABASE `sql_store2`;
USE `sql_store2`;


CREATE TABLE `Customers` (
`Customer_id` INT(30) NOT NULL AUTO_INCREMENT, 
`First_name` VARCHAR(55) NOT NULL, 
`Last_name` VARCHAR(55) NOT NULL, 
`Birth_date` DATE DEFAULT NULL, 
`Phone` VARCHAR(20) DEFAULT NULL, 
`Address` VARCHAR(35)NOT NULL, 
`City` VARCHAR(40) NOT NULL, 
`State` CHAR(18) NOT NULL, 
`Points` INT(13) NOT NULL DEFAULT '0', 
PRIMARY KEY (`Customer_id`));

INSERT INTO `Customers` VALUES (1, 'Babara', 'MacCaffrey', '1986-03-28', '781-932-9754', '0 Sage Terrace', 'Waltham', 'MA', 2273);
INSERT INTO `Customers` VALUES (2, 'Ines', 'Brushfield', '1986-04-13', '804-427-9456', '14187 Commercial Trail', 'Hampton', 'VA', 947);
INSERT INTO `Customers` VALUES (3,'Freddi','Boagey','1985-02-07','719-724-7869','251 Springs Junction','Colorado Springs','CO',2967);
INSERT INTO `Customers` VALUES (4,'Ambur','Roseburgh','1974-04-14','407-231-8017','30 Arapahoe Terrace','Orlando','FL',457);
INSERT INTO `Customers` VALUES (5,'Clemmie','Betchley','1973-11-07',NULL,'5 Spohn Circle','Arlington','TX',3675);
INSERT INTO `Customers` VALUES (6,'Elka','Twiddell','1991-09-04','312-480-8498','7 Manley Drive','Chicago','IL',3073);
INSERT INTO `Customers` VALUES (7,'Ilene','Dowson','1964-08-30','615-641-4759','50 Lillian Crossing','Nashville','TN',1672);
INSERT INTO `Customers` VALUES (8,'Thacher','Naseby','1993-07-17','941-527-3977','538 Mosinee Center','Sarasota','FL',205);
INSERT INTO `Customers` VALUES (9,'Romola','Rumgay','1992-05-23','559-181-3744','3520 Ohio Trail','Visalia','CA',1486);
INSERT INTO `Customers` VALUES (10,'Levy','Mynett','1969-10-13','404-246-3370','68 Lawn Avenue','Atlanta','GA',796);


CREATE TABLE `Order_item_notes` (
`Note_id` INT(12) NOT NULL, 
`Order_id` INT(15) NOT NULL, 
`Product_id` INT(17) NOT NULL, 
`Note` VARCHAR(290) NOT NULL, 
PRIMARY KEY (`Note_id`));

INSERT INTO `Order_item_notes` VALUES (1, 1, 2, 'first note');
INSERT INTO `Order_item_notes` VALUES(2, 1, 2, 'second note');



CREATE TABLE `Order_items` (
`Order_id` INT(12) NOT NULL AUTO_INCREMENT, 
`Product_id` INT(15) NOT NULL, 
`Quantity` INT(17) NOT NULL, 
`Unit_price` DECIMAL(4,2) NOT NULL, 
PRIMARY KEY (`Order_id`,`Product_id`));

INSERT INTO `Order_items` VALUES (1,4,4,3.74);
INSERT INTO `Order_items` VALUES (2,1,2,9.10);
INSERT INTO `Order_items` VALUES (2,4,4,1.66);
INSERT INTO `Order_items` VALUES (2,6,2,2.94);
INSERT INTO `Order_items` VALUES (3,3,10,9.12);
INSERT INTO `Order_items` VALUES (4,3,7,6.99);
INSERT INTO `Order_items` VALUES (4,10,7,6.40);
INSERT INTO `Order_items` VALUES (5,2,3,9.89);
INSERT INTO `Order_items` VALUES (6,1,4,8.65);
INSERT INTO `Order_items` VALUES (6,2,4,3.28);
INSERT INTO `Order_items` VALUES (6,3,4,7.46);
INSERT INTO `Order_items` VALUES (6,5,1,3.45);
INSERT INTO `Order_items` VALUES (7,3,7,9.17);
INSERT INTO `Order_items` VALUES (8,5,2,6.94);
INSERT INTO `Order_items` VALUES (8,8,2,8.59);
INSERT INTO `Order_items` VALUES (9,6,5,7.28);
INSERT INTO `Order_items` VALUES (10,1,10,6.01);
INSERT INTO `Order_items` VALUES (10,9,9,4.28);



CREATE TABLE `order_statuses` (
  `Order_status_id` TINYINT(4) NOT NULL,
  `Name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`order_status_id`));
  
INSERT INTO `order_statuses` VALUES (1,'Processed');
INSERT INTO `order_statuses` VALUES (2,'Shipped');
INSERT INTO `order_statuses` VALUES (3,'Delivered');


CREATE TABLE `Orders` (
  `Order_id` INT (11) NOT NULL AUTO_INCREMENT,
  `Customer_id` INT (12) NOT NULL,
  `Order_date` DATE NOT NULL,
  `Status` TINYINT (4) NOT NULL DEFAULT '1',
  `Comments` VARCHAR (2000) DEFAULT NULL,
  `Shipped_date` DATE DEFAULT NULL,
  `Shipper_id` SMALLINT (6) DEFAULT NULL,
  PRIMARY KEY (`Order_id`));
  
INSERT INTO `Orders` VALUES (1,6,'2019-01-30',1,NULL,NULL,NULL);
INSERT INTO `Orders` VALUES (2,7,'2018-08-02',2,NULL,'2018-08-03',4);
INSERT INTO `Orders` VALUES (3,8,'2017-12-01',1,NULL,NULL,NULL);
INSERT INTO `Orders` VALUES (4,2,'2017-01-22',1,NULL,NULL,NULL);
INSERT INTO `Orders` VALUES (5,5,'2017-08-25',2,'','2017-08-26',3);
INSERT INTO `Orders` VALUES (6,10,'2018-11-18',1,'Aliquam erat volutpat. In congue.',NULL,NULL);
INSERT INTO `Orders` VALUES (7,2,'2018-09-22',2,NULL,'2018-09-23',4);
INSERT INTO `Orders` VALUES (8,5,'2018-06-08',1,'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.',NULL,NULL);
INSERT INTO `Orders` VALUES (9,10,'2017-07-05',2,'Nulla mollis molestie lorem. Quisque ut erat.','2017-07-06',1);
INSERT INTO `Orders` VALUES (10,6,'2018-04-22',2,NULL,'2018-04-23',2);


CREATE TABLE `Products` (
  `Product_id` INT(12) NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(55) NOT NULL,
  `Quantity_in_stock` INT(12) NOT NULL,
  `Unit_price` DECIMAL (4,2) NOT NULL,
  PRIMARY KEY (`Product_id`));
  
INSERT INTO `Products` VALUES (1,'Foam Dinner Plate',70,1.21);
INSERT INTO `Products` VALUES (2,'Pork - Bacon,back Peameal',49,4.65);
INSERT INTO `Products` VALUES (3,'Lettuce - Romaine, Heart',38,3.35);
INSERT INTO `Products` VALUES (4,'Brocolinni - Gaylan, Chinese',90,4.53);
INSERT INTO `Products` VALUES (5,'Sauce - Ranch Dressing',94,1.63);
INSERT INTO `Products` VALUES (6,'Petit Baguette',14,2.39);
INSERT INTO `Products` VALUES (7,'Sweet Pea Sprouts',98,3.29);
INSERT INTO `Products` VALUES (8,'Island Oasis - Raspberry',26,0.74);
INSERT INTO `Products` VALUES (9,'Longan',67,2.26);
INSERT INTO `Products` VALUES (10,'Broom - Push',6,1.09);


CREATE TABLE `Shippers` (
  `Shipper_id` SMALLINT(6) NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Shipper_id`));
  
  
INSERT INTO `Shippers` VALUES (1,'Hettinger LLC');
INSERT INTO `Shippers` VALUES (2,'Schinner-Predovic');
INSERT INTO `Shippers` VALUES (3,'Satterfield LLC');
INSERT INTO `Shippers` VALUES (4,'Mraz, Renner and Nolan');
INSERT INTO `Shippers` VALUES (5,'Waters, Mayert and Prohaska');





# Create database named sql_inventory2 with 1 table
DROP DATABASE IF EXISTS `sql_inventory2`;
CREATE DATABASE `sql_inventory2`;
USE `sql_inventory2`;

CREATE TABLE `Products` (
`Product_id` INT(12) NOT NULL AUTO_INCREMENT, 
`Name` VARCHAR(55) NOT NULL, 
`Quantity_in_stock` INT(20) NOT NULL, 
`Unit Price` DECIMAL(5,4) NOT NULL,
PRIMARY KEY (`Product_id`));

INSERT INTO `Products` VALUES (1, 'Foam Dinner Plate', 70, 1.21);
INSERT INTO `Products` VALUES(2, 'Pork - Bacon,back Peameal', 49, 4.65);
INSERT INTO `Products` VALUES (3,'Lettuce - Romaine, Heart',38,3.35);
INSERT INTO `Products` VALUES (4,'Brocolinni - Gaylan, Chinese',90,4.53);
INSERT INTO `Products` VALUES (5,'Sauce - Ranch Dressing',94,1.63);
INSERT INTO `Products` VALUES (6,'Petit Baguette',14,2.39);
INSERT INTO `Products` VALUES (7,'Sweet Pea Sprouts',98,3.29);
INSERT INTO `Products` VALUES (8,'Island Oasis - Raspberry',26,0.74);
INSERT INTO `Products` VALUES (9,'Longan',67,2.26);
INSERT INTO `Products` VALUES (10,'Broom - Push',6,1.09);






#Create database named sql_hr2 with 2 tables

DROP DATABASE IF EXISTS `sql_hr2`;
CREATE DATABASE `sql_hr2`;
USE `sql_hr2`;

CREATE TABLE `Employees` (
`Employee_id` INT(12) NOT NULL, 
`First_name` VARCHAR(50) NOT NULL, 
`Last_name` VARCHAR(50) NOT NULL, 
`Job_title` VARCHAR(50) NOT NULL, 
`Salary` INT(12) NOT NULL, 
`Report_to` INT(12) DEFAULT NULL, 
`Office_id` INT(12) NOT NULL, 
PRIMARY KEY(`Employee_id`));

INSERT INTO `Employees` VALUES (37270,'Yovonnda','Magrannell','Executive Secretary',63996,NULL,10);
INSERT INTO `Employees` VALUES (33391, 'D\'arcy', 'Nortunen', 'Account Executive', 62871, 37270, 1);
INSERT INTO `Employees` VALUES (37851,	'Sayer', 'Matterson', 'Statistician III', 98926, 37270,	1);
INSERT INTO `Employees` VALUES (40448, 'Mindy', 'Crissil', 'Staff Scientist', 94860, 37270, 1);
INSERT INTO `Employees` VALUES (56274, 'Keriann', 'Alloisi', 'VP Marketing', 110150, 37270, 1);
INSERT INTO `Employees` VALUES (63196, 'Alaster', 'Scutchin', 'Assistant Professor', 32179, 37270, 2);
INSERT INTO `Employees` VALUES (67009, 'North', 'de Clerc', 'VP Product Management', 114257, 37270, 2);
INSERT INTO `Employees` VALUES (67370, 'Elladine', 'Rising', 'Social Worker', 96767, 37270, 2);
INSERT INTO `Employees` VALUES (68249, 'Nisse', 'Voysey', 'Financial Advisor', 52832, 37270, 2);
INSERT INTO `Employees` VALUES (72540, 'Guthrey', 'Iacopetti', 'Office Assistant I', 117690, 37270, 3);
INSERT INTO `Employees` VALUES (72913, 'Kass', 'Hefferan', 'Computer Systems Analyst IV', 96401, 37270, 3);
INSERT INTO `Employees` VALUES (75900, 'Virge', 'Goodrum', 'Information Systems Manager', 54578, 37270, 3);
INSERT INTO `Employees` VALUES (76196, 'Mirilla', 'Janowski', 'Cost Accountant', 119241, 37270, 3);
INSERT INTO `Employees` VALUES (80529,	'Lynde', 'Aronson',	'Junior Executive',	77182, 37270, 4);
INSERT INTO `Employees` VALUES (80679,	'Mildrid', 'Sokale',	'Geologist II',	67987,	37270,	4);
INSERT INTO `Employees` VALUES (84791,	'Hazel', 'Tarbert', 'General Manager',	93760,	37270,	4);
INSERT INTO `Employees` VALUES (95213, 'Cole',	'Kesterton	Pharmacist', 86119,	37270, 4);
INSERT INTO `Employees` VALUES (96513,	'Theresa', 'Binney Food Chemist', 47354, 37270, 5);
INSERT INTO `Employees` VALUES (98374, 'Estrellita', 'Daleman Staff Accountant IV',	70187, 37270, 5);
INSERT INTO `Employees` VALUES (115357, 'Ivy', 'Fearey Structural Engineer', 92710, 37270, 5);


CREATE TABLE `Offices` (
  `Office_id` INT(12) NOT NULL,
  `Address` VARCHAR(50) NOT NULL,
  `City` VARCHAR(50) NOT NULL,
  `State` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Office_id`));
  
  
INSERT INTO `Offices` VALUES (1,'03 Reinke Trail','Cincinnati','OH');
INSERT INTO `Offices` VALUES (2,'5507 Becker Terrace','New York City','NY');
INSERT INTO `Offices` VALUES (3,'54 Northland Court','Richmond','VA');
INSERT INTO `Offices` VALUES (4,'08 South Crossing','Cincinnati','OH');
INSERT INTO `Offices` VALUES (5,'553 Maple Drive','Minneapolis','MN');
INSERT INTO `Offices` VALUES (6,'23 North Plaza','Aurora','CO');
INSERT INTO `Offices` VALUES (7,'9658 Wayridge Court','Boise','ID');
INSERT INTO `Offices` VALUES (8,'9 Grayhawk Trail','New York City','NY');
INSERT INTO `Offices` VALUES (9,'16862 Westend Hill','Knoxville','TN');
INSERT INTO `Offices` VALUES (10,'4 Bluestem Parkway','Savannah','GA');

