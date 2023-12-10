/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 5.5.28 : Database - lojaonline
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lojaonline` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `lojaonline`;

/*Table structure for table `categorias` */

DROP TABLE IF EXISTS `categorias`;

CREATE TABLE `categorias` (
  `idcategoria` int(2) NOT NULL,
  `nomecategoria` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `categorias` */

insert  into `categorias`(`idcategoria`,`nomecategoria`) values 
(101,'Informática - acessórios'),
(102,'Casa e banho'),
(103,'Eletrodomésticos'),
(104,'Saúde'),
(105,'Beleza'),
(106,'Telefonia fixa'),
(107,'Celulares e tablets'),
(108,'Computadores de mesa'),
(109,'Notebooks'),
(110,'Perfumes'),
(111,'Relógios'),
(112,'Cozinha'),
(113,'Impressoras');

/*Table structure for table `comprasefetuadas` */

DROP TABLE IF EXISTS `comprasefetuadas`;

CREATE TABLE `comprasefetuadas` (
  `idusuario` int(8) NOT NULL,
  `idproduto` int(6) NOT NULL,
  `qtdecomprada` int(5) DEFAULT NULL,
  PRIMARY KEY (`idusuario`,`idproduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `comprasefetuadas` */

insert  into `comprasefetuadas`(`idusuario`,`idproduto`,`qtdecomprada`) values 
(123,1,100),
(123,2,200),
(456,10,5),
(12345,11,1),
(12345,15,1),
(54321,4,2),
(54321,6,1),
(55555,9,1);

/*Table structure for table `produtos` */

DROP TABLE IF EXISTS `produtos`;

CREATE TABLE `produtos` (
  `idprod` int(6) NOT NULL,
  `nomeprod` varchar(255) NOT NULL,
  `preco` float DEFAULT NULL,
  `idcategoria` int(2) DEFAULT NULL,
  PRIMARY KEY (`idprod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `produtos` */

insert  into `produtos`(`idprod`,`nomeprod`,`preco`,`idcategoria`) values 
(1,'Dell Inspiron 15R',7500,109),
(2,'Dell Inspiron 14R',6900,109),
(3,'Dell Inspiron 14E',4750,109),
(4,'HP Pavilion 2021',7710,109),
(5,'HP Pavilion 450br',6609,109),
(6,'HP Pavilion 7i-n50br',8069,109),
(7,'Samsung Galaxy S21',9800,107),
(8,'Samsung Galaxy S40',6499,107),
(9,'Samsung Galaxy S8',4699,107),
(10,'Motorola Moto Maxx',2399,107),
(11,'Motorola Moto ZZ Play',3349,107),
(12,'Motorola Moto G  9a Gen',3370,107),
(13,'Motorola Moto E 8a Geração',2535,107),
(14,'Geladeira Refrigerador Consul Degelo Seco 261 litros CRA30',5000,103),
(15,'Geladeira Refrigerador 1 Porta Electrolux RE31 - 214 Litros',2899.91,103),
(16,'Impressora HP Deskjet 5990',1200,113);

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `idusuario` int(8) NOT NULL,
  `senhausuario` varchar(20) DEFAULT NULL,
  `nomeusuario` varchar(150) DEFAULT NULL,
  `cpfusuario` varchar(14) DEFAULT '000.000.000-00',
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `usuarios` */

insert  into `usuarios`(`idusuario`,`senhausuario`,`nomeusuario`,`cpfusuario`) values 
(123,'abc','Pedro Lopes Peres','000.000.000-00'),
(456,'ledon','Jorge Ledón','666.777.888-99'),
(10000,'mypass45','George Souza','777.777.777-77'),
(12345,'alfa','Luiz Alves','123.456.789-12'),
(54321,'xjh652','Pedro Peres','888.888.888-88'),
(55555,'beta','Ana Lopes','999.999.999-99');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
