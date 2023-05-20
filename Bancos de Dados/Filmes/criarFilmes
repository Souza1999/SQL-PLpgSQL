CREATE TABLE Filme (
   	codFilme   	Serial  NOT NULL,
   	titulo      Varchar(25),
   	ano			integer,
   	duracao		integer,
   	codCateg	integer,
   	codEst     	integer
);

CREATE TABLE Artista (
   	codArt  	Serial  NOT NULL,
   	nomeArt		Varchar(25),
   	cidade		Varchar(20),
   	pais		Varchar(20),
   	dataNasc   	Date
);

CREATE TABLE Estudio (
   	codEst 	serial  NOT NULL,
   	nomeEst	Varchar(25)
);

CREATE TABLE Categoria (
   	codCateg   	serial  NOT NULL,
   	descCateg	VARCHAR(25)
);

CREATE TABLE Personagem (
   	codArt 		integer  NOT NULL,
   	codFilme   	integer  NOT NULL,
   	nomePers  	VARCHAR(25),
   	cache_		numeric(15,2)
);

ALTER TABLE Filme 		ADD CONSTRAINT PK_Filme 			PRIMARY KEY(codFilme);
ALTER TABLE Artista 	ADD CONSTRAINT PK_Artista 			PRIMARY KEY(codArt);
ALTER TABLE Estudio 	ADD CONSTRAINT PK_Estudio 			PRIMARY KEY(codEst);
ALTER TABLE Categoria 	ADD CONSTRAINT PK_Categoria 		PRIMARY KEY(codCateg);
ALTER TABLE Personagem	ADD CONSTRAINT PK_Personagem 		PRIMARY KEY(codART,CodFilme);
ALTER TABLE Filme 		ADD CONSTRAINT FK_Filme1Categ 		FOREIGN KEY(codCateg) 	REFERENCES Categoria;
ALTER TABLE Filme 		ADD CONSTRAINT FK_Filme2Estud 		FOREIGN KEY(codEst) 	REFERENCES Estudio;
ALTER TABLE Personagem 	ADD CONSTRAINT FK_Personagem2Artis	FOREIGN KEY(codArt) 	REFERENCES Artista;
ALTER TABLE Personagem 	ADD CONSTRAINT FK_Personagem1Filme 	FOREIGN KEY(codFilme)	REFERENCES Filme;
