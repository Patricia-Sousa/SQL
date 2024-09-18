
/****************************************************************/
/*                       CREATE DATABASE                        */
/****************************************************************/

GO
USE MASTER
if DB_ID('FORMACAO') is  NOT NULL
	DROP DATABASE FORMACAO
	
CREATE DATABASE FORMACAO

GO 
USE FORMACAO

/*==============================================================*/
/* DROP TABLE SE EXISTIREM (IF OBJECT_ID)                       */
/*==============================================================*/

IF OBJECT_ID('CURSO_UFCD','U') IS NOT NULL
	DROP TABLE CURSO_UFCD

IF OBJECT_ID('FORMADOR_UFCD','U') IS NOT NULL
	DROP TABLE FORMADOR_UFCD

IF OBJECT_ID('CLASSIFICAÇÃO','U') IS NOT NULL
	DROP TABLE CLASSIFICAÇÃO	

IF OBJECT_ID('UFCD','U') IS NOT NULL
	DROP TABLE UFCD


IF OBJECT_ID('FORMADOR_ACAO','U') IS NOT NULL
	DROP TABLE FORMADOR_ACAO
	
/*IF OBJECT_ID('FORMADOR_CURSO','U') IS NOT NULL
	DROP TABLE FORMADOR_CURSO*/

IF OBJECT_ID('FORMADOR','U') IS NOT NULL
	DROP TABLE FORMADOR

IF OBJECT_ID('FORMANDO_ACAO','U') IS NOT NULL
	DROP TABLE FORMANDO_ACAO
	
IF OBJECT_ID('FORMACAO_ACADEMICA','U') IS NOT NULL
	DROP TABLE FORMACAO_ACADEMICA

IF OBJECT_ID('FORMANDO','U') IS NOT NULL
	DROP TABLE FORMANDO

IF OBJECT_ID('ACAO ','U') IS NOT NULL
	DROP TABLE ACAO 

IF OBJECT_ID('CURSO','U') IS NOT NULL
	DROP TABLE CURSO
	
IF OBJECT_ID('POSTAL ','U') IS NOT NULL
	DROP TABLE POSTAL 
	
/****************************************************************/
/* CREATE TABLES                                                */
/****************************************************************/
	
/*==============================================================*/
/* TABLE: POSTAL                                 			    */
/*==============================================================*/
CREATE TABLE POSTAL
(
	Id_Postal 	INT 		PRIMARY KEY,
	CODIGO 		VARCHAR(8) 	NOT NULL,
	LOCALIDADE 	VARCHAR(30) NOT NULL
);

/*==============================================================*/
/* TABLE:  CURSO                                			    */
/*==============================================================*/
CREATE TABLE CURSO
(
	Cod_Curso 	INT PRIMARY KEY,
	Nome 		VARCHAR (50)
);

/*==============================================================*/
/* TABLE:  ACAO                                			        */
/*==============================================================*/

CREATE TABLE ACAO
(
	Id_Acao 		INT 			PRIMARY KEY ,
	Data_Inicio 	DATE 			NOT NULL,
	Data_Fim  		DATE 			NOT NULL,
	Tipo_Acao 		VARCHAR (50) 	NOT NULL,
	Local_Curso 	VARCHAR(100) 	NOT NULL,
	Cod_Curso 		INT 			NOT NULL,
	
	CONSTRAINT FK_ACAO_CURSO FOREIGN KEY(Cod_Curso) REFERENCES CURSO(Cod_Curso)
);

/*==============================================================*/
/* TABLE:  FORMANDO                                			    */
/*==============================================================*/

CREATE TABLE FORMANDO
(
	N_Formando 			INT 			NOT NULL PRIMARY KEY,
	Nome 				VARCHAR(50) 	NOT NULL,
	BI 					VARCHAR(12) 	NOT NULL,
	C_POSTAL 			INT 			NOT NULL,
	Data_Nascimento		DATE 			NOT NULL,
	E_mail 				VARCHAR(100) 	DEFAULT 'Não tem',
	Telefone 			VARCHAR(9) 		NULL,
	
	CONSTRAINT FK_POSTAL_FORMADO 	FOREIGN KEY(C_POSTAL)	REFERENCES POSTAL(Id_Postal)
	

);


/*==============================================================*/
/* TABLE:  FORMANDO_ACAO                                   */
/*==============================================================*/
CREATE TABLE FORMANDO_ACAO
(
	N_Formando INT 		NOT NULL,
	Id_Acao	   INT 		NOT NULL,
	Estado	   BIT DEFAULT 0,
	
	CONSTRAINT PK_FORMANDO_ACAO PRIMARY KEY(N_Formando,Id_Acao),
	CONSTRAINT FK_FORMANDO_ACAO FOREIGN KEY(N_Formando)		REFERENCES FORMANDO(N_Formando),
	CONSTRAINT FK_ACAO_FORMANDO FOREIGN KEY (Id_Acao) 		REFERENCES 	ACAO(Id_ACAO)
)

/*==============================================================*/
/* TABLE:  FORMACAO_ACADEMICA                                   */
/*==============================================================*/

CREATE TABLE FORMACAO_ACADEMICA
(
	Id_AREA 		INT 			NOT NULL PRIMARY KEY,
	DESIGNACAO 		VARCHAR(100) 	NOT NULL,
);
/*==============================================================*/
/* TABLE:  FORMADOR                                   			*/
/*==============================================================*/
	
CREATE TABLE FORMADOR
(
	Id_FORMADOR 		INT 			NOT NULL,
	Nome 				VARCHAR(50) 	NOT NULL,
	BI 					VARCHAR(12) 	NOT NULL,
	C_POSTAL 			INT 			NOT NULL,
	Data_Nascimento		DATE 			NOT NULL,
	E_mail 				VARCHAR(100) 	NOT NULL,
	Telefone 			VARCHAR(9) 		NOT NULL,
	Area_Formacao 		INT 			NOT NULL,	

	CONSTRAINT PK_Formador 					PRIMARY KEY (Id_FORMADOR),
	CONSTRAINT FK_FORMADOR_POSTAL 			FOREIGN KEY (C_POSTAL) 		REFERENCES POSTAL(Id_Postal),
	CONSTRAINT FK_FORMADOR_AREA_FORMACAO 	FOREIGN KEY (Area_Formacao) REFERENCES FORMACAO_ACADEMICA(Id_AREA)
);


/*==============================================================*/
/* TABLE:  FORMADOR_ACAO                                   	*/
/*==============================================================*/
CREATE TABLE FORMADOR_ACAO
(
	Id_FORMADOR			INT 	NOT NULL,
	Id_Acao				INT		NOT NULL,
	
	CONSTRAINT PK_FORMADOR_ACAO PRIMARY KEY(Id_FORMADOR,Id_Acao),
	CONSTRAINT FK_FORMADOR_ACAO FOREIGN KEY (Id_FORMADOR) 	REFERENCES FORMADOR(Id_FORMADOR),
	CONSTRAINT FK_ACAO_FORMADOR FOREIGN KEY (Id_ACAO)		REFERENCES ACAO(Id_ACAO)
);	



/*==============================================================*/
/* TABLE:  FORMADOR_CURSO                                   	*/
/*==============================================================*/

/*CREATE TABLE FORMADOR_CURSO(
	Id_Formador 	INT 	NOT NULL,
	Cod_Curso 		INT 	NOT NULL,

	CONSTRAINT PK_FORMADOR_CURSO PRIMARY KEY(Id_Formador,Cod_Curso),
	CONSTRAINT FK_FORMADOR_CURSO FOREIGN KEY (Id_Formador) 	REFERENCES FORMADOR(Id_Formador),
	CONSTRAINT FK_CURSO_FORMADOR FOREIGN KEY (Cod_Curso) 	REFERENCES CURSO(Cod_Curso)
);*/

/*==============================================================*/
/* TABLE:  UFCD                                  			 	*/
/*==============================================================*/	
	
CREATE TABLE UFCD
(
	CODIGO_UFCD 	INT 			NOT NULL  PRIMARY KEY,
	Nome_UFCD 		VARCHAR(100) 	NOT NULL,
	N_Horas 		INT 			NOT NULL
);

/*==============================================================*/
/* TABLE:  CLASSIFICACAO                                  		*/
/*==============================================================*/	

CREATE TABLE CLASSIFICACAO
( 
	N_Formando INT NOT NULL,
	N_UFCD INT NOT NULL ,
	Data_Lancamento DATE DEFAULT getdate() NOT NULL,
	Nota FLOAT  DEFAULT 0 NOT NULL,
	Falta FLOAT DEFAULT 0 NOT NULL,

	CONSTRAINT PK_CLASSIFICACAO 			PRIMARY KEY(N_Formando,N_UFCD,Data_Lancamento),
	CONSTRAINT FK_FORMANDO_CLASSIFICACAO 	FOREIGN KEY (N_Formando) 	REFERENCES Formando(N_Formando),
	CONSTRAINT FK_UFCD_CLASSIFICACAO 		FOREIGN KEY (N_UFCD) 		REFERENCES UFCD(CODIGO_UFCD),
	CONSTRAINT CHK_CLASSIFICACAO_NOTA 		CHECK ( NOTA BETWEEN 0 AND 20),
	CONSTRAINT CHK_CLASSIFICACAO_FALTA 		CHECK ( Falta BETWEEN 0 AND 50)
);

/*==============================================================*/
/* TABLE:  FORMADOR_UFCD                                  		*/
/*==============================================================*/	

CREATE TABLE FORMADOR_UFCD
(
	CODIGO_UFCD INT NOT NULL,
	Id_FORMADOR INT NOT NULL,

	CONSTRAINT PK_FORMADOR_UFCD PRIMARY KEY (CODIGO_UFCD,Id_FORMADOR),
	CONSTRAINT FK_UFCD_FORMADOR FOREIGN KEY (CODIGO_UFCD) REFERENCES UFCD(CODIGO_UFCD),
	CONSTRAINT FK_FORMADOR_UFCD FOREIGN KEY (Id_FORMADOR) REFERENCES FORMADOR(ID_FORMADOR)
);

/*==============================================================*/
/* TABLE:  CURSO_UFCD                                  		*/
/*==============================================================*/	

CREATE TABLE CURSO_UFCD
(
	Cod_UFCD INT NOT NULL,
	Cod_Curso INT NOT NULL,

	CONSTRAINT PK_CURSO_UFCD PRIMARY KEY(Cod_UFCD,Cod_Curso),
	CONSTRAINT FK_UFCD_CURSO FOREIGN KEY (Cod_UFCD) REFERENCES UFCD(CODIGO_UFCD),
	CONSTRAINT FK_CURSO_UFCD FOREIGN KEY (Cod_Curso) REFERENCES CURSO(Cod_Curso)
);

