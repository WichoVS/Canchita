create database canchitaDB;
use canchitaDB;

CREATE TABLE `noticias` ( 
`id` INT NOT NULL AUTO_INCREMENT,
 `titulo`VARCHAR(50) NULL,
 `descripcion` VARCHAR(200) NULL,
 `urlimage` VARCHAR(200) NULL,
 `check` BIT NULL,
 `iduser` INT NULL,
 `ruta` VARCHAR(200) NULL,
 `fecha` DATETIME NULL,
 PRIMARY KEY (`id`)
 );
   ALTER TABLE `noticias` AUTO_INCREMENT = 10000;
   ALTER TABLE `noticias` DROP COLUMN `urlimage`;
   
   CREATE TABLE `usuarios` (
   `id` INT NOT NULL AUTO_INCREMENT ,
   `correo` VARCHAR(50) NULL,
   `nickname` VARCHAR(30) NULL,
   `avatar` VARCHAR(50) NULL,
   `cotra` VARCHAR(30) NULL,
   `nombre` VARCHAR(50) NULL,
   `apellido` VARCHAR(50) NULL,
   `nacimiento` DATETIME NULL,
   `admin` BIT NULL,
   `anonimo` BIT NULL,
   `moderador` BIT NULL,
   `creador` BIT NULL,
   `editor` BIT NULL,
   PRIMARY KEY (`id`)
   );
      ALTER TABLE `usuarios` AUTO_INCREMENT = 100000;
   
   CREATE TABLE `valoracion`(
   `id` INT NOT NULL AUTO_INCREMENT,
   `pts` INT NULL ,
   `idnoticia` INT NOT NULL,
   FOREIGN KEY (`idnoticia`) REFERENCES `noticias`(`id`),
   PRIMARY KEY (`id`)
   );
   
     CREATE TABLE `categoria`(
   `id` INT NOT NULL AUTO_INCREMENT,
   `categoria` VARCHAR(10) NULL ,
   `tipo` VARCHAR(20) NOT NULL ,
   `idnoticia` INT NOT NULL,
   FOREIGN KEY (`idnoticia`) REFERENCES `noticias`(`id`),
   PRIMARY KEY (`id`)
   );
   


   
   CREATE TABLE `videos`(
   `id` INT NOT NULL AUTO_INCREMENT,
   `idnoticia` INT NOT NULL,
   `ruta` VARCHAR(200) NULL,
   FOREIGN KEY (`idnoticia`) REFERENCES `noticias`(`id`),
   PRIMARY KEY (`id`)
   );
   
   CREATE TABLE `imagenes`(
   `id` INT NOT NULL AUTO_INCREMENT,
   `idnoticia` INT NOT NULL,
   `ruta` VARCHAR(200) NULL,
   FOREIGN KEY (`idnoticia`) REFERENCES `noticias`(`id`),
   PRIMARY KEY (`id`)
   );
   
   CREATE TABLE `comentarios` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `idnoticia` INT NOT NULL,
   `fecha` DATETIME NULL,
   `like` BIT NULL,
   `dislike` BIT NULL,
   `text` VARCHAR(200) NULL,
	FOREIGN KEY (`idnoticia`) REFERENCES `noticias`(`id`),
	PRIMARY KEY (`id`)
   );
   
      CREATE TABLE `subcomentarios` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `idcomentarios` INT NOT NULL,
   `fecha` DATETIME NULL,
   `like` BIT NULL,
   `dislike` BIT NULL,
   `text` VARCHAR(200) NULL,
	FOREIGN KEY (`idcomentarios`) REFERENCES `comentarios`(`id`),
	PRIMARY KEY (`id`)
   );
   
   CREATE TABLE `redsocial`(
   `id` INT NOT NULL AUTO_INCREMENT,
   `red` VARCHAR(50) NULL,
   `idusuario` INT NOT NULL,
   FOREIGN KEY (`idusuario`) REFERENCES `usuarios`(`id`),
   PRIMARY KEY (`id`)
   );

    CREATE TABLE `marcadores`(
   `id` INT NOT NULL AUTO_INCREMENT,
   `idnoticia` INT NOT NULL,
   `idusuario` INT NOT NULL,
   FOREIGN KEY (`idusuario`) REFERENCES `usuarios`(`id`),
   FOREIGN KEY (`idnoticia`) REFERENCES `noticias`(`id`),
   PRIMARY KEY (`id`)
   );
   
   CREATE TABLE BAN(
   `id` INT NOT NULL AUTO_INCREMENT,
    `idusuario` INT NOT NULL,
    `dias` INT NOT NULL,
    `fecha` DATETIME NULL,
    FOREIGN KEY (`idusuario`) REFERENCES `usuarios`(`id`),
   PRIMARY KEY (`id`)
   );
