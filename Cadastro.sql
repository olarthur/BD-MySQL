CREATE DATABASE  IF NOT EXISTS `cadastro`;
USE `cadastro`;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE `cursos` (
  `idcurso` int NOT NULL,
  `nome` varchar(30) NOT NULL,
  `descricao` text,
  `carga` int unsigned DEFAULT NULL,
  `totaulas` int unsigned DEFAULT NULL,
  `ano` year DEFAULT '2024',
  PRIMARY KEY (`idcurso`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;

INSERT INTO `cursos` VALUES (1,'HTML4','Curso de HTML5',40,37,2014),
(2,'Algoritimos','Lógica de Programaçao',20,15,2014),
(3,'Photoshop','Dicas de Photoshop CC',10,8,2014),
(4,'PGP','Curso de PHP para iniciantes',40,20,2010),
(5,'Jarva','Introdução a linguagem Java',10,29,2000),
(6,'MySQL','Banco de Dados MySQL',30,15,2016),
(7,'Word','Curso completo de Word',40,30,2016),
(8,'Sapateado','Dança Ritmica',40,30,2018),
(9,'Cozinha Árabe','Aprenda a fazer Kibe',40,30,2018),
(10,'Youtube','Ganhar inscritos',5,2,2018);

UNLOCK TABLES;

--
-- Table structure for table `meliantes`
--

DROP TABLE IF EXISTS `meliantes`;

CREATE TABLE `meliantes` (
  `codigo` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `prof` varchar(20) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `meliantes`
--

LOCK TABLES `meliantes` WRITE;

INSERT INTO `meliantes` VALUES (NULL,1,'Bauman',NULL,'2004-01-10','M',75.50,1.76,'Brasil'),(NULL,2,'Platão',NULL,'1904-01-10','M',85.30,1.86,'Greece'),(NULL,3,'Kafka',NULL,'1804-01-10','M',79.70,1.81,'Brasil'),(NULL,4,'Aristoteles',NULL,'1704-01-10','M',81.90,1.85,'Germany'),(NULL,8,'Alighieri',NULL,'1604-01-10','M',78.20,1.73,'Italy'),(NULL,9,'Shakespeare',NULL,'1650-01-10','M',73.20,1.77,'England'),(NULL,10,'Homero',NULL,'1683-01-10','M',87.00,1.79,'France');

UNLOCK TABLES;

