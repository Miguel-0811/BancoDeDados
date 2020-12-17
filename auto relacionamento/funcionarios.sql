-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Dez-2020 às 02:52
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `escola`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `codfuncionario` int(11) NOT NULL,
  `nomefuncionario` varchar(255) NOT NULL,
  `coordinfo` int(11) DEFAULT NULL,
  `coordensinomedio` int(11) DEFAULT NULL,
  `coordrh` int(11) DEFAULT NULL,
  `coordpedag` int(11) DEFAULT NULL,
  `coordbibli` int(11) DEFAULT NULL,
  `diretor` int(11) DEFAULT NULL,
  `coordadm` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`codfuncionario`, `nomefuncionario`, `coordinfo`, `coordensinomedio`, `coordrh`, `coordpedag`, `coordbibli`, `diretor`, `coordadm`) VALUES
(1, 'Fabiana', 1, 2, 3, 5, 6, 4, 3),
(2, 'Célia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Maria', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Eduarda', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'José', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Cleyton', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`codfuncionario`),
  ADD KEY `codfuncionario` (`codfuncionario`),
  ADD KEY `codfuncionario_2` (`codfuncionario`),
  ADD KEY `coordinfo` (`coordinfo`),
  ADD KEY `coordensinomedio` (`coordensinomedio`),
  ADD KEY `coordrh` (`coordrh`),
  ADD KEY `coordpedag` (`coordpedag`),
  ADD KEY `coordbibli` (`coordbibli`),
  ADD KEY `diretor` (`diretor`),
  ADD KEY `coordadm` (`coordadm`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `codfuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD CONSTRAINT `funcionarios_ibfk_1` FOREIGN KEY (`coordinfo`) REFERENCES `funcionarios` (`codfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `funcionarios_ibfk_2` FOREIGN KEY (`coordensinomedio`) REFERENCES `funcionarios` (`codfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `funcionarios_ibfk_3` FOREIGN KEY (`coordrh`) REFERENCES `funcionarios` (`codfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `funcionarios_ibfk_4` FOREIGN KEY (`coordpedag`) REFERENCES `funcionarios` (`codfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `funcionarios_ibfk_5` FOREIGN KEY (`coordbibli`) REFERENCES `funcionarios` (`codfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `funcionarios_ibfk_6` FOREIGN KEY (`diretor`) REFERENCES `funcionarios` (`codfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `funcionarios_ibfk_7` FOREIGN KEY (`coordadm`) REFERENCES `funcionarios` (`codfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
