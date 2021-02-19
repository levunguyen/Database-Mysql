
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `ID` int NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
);
INSERT INTO `customers` VALUES (1,'Hải','Hải Châu','Đà Năng'),(2,'Thắng','Liên Chiểu','Đà Năng'),(3,'Minh','Cẩm Lệ','Đà Năng'),(4,'Hằng','Hòa Vang','Đà Năng'),(5,'Thanh','Thanh Khê','Đà Năng'),(6,'Thai','Ngũ Hành Sơn','Đà Năng'),(7,'Khanh','Hòa Vang','Đà Năng');

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `ID` int NOT NULL,
  `OrderDate` date DEFAULT NULL,
  `CustomerID` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
);
INSERT INTO `demojoin`.`orders` (`ID`, `OrderDate`, `CustomerID`) VALUES ('1', '2020-08-30', '1');
INSERT INTO `demojoin`.`orders` (`ID`, `OrderDate`, `CustomerID`) VALUES ('2', '2020-08-30', '2');
INSERT INTO `demojoin`.`orders` (`ID`, `OrderDate`, `CustomerID`) VALUES ('3', '2020-08-30', '3');
INSERT INTO `demojoin`.`orders` (`ID`, `OrderDate`, `CustomerID`) VALUES ('4', '2020-08-30', '4');
INSERT INTO `demojoin`.`orders` (`ID`, `OrderDate`, `CustomerID`) VALUES ('5', '2020-08-30', '5');
INSERT INTO `demojoin`.`orders` (`ID`, `OrderDate`, `CustomerID`) VALUES ('6', '2020-08-30', '10');
INSERT INTO `demojoin`.`orders` (`ID`, `OrderDate`, `CustomerID`) VALUES ('7', '2020-08-30', '11');
select * from customers; 
select * from orders; 

select * from orders inner join customers
on orders.CustomerID = customers.ID;

select * from orders left join customers
on orders.CustomerID = customers.ID;

select * from orders right join customers
on orders.CustomerID = customers.ID