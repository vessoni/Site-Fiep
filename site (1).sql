-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 11-Jan-2019 às 19:26
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
(1, 'admin', '0192023a7bbd73250516f069df18b500');

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
(2, 'Banner 1 ', 'slider-bg1.jpg', '1'),
(3, 'Banner 2', 'slider-bg3.jpg', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `descricao` text,
  `ativo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nome`, `descricao`, `ativo`) VALUES
(1, 'Fiep', '<p>Sobre - Fiep</p>', '1'),
(2, 'Eventos', '<p>About - Eventos</p>', '1'),
(3, 'Ações', '', '1'),
(4, 'Destaques', '<p>About - Destaques</p>', '1'),
(5, 'Cursos', '<p>About - Cursos</p>', '1');

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
  `descricao` text,
  `icon` varchar(100) NOT NULL,
  `img_destaque` varchar(100) NOT NULL,
  `ativo` varchar(45) DEFAULT NULL,
  `categoria_idcategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo`
--

INSERT INTO `tipo` (`idtipo`, `nome`, `descricao`, `icon`, `img_destaque`, `ativo`, `categoria_idcategoria`) VALUES
(1, 'Quem Somos?', '<p>About quem somos</p>', 'icon-picons-earth', '', '1', 1),
(2, 'Missão', '<p>About&nbsp; - Missão</p>', 'icon-picons-rocket', '', '1', 1),
(3, 'Objetivos', '<p>About - Objetivos</p>', 'icon-picons-bulb', '', '1', 1),
(4, 'Jogo Beneficente ', '<p><img src=\"/static/upload/images/0.88529800 1547229693-jogo-gremio-548x342.jpg\" class=\"note-float-right\" style=\"float: right;\"><span style=\"font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(232, 235, 237);\">Dia 11/03/17 o Delegado Regional da FIEP-RS, o professor Everton Deiques foi convidado pelo ex atleta Brandão da Base dos anos 80 do Grêmio e hoje profissional de Educação Fisica, para representar a federação em um jogo beneficente pelo Grêmio em Tramandaí. Na oportunidade foi convidado também o Delegado Adjunto Paulo Lopes, porém o mesmo não pode comparecer.&nbsp;</span><br style=\"font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(232, 235, 237);\"><span style=\"font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(232, 235, 237);\">O objetivo do jogo era arrecadar alimentos para famílias carentes do litoral gaúcho.&nbsp;</span><br style=\"font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(232, 235, 237);\"><span style=\"font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(232, 235, 237);\">Diversos ex-atletas participaram entre eles Choco do futsal, Danrlei ex-goleiro e Nildo campeão da Copa do Brasil em 1994.&nbsp;</span></p><p><span style=\"font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(232, 235, 237);\"><br></span><br></p>', '', '0.88529800 1547229693-jogo-gremio-548x342.jpg', '1', 3),
(5, 'Teste 2', '<p>Teste 2</p>', '', '0.88529800 1547229693-jogo-gremio-548x342.jpg', '1', 3),
(6, 'Teste 3', 'Teste 3', '', '', '0', 1),
(7, 'teste 3', '<p>teste 3</p>', '', '0.88529800 1547229693-jogo-gremio-548x342.jpg', '1', 3),
(8, 'teste 4', '<p>Teste 4</p>', '', '', '0', 1),
(9, 'teste 4', '<p>teste 4</p>', '', '0.88529800 1547229693-jogo-gremio-548x342.jpg', '1', 3),
(10, 'teste 1', '', '', '', '0', 1),
(11, 'teste 2', '<p>teste 2</p>', '', '', '0', 1);

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
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `idbanner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `idtipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
