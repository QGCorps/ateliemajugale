CREATE DATABASE  IF NOT EXISTS `clinica_estetica` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `clinica_estetica`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: clinica_estetica
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `servico`
--

DROP TABLE IF EXISTS `servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servico` (
  `id_servico` int NOT NULL AUTO_INCREMENT,
  `nome_servico` varchar(50) NOT NULL,
  `valor_servico` decimal(6,2) NOT NULL,
  `tempo` time NOT NULL,
  `imagem` varchar(30) DEFAULT NULL,
  `tipo` varchar(20) NOT NULL,
  `forma_pagto` varchar(30) NOT NULL,
  PRIMARY KEY (`id_servico`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico`
--

LOCK TABLES `servico` WRITE;
/*!40000 ALTER TABLE `servico` DISABLE KEYS */;
INSERT INTO `servico` VALUES (1,'Aplicação de Fibra de Vidro',210.00,'02:30:00','Imagem 1','Unha','Débito, Crédito,Pix e Dinheiro'),(2,'Manutenção de Fibra de Vidro',110.00,'01:30:00','Imagem 2','Unha','Débito, Crédito,Pix e Dinheiro'),(3,'Manutenção (de outra Profissional)',140.00,'02:30:00','Imagem 3','Unha','Débito, Crédito,Pix e Dinheiro'),(4,'Concerto de Unha',10.00,'00:15:00','Imagem 4','Unha','Débito, Crédito,Pix e Dinheiro'),(5,'Blindagem',80.00,'01:00:00','Imagem 5','Unha','Débito, Crédito,Pix e Dinheiro'),(6,'Banho de Gel ',110.00,'01:30:00','Imagem 6','Unha','Débito, Crédito,Pix e Dinheiro'),(7,'Banho de Fibra',110.00,'01:30:00','Imagem 7','Unha','Débito, Crédito,Pix e Dinheiro'),(8,'Esmaltação em Gel',60.00,'01:00:00','Imagem 8','Unha','Débito, Crédito,Pix e Dinheiro'),(9,'Remoção',80.00,'00:40:00','Imagem 9','Unha','Débito, Crédito,Pix e Dinheiro'),(10,'Baby Boomer',70.00,'00:40:00','Imagem 10','Unha','Débito, Crédito,Pix e Dinheiro'),(11,'Decoração Completa',50.00,'00:30:00','Imagem 12','Unha','Débito, Crédito,Pix e Dinheiro'),(12,'Decoração Individual',10.00,'00:10:00','Imagem 13','Unha','Débito, Crédito,Pix e Dinheiro'),(13,'Diminuição de comprimento',20.00,'00:30:00','Imagem 14','Unha','Débito, Crédito,Pix e Dinheiro'),(14,'Limpeza da Unha Natural',20.00,'00:30:00','Imagem 15','Unha','Débito, Crédito,Pix e Dinheiro'),(15,'Troca de Formato (Reposição de Fibra)',50.00,'00:30:00','Imagem 16','Unha','Débito, Crédito,Pix e Dinheiro'),(16,'Massagem Relaxante',90.00,'01:15:00','Imagem 17','Estética','Débito, Crédito,Pix e Dinheiro'),(17,'Drenagem Linfática',90.00,'01:15:00','Imagem 18','Estética','Débito, Crédito,Pix e Dinheiro'),(18,'Limpeza de Pele',90.00,'01:30:00','Imagem 19','Estética','Débito, Crédito,Pix e Dinheiro');
/*!40000 ALTER TABLE `servico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-14 14:39:22
