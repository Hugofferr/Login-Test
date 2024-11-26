-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.24-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para mercado
CREATE DATABASE IF NOT EXISTS `mercado` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `mercado`;

-- Copiando estrutura para tabela mercado.produto
CREATE TABLE IF NOT EXISTS `produto` (
  `id_prod` int(20) NOT NULL,
  `nome_prod` varchar(50) NOT NULL,
  `preco_prod` decimal(5,2) DEFAULT 0.00,
  `estoque_prod` int(10) DEFAULT 0,
  `unid_medida` varchar(5) DEFAULT NULL,
  `desconto` int(10) DEFAULT NULL,
  `validade` date DEFAULT NULL,
  PRIMARY KEY (`id_prod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela mercado.produto: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela mercado.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `senha` varchar(5) NOT NULL,
  `permissao` varchar(1) NOT NULL,
  `cpf` varchar(50) DEFAULT NULL,
  `salario_220h` decimal(7,2) DEFAULT NULL,
  `hrs_trabalhadas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf` (`cpf`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela mercado.usuario: ~2 rows (aproximadamente)
INSERT INTO `usuario` (`id`, `nome`, `senha`, `permissao`, `cpf`, `salario_220h`, `hrs_trabalhadas`) VALUES
	(4, 'Mateus', '123', 'A', NULL, NULL, NULL),
	(5, 'Katiara', 'abc', 'U', NULL, NULL, NULL);

-- Copiando estrutura para tabela mercado.vendas
CREATE TABLE IF NOT EXISTS `vendas` (
  `id_pedidos` int(11) NOT NULL AUTO_INCREMENT,
  `produtos` int(11) NOT NULL,
  `data_pedido` date NOT NULL,
  `qtd_pedido` int(50) NOT NULL,
  `valor_total` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_pedidos`),
  KEY `FK2_produto` (`produtos`),
  CONSTRAINT `FK2_produto` FOREIGN KEY (`produtos`) REFERENCES `produto` (`id_prod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela mercado.vendas: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
