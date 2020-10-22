-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Out-2020 às 01:50
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.2.31

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
-- Truncar tabela antes do insert `ano`
--

TRUNCATE TABLE `ano`;
--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`ano`) VALUES
(1950),
(1951),
(1952),
(1953),
(1954),
(1955),
(1956),
(1957),
(1958),
(1959),
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
  `codCategoria` int(11) NOT NULL,
  `categoria` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncar tabela antes do insert `categoria`
--

TRUNCATE TABLE `categoria`;
--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codCategoria`, `categoria`) VALUES
(1, 'Esporte'),
(2, 'Entretenimeto'),
(3, 'politica'),
(4, 'TV'),
(5, 'Famosos'),
(6, 'Tirinhas'),
(7, 'Educação'),
(8, 'Saúde'),
(9, 'Games');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncar tabela antes do insert `dia`
--

TRUNCATE TABLE `dia`;
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
-- Truncar tabela antes do insert `mes`
--

TRUNCATE TABLE `mes`;
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
  `codNoticia` int(11) NOT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `noticia` text DEFAULT NULL,
  `codRedator` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `codCategoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncar tabela antes do insert `noticia`
--

TRUNCATE TABLE `noticia`;
--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`codNoticia`, `titulo`, `noticia`, `codRedator`, `ano`, `mes`, `dia`, `codCategoria`) VALUES
(2, 'Coringa de Jared Leto voltará em Snyder Cut de Liga da Justiça', 'Conforme apurou o Hollywood Reporter, Leto participará das refilmagens de Liga da Justiça para o novo corte do diretor Zack Snyder, que será lançado no formato de minissérie de quatro episódios. A estreia está prevista para 2021 no HBO Max.\\r\\nLeto interpretou o Coringa pela primeira vez em Esquadrão Suicida (2016), mas não agradou muito à crítica e aos fãs. Por ficar de fora do elenco de Aves de Rapina (2020) e do reboot de Esquadrão Suicida de James Gunn, o retorno de Leto como o Palhaço do Crime não era muito esperado, mas agora é realidade.\\r\\n\\r\\nAlém de Leto, as refilmagens do Snyder Cut contam com as participações de Ben Affleck (Batman), Ray Fisher (Ciborgue) e Amber Heard (Mera). Não está claro se outros atores também estão envolvidos. Vale lembrar que o Coringa, originalmente, não aparece em Liga da Justiça.', 1, 2020, 10, 15, 2),
(3, 'Cyberpunk 2077 terá sincronia labial para todos os idiomas', 'Não é segredo que Cyberpunk 2077 é um dos jogos mais aguardados da história, dono de um mundo vasto e tecnologias impressionantes, mas hoje a desenvolvedora CD Projekt Red mostrou uma nova ferramenta bem impressionante, feita em parceria com a JALI Inc..Trata-se de uma companhia originária da Universidade de Toronto, no Canadá, que criou tecnologias de sincronia labial para aplicação em larga escala sem precisar realizar captura de movimentos faciais para tanto. Uma apresentação em vídeo feita por Mateusz Poplawski, o diretor chefe de tecnologias para personagens do jogo, mostrou os bons resultados da empreitada. \"Cyberpunk 2077 tem sincronia labial completa para todos os personagens em 10 línguas dubladas diferentes\\\", avisou. \\\"É incrível ver isso em idiomas que muitas vezes não encontram muito suporte. Bom trabalho de todos os envolvidos. Está empolgado para jogar Cyberpunk 2077 no seu lançamento, já no próximo dia 19 de novembro? Comente a seguir!', 5, 2020, 10, 21, 2),
(4, 'Tobey Maguire exige uma condição para retornar em Homem-Aranha 3', 'As filmagens de Homem-Aranha 3 começaram na semana passada, e há cada vez mais indícios de que a trama irá realmente lidar com o multiverso, e o resultado disso você pode muito bem imaginar.\\r\\n\\r\\nSim, estamos falando de um aranhaverso em live-action, com o filme estrelado por Tom Holland contando com o retorno de Tobey Maguire e Andrew Garfield, as duas versões anteriores do herói no cinema. Enquanto há alguns sites alegando que os dois já assinaram contrato para retornarem, a Sony ainda não confirmou os rumores. E de acordo com a jornalista Grace Randolph, é o Tobey Maguire que está complicando a situação.\\r\\n\\r\\nSegundo a jornalista, o Andrew Garfield de fato já assinou contrato para retornar, porém Tobey está exigindo uma condição a Marvel e a Sony para voltar a vestir o uniforme. E por incrível que parece, não é mais dinheiro. A condição exigida por Tobey é que e ele tenha mais participação no filme, especialmente mais tempo fora da fantasia de aranha, para que ele possa atuar mais. O tempo de tela que está atualmente combinado parece não satisfazer o ator.', 2, 2020, 9, 17, 2),
(5, 'Atuações: Janderson é o melhor do Corinthians em empate com o Goiás; veja notas', 'Janderson: foi um dos melhores do Corinthians no empate em 2 a 2 com o Goiás e acabou premiado com um gol de oportunismo - o seu primeiro no profissional. Foi ótima opção de profundidade pela esquerda. Chutou para gol e incomodou muito. Nota: 6,5. Mateus Vital: fez um primeiro tempo excelente, sendo a principal peça na transição ofensiva do Corinthians. Começou a jogada do gol e, a pedido do Carille, tentou chutar mais e assustou. Errou muito na segunda etapa. Nota: 6,5. Cássio: não teve culpa nos dois gols do Goiás, mas demorou muito para sair do gol em duas bolas recuadas. Numa delas, Michael ganhou dele e de Carlos e não fez o gol apenas por excesso de azar. Levou cartão bobo e ficou suspenso. Nota: 5,0', 4, 2019, 10, 10, 1),
(6, 'Yoshikawa Anunciado na MIBR', 'Luis Yoshikawa foi anunciado no time de E-sports MIBR como um dos novos jogadores de CS:GO, o time vai crescendo e tendo uma longa luta pela temporada, com isso fizeram uma nova contratação.', 5, 2019, 6, 15, 1),
(7, 'Uncharted: Tom Holland revela visual de personagem Nathan Drake', 'Tom Holland usou as redes sociais para mostrar o visual de seu personagem, Nathan Drake, em \"Uncharted\", filme baseado na franquia de games. Holland viverá uma versão mais jovem do personagem do que os fãs estão acostumados a ver e vai estrelar o filme ao lado de Mark Wahlberg, que interpreta Sully, o mentor de Nathan Drake.\r\n\"Uncharted\" está programado para chegar aos cinemas em 16 de julho de 2021. A adaptação do jogo da Naughty Dog mostrará os primeiros dias de Nathan Drake e não deve seguir nenhuma história já mostrada nos jogos', 1, 2020, 10, 22, 2),
(8, 'One Piece entra para o catalogo da Netflix em Outubro', 'O anime japones conhecido como One Piece, que é produzido desde 1999, será adicionado ao catalogo da netflix em 12 de Outubro de 2020. One piece foi criado por Eiichiro Oda. Ansioso para isso? ', 1, 2020, 9, 24, 2),
(9, 'Death Stranding 2? Hideo Kojima trabalha em novo jogo', 'Death Stranding 2, é você? A Kojima Productions confirmou que está trabalhando em um novo projeto e que está contratando \"o melhor talento da área\" para o estúdio em Tóquio.\r\n\r\nA confirmação foi realizada nesta quinta-feira (22) por meio do Twitter. O estúdio explicou que \"um novo projeto está em desenvolvimento\" e que eles estão \"em busca de contratar o melhor talento da área para trabalhar no nosso estúdio em Tóquio\". Confira:\r\n\r\nO game em si é um mistério por enquanto, e as únicas pistas são descrições na vaga de emprego listada na página de carreira da Kojima Productions. Há menção de produção de modelos 3D para \"armas, gadgets e veículos\" e experiência desejada com \"sistema(s) de controle de eventos em RPG\", mas há poucos detalhes além disso.\r\n\r\nO próprio Kojima falou anteriormente sobre que jogos poderia desenvolver após Death Stranding, e declarou que estava assistindo a filmes de terror para se inspirar para um novo game do gênero. Os rumores de que poderia se tratar de um novo Silent Hill foram abafados, e as atenções se voltaram para o possível Death Stranding 2. Vem aí?\r\n\r\n\r\n\r\n\r\n\r\n', 3, 2020, 10, 21, 9),
(10, 'Mulher-Maravilha brasileira: Atriz de Os Mutantes inspirou nova heroína', 'Yara Flor, a Mulher-Maravilha brasileira que foi recém-anunciada pela DC Comics, foi inspirada em ninguém mais nem menos do que Suyane Moreira, atriz que interpretou Iara na novela Os Mutantes: Caminhos do Coração (2008).\r\n\r\nUm fã da DC Comics e da Mulher-Maravilha contatou Joëlle Jones, autora por trás da HQ de Yara, e descobriu que o visual da nova heroína indígena foi inspirado em Moreira.\r\n\r\nEm mensagem enviada diretamente à quadrinista, o fã Marcus Lucon se mostrou orgulhoso pela diversidade étnica no Brasil e comentou que a arte de Yara remetia à modelo Suyane Moreira -- e qual não foi a surpresa dele ao obter a resposta: \"Isso é muito legal! Na verdade, eu a usei como um ponto de referência quando criei Yara\".\r\n\r\nFuture State: Wonder Woman, minissérie que apresentará a Mulher-Maravilha de Yara Flor, está prevista para chegar em 2021 nos Estados Unidos.', 3, 2020, 10, 20, 2),
(11, '‘The Batman’: Fotos mostram Superman e Mulher-Maravilha no set', 'Ao contrário do que muitos imaginavam, parece que ‘The Batman‘ terá conexão com outros personagens da DC Comics, mesmo que de forma indireta.\r\n\r\nEm seu perfil do Twitter, um fã divulgou uma imagens dos bastidores da adaptação, revelando um homem vestido com o traje do Superman e uma mulher fantasiada como a Mulher-Maravilha.\r\nEm outra imagem, vemos um cartaz rasgado pela metade que estampa o logo oficial de Flash.\r\n\r\nConfira:\r\n\r\n“Entãããão, acabaram de me enviar esta foto. Isso significa duas coisas: uma é que esta imagem é 100% uma festa de Halloween. A outra é que o Superman realmente existe no universo criador por Matt Reeves.”', 5, 2020, 10, 16, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `codRedator` int(11) NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `sobrenome` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `cidade` varchar(200) DEFAULT NULL,
  `ddd` int(11) DEFAULT NULL,
  `telefone` varchar(10) DEFAULT NULL,
  `codTurma` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncar tabela antes do insert `redator`
--

TRUNCATE TABLE `redator`;
--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`codRedator`, `nome`, `sobrenome`, `email`, `cidade`, `ddd`, `telefone`, `codTurma`, `dia`, `mes`, `ano`) VALUES
(1, 'João Pedro', 'Morais', 'joaopedromorais@gmail.com', 'Ribeirão Pires', 11, '5555-5555', 1, 21, 10, 2003),
(2, 'João Paulo', 'Silva', 'Joaosilva@gmail.com', 'Mauá', 11, '1212-5555', 1, 16, 5, 2002),
(3, 'Luana', 'Souza', 'luanasouza@gmail.com', 'São Paulo', 11, '5445-5531', 4, 19, 7, 2001),
(4, 'Gustavo Henrique', 'Silva Pinto', 'gustavohenrique@gmail.com', 'Ribeirão Pires', 11, '1442-5157', 2, 27, 9, 2004),
(5, 'Vitor', 'Cruz', 'vitorcruz@gmail.com', 'Ribeirão Pires', 11, '5435-6531', 1, 26, 12, 2005);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codTurma` int(11) NOT NULL,
  `turma` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncar tabela antes do insert `turma`
--

TRUNCATE TABLE `turma`;
--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codTurma`, `turma`) VALUES
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
  ADD PRIMARY KEY (`codCategoria`);

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
  ADD PRIMARY KEY (`codNoticia`),
  ADD KEY `codRedator` (`codRedator`),
  ADD KEY `codCategoria` (`codCategoria`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codRedator`),
  ADD KEY `codTurma` (`codTurma`),
  ADD KEY `ano` (`ano`),
  ADD KEY `mes` (`mes`),
  ADD KEY `dia` (`dia`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codTurma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `redator`
--
ALTER TABLE `redator`
  MODIFY `codRedator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `codTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`codRedator`) REFERENCES `redator` (`codRedator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`codCategoria`) REFERENCES `categoria` (`codCategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`codTurma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
