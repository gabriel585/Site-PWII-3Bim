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
  `Email_user` varchar(255) NOT NULL,
  `Estado` varchar(255) DEFAULT NULL,
  `CEP` varchar(12) DEFAULT NULL,
  `Telefone` varchar(14) DEFAULT NULL,
  `Endereco` varchar(255) DEFAULT NULL,
  `Senha_user` varchar(255) DEFAULT NULL,
  `CPF` varchar(14) DEFAULT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `Nome_User` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Email_user`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela pwii.clientes: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`Email_user`, `Estado`, `CEP`, `Telefone`, `Endereco`, `Senha_user`, `CPF`, `Nome`, `Nome_User`) VALUES
	('anyfelix@gmail.com', 'San Francisco, CA', '3242332', '11 85644-1245', 'fdaffasfae', 'ISA', '64165465416', 'Viviane', 'Ga586'),
	('g@gmail', NULL, NULL, NULL, NULL, '123', NULL, NULL, NULL),
	('Gaga@gmail.coim', 'San Francisco, CA', '944894984974', '11 85644-1245', 'fadsfasfsaf', 'omelete85', '64165465416', 'Gabriel Felix ', 'Gabal');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

-- Copiando estrutura para tabela pwii.produto
CREATE TABLE IF NOT EXISTS `produto` (
  `Id_Produto` int(15) NOT NULL,
  `Qt_Prod` int(15) DEFAULT NULL,
  `Tamanho_Prod` varchar(10) DEFAULT NULL,
  `Nome_Prod` varchar(255) DEFAULT NULL,
  `Valor` varchar(11) DEFAULT NULL,
  `Descricao` varchar(255) DEFAULT NULL,
  `Tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Produto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela pwii.produto: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` (`Id_Produto`, `Qt_Prod`, `Tamanho_Prod`, `Nome_Prod`, `Valor`, `Descricao`, `Tipo`) VALUES
	(1212, 15, '15x13x15', 'Placa Mãe Asus', '130,00', 'Placa Mãe LGA 1155, DDR3', NULL),
	(5858, 58, '15*25*65', 'Jogo', '15,25', 'Jogo para Xbox', ''),
	(13321, 500, '15 mm', 'Processador I3 3220', '1500,25', 'Processador para I3 3220 3.8 GHZ para placa mÃ£e LGA 1155', 'png'),
	(58581, 800, '22 mm', 'Processador I3 3220', '85,25', 'Processador para I3 3220 3.8 GHZ para placa mÃ£e LGA 1155', 'png'),
	(121384, 500, '15*25*65', 'Placa de VÃ­deo Nvidea', '1500,25', 'placa para pc', 'png'),
	(123123, 58, '15*25*65', 'gh', '123', 'Jogo para Xbox', 'png'),
	(511303, 900, '13Cm x 8Cm', 'Fonte 500W', 'R$ 520,00', 'Fonte para computador', 'png'),
	(5858321, 800, '15 mm', 'Processador I3 3220', '85,25', 'Processador para I3 3220 3.8 GHZ para placa mÃ£e LGA 1155', 'png');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;

-- Copiando estrutura para tabela pwii.tipo
CREATE TABLE IF NOT EXISTS `tipo` (
  `Tipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela pwii.tipo: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
INSERT INTO `tipo` (`Tipo`) VALUES
	('Prcoessador');
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
