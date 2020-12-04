-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Dez-2020 às 21:29
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.2.34

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
-- Estrutura da tabela `cargo`
--

CREATE TABLE `cargo` (
  `codCargo` int(11) NOT NULL,
  `cargo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cargo`
--

INSERT INTO `cargo` (`codCargo`, `cargo`) VALUES
(1, 'Professor'),
(2, 'Diretor(a)'),
(3, 'Coord Info'),
(4, 'Coordenador(a)'),
(5, 'Bibliotecária'),
(6, 'Coord Bd'),
(7, 'Secretario(a)');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargodofuncionario`
--

CREATE TABLE `cargodofuncionario` (
  `codFunc` int(11) NOT NULL,
  `codCargo` int(11) NOT NULL,
  `dataEntrada` date NOT NULL,
  `dataSaida` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cargodofuncionario`
--

INSERT INTO `cargodofuncionario` (`codFunc`, `codCargo`, `dataEntrada`, `dataSaida`) VALUES
(1, 1, '2019-06-12', NULL),
(2, 1, '2014-08-04', NULL),
(4, 1, '2010-05-07', NULL),
(3, 1, '2012-09-04', NULL),
(6, 4, '2016-11-20', NULL),
(7, 3, '0000-00-00', NULL),
(5, 2, '2016-11-30', NULL),
(6, 4, '2016-11-20', NULL),
(7, 3, '2004-04-20', NULL),
(5, 2, '2016-11-30', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `codFuncionario` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `dataEntrada` date NOT NULL,
  `dataSaida` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`codFuncionario`, `nome`, `dataEntrada`, `dataSaida`) VALUES
(1, 'Lucas Munhoz', '2019-06-12', NULL),
(2, 'Pamela', '2014-08-04', NULL),
(3, 'CintIncrivel', '2012-10-07', NULL),
(4, 'Andershow', '2010-06-10', NULL),
(5, 'Celia', '2016-11-20', NULL),
(6, 'Agda', '2006-11-05', NULL),
(7, 'Carlão', '2004-08-10', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`codCargo`);

--
-- Índices para tabela `cargodofuncionario`
--
ALTER TABLE `cargodofuncionario`
  ADD KEY `codFunc` (`codFunc`),
  ADD KEY `codCargo` (`codCargo`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`codFuncionario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cargo`
--
ALTER TABLE `cargo`
  MODIFY `codCargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `codFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cargodofuncionario`
--
ALTER TABLE `cargodofuncionario`
  ADD CONSTRAINT `cargodofuncionario_ibfk_1` FOREIGN KEY (`codFunc`) REFERENCES `funcionario` (`codFuncionario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cargodofuncionario_ibfk_2` FOREIGN KEY (`codCargo`) REFERENCES `cargo` (`codCargo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
