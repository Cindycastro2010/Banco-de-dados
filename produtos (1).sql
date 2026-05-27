-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Maio-2026 às 21:13
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `produtos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idproduto` int(11) NOT NULL,
  `produto` varchar(200) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `qtd` int(11) NOT NULL,
  `data` date NOT NULL,
  `ativo` bit(1) NOT NULL,
  `idcat` int(11) DEFAULT NULL,
  `observacao` varchar(255) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idproduto`, `produto`, `preco`, `qtd`, `data`, `ativo`, `idcat`, `observacao`, `marca`) VALUES
(1, 'Acém peça', '39.99', 50, '2026-05-13', b'1', 3, 'Sem gordura', NULL),
(2, 'Sabão em pó', '15.99', 30, '2026-05-13', b'1', 4, '', NULL),
(3, 'Ervilha', '5.56', 10, '2026-05-13', b'0', 1, '', NULL),
(4, 'Leite', '25.45', 40, '2026-05-13', b'1', 2, '', NULL),
(5, 'Sorvete 2L', '19.99', 60, '2026-05-26', b'1', 1, 'Gelado', 'Oggi'),
(6, 'salgadinho', '19.99', 60, '2026-05-26', b'1', 1, 'salgado', 'doritos'),
(7, 'chocolate', '12.75', 80, '2026-05-26', b'1', 3, 'barra ao leite', 'lacta'),
(8, 'biscoito', '6.90', 150, '2026-05-26', b'1', 4, 'recheado sabor chocolate', 'oreo'),
(9, 'suco', '7.25', 90, '2026-05-26', b'1', 2, 'suco de uva integral', 'del valle'),
(13, 'paçoca', '19.99', 60, '2026-05-26', b'1', 1, 'doce', 'paçoquita'),
(14, 'suco de uva', '19.99', 60, '2026-05-26', b'1', 1, 'uva integrau', 'del vale'),
(17, 'leite integral', '19.99', 60, '2026-05-26', b'1', 1, 'contem lactose', 'italac'),
(18, 'miojo', '3.99', 60, '2026-05-26', b'1', 1, 'cancerigeno', 'nissan');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idproduto`),
  ADD KEY `idcat` (`idcat`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`idcat`) REFERENCES `categoria` (`idcategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
