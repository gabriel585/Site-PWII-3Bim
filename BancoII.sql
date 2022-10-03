-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.7.33 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para pwii
CREATE DATABASE IF NOT EXISTS `pwii` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `pwii`;

-- Copiando estrutura para tabela pwii.adm
CREATE TABLE IF NOT EXISTS `adm` (
  `Email_adm` varchar(255) NOT NULL,
  `Senha_adm` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Email_adm`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela pwii.adm: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `adm` DISABLE KEYS */;
INSERT INTO `adm` (`Email_adm`, `Senha_adm`) VALUES
	('ADM@gmail', '12');
/*!40000 ALTER TABLE `adm` ENABLE KEYS */;

-- Copiando estrutura para tabela pwii.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `Estado` varchar(255) DEFAULT NULL,
  `CEP` varchar(12) DEFAULT NULL,
  `Telefone` varchar(14) DEFAULT NULL,
  `Endereco` varchar(255) DEFAULT NULL,
  `Email_user` varchar(255) NOT NULL,
  `Senha_user` varchar(255) DEFAULT NULL,
  `CPF` varchar(14) DEFAULT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `Nome_User` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Email_user`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela pwii.clientes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`Estado`, `CEP`, `Telefone`, `Endereco`, `Email_user`, `Senha_user`, `CPF`, `Nome`, `Nome_User`) VALUES
	(NULL, NULL, NULL, NULL, 'g@gmail', '123', NULL, NULL, NULL);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

-- Copiando estrutura para tabela pwii.produto
CREATE TABLE IF NOT EXISTS `produto` (
  `Id_Produto` int(15) NOT NULL,
  `Qt_Prod` int(15) DEFAULT NULL,
  `Tamanho_Prod` varchar(10) DEFAULT NULL,
  `Nome_Prod` varchar(255) DEFAULT NULL,
  `Valor` varchar(11) DEFAULT NULL,
  `Descrição` varchar(255) DEFAULT NULL,
  `Id_Tipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Produto`),
  KEY `tipo` (`Id_Tipo`),
  CONSTRAINT `tipo` FOREIGN KEY (`Id_Tipo`) REFERENCES `tipo` (`Id_Tipo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela pwii.produto: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` (`Id_Produto`, `Qt_Prod`, `Tamanho_Prod`, `Nome_Prod`, `Valor`, `Descrição`, `Id_Tipo`) VALUES
	(1212, 15, '15x13x15', 'Placa Mãe Asus', '130,00', 'Placa Mãe LGA 1155, DDR3', NULL),
	(5858, 58, '15*25*65', 'Jogo', '15,25', 'Jogo para Xbox', NULL),
	(121384, 500, '15*25*65', 'Placa de VÃ­deo Nvidea', '1500,25', 'placa para pc', NULL),
	(123123, 58, '15*25*65', 'gh', '123', 'Jogo para Xbox', NULL);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;

-- Copiando estrutura para tabela pwii.tipo
CREATE TABLE IF NOT EXISTS `tipo` (
  `Id_Tipo` int(11) NOT NULL,
  `Tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela pwii.tipo: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
INSERT INTO `tipo` (`Id_Tipo`, `Tipo`) VALUES
	(41616, 'Processador'),
	(464861, 'Placa Mãe');
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
