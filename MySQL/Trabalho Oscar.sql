CREATE DATABASE Oscar;

USE Oscar;

CREATE TABLE Diretores (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    Sexo VARCHAR(10),
    ID_Filme INT
);

CREATE TABLE Filmes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    Tipo_de_Filme VARCHAR(255),
    ID_Roteiro INT,
    Lancamento DATE
);

CREATE TABLE Atores (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    Sexo VARCHAR(10),
    ID_Diretor INT,
    ID_Filme INT,
    Coadjuvante BOOLEAN
);

CREATE TABLE MelhorFilme (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    ID_Filme INT,
    ID_MelhorFilme_Voto_Soma INT
);

CREATE TABLE MelhorDiretor (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    ID_Diretor INT,
    ID_MelhorDiretor_Voto_Soma INT
);

CREATE TABLE MelhorAtor (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    Sexo VARCHAR(10),
    ID_Ator INT,
    ID_MelhorAtor_Voto_Soma INT
);

CREATE TABLE MelhorAtriz (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    Sexo VARCHAR(10),
    ID_Atriz INT,
    ID_MelhorAtriz_Voto_Soma INT
);

CREATE TABLE MelhorAtorCoadjuvante (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    ID_Ator INT,
    ID_MelhorAtorCoadjuvante_Voto_Soma INT
);

CREATE TABLE MelhorAtrizCoadjuvante (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    ID_Atriz INT,
    ID_MelhorAtrizCoadjuvante_Voto_Soma INT
);

CREATE TABLE MelhorRoteiroOriginal (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    ID_Filme INT,
    ID_MelhorRoteiroOriginal_Voto_Soma INT
);

CREATE TABLE MelhorRoteiroAdaptado (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    ID_Filme INT,
    ID_MelhorRoteiroAdaptado_Voto_Soma INT
);

CREATE TABLE MelhorFilmeAnimacao (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    Tipo_de_Filme VARCHAR(255),
    ID_Filme INT,
    ID_MelhorFilmeAnimacao_Voto_Soma INT
);

CREATE TABLE MelhorFilmeInternacional (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    Tipo_de_Filme VARCHAR(255),
    ID_Filme INT,
    ID_MelhorFilmeInternacional_Voto_Soma INT
);

CREATE TABLE MelhorDocumentarioLonga (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    Tipo_de_Filme VARCHAR(255),
    ID_Filme INT,
    ID_MelhorDocumentarioLonga_Voto_Soma INT
);

CREATE TABLE MelhorDocumentarioCurta (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    Tipo_de_Filme VARCHAR(255),
    ID_Filme INT,
    ID_MelhorDocumentarioCurta_Voto_Soma INT
);

CREATE TABLE MelhorCurtaLiveAction (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    Tipo_de_Filme VARCHAR(255),
    ID_Filme INT,
    ID_MelhorCurtaLiveAction_Voto_Soma INT
);

CREATE TABLE MelhorCurtaAnimacao (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    Tipo_de_Filme VARCHAR(255),
    ID_Filme INT,
    ID_MelhorCurtaAnimacao_Voto_Soma INT
);

CREATE TABLE MelhorTrilhaSonora (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    Tipo_de_Filme VARCHAR(255),
    ID_Filme INT,
    ID_MelhorTrilhaSonora_Voto_Soma INT
);

CREATE TABLE MelhorCancaoOriginal (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    ID_Filme INT,
    ID_MelhorCancaoOriginal_Voto_Soma INT
);

CREATE TABLE MelhorSom (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    ID_Filme INT,
    ID_MelhorSom_Voto_Soma INT
);

CREATE TABLE MelhorDesignProducao (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    ID_Filme INT,
    ID_MelhorDesignProducao_Voto_Soma INT
);

CREATE TABLE MelhorFotografia (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    ID_Filme INT,
    ID_MelhorFotografia_Voto_Soma INT
);

CREATE TABLE MelhorMaquiagemPenteados (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    ID_Filme INT,
    ID_MelhorMaquiagemPenteados_Voto_Soma INT
);

CREATE TABLE MelhorFigurino (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    ID_Filme INT,
    ID_MelhorFigurino_Voto_Soma INT
);

CREATE TABLE MelhorEdicao (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    ID_Filme INT,
    ID_MelhorEdicao_Voto_Soma INT
);

CREATE TABLE MelhoresEfeitosVisuais (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    ID_Filme INT,
    ID_MelhoresEfeitosVisuais_Voto_Soma INT
);

CREATE TABLE CadastroUsuario (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    Idade INT,
    Sexo VARCHAR(10),
    Data_de_Nascimento DATE,
    Senha VARCHAR(255),
    Usuario VARCHAR(255)
);

CREATE TABLE Votacao (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Cadastro_Usuario INT,
    ID_MelhorFilme_Voto INT,
    ID_MelhorDiretor_Voto INT,
    ID_MelhorAtor_Voto INT,
    ID_MelhorAtriz_Voto INT,
    ID_MelhorAtorCoadjuvante_Voto INT,
    ID_MelhorAtrizCoadjuvante_Voto INT,
    ID_MelhorRoteiroOriginal_Voto INT,
    ID_MelhorRoteiroAdaptado_Voto INT,
    ID_MelhorFilmeAnimacao_Voto INT,
    ID_MelhorFilmeInternacional_Voto INT,
    ID_MelhorDocumentarioLonga_Voto INT,
    ID_MelhorDocumentarioCurta_Voto INT,
    ID_MelhorCurtaLiveAction_Voto INT,
    ID_MelhorCurtaAnimacao_Voto INT,
    ID_MelhorTrilhaSonora_Voto INT,
    ID_MelhorCancaoOriginal_Voto INT,
    ID_MelhorSom_Voto INT,
    ID_MelhorDesignProducao_Voto INT,
    ID_MelhorFotografia_Voto INT,
    ID_MelhorMaquiagemPenteados_Voto INT,
    ID_MelhorFigurino_Voto INT,
    ID_MelhorEdicao_Voto INT,
    ID_MelhoresEfeitosVisuais_Voto INT
);


INSERT INTO Filmes (Nome, Tipo_de_Filme, Lancamento)
VALUES
('Belfast', 'Drama', '2021-09-02'),
('No Ritmo do Coração', 'Comédia dramática', '2021-08-24'),
('Não Olhe para Cima', 'Comédia dramática', '2021-12-01'),
('Drive My Car', 'Drama', '2021-08-06'),
('Duna', 'Ficção científica', '2021-09-15'),
('King Richard: Criando Campeãs', 'Drama biográfico', '2021-11-11'),
('Licorice Pizza', 'Comédia dramática', '2021-11-26'),
('O Beco do Pesadelo', 'Suspense psicológico', '2021-12-01'),
('Ataque dos Cães', 'Drama', '2021-11-10'),
('Amor, Sublime Amor', 'Musical', '2021-12-10');


INSERT INTO Diretores (Nome, Sexo, ID_Filme)
VALUES
('Kenneth Branagh', 'Masculino', 1),
('Troy Kotsur', 'Masculino', 2),
('Adam McKay', 'Masculino', 3),
('Ryusuke Hamaguchi', 'Masculino', 4),
('Denis Villeneuve', 'Masculino', 5),
('Reinaldo Marcus Green', 'Masculino', 6),
('Paul Thomas Anderson', 'Masculino', 7),
('Guillermo del Toro', 'Masculino', 8),
('Jane Campion', 'Feminino', 9),
('Steven Spielberg', 'Masculino', 10);

INSERT INTO Atores (Nome, Sexo, ID_Diretor, ID_Filme, Coadjuvante)
VALUES
('Ciaran Hinds', 'Masculino', 1, 1, FALSE),
('Jamie Dornan', 'Masculino', 1, 1, FALSE),
('Kaitlyn Dever', 'Feminino', 2, 2, FALSE),
('Emilia Jones', 'Feminino', 2, 2, FALSE),
('Leonardo DiCaprio', 'Masculino', 3, 3, FALSE),
('Jennifer Lawrence', 'Feminina', 3, 3, FALSE),
('Hidetoshi Nishijima', 'Masculino', 4, 4, FALSE),
('Tôko Miura', 'Feminina', 4, 4, FALSE),
('Timothée Chalamet', 'Masculino', 5, 5, FALSE),
('Rebecca Ferguson', 'Feminina', 5, 5, FALSE),
('Viola Davis', 'Feminina', 6, 6, FALSE),
('Andra Day', 'Feminina', 6, 6, FALSE),
('Cooper Hoffman', 'Masculino', 7, 7, FALSE),
('Alana Haim', 'Feminina', 7, 7, FALSE),
('Bradley Cooper', 'Masculino', 8, 8, FALSE),
('Cate Blanchett', 'Feminina', 8, 8, FALSE),
('Benedict Cumberbatch', 'Masculino', 9, 9, FALSE),
('Kirsten Dunst', 'Feminina', 9, 9, FALSE),
('Ansel Elgort', 'Masculino', 10, 10, FALSE),
('Rachel Zegler', 'Feminina', 10, 10, FALSE);

INSERT INTO MelhorFilme (Nome, ID_Filme)
VALUES
('Ataque dos Cães', 9);

INSERT INTO MelhorDiretor (Nome, ID_Diretor)
VALUES
('Jane Campion', 9);

INSERT INTO MelhorAtor (Nome, Sexo, ID_Ator)
VALUES
('Will Smith', 'Masculino', 13);

INSERT INTO MelhorAtriz (Nome, Sexo, ID_Atriz)
VALUES
('Jessica Chastain', 'Feminina', 12);

INSERT INTO MelhorAtorCoadjuvante (Nome, ID_Ator)
VALUES
('Troy Kotsur', 2);

INSERT INTO MelhorAtrizCoadjuvante (Nome, ID_Atriz)
VALUES
('Ariana DeBose', 12);

INSERT INTO MelhorRoteiroOriginal (Nome, ID_Filme)
VALUES
('Belfast', 1);

INSERT INTO MelhorRoteiroAdaptado (Nome, ID_Filme)
VALUES
('CODA: No Ritmo do Coração', 2);

INSERT INTO MelhorFilmeAnimacao (Nome, Tipo_de_Filme, ID_Filme)
VALUES
('Encanto', 'Animação', 14);

INSERT INTO MelhorFilmeInternacional (Nome, Tipo_de_Filme, ID_Filme)
VALUES
('Drive My Car', 'Drama', 4);

INSERT INTO MelhorDocumentarioLonga (Nome, Tipo_de_Filme, ID_Filme)
VALUES
('Summer of Soul (...Or, When the Revolution Could Not Be Televised)', 'Documentário', 15);

INSERT INTO MelhorDocumentarioCurta (Nome, Tipo_de_Filme, ID_Filme)
VALUES
('The Queen of Basketball', 'Documentário', 16);

INSERT INTO MelhorCurtaLiveAction (Nome, Tipo_de_Filme, ID_Filme)
VALUES
('The Long Goodbye', 'Curta-metragem', 17);

INSERT INTO MelhorCurtaAnimacao (Nome, Tipo_de_Filme, ID_Filme)
VALUES
('The Windshield Wiper', 'Curta-metragem de animação', 18);

INSERT INTO MelhorTrilhaSonora (Nome, Tipo_de_Filme, ID_Filme)
VALUES
('Duna', 'Ficção científica', 5);

INSERT INTO MelhorCancaoOriginal (Nome, ID_Filme)
VALUES
('No Time To Die', 3);

INSERT INTO MelhorSom (Nome, ID_Filme)
VALUES
('Duna', 5);

INSERT INTO MelhorDesignProducao (Nome, ID_Filme)
VALUES
('Duna', 5);

INSERT INTO MelhorFotografia (Nome, ID_Filme)
VALUES
('Duna', 5);

INSERT INTO MelhorMaquiagemPenteados (Nome, ID_Filme)
VALUES
('The Eyes of Tammy Faye', 19);

INSERT INTO MelhorFigurino (Nome, ID_Filme)
VALUES
('Cruella', 20);

INSERT INTO MelhorEdicao (Nome, ID_Filme)
VALUES
('Ataque dos Cães', 9);

INSERT INTO MelhoresEfeitosVisuais (Nome, ID_Filme)
VALUES
('Duna', 5);

INSERT INTO CadastroUsuario (
Nome, Idade, Sexo, Data_de_Nascimento, Senha, Usuario
)
VALUES
('Fábio', 18, 'Masculino', '2005-08-24', '123456', 'Scoobt'),
('Alline', 18, 'Feminino', '2005-09-06', '789456', 'Coisinha'),
('Gabriel', 27, 'Masculino', '2005-11-11', '135790', 'Gabs');

INSERT INTO Votacao (
ID_MelhorFilme_Voto,
ID_MelhorDiretor_Voto,
ID_MelhorAtor_Voto,
ID_MelhorAtriz_Voto,
ID_MelhorAtorCoadjuvante_Voto,
ID_MelhorAtrizCoadjuvante_Voto,
ID_MelhorRoteiroOriginal_Voto,
ID_MelhorRoteiroAdaptado_Voto,
ID_MelhorFilmeAnimacao_Voto,
ID_MelhorFilmeInternacional_Voto,
ID_MelhorDocumentarioLonga_Voto,
ID_MelhorDocumentarioCurta_Voto,
ID_MelhorCurtaLiveAction_Voto,
ID_MelhorCurtaAnimacao_Voto,
ID_MelhorTrilhaSonora_Voto,
ID_MelhorCancaoOriginal_Voto,
ID_MelhorSom_Voto,
ID_MelhorDesignProducao_Voto,
ID_MelhorFotografia_Voto,
ID_MelhorMaquiagemPenteados_Voto,
ID_MelhorFigurino_Voto,
ID_MelhorEdicao_Voto,
ID_MelhoresEfeitosVisuais_Voto
)
VALUES
(1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 2, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2),
(3, 3, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3);


SELECT * FROM Diretores;

SELECT * FROM Atores;

SELECT * FROM Filmes;

SELECT * FROM MelhorAtor;

SELECT * FROM MelhorAtriz;

SELECT * FROM Votacao;



