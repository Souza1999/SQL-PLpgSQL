CREATE TABLE Filme (
   	cod      FilmeSERIAL    NOT NULL,
   	titulo   VARCHAR(25),
   	ano      INTEGER,
   	duracao  INTEGER,
   	codCateg INTEGER,
   	codEst   INTEGER
);


CREATE TABLE Artista (
   	codArt      SERIAL         NOT NULL,
   	nomeArt	   VARCHAR(25),
   	cidade	   VARCHAR(20),
   	pais		   VARCHAR(20),
   	dataNasc    DATE
);


CREATE TABLE Estudio (
   	codEst 	SERIAL      NOT NULL,
   	nomeEst	VARCHAR(25)
);


CREATE TABLE Categoria (
   	codCateg   	SERIAL      NOT NULL,
   	descCateg	VARCHAR(25)
);


CREATE TABLE Personagem (
   	codArt 		INTEGER        NOT NULL,
   	codFilme   	INETGER        NOT NULL,
   	nomePers  	VARCHAR(25),
   	cache_		NUMERIC(15,2)
);


ALTER TABLE Filme 		ADD CONSTRAINT PK_Filme 			   PRIMARY KEY(codFilme);
ALTER TABLE Artista 	   ADD CONSTRAINT PK_Artista 			   PRIMARY KEY(codArt);
ALTER TABLE Estudio 	   ADD CONSTRAINT PK_Estudio 			   PRIMARY KEY(codEst);
ALTER TABLE Categoria 	ADD CONSTRAINT PK_Categoria 		   PRIMARY KEY(codCateg);
ALTER TABLE Personagem	ADD CONSTRAINT PK_Personagem 		   PRIMARY KEY(codART,CodFilme);
ALTER TABLE Filme 		ADD CONSTRAINT FK_Filme1Categ 		FOREIGN KEY(codCateg) 	      REFERENCES Categoria;
ALTER TABLE Filme 		ADD CONSTRAINT FK_Filme2Estud 		FOREIGN KEY(codEst) 	         REFERENCES Estudio;
ALTER TABLE Personagem 	ADD CONSTRAINT FK_Personagem2Artis	FOREIGN KEY(codArt) 	         REFERENCES Artista;
ALTER TABLE Personagem 	ADD CONSTRAINT FK_Personagem1Filme 	FOREIGN KEY(codFilme)	      REFERENCES Filme;
