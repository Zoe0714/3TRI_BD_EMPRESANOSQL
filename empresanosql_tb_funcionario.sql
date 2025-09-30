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
-- Table structure for table `tb_funcionario`
--

DROP TABLE IF EXISTS `tb_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_funcionario` (
  `CPF` varchar(11) NOT NULL,
  `DATA_NASCIMENTO` date NOT NULL,
  `PRIMEIRO_NOME` varchar(100) NOT NULL,
  `NOME_MEIO` varchar(100) NOT NULL,
  `ULTIMO_NOME` varchar(100) NOT NULL,
  `ENDERECO` varchar(250) NOT NULL,
  `SALARIO` double NOT NULL,
  `SEXO` varchar(1) NOT NULL,
  `CPF_SUPERVISOR` varchar(11) NOT NULL,
  `NUMERO_DEPARTAMENTO` int NOT NULL,
  PRIMARY KEY (`CPF`),
  KEY `tb_funcionario_tb_funcionario_fk` (`CPF_SUPERVISOR`),
  KEY `tb_departamento_tb_funcionario_fk` (`NUMERO_DEPARTAMENTO`),
  CONSTRAINT `tb_departamento_tb_funcionario_fk` FOREIGN KEY (`NUMERO_DEPARTAMENTO`) REFERENCES `tb_departamento` (`NUMERO_DEPARTAMENTO`),
  CONSTRAINT `tb_funcionario_tb_funcionario_fk` FOREIGN KEY (`CPF_SUPERVISOR`) REFERENCES `tb_funcionario` (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_funcionario`
--

LOCK TABLES `tb_funcionario` WRITE;
/*!40000 ALTER TABLE `tb_funcionario` DISABLE KEYS */;
INSERT INTO `tb_funcionario` VALUES ('12345678966','1965-09-01','João','B','Silva','Rua das Flores 751 São Paulo SP',30000,'M','33344555587',5),('33344555587','1955-08-12','Fernando','T','Wong','Rua da Lapa 34 São Paulo SP',40000,'M','88866555576',5),('44111555587','1984-07-15','Ubiratan','V','Teixiera','Rua Rodrigues Alves 771 Rio de Janeiro RJ',31000,'M','88866555576',5),('44222555587','1978-07-15','Cláudia','G','Martinez','Rua 9 de Julho 800 São Paulo SP',36000,'F','88866555576',5),('44333555587','1977-07-15','Marcelo','K','Souza','Rua Abelardo Barbosa 412 São Paulo SP',34000,'M','88866555576',5),('44444555587','1981-08-12','Fatima','T','Lux','Rua das Alamedas 39 São Paulo SP',38000,'F','88866555576',5),('44777555587','1984-07-15','Tonico','K','Pedrosa','Rua Dos Invalidos 55 Rio de Janeiro RJ',18000,'M','88866555576',5),('44888555587','1989-07-15','Ruth','L','Motta','Rua das Palmeiras 99 Rio de Janeiro RJ',19000,'F','88866555576',5),('45345345376','1972-07-31','Joice','A','Leite','Av. Lucas Obes 74 São Paulo SP',25000,'F','33344555587',5),('55599922122','1977-01-15','Rosa','L','Tavarez','Rua Oliva de Sousa 998 Piracicaba SP',41000,'F','33344555587',5),('66688444476','1962-09-15','Ronaldo','K','Lima','Rua Rebouças 65 Piracicaba SP',38000,'M','33344555587',5),('66699922122','1982-12-15','Juliana','T','Vinil','Rua Cartagena 32 Piracicaba SP',12000,'F','33344555587',5),('77799922122','1969-07-15','Maria','P','Costa','Rua Aribancataiu 44 Piracicaba SP',39000,'F','33344555587',5),('88866555576','1937-11-10','Jorge','E','Brito','Rua do Horto 35 Sáo Paulo SP',55000,'M','',1),('98722332168','1989-06-20','Priscila','K','Grill','Rua Mauricio de Nassau 80 São Paulo SP',18000,'F','88866555576',4),('98733332168','1959-06-20','Lais','P','Souza','Av Amaro de Macedo 91 Santo André SP',41000,'F','88866555576',4),('98743232168','1991-06-20','Jaime','T','Pereira','Rua Comendador Soares 45 São Paulo SP',19000,'M','88866555576',4),('98765432168','1941-06-20','Jeniffer','S','Souza','Av Arthur de Lima 54 Santo André',43000,'F','88866555576',4),('98798798733','1969-03-29','André','V','Pereira','Rua Timbira 35 São Paulo SP',25000,'M','98765432168',4),('99965555667','1971-01-19','Tulio','R','Machado','Rua Acuarana 91 Rio de Janeiro RJ',22000,'M','98765432168',4),('99966666667','1970-01-19','Cosme','G','Pimenta','Rua Itibiri 45 Rio de Janeiro RJ',18000,'M','98765432168',4),('99968855667','1975-01-19','Marcia','O','Andrada','Rua Cosme e Damião 453 Rio de Janeiro RJ',22000,'F','98765432168',4),('99988666667','1967-01-19','Marcos','P','VillaReal','Rua Aracaju 99 Rio de Janeiro RJ',22000,'M','98765432168',4),('99988777767','1968-01-19','Alice','J','Zelaya','Rua Souza Lima 35 Curitiba PR',25000,'F','98765432168',4);
/*!40000 ALTER TABLE `tb_funcionario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-30  9:51:44
