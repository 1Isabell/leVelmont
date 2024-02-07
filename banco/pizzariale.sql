-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16/12/2023 às 20:47
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pizzariale`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblbanner`
--

CREATE TABLE `tblbanner` (
  `idBanner` int(11) NOT NULL,
  `nomeBanner` varchar(50) NOT NULL,
  `altBanner` varchar(50) NOT NULL,
  `dscBanner` varchar(20) NOT NULL,
  `statusBanner` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tblbanner`
--

INSERT INTO `tblbanner` (`idBanner`, `nomeBanner`, `altBanner`, `dscBanner`, `statusBanner`) VALUES
(1, 'BANNER PROMO', 'banner/banner1.png', 'BANNER DA PROMO DE T', 'ATIVO'),
(2, 'BANNER PIZZA DOIS QUEIJOS', 'banner/banner2.png', 'BANNER DA PIZZA DOIS', 'ATIVO'),
(3, 'BANNER PROMO COMPRE TRES', 'banner/banner3.png', 'BANNER DA PROMO DE C', 'DESATIVO'),
(4, 'BANNER HORARIO', 'banner/banner4.png', 'HORARIO DE FUNCIONAM', 'ATIVO');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblcardapio`
--

CREATE TABLE `tblcardapio` (
  `idCardapio` int(11) NOT NULL,
  `nomeCardapio` varchar(50) NOT NULL,
  `dscCardapio` varchar(20) NOT NULL,
  `statusCardapio` varchar(10) NOT NULL,
  `altCardapio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tblcardapio`
--

INSERT INTO `tblcardapio` (`idCardapio`, `nomeCardapio`, `dscCardapio`, `statusCardapio`, `altCardapio`) VALUES
(1, 'PIZZA DE DOIS QUEIJOS', 'IMAGEM DA PIZZA DE D', 'ATIVO', 'pizza/pizzadoisqueijos.png'),
(2, 'PIZZA DE CALABRESA', 'IMAGEM DA PIZZA DE C', 'ATIVO', 'pizza/pizzacalabresa.png'),
(3, 'PIZZA PORTUGUESA', 'IMAGEM DA PIZZA PORT', 'ATIVO', 'pizza/pizzaportuguesa.png'),
(4, 'PIZZA DE BAURU', 'IMAGEM DA PIZZA DE B', 'ATIVO', 'pizza/pizzabauru.png'),
(5, 'PIZZA DE FRANGO E CATUPRY', 'IMAGEM DA PIZZA DE F', 'ATIVO', 'pizza/pizzafrango.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblcliente`
--

CREATE TABLE `tblcliente` (
  `idCliente` int(11) NOT NULL,
  `dataNascCliente` date NOT NULL,
  `nomeCliente` varchar(50) NOT NULL,
  `telefoneCliente` varchar(14) NOT NULL,
  `enderecoCliente` varchar(610) NOT NULL,
  `areaCliente` varchar(20) NOT NULL,
  `pontosCliente` double(10,2) NOT NULL,
  `statusCliente` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tblcliente`
--

INSERT INTO `tblcliente` (`idCliente`, `dataNascCliente`, `nomeCliente`, `telefoneCliente`, `enderecoCliente`, `areaCliente`, `pontosCliente`, `statusCliente`) VALUES
(0, '1998-04-05', 'MARIA OLIVEIRA', '(11)123456789', 'RUA DA FELICIDADE, BAIRRO ALEGRIA 123', 'RESIDENCIAL(2KM)', 5.00, 'ATIVO'),
(0, '1999-04-05', 'JOÃO MIRANDA', '(11)936825714', 'AVENIDA THOMAS VICTOR, BAIRRO DA LUA 456', 'RESIDENCIAL(3KM)', 15.00, 'ATIVO'),
(0, '2003-08-06', 'VITORIA ALVES', '(11)741852963', 'RUA DAS FLORES, BAIRRO JARDIM 563', 'RESIDENCIAL(4KM)', 6.00, 'ATIVO'),
(0, '1999-09-03', 'IAGO LOPES', '(11)486759123', 'AVENIDA FLOR DE LOTUS, QUADRA ALEGRIA 123', 'RESIDENCIAL(2KM)', 5.00, 'ATIVO');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblestoque`
--

CREATE TABLE `tblestoque` (
  `idEstoqueTotal` int(11) NOT NULL,
  `nomeProdEstoque` varchar(50) NOT NULL,
  `marcaProdEstoque` varchar(20) NOT NULL,
  `dataFabricacao` date NOT NULL,
  `quantidadeEstoque` double(10,2) NOT NULL,
  `idProduto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblfuncionario`
--

CREATE TABLE `tblfuncionario` (
  `idFuncionario` int(11) NOT NULL,
  `nomeFuncionario` varchar(15) NOT NULL,
  `dataNascFuncionario` date NOT NULL,
  `cpfFuncionario` varchar(11) NOT NULL,
  `telefoneFuncionario` varchar(14) NOT NULL,
  `emailFuncionario` varchar(80) NOT NULL,
  `turnoFuncionario` varchar(10) NOT NULL,
  `funcaoFuncionario` varchar(12) NOT NULL,
  `acessoFuncionario` varchar(10) NOT NULL,
  `statusFuncionario` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tblfuncionario`
--

INSERT INTO `tblfuncionario` (`idFuncionario`, `nomeFuncionario`, `dataNascFuncionario`, `cpfFuncionario`, `telefoneFuncionario`, `emailFuncionario`, `turnoFuncionario`, `funcaoFuncionario`, `acessoFuncionario`, `statusFuncionario`) VALUES
(1, 'MARIA OLIVEIRA', '1999-05-03', '12345678912', '(11)123456789', 'marioa@email.com', 'MADRUGADA', 'ATENDENTE', 'MEDIO', 'ATVO'),
(2, 'Ana Silva ', '1997-09-04', '12347898912', '(11)987654321', 'ana@email.com', 'NOITE', 'ATENDENTE', 'MEDIO', 'ATVO'),
(3, 'Carlos Santos', '2000-05-01', '96357898912', '(11)963852741', 'carloss@email.com', 'NOITE/MADR', 'PIZZAIOLO', 'BASICO', 'DESATIVO'),
(4, 'João Pereira', '2000-06-02', '96354561212', '(11)9456123541', 'jooa@email.com', 'NOITE/MADR', 'PIZZAIOLO', 'BASICO', 'ATIVO'),
(5, 'Maria Ferreira ', '2002-06-02', '78945612345', '(11)9456123511', 'amaria@email.com', 'NOITE/MADR', 'ADM', 'TOTAL', 'ATIVO');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblgaleria`
--

CREATE TABLE `tblgaleria` (
  `idGaleria` int(11) NOT NULL,
  `nomeGaleria` varchar(50) NOT NULL,
  `dscGaleria` varchar(20) NOT NULL,
  `statusGaleria` varchar(10) NOT NULL,
  `altGaleria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tblgaleria`
--

INSERT INTO `tblgaleria` (`idGaleria`, `nomeGaleria`, `dscGaleria`, `statusGaleria`, `altGaleria`) VALUES
(1, 'GALERIA IMG FORNO', 'IMAGEM DO FORNO DA P', 'ATIVO', 'galeria/galeria.png'),
(2, 'GALERIA IMG MASSA', 'IMAGEM DO PROCESSO D', 'ATIVO', 'galeria/massa.png'),
(3, 'GALERIA IMG DO QUEIJO', 'IMAGEM DA MARCA DO Q', 'ATIVO', 'galeria/marcadoqueijo.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblitensvenda`
--

CREATE TABLE `tblitensvenda` (
  `idItemVenda` int(11) NOT NULL,
  `idProduto` int(11) NOT NULL,
  `idVenda` int(11) NOT NULL,
  `nomeItemVenda` varchar(30) NOT NULL,
  `quantItemVenda` varchar(20) NOT NULL,
  `valortotalItemVenda` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblproduto`
--

CREATE TABLE `tblproduto` (
  `idProduto` int(11) NOT NULL,
  `nomeProduto` varchar(50) NOT NULL,
  `tipoProduto` varchar(15) NOT NULL,
  `precoProduto` double(10,2) NOT NULL,
  `statusProduto` varchar(10) NOT NULL,
  `descricaoProduto` varchar(120) NOT NULL,
  `fotoProduto` varchar(50) NOT NULL,
  `categoriaProduto` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tblproduto`
--

INSERT INTO `tblproduto` (`idProduto`, `nomeProduto`, `tipoProduto`, `precoProduto`, `statusProduto`, `descricaoProduto`, `fotoProduto`, `categoriaProduto`) VALUES
(0, 'PIZZA DE DOIS QUEIJOS', 'PIZZA', 35.00, 'ATIVO', 'MASSA, MOLHO, QUEIJO PATRA E QUEIJO DE BUFALO', 'pizza/pizzadeddoisqueijos', 'prod'),
(0, 'PIZZA DE CALABRESA E QUEIJO', 'PIZZA', 45.00, 'ATIVO', 'MASSA,MOLHO, 500GM DE CALABRESA E 200GM DE QUEIJO PRATA', 'pizza/pizzadecalaeqeuijo.png', 'SIMPLES');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblsecaocardapio`
--

CREATE TABLE `tblsecaocardapio` (
  `idsecaoCardapio` int(11) NOT NULL,
  `nomeCardapio` varchar(50) NOT NULL,
  `dscCardapio` varchar(20) NOT NULL,
  `statusCardapio` varchar(10) NOT NULL,
  `altCardapio` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tblsecaocardapio`
--

INSERT INTO `tblsecaocardapio` (`idsecaoCardapio`, `nomeCardapio`, `dscCardapio`, `statusCardapio`, `altCardapio`) VALUES
(1, 'SEÇÃO PIZZA', 'IMG PERSONALIZADA ', 'ATIVO', 'pizza/pizza1.png'),
(2, 'SEÇÃO PIZZA', 'IMG PADÃO', 'DESATIVO', 'pizza/pizza2.png'),
(3, 'SEÇÃO ESFIRRA', 'IMG PADRÃO', 'ATIVO', 'esfirra/esfirra1.png'),
(4, 'SEÇÃO ESFIRRA', 'IMG PERSONALIZADA', 'DESATIVADO', 'esfirra/esfirra2.png'),
(5, 'SEÇÃO BEBIDAS', 'IMG PADRÃO', 'ATIVO', 'bebidas/bebidas1.png'),
(6, 'SEÇÃO BEBIDAS', 'IMG PERSONALIZADA', 'DESATIVADO', 'bebidas/bebidas2.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblvenda`
--

CREATE TABLE `tblvenda` (
  `idVenda` int(11) NOT NULL,
  `idFuncionario` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `nomeProduto` varchar(15) NOT NULL,
  `dataVenda` date NOT NULL,
  `horaVenda` time NOT NULL,
  `valorVenda` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblvocesabia`
--

CREATE TABLE `tblvocesabia` (
  `idvoceSabia` int(11) NOT NULL,
  `nomevoceSabia` varchar(50) NOT NULL,
  `dscvoceSabia` varchar(20) NOT NULL,
  `statusvoceSabia` varchar(10) NOT NULL,
  `altvoceSabia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tblvocesabia`
--

INSERT INTO `tblvocesabia` (`idvoceSabia`, `nomevoceSabia`, `dscvoceSabia`, `statusvoceSabia`, `altvoceSabia`) VALUES
(1, 'PREPARAÇÃO DE MASSA', 'IMG PERZONALIZADA', 'ATIVO', 'sabia/preparacaodemassa.png'),
(2, 'PIZZA VEGETARIANA', 'IMG PERZONALIZADA', 'ATIVO', 'sabia/pizzavegetariana.png'),
(3, 'MOLHO 100% NATURAL', 'IMG PERZONALIZADA', 'ATIVO', 'sabia/molho.png'),
(4, 'ENTREGA RAPIDA', 'IMG PERZONALIZADA', 'ATIVO', 'sabia/entrega.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
