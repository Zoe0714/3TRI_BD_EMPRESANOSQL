-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: empresanosql
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `tb_dependente`
--

DROP TABLE IF EXISTS `tb_dependente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_dependente` (
  `CPF_FUNCIONARIO` varchar(11) NOT NULL,
  `NOME_DEPENDENTE` varchar(100) NOT NULL,
  `SEXO` varchar(1) NOT NULL,
  `DATA_NASCIMENTO` date NOT NULL,
  `PARENTESCO` varchar(50) NOT NULL,
  PRIMARY KEY (`CPF_FUNCIONARIO`,`NOME_DEPENDENTE`),
  CONSTRAINT `tb_funcionario_tb_dependente_fk` FOREIGN KEY (`CPF_FUNCIONARIO`) REFERENCES `tb_funcionario` (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_dependente`
--

LOCK TABLES `tb_dependente` WRITE;
/*!40000 ALTER TABLE `tb_dependente` DISABLE KEYS */;
INSERT INTO `tb_dependente` VALUES ('12345678966','Alicia','F','1988-12-30','Filha'),('12345678966','Elizabeth','F','1967-05-05','Esposa'),('12345678966','Michael','M','1988-04-01','Filho'),('33344555587','Alicia','F','1986-04-05','Filha'),('33344555587','Janaína','F','1958-05-03','Esposa'),('33344555587','Tiago','M','1983-10-25','Filho'),('44111555587','Joaquina','F','1986-12-07','Esposa'),('44222555587','Claudio','M','2007-12-21','Filho'),('44222555587','Juvenal','M','1977-03-12','Marido'),('44333555587','Katia','F','1979-11-12','Esposa'),('44333555587','Marcela','F','2003-11-12','Filha'),('44333555587','Maria','F','2005-11-12','Filha'),('44333555587','Rodrigo','M','2009-08-01','Filho'),('44444555587','Jonas','M','1981-06-14','Marido'),('44444555587','Orlando','M','2006-04-12','Filho'),('44777555587','Priscila','F','1991-04-02','Esposa'),('44888555587','Clecio','M','1988-05-04','Marido'),('55599922122','Clovis','M','1976-03-13','Marido'),('66699922122','Milton','M','1981-12-08','Marido'),('77799922122','Havelar','M','1993-12-12','Filho'),('77799922122','Marcio','M','1967-10-22','Marido'),('77799922122','Tulio','M','1992-06-17','Filho'),('98722332168','Rodinei','M','1987-10-22','Marido'),('98733332168','Cristina','F','2016-10-21','Neta'),('98733332168','Marcio','M','1957-10-22','Marido'),('98733332168','Rubens','M','1993-05-12','Filho'),('98733332168','Trauco','M','1992-12-11','Filho'),('98743232168','Hilda','F','2016-12-01','Filha'),('98743232168','Maria','F','1992-12-26','Esposa'),('98765432168','Antonio','M','1942-02-18','Marido'),('99965555667','Fátima','F','1977-12-26','Esposa'),('99965555667','Trauco','M','2001-10-25','Filho'),('99966666667','Marcela','F','2002-10-25','Filha'),('99966666667','Marcia','F','1970-09-26','Esposa'),('99966666667','Marcos','M','2006-08-18','Filho'),('99968855667','Claudio','M','1978-10-22','Marido'),('99968855667','Janaina','F','2005-10-11','Filha'),('99968855667','Tania','F','2007-06-12','Filha'),('99988666667','Katia','F','1973-12-26','Esposa'),('99988666667','Roberto','M','2002-10-25','Filho'),('99988666667','Rogerio','M','2003-12-18','Filho'),('99988666667','Ronaldo','M','2005-11-18','Filho');
/*!40000 ALTER TABLE `tb_dependente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-07  9:52:20
