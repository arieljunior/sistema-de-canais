CREATE DATABASE  IF NOT EXISTS `at` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `at`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: at
-- ------------------------------------------------------
-- Server version	5.7.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `canal`
--

DROP TABLE IF EXISTS `canal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `canal` (
  `idCanal` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `descricao` text,
  PRIMARY KEY (`idCanal`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canal`
--

LOCK TABLES `canal` WRITE;
/*!40000 ALTER TABLE `canal` DISABLE KEYS */;
INSERT INTO `canal` VALUES (11,'ESPN SPORTS','Variedades de esportes para toda a família'),(12,'CARTOON NETWORK','Desenhos e filmes animados para a família toda.'),(13,'TELECINE PIPOCA','Filmes dublados de diversos generos para família.');
/*!40000 ALTER TABLE `canal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `nome` varchar(45) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `sobrenome` varchar(45) DEFAULT NULL,
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('Ariel','12345678952','Rio de Janeiro, RJ - Ilha do governador','Junior',1);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programa`
--

DROP TABLE IF EXISTS `programa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programa` (
  `idPrograma` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `descricao` text,
  `idCanal` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPrograma`),
  KEY `idCanal` (`idCanal`),
  CONSTRAINT `programa_ibfk_1` FOREIGN KEY (`idCanal`) REFERENCES `canal` (`idCanal`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programa`
--

LOCK TABLES `programa` WRITE;
/*!40000 ALTER TABLE `programa` DISABLE KEYS */;
INSERT INTO `programa` VALUES (1,'NBA','Partidas de basquetes entre grandes times de todo mundo',11),(2,'Futebol','Partidas de Futebol entre grandes times de todo mundo',11),(3,'UFC','Lutas entre profissionais de artes marciais de diferentes pesos e alturas',11),(4,'Tom & Jerry','Divirta-se com as aventuras e perseguições da mais famosa dupla de gato e rato, Tom e Jerry.',12),(5,'Coragem o Cão Corvarde','Divirta-se com as aventuras de um simpático cãozinho que sempre salva sua família de monstros',12),(6,'Hora de Aventura','Divirta-se com a história de Finn e Jake se metendo em várias aventuras.',12),(7,'Marley e Eu','John (Owen Wilson) e Jennifer Grogan (Jennifer Aniston) casaram-se recentemente e decidiram começar nova vida em West Palm Beach, na Flórida. Lá, eles trabalham em jornais concorrentes, compram um imóvel e enfrentam os desafios de uma vida de casal. Indeciso sobre sua capacidade em ser pai, John busca o conselho de seu colega Sebastian (Eric Dane), que sugere que compre um cachorro para a esposa. John aceita a sugestão e adota Marley, um labrador de 5 kg que logo se transforma em um grande cachorro de 45 kg, o que torna a casa deles um caos.',13),(8,'Os Intocáveis','Philippe (François Cluzet) é um aristocrata rico que, após sofrer um grave acidente, fica tetraplégico. Precisando de um assistente, ele decide contratar Driss (Omar Sy), um jovem problemático que não tem a menor experiência em cuidar de pessoas no seu estado. Aos poucos ele aprende a função, apesar das diversas gafes que comete. Philippe, por sua vez, se afeiçoa cada vez mais a Driss por ele não tratá-lo como um pobre coitado. Aos poucos a amizade entre eles se estabele, com cada um conhecendo melhor o mundo do outro.',13),(9,'Operação Big Hero','Hiro Hamada é um garoto prodígio que, aos 13 anos, criou um poderoso robô para participar de lutas clandestinas, onde tenta ganhar um bom dinheiro. Seu irmão, Tadashi, deseja atraí-lo para algo mais útil e resolve levá-lo até o laboratório onde trabalha, que está repleto de invenções. Hiro conhece os amigos de Tadashi e logo se interessa em estudar ali. Para tanto ele precisa fazer a apresentação de uma grande invenção, de forma a convencer o professor Callahan a matriculá-lo. Entretanto, as coisas não saem como ele imaginava e Hiro, deprimido, encontra auxílio inesperado através do robô inflável Baymax, criado pelo irmão.',13);
/*!40000 ALTER TABLE `programa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-08 23:00:45
