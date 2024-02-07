-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20/11/2023 às 20:43
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
-- Banco de dados: `levelmont`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblcliente`
--

CREATE TABLE `tblcliente` (
  `idCliente` int(11) NOT NULL,
  `idVenda` int(11) NOT NULL,
  `nomeCliente` varchar(50) NOT NULL,
  `telefoneCliente` varchar(14) NOT NULL,
  `enderecoCliente` varchar(60) NOT NULL,
  `pontos` double(10,2) NOT NULL,
  `statusCliente` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tblcliente`
--

INSERT INTO `tblcliente` (`idCliente`, `idVenda`, `nomeCliente`, `telefoneCliente`, `enderecoCliente`, `pontos`, `statusCliente`) VALUES
(4, 2, ' Maria Santos', '(11)9876-5432', ' Avenida Principal, 456, Bairro Central', 5.00, 'ATIVO'),
(5, 1, 'Carlos Pereira', '(11)5555-9999', 'Rua da Paz, 789, Bairro Tranquilo', 6.00, 'INATIVO'),
(6, 1, 'Ana Costa', '(41)1111-2222', 'Travessa dos Sonhos, 321, Bairro Esperança', 10.00, 'DESATIVADO'),
(7, 4, 'Alice Silva', '(55) 123-45678', 'Rua das Flores, 123 - Bairro Felicidade - Cidade Feliz,', 1.00, 'ATIVO'),
(8, 2, 'Pedro Martins', '(11) 987-65445', 'Avenida do Sol, 456 - Bairro', 8.00, 'ATIVO'),
(9, 6, 'Isabella Santos', '(11) 1087-6545', 'Praça da Liberdade, 123 -Bairro Saudade', 10.00, 'DESATIVADO'),
(10, 1, 'Gustavo Ferreira', '(11)246-1357', 'Alameda dos Sonhos, 567 - Bairro Sor', 10.00, 'DESATIVADO'),
(11, 7, 'Sofia Oliveira', '(11)246-13571', 'Rua das Estrelas, 890 - Bairro Félic', 6.00, 'ATIVO');

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
(1, 'Ana Silva ', '1996-10-10', ' 123.456.78', '(11) 9876-5432', 'ana.silva@email.com ', 'NOTURNO', ' PIZZAIOLO', 'SIMPLES', 'ATIVO'),
(2, 'Carlos Santos', '1999-11-10', '987.654.321', '(21) 5555-9999', ' carlos.santos@email.com ', ' NOTURNO', '  ATENDENTE', 'MEDIO', 'ATIVO'),
(3, 'João Pereira', '1989-11-17', ' 555.123.78', '(31) 1111-2222', '  joao.pereira@email.com ', 'NOTURNO', 'ENTREGADOR', 'SIMPLES', 'INATIVO'),
(4, 'Maria Ferreira ', '1991-12-20', ' 123.456.78', '(11) 1234-5678', 'maria.silva@email.com ', 'MADRUGADA', 'PIZZAIOLO', 'SIMPLES', 'DESATIVADO'),
(5, 'Pedro Oliveira ', '2001-09-09', '456.789.123', '(41) 1111-2222', 'pedro.oliveira@email.com ', 'MADRUGADA', 'ENTREGADOR', 'SIMPLES', 'ATIVO'),
(6, 'Jussara Paz ', '2000-10-10', '356.789.123', '(11) 1122-3445', 'jussara.paz@email.com ', 'NOTURNO', 'GERENTE', 'ADM', 'INATIVO'),
(7, 'Lucas Pereira', '1997-05-02', '355.789.123', '(11) 1642-5805', 'lucas.perreira@email.com', 'MADRUGADA', 'PIZZAIOLO', 'SIMPLES', 'DESATIVADO'),
(8, 'Pedro Matos', '1995-04-04', '376.709.623', '(11) 32642-344', 'matos.pedro@email.com ', 'MADRUGADA', 'ATENDENETE', 'MEDIO', 'ATIVO'),
(9, 'Marcos Rodrigue', '1997-06-02', '485.909.623', '(11) 1234-5445', 'marcos.rodrigues@email.com ', 'NOITE/MADR', 'GERENTE', 'ADM', 'ATIVO');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblintensvenda`
--

CREATE TABLE `tblintensvenda` (
  `idItemVenda` int(11) NOT NULL,
  `idProduto` int(11) NOT NULL,
  `idVenda` int(11) NOT NULL,
  `nomeItemVenda` varchar(30) NOT NULL,
  `quantItemVenda` varchar(20) NOT NULL,
  `valorItemVenda` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tblintensvenda`
--

INSERT INTO `tblintensvenda` (`idItemVenda`, `idProduto`, `idVenda`, `nomeItemVenda`, `quantItemVenda`, `valorItemVenda`) VALUES
(3, 1, 4, 'PIZZA Portuguesa', '50', 175.00),
(4, 2, 2, 'Esfirra Brigadeiro', '150', 750.00),
(5, 3, 2, 'Esfirra Doces', '250', 1.25);

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
(1, 'Pizza de Calabresa', 'Pizza', 20.00, 'ATIVO', 'Molho,calabresa e cebola', 'imagem/pizzacalabresa.png', 'SIMPLES'),
(2, 'Pizza de Dois Queijo', 'Pizza', 30.00, 'ATIVO', 'Molho,Queijo Mussarela e Queijo Parmesão', 'imagem/pizzadoisqueijo.png', 'SIMPLES'),
(3, 'Pizza de Calabresa e catupiry', 'Pizza', 35.00, 'ATIVO', 'Molho, Calabresa e catupiry', 'imagem/pizzacalabresaCap.png', 'MEDIA'),
(4, 'Pizza de Frango e catupiry', 'Pizza', 35.00, 'ATIVO', 'Molho,frango, milho e catupiry', 'imagem/pizzafrangop.png', 'SIMPLES'),
(5, 'Pizza Portuguesa', 'Pizza', 29.00, 'ATIVO', 'Molho, Queijo mussarela, milho, ovo cozido', 'imagem/pizzaportuguesa.png', 'MEDIA'),
(6, 'Pizza Brigadeiro', 'Pizza', 40.00, 'ATIVO', 'Brigadeiro e Morango', 'imagem/pizzachocolate.png', 'PERSONALIZADA'),
(7, 'Pizza Doces', 'Pizza', 45.00, 'ATIVO', 'Brigadeiro e Prestigio', 'imagem/pizzabeijinho.png', 'PERSONALIZADA'),
(8, 'Broto Vegana', 'ESFIRRA', 5.00, 'ATIVO', 'Molho, escarola e queijo ', 'imagem/esfirraescarola.png', 'PERSONALIZADA'),
(9, 'Broto de Bacon', 'ESFIRRA', 5.00, 'ATIVO', 'Molho,Bacon e Quijo ', 'imagem/esfirrabacon.png', 'PERSONALIZADA'),
(10, 'Broto de Bauru', 'ESFIRRA', 5.00, 'ATIVO', 'Molho,Queijo, Toamte e Presunto ', 'imagem/esfirrabauru.png', 'SIMPLES');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblvenda`
--

CREATE TABLE `tblvenda` (
  `idVenda` int(11) NOT NULL,
  `idFuncionario` int(11) NOT NULL,
  `nomeProduto` varchar(15) NOT NULL,
  `nomeCliente` varchar(50) NOT NULL,
  `dataVenda` date NOT NULL,
  `horaVenda` time NOT NULL,
  `valorVenda` double(10,2) NOT NULL,
  `statusVenda` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tblvenda`
--

INSERT INTO `tblvenda` (`idVenda`, `idFuncionario`, `nomeProduto`, `nomeCliente`, `dataVenda`, `horaVenda`, `valorVenda`, `statusVenda`) VALUES
(1, 2, 'PIZZA DE CALABR', 'ANA MARIA', '2023-11-17', '18:37:14', 130.00, 'ATIVO'),
(2, 8, 'PIZZA DE FRANGO', 'JÕAO', '0000-00-00', '00:00:00', 35.00, ''),
(4, 8, 'PIZZA PORTUGUES', 'ALICE SILVA', '0000-00-00', '00:00:00', 29.00, ''),
(5, 2, 'PIZZA PORTUGUES', 'CARLOS PEREIRA', '0000-00-00', '00:00:00', 29.00, ''),
(6, 8, 'PIZZA BRIGADEIR', 'ISABELLA SANTOS', '0000-00-00', '00:00:00', 49.00, ''),
(7, 2, 'BROTO VEGANO', 'SOFIA OLIVEIRA', '0000-00-00', '00:00:00', 25.00, ''),
(8, 8, 'BROTO DE BANCON', 'GUSTAVO FERREIRA', '0000-00-00', '00:00:00', 35.00, '');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tblcliente`
--
ALTER TABLE `tblcliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `idVenda` (`idVenda`);

--
-- Índices de tabela `tblfuncionario`
--
ALTER TABLE `tblfuncionario`
  ADD PRIMARY KEY (`idFuncionario`);

--
-- Índices de tabela `tblintensvenda`
--
ALTER TABLE `tblintensvenda`
  ADD PRIMARY KEY (`idItemVenda`),
  ADD KEY `idProduto` (`idProduto`),
  ADD KEY `idVenda` (`idVenda`);

--
-- Índices de tabela `tblproduto`
--
ALTER TABLE `tblproduto`
  ADD PRIMARY KEY (`idProduto`);

--
-- Índices de tabela `tblvenda`
--
ALTER TABLE `tblvenda`
  ADD PRIMARY KEY (`idVenda`),
  ADD KEY `idFuncionario` (`idFuncionario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tblcliente`
--
ALTER TABLE `tblcliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `tblfuncionario`
--
ALTER TABLE `tblfuncionario`
  MODIFY `idFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `tblintensvenda`
--
ALTER TABLE `tblintensvenda`
  MODIFY `idItemVenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tblproduto`
--
ALTER TABLE `tblproduto`
  MODIFY `idProduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `tblvenda`
--
ALTER TABLE `tblvenda`
  MODIFY `idVenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tblcliente`
--
ALTER TABLE `tblcliente`
  ADD CONSTRAINT `tblcliente_ibfk_1` FOREIGN KEY (`idVenda`) REFERENCES `tblvenda` (`idVenda`);

--
-- Restrições para tabelas `tblintensvenda`
--
ALTER TABLE `tblintensvenda`
  ADD CONSTRAINT `tblintensvenda_ibfk_1` FOREIGN KEY (`idProduto`) REFERENCES `tblproduto` (`idProduto`),
  ADD CONSTRAINT `tblintensvenda_ibfk_2` FOREIGN KEY (`idVenda`) REFERENCES `tblvenda` (`idVenda`);

--
-- Restrições para tabelas `tblvenda`
--
ALTER TABLE `tblvenda`
  ADD CONSTRAINT `tblvenda_ibfk_1` FOREIGN KEY (`idFuncionario`) REFERENCES `tblfuncionario` (`idFuncionario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
