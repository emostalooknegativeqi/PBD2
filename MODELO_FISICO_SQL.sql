/* Bibliotecas_LOGICO: */

CREATE DATABASE Bibliotecas

USE Bibliotecas

CREATE TABLE Bibliotecas (
    Cod_Bibliotecas INTEGER PRIMARY KEY,
    Unidade VARCHAR (50) NOT NULL,
    Endereco VARCHAR (50) NOT NULL,
);

CREATE TABLE Aluno (
    RM INTEGER PRIMARY KEY,
    Nome VARCHAR (50)NOT NULL,
    Sexo VARCHAR (10)  NOT NULL,
    fk_Livro_ISBN INTEGER 
);

CREATE TABLE Livro (
    Titulo VARCHAR (100) NOT NULL,
    ISBN INTEGER PRIMARY KEY NOT NULL
);

CREATE TABLE Autor (
    Cod_autor INTEGER PRIMARY KEY,
    nome VARCHAR (50) NOT NULL
);

CREATE TABLE Assunto (
    Cod_assunto VARCHAR PRIMARY KEY,
    Descricao VARCHAR (100)  NOT NULL
);

CREATE TABLE Cadastra (
    fk_Bibliotecas_Cod_Bibliotecas INTEGER NOT NULL, 
    fk_Aluno_RM INTEGER  NOT NULL
);

CREATE TABLE Registra (
    fk_Bibliotecas_Cod_Bibliotecas INTEGER  NOT NULL,
    fk_Livro_ISBN INTEGER NOT NULL
);

CREATE TABLE Escreve (
    fk_Autor_Cod_autor INTEGER  NOT NULL,
    fk_Livro_ISBN INTEGER
);

CREATE TABLE Aborda (
    fk_Livro_ISBN INTEGER  NOT NULL,
    fk_Assunto_Cod_assunto VARCHAR
);





SELECT * FROM Bibliotecas 
	INSERT INTO Bibliotecas VALUES (1,'Belval',' R.Interna Grupo Bandeirante, 138')
	INSERT INTO Bibliotecas VALUES (2,'Alphaville',' Av. Andrômeda, 500 - Alphaville')
	INSERT INTO Bibliotecas VALUES (3,'Paulista','Estr. Velha de Itapevi, 2679')
	INSERT INTO Bibliotecas VALUES (4,'Imperial','R. Tomé de Souza, 259')
	INSERT INTO Bibliotecas VALUES (5,'M Cristina','  R Ilha Porchat, 277')

SELECT * FROM Aluno
	INSERT INTO Aluno VALUES (111111, 'Kanye West','masculino',1111111111111)
	INSERT INTO Aluno VALUES (111112, 'Taylor Swift','feminino',1111111111112)
	INSERT INTO Aluno VALUES (111113, 'Freddie Mercury','masculino',1111111111113)
	INSERT INTO Aluno VALUES (111114, 'Michael Jackson ','masculino',1111111111114)
	INSERT INTO Aluno VALUES (111115, 'Edith Piaf','feminino',1111111111115)

SELECT * FROM Livro	
	INSERT INTO Livro VALUES ('Harry Potter e a Pedra Filosofal',1111111111111)
	INSERT INTO Livro VALUES ('A Sociedade do Anel',1111111111112)
	INSERT INTO Livro VALUES ('A Guerra dos Tronos',1111111111113)
	INSERT INTO Livro VALUES ('Percy Jackson e o Ladrao de Raios',1111111111114)
	INSERT INTO Livro VALUES ('It a Coisa',1111111111115)

SELECT * FROM Autor
	INSERT INTO Autor VALUES (111111, 'JK Rowling')
	INSERT INTO Autor VALUES (111112, 'JR Tolkien')
	INSERT INTO Autor VALUES (111113, 'George RR Martin')
	INSERT INTO Autor VALUES (111114, 'Rick Riordan')
	INSERT INTO Autor VALUES (111115, 'Stephen King')

	SELECT * FROM Assunto
	INSERT INTO Assunto VALUES (111, 'Fantasia')
	INSERT INTO Assunto VALUES (112, 'Aventura')
	INSERT INTO Assunto VALUES (113, 'Drama')
	INSERT INTO Assunto VALUES (114, 'Romance')
	INSERT INTO Assunto VALUES (115, 'Suspense')

SELECT * FROM Cadastra
	INSERT INTO Cadastra VALUES (1,111111)
	INSERT INTO Cadastra VALUES (2,111112)
	INSERT INTO Cadastra VALUES (3,111113)
	INSERT INTO Cadastra VALUES (4,111114)
	INSERT INTO Cadastra VALUES (5,111115)

SELECT * FROM Registra
	INSERT INTO Registra VALUES (1,1111111111111)
	INSERT INTO Registra VALUES (2,1111111111112)
	INSERT INTO Registra VALUES (3,1111111111113)
	INSERT INTO Registra VALUES (4,1111111111114)
	INSERT INTO Registra VALUES (5,1111111111115)

SELECT * FROM Escreve
	INSERT INTO Escreve VALUES (111111,1111111111111)
	INSERT INTO Escreve VALUES (111112,1111111111112)
	INSERT INTO Escreve VALUES (111113,1111111111113)
	INSERT INTO Escreve VALUES (111114,1111111111114)
	INSERT INTO Escreve VALUES (111115,1111111111115)

SELECT * FROM Aborda
	INSERT INTO Aborda VALUES (1111111111111,111)
	INSERT INTO Aborda VALUES (1111111111112,112)
	INSERT INTO Aborda VALUES (1111111111113,113)
	INSERT INTO Aborda VALUES (1111111111114,114)
	INSERT INTO Aborda VALUES (1111111111115,115)

 
ALTER TABLE Aluno ADD CONSTRAINT FK_Aluno_2
    FOREIGN KEY (fk_Livro_ISBN)
    REFERENCES Livro (ISBN)
    ON DELETE SET NULL;
 
ALTER TABLE Cadastra ADD CONSTRAINT FK_Cadastra_1
    FOREIGN KEY (fk_Bibliotecas_Cod_Bibliotecas)
    REFERENCES Bibliotecas (Cod_Bibliotecas)
    ON DELETE SET NULL;
 
ALTER TABLE Cadastra ADD CONSTRAINT FK_Cadastra_2
    FOREIGN KEY (fk_Aluno_RM)
    REFERENCES Aluno (RM)
    ON DELETE SET NULL;
 
ALTER TABLE Registra ADD CONSTRAINT FK_Registra_1
    FOREIGN KEY (fk_Bibliotecas_Cod_Bibliotecas)
    REFERENCES Bibliotecas (Cod_Bibliotecas)
    ON DELETE SET NULL;
 
ALTER TABLE Registra ADD CONSTRAINT FK_Registra_2
    FOREIGN KEY (fk_Livro_ISBN)
    REFERENCES Livro (ISBN)
    ON DELETE SET NULL;
 
ALTER TABLE Escreve ADD CONSTRAINT FK_Escreve_1
    FOREIGN KEY (fk_Autor_Cod_autor)
    REFERENCES Autor (Cod_autor)
    ON DELETE SET NULL;
 
ALTER TABLE Escreve ADD CONSTRAINT FK_Escreve_2
    FOREIGN KEY (fk_Livro_ISBN)
    REFERENCES Livro (ISBN)
    ON DELETE SET NULL;
 
ALTER TABLE Aborda ADD CONSTRAINT FK_Aborda_1
    FOREIGN KEY (fk_Livro_ISBN)
    REFERENCES Livro (ISBN)
    ON DELETE SET NULL;
 
ALTER TABLE Aborda ADD CONSTRAINT FK_Aborda_2
    FOREIGN KEY (fk_Assunto_Cod_assunto)
    REFERENCES Assunto (Cod_assunto)
    ON DELETE SET NULL;