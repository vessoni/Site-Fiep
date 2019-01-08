-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 08-Jan-2019 às 18:39
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `site`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`idadmin`, `login`, `senha`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `banner`
--

CREATE TABLE `banner` (
  `idbanner` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `caminho` varchar(45) DEFAULT NULL,
  `ativo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `banner`
--

INSERT INTO `banner` (`idbanner`, `nome`, `caminho`, `ativo`) VALUES
(0, 'Teste', 'cms.png', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `ativo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nome`, `descricao`, `ativo`) VALUES
(1, 'teste1', NULL, '1'),
(2, 'Categoria2 ', NULL, '1'),
(3, 'Teste', '<p>12312312&nbsp;</p>\r\n\r\n<figure class=\"easyi', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagens_categoria`
--

CREATE TABLE `imagens_categoria` (
  `idimagens_categoria` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `caminho` varchar(45) DEFAULT NULL,
  `ativo` varchar(45) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `idcategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagens_tipo`
--

CREATE TABLE `imagens_tipo` (
  `idimagens_subcategoria` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `caminho` varchar(45) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `ativo` varchar(45) DEFAULT NULL,
  `tipo_idtipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo`
--

CREATE TABLE `tipo` (
  `idtipo` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `ativo` varchar(45) DEFAULT NULL,
  `categoria_idcategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo`
--

INSERT INTO `tipo` (`idtipo`, `nome`, `descricao`, `ativo`, `categoria_idcategoria`) VALUES
(1, '123123', '123', '1', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`idbanner`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indexes for table `imagens_categoria`
--
ALTER TABLE `imagens_categoria`
  ADD PRIMARY KEY (`idimagens_categoria`),
  ADD KEY `fk_imagens_categoria_categoria_idx` (`idcategoria`);

--
-- Indexes for table `imagens_tipo`
--
ALTER TABLE `imagens_tipo`
  ADD PRIMARY KEY (`idimagens_subcategoria`),
  ADD KEY `fk_imagens_subcategoria_subCategoria1_idx` (`tipo_idtipo`);

--
-- Indexes for table `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`idtipo`),
  ADD KEY `fk_subCategoria_categoria1_idx` (`categoria_idcategoria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `imagens_categoria`
--
ALTER TABLE `imagens_categoria`
  MODIFY `idimagens_categoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imagens_tipo`
--
ALTER TABLE `imagens_tipo`
  MODIFY `idimagens_subcategoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tipo`
--
ALTER TABLE `tipo`
  MODIFY `idtipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `imagens_categoria`
--
ALTER TABLE `imagens_categoria`
  ADD CONSTRAINT `fk_imagens_categoria_categoria` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `imagens_tipo`
--
ALTER TABLE `imagens_tipo`
  ADD CONSTRAINT `fk_imagens_subcategoria_subCategoria1` FOREIGN KEY (`tipo_idtipo`) REFERENCES `tipo` (`idtipo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tipo`
--
ALTER TABLE `tipo`
  ADD CONSTRAINT `fk_subCategoria_categoria1` FOREIGN KEY (`categoria_idcategoria`) REFERENCES `categoria` (`idcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
