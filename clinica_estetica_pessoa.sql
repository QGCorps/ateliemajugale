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
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `id_pessoa` int NOT NULL AUTO_INCREMENT,
  `nome_pessoa` varchar(50) NOT NULL,
  `telefone` bigint NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `bairro` varchar(25) NOT NULL,
  `complemento` varchar(60) DEFAULT NULL,
  `cidade` varchar(50) NOT NULL,
  `cpf` bigint DEFAULT NULL,
  `data_nascimento` varchar(20) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `observacao` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (1,'Ana Carolina Teixeira Reis',11958249651,'Rua Gonçalves Dias, 2305','Jardim Primavera','','Araraquara',441834948,'28-06-1994','cliente',''),(2,'Bruna Cardosa Brasil de Souza',16988016608,'Avenida Luiz Raia, 472','Vila Sucanosa','','Araraquara',36859371897,'10-03-1988','cliente',''),(3,'Charlene Ribeiro Cunha',16997893111,'Avenida Irmã Antonia de Arruda Camargo, 60','','Araraquara','Jardim Vale das Rosas',29619049861,'12-10-1981','cliente',''),(4,'Cleusa Montoro Stein',16997827881,'Avenida Pernanbuco, 336','Jardim Brasil','','Araraquara',27835371847,'15-04-1963','cliente',''),(5,'Cristiane Caetano',16997127056,'Avenida Doutor Miguel Couto, 122','Jardim Imperador','','Araraquara',24593411807,'28-02-1977','cliente',''),(6,'Danielli Brasil Alves Pires',16988647620,'Avenida Dom Carlos Carmello, 371','Vila Sucanosa','bloco 3, apartament 7','Araraquara',36859371897,'10-03-1988','cliente',''),(7,'Francieli Liboni Da Silva',16996427447,'Rua Zenaide Volpe Abjaudi, 143','São José','','Américo Brasiliense',41293001805,'15-06-1992','cliente',''),(8,'Giovana Carolina Da Silva',16997514154,'Rua Bento Aranha Do Amaral, 13','Vale do Sol','','Araraquara',46356742828,'26-11-1997','cliente','');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
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
