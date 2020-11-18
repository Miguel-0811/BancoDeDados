-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Nov-2020 às 16:45
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
-- Banco de dados: `jornal`
--
CREATE DATABASE IF NOT EXISTS `jornal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jornal`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`ano`) VALUES
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codcategoria` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codcategoria`, `categoria`) VALUES
(1, 'Esportes'),
(2, 'Entretenimento'),
(3, 'Política'),
(4, 'Música'),
(5, 'Educação');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`dia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `mes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`mes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `codnoticia` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `noticia` text DEFAULT NULL,
  `codredator` int(11) DEFAULT NULL,
  `codcategoria` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`codnoticia`, `titulo`, `noticia`, `codredator`, `codcategoria`, `dia`, `mes`, `ano`) VALUES
(1, 'Giroud faz dois gols, França vence a Suécia, e rebaixa o adversário na Liga das Nações', 'Jogando fora de casa e precisando da vitória para não ser rebaixada para a Liga B da competição, a Suécia se lançou ao ataque e abriu o placar com Claesson, aos três minutos. Após cruzamento pela direita, o camisa 17 chutou e contou com desvio em Varane. Aos 15, Thuram fez jogada pela esquerda e tocou para Giroud bater forte e empatar. Antes do intervalo, Thuram novamente fez boa jogada, limpou três marcadores, finalizou com desvio e Pavard pegou a sobra para virar.', 1, 1, 17, 11, 2020),
(2, 'Rough and Rowdy Ways\" de Bob Dylan encabeça mais uma lista de melhores álbuns do ano', 'Mais uma revista musica já publicou a sua lista com os 75 melhores discos de 2020. Depois da Uncut, foi a vez da também britânica Mojo, de perfil semelhante, voltada a um público mais maduro, divulgar a sua relação. Bob Dylan foi, novamente, o vencedor com \"Rough And Rowdy Ways\".\r\n\r\nPara a publicação, o trabalho traz o som de \"um homem finalmente em paz com a sua identidade construída e seu vasto status mítico\". A lista da revista tem muita coisa em comum com a da Uncut, Fiona Apple, Jarv Is, Flaming Lips, Phoebe Bridgers, Tame Impala, Haim, estão lá, ainda que em posições diferentes. Mas ela também destacou alguns trabalhos mais identificados com o pop, os casos de \"folklore\" de Taylor Swift (31° lugar) e \"Future Nostalgia\" de Dua Lipa (37°).', 5, 4, 16, 11, 2020),
(3, 'Obama diz que políticas de Bolsonaro e Trump são parecidas e espera nova relação entre EUA e Brasil', 'O ex-presidente dos Estados Unidos, Barack Obama, disse em entrevista ao “Conversa com Bial”, da TV Globo, que o Brasil tem papel central na ação contra o aquecimento global, que espera que Joe Biden, eleito presidente de seu país, restabeleça um relacionamento diferente com o Brasil na questão do clima e que o presidente Jair Bolsonaro adota política parecida com a de Donald Trump. Ele previu que uma mulher poderá ser presidente dos EUA em breve.', 4, 3, 15, 11, 2020),
(4, 'Enem 2020: a dois meses do exame, saiba como se preparar para a prova', 'Com a suspensão das aulas presenciais na maior parte do país, o Enem 2020 trará um desafio a mais para os candidatos: a preparação para a prova a partir de estudos em casa.\r\n\r\nO Instituto Nacional de Estudos e Pesquisas Educacionais Anísio Teixeira (Inep), responsável pelo Enem, disponibiliza em seu portal provas e gabaritos de edições anteriores. Assim, é possível estudar com base no que já caiu no Enem.', 6, 5, 14, 11, 2020),
(5, 'Artista recria personagens da Disney na vida real e o resultado é impressionante', 'A artista recria os personagens dos filmes mais famosos da Disney como se eles fossem pessoas reais. Se você ama as atuais versões live-action das famosas animações, vai ficar encantado com o trabalho da profissional.', 4, 2, 13, 11, 2020),
(6, 'Unicamp abre inscrições em 116 vagas no Vestibular 2021 para premiados em olimpíadas de conhecimento', 'A Universidade Estadual de Campinas (Unicamp) abre nesta terça-feira (17) as inscrições voltadas para premiados em olimpíadas de conhecimento que buscam vaga no Vestibular 2021. São 116 oportunidades em 29 cursos de graduação. A inscrição é de graça e pode ser feita pela internet até 8 de janeiro.\r\n\r\nCada candidato pode se inscrever em até dois cursos, selecionando primeira e segunda opções. A seleção não é feita por meio de provas, mas por desempenho nas competições.', 5, 5, 11, 11, 2020),
(7, 'Alemanha sofre maior derrota em quase 9 décadas e leva 6 gols após 62 anos', 'A goleada histórica de 6 a 0 sofrida pela Alemanha hoje (17) diante da Espanha, em Sevilha, pela Liga das Nações, é o maior revés da seleção tetracampeã em 89 anos. Desde 1931, a equipe alemã não perdia por um placar tão elástico. Naquela ocasião, o algoz foi a Áustria, em amistoso. A Alemanha também não levava seis gols em um só jogo havia 62 anos. A última vez aconteceu na decisão do terceiro lugar da Copa de 1958, na Suécia. A seleção alemã perdeu para a França por 6 a 3 e ficou na quarta posição.... - Veja mais em https://www.uol.com.br/esporte/futebol/ultimas-noticias/2020/11/17/alemanha-sofre-maior-derrota-em-quase-9-decadas-e-leva-6-gols-apos-62-anos.htm?cmpid=copiaecola', 1, 1, 10, 11, 2020),
(8, 'Mais de 900 cidades do país não terão nenhuma mulher na Câmara Municipal', 'ais de 900 cidades do país não elegeram nenhuma vereadora nas eleições deste ano e, portanto, não terão nenhuma mulher ocupando vaga nas Câmaras Municipais a partir de 2021. Já em outras mais de 1,8 mil cidades, apenas uma mulher foi eleita, segundo dados do Tribunal Superior Eleitoral (TSE).\r\n\r\nConsiderando que o país tem 5.568 cidades, isso quer dizer que aproximadamente metade delas não terá vereadoras ou terá apenas uma mulher ocupando o cargo no mandato que se inicia no ano que vem.', 5, 3, 9, 11, 2020),
(9, 'Com Beyoncé, Jay-Z, e mais, Barack Obama cria playlist com músicas marcantes de sua vida', 'Prestes a lançar seu mais novo livro, uma autobiografia detalhando os seus oito anos no poder, e como chegou lá, Barack Obama também divulgou uma playlist com algumas das canções que marcaram a sua vida, e o o seu período na Casa Branca entre 2009 e 2016.\r\n\r\nCom 20 músicas, a lista é bem variada e dividida entre artistas brancos e negros com mestres do jazz - John Coltrane e Miles Davis - blues (B.B. King), soul (Aretha Franklin e Stevie Wonder), música de protesto (Bob Dylan), além de hip-hop (JAy-Z, Eminem) rock (U2 e Bruce Springsteen), pop (Fleetwood Mac e Phillip Phillips), country (Brooks & Dunn), música latina (Gloria Stefan), romantismo (Frank Sinatra, \"Michelle\" dos Beatles) , finalmente, o R&B de Sade e Beyoncè, esta com duas músicas na lista: \"Halo\" e a versão que ela fez para \"At Last\" de Etta James.', 1, 4, 8, 11, 2020),
(10, 'Equador atropela a Colômbia e vence a terceira seguida nas Eliminatórias', 'Pela quarta rodada das Eliminatórias Sul-Americanas para a Copa do Mundo, o Equador não tomou conhecimento da Colômbia nesta terça-feira, em Quito, e aplicou a maior goleada da história do confronto. Com direito a gol de Arboleda, zagueiro do São Paulo, o time dirigido por Gustavo Alfaro fez 6 a 1 e venceu a terceira partida consecutiva na competição. Mena, Estrada, Arreaga, Plata e Estupiñán também marcaram, e James Rodríguez descontou para os colombianos.', 2, 1, 7, 11, 2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `codredator` int(11) NOT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ddd` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `codturma` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`codredator`, `sobrenome`, `cidade`, `email`, `ddd`, `nome`, `telefone`, `codturma`, `dia`, `mes`, `ano`) VALUES
(1, 'Rocha', 'maua', 'luana@gmail.com', '11', 'Luana', '11111-4444', 1, 3, 10, 1992),
(2, 'Renato', 'Ribeirão Pires', 'jorge@gmail.com', '11', 'Jorge', '11111-5555', 4, 10, 5, 2005),
(4, 'Silva', 'Suzano', 'eduardo@gmail.com', '11', 'Eduardo', '11111-6666', 3, 17, 6, 1974),
(5, 'Souza', 'Ribeirão Pires', 'bruno@gmail.com', '11', 'Bruno', '11111-8888', 6, 19, 8, 2005),
(6, 'Roamno', 'Rio Grande da Serra', 'madu@gmail.com', '11', 'Maria', '11111-3333', 3, 12, 12, 2007);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codturma` int(11) NOT NULL,
  `turma` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codturma`, `turma`) VALUES
(1, '1C'),
(2, '2C'),
(3, '3C'),
(4, '1F'),
(5, '2F'),
(6, '3F');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`ano`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codcategoria`);

--
-- Índices para tabela `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`dia`);

--
-- Índices para tabela `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`mes`);

--
-- Índices para tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codnoticia`),
  ADD KEY `codredator` (`codredator`),
  ADD KEY `codcategoria` (`codcategoria`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codredator`),
  ADD KEY `codturma` (`codturma`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codturma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `redator`
--
ALTER TABLE `redator`
  MODIFY `codredator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `codturma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`codredator`) REFERENCES `redator` (`codredator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`codcategoria`) REFERENCES `categoria` (`codcategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codturma`) REFERENCES `turma` (`codturma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
