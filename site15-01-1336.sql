-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15-Jan-2019 às 17:35
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
  `frase1` varchar(50) NOT NULL,
  `ativo` varchar(45) DEFAULT NULL,
  `botao` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL,
  `frase2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `banner`
--

INSERT INTO `banner` (`idbanner`, `nome`, `caminho`, `frase1`, `ativo`, `botao`, `link`, `frase2`) VALUES
(2, 'Banner 1 ', 'slider-bg1.jpg', '', '0', '', '', ''),
(3, 'Banner 2', 'slider-bg3.jpg', '', '1', '', '', ''),
(4, 'Banner 3', 'slider-bg1.jpg', 'massa ultricies mi quis hendrerit', '1', 'Veja mais', 'http://localhost:8080/view/interna/id/9', ''),
(5, 'Teste', 'slider-bg3.jpg', 'massa ultricies mi quis hendrerit', '1', 'Veja mais', 'http://localhost:8080/view/interna/id/9', 'massa ultricies mi quis hendrerit <br> massa ultri');

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
(1, 'Fiep', '<p>Sobre - Fiep 123</p>', '1'),
(2, 'Eventos', '<p>About - Eventos</p>', '1'),
(3, 'Ações', '', '1'),
(4, 'Destaques', '<p>About - Destaques</p>', '1'),
(5, 'Cursos', '<p>About - Cursos</p>', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `footer`
--

CREATE TABLE `footer` (
  `idfooter` int(11) NOT NULL,
  `coluna1` varchar(220) DEFAULT NULL,
  `coluna2_titulo` varchar(45) DEFAULT NULL,
  `coluna2_descricao` varchar(150) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `ativo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `footer`
--

INSERT INTO `footer` (`idfooter`, `coluna1`, `coluna2_titulo`, `coluna2_descricao`, `endereco`, `telefone`, `email`, `ativo`) VALUES
(1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to m', 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', 'Centro educacional', '(45) 3576-8600', 'fiep@fiep.com', 1);

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
-- Estrutura da tabela `newsletter`
--

CREATE TABLE `newsletter` (
  `idnewsletter` int(11) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `ativo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tag`
--

CREATE TABLE `tag` (
  `idtag` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `ativo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo`
--

CREATE TABLE `tipo` (
  `idtipo` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `resumo` varchar(100) NOT NULL,
  `descricao` text,
  `icon` varchar(100) NOT NULL,
  `img_destaque` varchar(100) NOT NULL,
  `ativo` varchar(45) DEFAULT NULL,
  `categoria_idcategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo`
--

INSERT INTO `tipo` (`idtipo`, `nome`, `resumo`, `descricao`, `icon`, `img_destaque`, `ativo`, `categoria_idcategoria`) VALUES
(1, 'Objetivos', '1234', '<p><span style=\"color: rgb(122, 122, 122); font-family: Raleway, sans-serif; background-color: rgb(249, 249, 249);\">Objetivos</span><br></p>', 'icon-picons-earth', '0.43574900 1547506728-', '1', 1),
(2, 'Missão', '', '<p>About&nbsp; - Missão</p>', 'icon-picons-rocket', '', '1', 1),
(3, 'Quem Somos?', '', '<p>About - Quem somos?</p>', 'icon-picons-bulb', '0.73816400 1547506700-', '1', 1),
(4, 'Jogo Beneficente ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore', '<p><img src=\"/static/upload/images/0.88529800 1547229693-jogo-gremio-548x342.jpg\" class=\"note-float-right\" style=\"float: right;\"><span style=\"font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(232, 235, 237);\">Dia 11/03/17 o Delegado Regional da FIEP-RS, o professor Everton Deiques foi convidado pelo ex atleta Brandão da Base dos anos 80 do Grêmio e hoje profissional de Educação Fisica, para representar a federação em um jogo beneficente pelo Grêmio em Tramandaí. Na oportunidade foi convidado também o Delegado Adjunto Paulo Lopes, porém o mesmo não pode comparecer.&nbsp;</span><br style=\"font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(232, 235, 237);\"><span style=\"font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(232, 235, 237);\">O objetivo do jogo era arrecadar alimentos para famílias carentes do litoral gaúcho.&nbsp;</span><br style=\"font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(232, 235, 237);\"><span style=\"font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(232, 235, 237);\">Diversos ex-atletas participaram entre eles Choco do futsal, Danrlei ex-goleiro e Nildo campeão da Copa do Brasil em 1994.&nbsp;</span></p><p><span style=\"font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(232, 235, 237);\"><br></span><br></p>', '', '0.88529800 1547229693-jogo-gremio-548x342.jpg', '1', 3),
(5, 'Mudando a parada', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,', '<p>Mudando a parada</p>', '', '0.88529800 1547229693-jogo-gremio-548x342.jpg', '1', 3),
(6, 'Teste 3', '', 'Teste 3', '', '', '0', 1),
(7, 'teste 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore', '<p>teste 3</p>', '', '0.88529800 1547229693-jogo-gremio-548x342.jpg', '1', 3),
(8, 'teste 4', '', '<p>Teste 4</p>', '', '', '0', 1),
(9, 'teste 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore', '<p>teste 4</p>', '', '0.88529800 1547229693-jogo-gremio-548x342.jpg', '1', 3),
(10, 'teste 1', '', '', '', '', '0', 1),
(11, 'teste 2', '', '<p>teste 2</p>', '', '', '0', 1),
(12, '33º CONGRESSO INTERNACIONAL DE EDUCAÇÃO FÍSIC', 'Lorem ipsum dolor sit amet, consectetur cons', '<p>De 13 a 17/01/18, foi realizado, em Foz do Iguaçu no Paraná, mais um grande evento da FIEP. O já famoso congresso internacional.&nbsp;</p><p>Diversos gaúchos no evento, onde estavam presentes, ministrando cursos, cerimonial de abertura.&nbsp;</p><p>O momento solene importante foi a entrega da placa de homenagem ao CONFEF que o Delegado Regional concedeu em razão dos 20 anos de regulamentação pela nossa profissão.&nbsp;</p><p> </p><center><img src=\"/static/upload/images/0.21050800 1547317932-desenho.png\"></center><br><p></p>', '', '0.21050800 1547317932-desenho.png', '1', 4),
(13, 'DANÇA DE SALÃO EM PELOTAS COM MARCELO GRANGEI', 'Lorem ipsum dolor sit amet, consectetur cons', '<p><span style=\"font-size: 0.875rem;\">Logo após o almoço, Deiques e Grangeiro pegaram a estrada novamente, rumo a Pelotas. Após 280 km e 3h30min de viagem, foram recepcionadas pelas Divulgadoras Suelen Pedroso e Juliana Pereira que realizaram um ótimo trabalho atingindo em torno de 25 casais no hotel Curi.&nbsp;</span><br></p><p>A Delegacia ainda entregou uma lembrança as Divulgadoras pelo trabalho realizado no município.&nbsp;</p><p>Por volta das 21h, novamente Deiques e Grangeiro foram para estrada e desta vez foi para encarar 245 km por um período de 3h10min, pois já no outro dia de manhã, dia 21/05 domingo, haveria o Movimenta Canoas no município.&nbsp;</p><p><img src=\"/static/upload/images/0.00815800 1547318032-pelotas-2-777x626.jpg\"><br></p>', '', '0.00815800 1547318032-pelotas-2-777x626.jpg', '1', 4),
(14, '123123', 'Lorem ipsum dolor sit amet, consectetur cons', '<p>123123321</p>', '', '0.00815800 1547318032-pelotas-2-777x626.jpg', '1', 4),
(15, '21313', 'Lorem ipsum dolor sit amet, consectetur cons', '<p>123123</p>', '', '0.00815800 1547318032-pelotas-2-777x626.jpg', '1', 4),
(16, '213123123', 'Lorem ipsum dolor sit amet, consectetur cons', '<p>123123213123</p>', '', '0.00815800 1547318032-pelotas-2-777x626.jpg', '1', 4),
(17, 'Lorem ipsum dolor sit amet, consectetur adipi', 'Lorem ipsum dolor sit amet, consectetur cons', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br></p>', '', 'evento.jpg', '0', 1),
(18, 'Teste', 'Lorem ipsum dolor sit amet, consectetur cons', '<p><span style=\"font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Teste 21343</span><br></p>', '', '0.98422400 1547485163-Penguins.jpg', '1', 2),
(19, 'Lorem ipsum dolor sit amet, consectetur adipi', 'Lorem ipsum dolor sit amet, consectetur cons', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing eli</span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; font-size: 0.875rem;\">Lorem ipsum dolor sit amet, consectetur adipiscing eli</span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; font-size: 0.875rem;\">Lorem ipsum dolor sit amet, consectetur adipiscing eli</span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; font-size: 0.875rem;\">Lorem ipsum dolor sit amet, consectetur adipiscing eli</span><br></p>', '', 'evento.jpg', '1', 2),
(20, 'Lorem ipsum dolor sit amet, consectetur adipi', 'Lorem ipsum dolor sit amet, consectetur cons', '<p><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing eli</span><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify; font-size: 0.875rem;\">Lorem ipsum dolor sit amet, consectetur adipiscing eli</span><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify; font-size: 0.875rem;\">Lorem ipsum dolor sit amet, consectetur adipiscing eli</span><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify; font-size: 0.875rem;\">Lorem ipsum dolor sit amet, consectetur adipiscing eli</span><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify; font-size: 0.875rem;\">Lorem ipsum dolor sit amet, consectetur adipiscing eli</span><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify; font-size: 0.875rem;\">Lorem ipsum dolor sit amet, consectetur adipiscing eli</span><br></p>', '', '0.62667100 1547472104-Tulips.jpg', '1', 2),
(21, 'Lorem ipsum dolor sit amet, consectetur adipi', 'Lorem ipsum dolor sit amet, consectetur cons', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing eli</span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; font-size: 0.875rem;\">Lorem ipsum dolor sit amet, consectetur adipiscing eli</span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; font-size: 0.875rem;\">Lorem ipsum dolor sit amet, consectetur adipiscing eli</span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; font-size: 0.875rem;\">Lorem ipsum dolor sit amet, consectetur adipiscing eli</span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; font-size: 0.875rem;\">Lorem ipsum dolor sit amet, consectetur adipiscing eli</span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; font-size: 0.875rem;\">Lorem ipsum dolor sit amet, consectetur adipiscing eli</span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; font-size: 0.875rem;\">Lorem ipsum dolor sit amet, consectetur adipiscing eli</span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; font-size: 0.875rem;\">Lorem ipsum dolor sit amet, consectetur adipiscing eli</span><br></p>', '', 'evento.jpg', '1', 2),
(22, 'Destaque Teste', '', '', '', '', '0', 4),
(23, 'Destaque Teste', '', '  <div class=\"dark-wrapper\">\r\n    <div class=\"container inner\">\r\n      <div class=\"row\">\r\n        <div class=\"col-sm-8\">\r\n          <div class=\"owl-slider-wrapper\">\r\n            <div class=\"owl-portfolio-slider owl-carousel\">\r\n              <div class=\"item\"> <img src=\"style/images/art/ppi1.jpg\" alt=\"\"> </div>\r\n              <div class=\"item\"> <img src=\"style/images/art/ppi2.jpg\" alt=\"\"> </div>\r\n            </div>\r\n            <div class=\"owl-custom-nav\"> <a class=\"slider-prev\"></a> <a class=\"slider-next\"></a> </div>\r\n          </div>\r\n        </div>\r\n        <!-- /.col-sm-8 -->\r\n        <div class=\"col-sm-4 lp30\">\r\n          <h3>Project Details</h3>\r\n          <p> Maecenas sed diam eget risus varius blandit sit amet non magna. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec ullamcorper nulla non metus auctor fringilla. Integer posuere erat a ante.</p>\r\n          <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis.</p>\r\n          <div class=\"divide5\"></div>\r\n          <ul class=\"item-details\">\r\n            <li><span>Date:</span> 02 May 2013</li>\r\n            <li><span>Categories:</span> Illustration, Branding</li>\r\n            <li><span>Client:</span> Sit Commodo Sollicitudin</li>\r\n            <li><span>Link:</span> <a href=\"http://elemisfreebies.com\">http://elemisfreebies.com</a></li>\r\n          </ul>\r\n        </div>\r\n        <!-- /.col-sm-4 --> \r\n      </div>\r\n      <!-- /.row --> \r\n      \r\n    </div>\r\n    <!-- /.container --> \r\n  </div>', '', '', '0', 4),
(24, 'Destaques Teste', '', '  <div class=\"dark-wrapper\">\r\n    <div class=\"container inner\">\r\n      <div class=\"row\">\r\n        <div class=\"col-sm-8\">\r\n          <div class=\"owl-slider-wrapper\">\r\n            <div class=\"owl-portfolio-slider owl-carousel\">\r\n              <div class=\"item\"> <img src=\"http://localhost/static/slowave/style/images/art/ppi1.jpg\" alt=\"\"> </div>\r\n              <div class=\"item\"> <img src=\"http://localhost/static/slowave/style/images/art/ppi2.jpg\" alt=\"\"> </div>\r\n            </div>\r\n            <div class=\"owl-custom-nav\"> <a class=\"slider-prev\"></a> <a class=\"slider-next\"></a> </div>\r\n          </div>\r\n        </div>\r\n        <!-- /.col-sm-8 -->\r\n        <div class=\"col-sm-4 lp30\">\r\n          <h3>Project Details</h3>\r\n          <p> Maecenas sed diam eget risus varius blandit sit amet non magna. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec ullamcorper nulla non metus auctor fringilla. Integer posuere erat a ante.</p>\r\n          <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis.</p>\r\n          <div class=\"divide5\"></div>\r\n          <ul class=\"item-details\">\r\n            <li><span>Date:</span> 02 May 2013</li>\r\n            <li><span>Categories:</span> Illustration, Branding</li>\r\n            <li><span>Client:</span> Sit Commodo Sollicitudin</li>\r\n            <li><span>Link:</span> <a href=\"http://elemisfreebies.com\">http://elemisfreebies.com</a></li>\r\n          </ul>\r\n        </div>\r\n        <!-- /.col-sm-4 --> \r\n      </div>\r\n      <!-- /.row --> \r\n      \r\n    </div>\r\n    <!-- /.container --> \r\n  </div>', '', '0.07032300 1547491194-Koala.jpg', '1', 4);

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
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`idfooter`);

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
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`idnewsletter`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`idtag`);

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
  MODIFY `idbanner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `idfooter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `idnewsletter` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tipo`
--
ALTER TABLE `tipo`
  MODIFY `idtipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
