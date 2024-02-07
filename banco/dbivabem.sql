-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Out-2023 às 13:18
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbivabem`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblalunos`
--

CREATE TABLE `tblalunos` (
  `idAluno` int(11) NOT NULL,
  `nomeAluno` varchar(50) NOT NULL,
  `dataNascAluno` date NOT NULL,
  `emailAluno` varchar(80) NOT NULL,
  `senhaAluno` varchar(20) NOT NULL,
  `dataCadAluno` date NOT NULL,
  `statusAluno` varchar(10) NOT NULL,
  `fotoAluno` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tblalunos`
--

INSERT INTO `tblalunos` (`idAluno`, `nomeAluno`, `dataNascAluno`, `emailAluno`, `senhaAluno`, `dataCadAluno`, `statusAluno`, `fotoAluno`) VALUES
(1, 'JOÃO SILVA', '1990-01-15', 'joao@email.com', 'senha123', '2023-10-06', 'ATIVO', 'aluno/joãosilva1.png'),
(2, 'MARIA SANTOS', '1995-05-20', 'maria@email.com', 'senha456', '2023-10-06', 'ATIVO', 'aluno/mariasantos2.png'),
(3, 'CARLOS FERREIRA', '1998-08-10', 'carlos@email.com', 'senha789', '2023-10-06', 'ATIVO', 'aluno/carlosferreira3.png'),
(4, 'ANA OLIVEIRA', '1992-04-30', 'ana@email.com', 'senhaabc', '2023-10-06', 'ATIVO', 'aluno/anaoliveira4.png'),
(5, 'PEDRO RIBEIRO', '1985-11-25', 'pedro@email.com', 'senhaxyz', '2023-10-06', 'ATIVO', 'aluno/pedroribeiro5.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblbanner`
--

CREATE TABLE `tblbanner` (
  `idBanner` int(11) NOT NULL,
  `nomeBanner` varchar(50) NOT NULL,
  `altBanner` varchar(50) NOT NULL,
  `fotoBanner` varchar(100) NOT NULL,
  `statusBanner` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblcontato`
--

CREATE TABLE `tblcontato` (
  `idContato` int(11) NOT NULL,
  `nomeContato` varchar(50) NOT NULL,
  `emailContato` varchar(80) NOT NULL,
  `telefoneContato` varchar(14) NOT NULL,
  `mensagemContato` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tblcontato`
--

INSERT INTO `tblcontato` (`idContato`, `nomeContato`, `emailContato`, `telefoneContato`, `mensagemContato`) VALUES
(1, 'Nicolas', 'nicolashenrisilva@gmail.com', '(11) 952175-21', 'teste academia'),
(2, 'nicolas', 'nicolashenrisilva@gmail.com', '11952752175', 'teste 22');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbldestaque`
--

CREATE TABLE `tbldestaque` (
  `idDestaque` int(11) NOT NULL,
  `nomeDestaque` varchar(50) NOT NULL,
  `altDestaque` varchar(50) NOT NULL,
  `fotoDestaque` varchar(100) NOT NULL,
  `linkDestaque` varchar(150) NOT NULL,
  `statusDestaque` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblexercicios`
--

CREATE TABLE `tblexercicios` (
  `idExercicio` int(11) NOT NULL,
  `nomeExercicio` varchar(50) NOT NULL,
  `altExercicio` varchar(50) NOT NULL,
  `descricaoExercicio` varchar(30) NOT NULL,
  `grupoMuscularExercicio` varchar(30) NOT NULL,
  `statusExercicio` varchar(10) NOT NULL,
  `fotoExercicio` varchar(100) NOT NULL,
  `linkExercicio` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tblexercicios`
--

INSERT INTO `tblexercicios` (`idExercicio`, `nomeExercicio`, `altExercicio`, `descricaoExercicio`, `grupoMuscularExercicio`, `statusExercicio`, `fotoExercicio`, `linkExercicio`) VALUES
(1, 'Supino', 'Treino para peito', 'Treino com foco no Peitoral', 'Peitoral', 'ATIVO', 'exercicio/supino.png', 'vivabem.com/supino'),
(2, 'Agachamento', 'Treino para Pernas', 'Treino com foco nas Pernas', 'Pernas', 'ATIVO', 'exercicio/agachamento.png', 'vivabem.com/agachamento'),
(3, 'Rosca Direta', 'Treino para Braços', 'Treino com foco nos Braços', 'Braços', 'ATIVO', 'exercicio/roscadireta.png', 'vivabem.com/roscadireta'),
(4, 'Prancha Abdominal', 'Treino para Abdômen', 'Treino com foco no Abdômen', 'Abdômen', 'ATIVO', 'exercicio/pranchaabdominal.png', 'vivabem.com/pranchaabdominal'),
(5, 'Corrida', 'Treino para Cardio', 'Treino com foco no Cardio', 'Cardio', 'ATIVO', 'exercicio/corrida.png', 'vivabem.com/corrida');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblfuncionarios`
--

CREATE TABLE `tblfuncionarios` (
  `idFuncionario` int(11) NOT NULL,
  `nomeFuncionario` varchar(50) NOT NULL,
  `altFuncionario` varchar(50) NOT NULL,
  `dataNascFuncionario` date NOT NULL,
  `cargoFuncionario` varchar(20) NOT NULL,
  `especialidadeFuncionario` varchar(20) NOT NULL,
  `emailFuncionario` varchar(80) NOT NULL,
  `senhaFuncionario` varchar(20) NOT NULL,
  `nivelFuncionario` varchar(15) NOT NULL,
  `telefoneFuncionario` varchar(14) NOT NULL,
  `dataAdmissaoFuncionario` date NOT NULL,
  `statusFuncionario` varchar(10) NOT NULL,
  `fotoFuncionario` varchar(100) NOT NULL,
  `linkFaceFuncionario` varchar(150) NOT NULL,
  `linkInstaFuncionario` varchar(150) NOT NULL,
  `linkLinkedinFuncionario` varchar(150) NOT NULL,
  `linkWhatsFuncionario` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tblfuncionarios`
--

INSERT INTO `tblfuncionarios` (`idFuncionario`, `nomeFuncionario`, `altFuncionario`, `dataNascFuncionario`, `cargoFuncionario`, `especialidadeFuncionario`, `emailFuncionario`, `senhaFuncionario`, `nivelFuncionario`, `telefoneFuncionario`, `dataAdmissaoFuncionario`, `statusFuncionario`, `fotoFuncionario`, `linkFaceFuncionario`, `linkInstaFuncionario`, `linkLinkedinFuncionario`, `linkWhatsFuncionario`) VALUES
(1, 'Fernanda Souza', 'Foto Funcionario Musculação', '0000-00-00', 'Instrutor', 'Musculação', 'fernanda@email', 'senha123', 'Administrador', '(11)132456789', '0000-00-00', 'ATIVO', 'funcionario/fernandasouza1.png', 'facebook.com/fernandasouza', 'instagram.com/@fernandasouza', 'linkedin.com/fernandasouza', 'whatsapp.com/(11)132456789'),
(2, 'Ricardo Santos', 'Foto Funcionario Nutrição Esportiva', '2003-12-04', 'Nutricionista', 'Nutrição Esportiva', 'ricardo@email', 'senha456', 'Outros', '(22)987654313', '2023-09-15', 'ATIVO', 'funcionario/ricardosantos2.png', 'facebook.com/ricardosantos', 'instagram.com/@ricardosantos', 'linkedin.com/ricardosantos', 'whatsapp.com/(22)987654313'),
(3, 'Mariana Silva', 'Foto Funcionario Atendimento', '2003-12-04', 'Recepcionista', 'Atendimento', 'mariana@email', 'senha789', 'Administrador', '(33)555554555', '2023-08-03', 'ATIVO', 'funcionario/marinasilva3.png', 'facebook.com/marinasilva', 'instagram.com/@marinasilva', 'linkedin.com/marinasilva', 'whatsapp.com/(33)555554555'),
(4, 'Paulo Oliviera', 'Foto Funcionario Instrutor', '2003-12-04', 'Instrutor', 'Cardio', 'paulo@email', 'senhaabc', 'Outros', '(44)989999999', '2023-07-20', 'ATIVO', 'funcionario/paulooliveira4.png', 'facebook.com/paulooliveira', 'instagram.com/@paulooliveira', 'linkedin.com/paulooliveira', 'whatsapp.com/(44)989999999'),
(5, 'Luisa Mendes', 'Foto Funcionario Fisioterapeuta', '2003-12-04', 'Fisioterapeuta', 'Fisioterapeuta Espor', 'luisa@email', 'senhaxyz', 'Outros', '(55)887888888', '2023-06-10', 'ATIVO', 'funcionario/luisamendes5.png', 'facebook.com/luisamendes', 'instagram.com/@luisamendes', 'linkedin.com/luisamendes', 'whatsapp.com/(55)887888888');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblgaleria`
--

CREATE TABLE `tblgaleria` (
  `idGaleria` int(11) NOT NULL,
  `nomeGaleria` varchar(50) NOT NULL,
  `altGaleria` varchar(50) NOT NULL,
  `fotoGaleria` varchar(100) NOT NULL,
  `statusGaleria` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblmatriculas`
--

CREATE TABLE `tblmatriculas` (
  `idMatricula` int(11) NOT NULL,
  `dataInicioMatricula` date NOT NULL,
  `dataFimMatricula` date NOT NULL,
  `statusMatricula` varchar(10) NOT NULL,
  `idAluno` int(11) NOT NULL,
  `idPlano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tblmatriculas`
--

INSERT INTO `tblmatriculas` (`idMatricula`, `dataInicioMatricula`, `dataFimMatricula`, `statusMatricula`, `idAluno`, `idPlano`) VALUES
(1, '2023-10-01', '2023-10-31', 'ATIVO', 1, 1),
(2, '2023-09-15', '2023-09-30', 'ATIVO', 2, 2),
(3, '2023-08-03', '2023-08-31', 'ATIVO', 3, 3),
(4, '2023-07-20', '2023-07-31', 'ATIVO', 4, 4),
(5, '2023-06-10', '2023-06-30', 'ATIVO', 5, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblplanos`
--

CREATE TABLE `tblplanos` (
  `idPlano` int(11) NOT NULL,
  `nomePlano` varchar(20) NOT NULL,
  `descricaoPlano` varchar(150) NOT NULL,
  `valorPlano` double(10,2) NOT NULL,
  `statusPlano` varchar(10) NOT NULL,
  `fotoPlano` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tblplanos`
--

INSERT INTO `tblplanos` (`idPlano`, `nomePlano`, `descricaoPlano`, `valorPlano`, `statusPlano`, `fotoPlano`) VALUES
(1, 'Plano Básico', 'Plano de treinamento premium', 50.00, 'ATIVO', 'plano/planobasico.jpg'),
(2, 'Plano Premium', 'Plano de treinamento premium', 100.00, 'ATIVO', 'plano/planopremium.jpg'),
(3, 'Plano Gold', 'Plano de treinamento gold', 150.00, 'ATIVO', 'plano/planogold.jpg'),
(4, 'Plano VIP', 'Plano de treinamento VIP', 200.00, 'ATIVO', 'plano/planovip.jpg'),
(5, 'Plano Personalizado', 'Plano de treinamento personalizado', 250.00, 'ATIVO', 'plano/planopersonalizado.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblregistrotreinos`
--

CREATE TABLE `tblregistrotreinos` (
  `idRegistroTreino` int(11) NOT NULL,
  `cargaRegistroTreino` double(10,3) NOT NULL,
  `seriesRegistroTreino` int(11) NOT NULL,
  `repeticaoRegistroTreino` int(11) NOT NULL,
  `statusRegistroTreino` varchar(10) NOT NULL,
  `idTreino` int(11) NOT NULL,
  `idExercicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tblregistrotreinos`
--

INSERT INTO `tblregistrotreinos` (`idRegistroTreino`, `cargaRegistroTreino`, `seriesRegistroTreino`, `repeticaoRegistroTreino`, `statusRegistroTreino`, `idTreino`, `idExercicio`) VALUES
(1, 50.000, 3, 12, 'ATIVO', 1, 1),
(2, 80.000, 4, 10, 'ATIVO', 1, 2),
(3, 20.000, 3, 15, 'ATIVO', 2, 1),
(4, 100.000, 4, 12, 'ATIVO', 2, 2),
(5, 30.000, 3, 12, 'ATIVO', 3, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblsobre`
--

CREATE TABLE `tblsobre` (
  `idSobre` int(11) NOT NULL,
  `descSobre` text NOT NULL,
  `altSobre` varchar(50) NOT NULL,
  `fotoSobre` varchar(100) NOT NULL,
  `linkSobre` varchar(150) NOT NULL,
  `statusSobre` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbltelefonesalunos`
--

CREATE TABLE `tbltelefonesalunos` (
  `idTelefoneAluno` int(11) NOT NULL,
  `numeroTelefone` varchar(14) NOT NULL,
  `operadoraTelefone` varchar(10) NOT NULL,
  `tipoTelefone` varchar(15) DEFAULT NULL,
  `idAluno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbltelefonesalunos`
--

INSERT INTO `tbltelefonesalunos` (`idTelefoneAluno`, `numeroTelefone`, `operadoraTelefone`, `tipoTelefone`, `idAluno`) VALUES
(1, '(11)12345-6789', 'VIVO', 'CELULAR', 1),
(2, '(22)98765-4321', 'CLARO', 'RESIDENCIAL', 2),
(3, '(33)55555-5555', 'TIM', 'CELULAR', 3),
(4, '(44)44444-4444', 'OI', 'CELULAR', 4),
(5, '(55)88888-8888', 'VIVO', 'COMERCIAL', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbltreinos`
--

CREATE TABLE `tbltreinos` (
  `idTreino` int(11) NOT NULL,
  `dataInicioTreino` date NOT NULL,
  `dataFimTreino` date NOT NULL,
  `statusTreino` varchar(10) NOT NULL,
  `idAluno` int(11) NOT NULL,
  `idFuncionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbltreinos`
--

INSERT INTO `tbltreinos` (`idTreino`, `dataInicioTreino`, `dataFimTreino`, `statusTreino`, `idAluno`, `idFuncionario`) VALUES
(1, '2023-10-01', '2023-10-31', 'ATIVO', 1, 1),
(2, '2023-09-15', '2023-09-30', 'ATIVO', 2, 1),
(3, '2023-08-03', '2023-08-31', 'ATIVO', 3, 2),
(4, '2023-07-20', '2023-07-31', 'ATIVO', 4, 3),
(5, '2023-06-10', '2023-06-30', 'ATIVO', 5, 4);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tblalunos`
--
ALTER TABLE `tblalunos`
  ADD PRIMARY KEY (`idAluno`);

--
-- Índices para tabela `tblbanner`
--
ALTER TABLE `tblbanner`
  ADD PRIMARY KEY (`idBanner`);

--
-- Índices para tabela `tblcontato`
--
ALTER TABLE `tblcontato`
  ADD PRIMARY KEY (`idContato`);

--
-- Índices para tabela `tbldestaque`
--
ALTER TABLE `tbldestaque`
  ADD PRIMARY KEY (`idDestaque`);

--
-- Índices para tabela `tblexercicios`
--
ALTER TABLE `tblexercicios`
  ADD PRIMARY KEY (`idExercicio`);

--
-- Índices para tabela `tblfuncionarios`
--
ALTER TABLE `tblfuncionarios`
  ADD PRIMARY KEY (`idFuncionario`);

--
-- Índices para tabela `tblgaleria`
--
ALTER TABLE `tblgaleria`
  ADD PRIMARY KEY (`idGaleria`);

--
-- Índices para tabela `tblmatriculas`
--
ALTER TABLE `tblmatriculas`
  ADD PRIMARY KEY (`idMatricula`),
  ADD KEY `matriculaAluno` (`idAluno`),
  ADD KEY `matriculaPlano` (`idPlano`);

--
-- Índices para tabela `tblplanos`
--
ALTER TABLE `tblplanos`
  ADD PRIMARY KEY (`idPlano`);

--
-- Índices para tabela `tblregistrotreinos`
--
ALTER TABLE `tblregistrotreinos`
  ADD PRIMARY KEY (`idRegistroTreino`),
  ADD KEY `treinoRegistro` (`idTreino`),
  ADD KEY `exercicioRegistro` (`idExercicio`);

--
-- Índices para tabela `tblsobre`
--
ALTER TABLE `tblsobre`
  ADD PRIMARY KEY (`idSobre`);

--
-- Índices para tabela `tbltelefonesalunos`
--
ALTER TABLE `tbltelefonesalunos`
  ADD PRIMARY KEY (`idTelefoneAluno`),
  ADD KEY `telefoneAluno` (`idAluno`);

--
-- Índices para tabela `tbltreinos`
--
ALTER TABLE `tbltreinos`
  ADD PRIMARY KEY (`idTreino`),
  ADD KEY `treinoAluno` (`idAluno`),
  ADD KEY `instrutorTreino` (`idFuncionario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tblalunos`
--
ALTER TABLE `tblalunos`
  MODIFY `idAluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tblbanner`
--
ALTER TABLE `tblbanner`
  MODIFY `idBanner` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tblcontato`
--
ALTER TABLE `tblcontato`
  MODIFY `idContato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tbldestaque`
--
ALTER TABLE `tbldestaque`
  MODIFY `idDestaque` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tblexercicios`
--
ALTER TABLE `tblexercicios`
  MODIFY `idExercicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tblfuncionarios`
--
ALTER TABLE `tblfuncionarios`
  MODIFY `idFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tblgaleria`
--
ALTER TABLE `tblgaleria`
  MODIFY `idGaleria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tblmatriculas`
--
ALTER TABLE `tblmatriculas`
  MODIFY `idMatricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tblplanos`
--
ALTER TABLE `tblplanos`
  MODIFY `idPlano` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tblregistrotreinos`
--
ALTER TABLE `tblregistrotreinos`
  MODIFY `idRegistroTreino` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tblsobre`
--
ALTER TABLE `tblsobre`
  MODIFY `idSobre` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbltelefonesalunos`
--
ALTER TABLE `tbltelefonesalunos`
  MODIFY `idTelefoneAluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tbltreinos`
--
ALTER TABLE `tbltreinos`
  MODIFY `idTreino` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tblmatriculas`
--
ALTER TABLE `tblmatriculas`
  ADD CONSTRAINT `matriculaAluno` FOREIGN KEY (`idAluno`) REFERENCES `tblalunos` (`idAluno`),
  ADD CONSTRAINT `matriculaPlano` FOREIGN KEY (`idPlano`) REFERENCES `tblplanos` (`idPlano`);

--
-- Limitadores para a tabela `tblregistrotreinos`
--
ALTER TABLE `tblregistrotreinos`
  ADD CONSTRAINT `exercicioRegistro` FOREIGN KEY (`idExercicio`) REFERENCES `tblexercicios` (`idExercicio`),
  ADD CONSTRAINT `treinoRegistro` FOREIGN KEY (`idTreino`) REFERENCES `tbltreinos` (`idTreino`);

--
-- Limitadores para a tabela `tbltelefonesalunos`
--
ALTER TABLE `tbltelefonesalunos`
  ADD CONSTRAINT `telefoneAluno` FOREIGN KEY (`idAluno`) REFERENCES `tblalunos` (`idAluno`);

--
-- Limitadores para a tabela `tbltreinos`
--
ALTER TABLE `tbltreinos`
  ADD CONSTRAINT `instrutorTreino` FOREIGN KEY (`idFuncionario`) REFERENCES `tblfuncionarios` (`idFuncionario`),
  ADD CONSTRAINT `treinoAluno` FOREIGN KEY (`idAluno`) REFERENCES `tblalunos` (`idAluno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
