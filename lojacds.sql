/*
SQLyog Community Edition- MySQL GUI v6.51
MySQL - 5.0.45-community-nt : Database - lojacds
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE IF NOT EXISTS `lojacds`;

USE `lojacds`;

/*Table structure for table `cds` */

DROP TABLE IF EXISTS `cds`;

CREATE TABLE `cds` (
  `codigo` INT(5) NOT NULL,
  `titulo` VARCHAR(255) DEFAULT NULL,
  `interprete` VARCHAR(150) DEFAULT NULL,
  `genero` VARCHAR(30) DEFAULT NULL,
  `preco` FLOAT DEFAULT NULL,
  PRIMARY KEY  (`codigo`)
) ;

/*Data for the table `cds` */

INSERT  INTO `cds`(`codigo`,`titulo`,`interprete`,`genero`,`preco`) VALUES (1,'Fields of gold','Sting','rock',24),(2,'Origens','Caetano Veloso','mpb',12),(3,'Finders','Sepultura','rock',23),(4,'Travessia','Milton Nascimento','mpb',20),(5,'World tour 2007','Rolling Stones','rock',34),(6,'9a Sinfonia','Orq Sinf Génova','clássico',24);

/*Table structure for table `generos` */

DROP TABLE IF EXISTS `generos`;

CREATE TABLE `generos` (
  `genero` VARCHAR(40) NOT NULL,
  PRIMARY KEY  (`genero`)
) ;

/*Data for the table `generos` */

insert  into `generos`(`genero`) values ('clássico'),('mpb'),('pop'),('rock'),('salsa'),('sertanejo');

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `login` int(9) NOT NULL,
  `senha` varchar(15) DEFAULT NULL,
  `nome` varchar(129) DEFAULT NULL,
  PRIMARY KEY (`login`)
) ;

/*Data for the table `usuarios` */

insert  into `usuarios`(`login`,`senha`,`nome`) values (123,'abc','Luisa Lopes'),(200,'dois','Luis Peres'),(12345,'abcde','Ana Silva');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;


