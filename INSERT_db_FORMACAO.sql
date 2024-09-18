/*************************************************************************************/
/*                                      INSERTS                                      */
/*************************************************************************************/

USE FORMACAO

/*==============================================================*/
/* INSERT: POSTAL                                 				*/
/*==============================================================*/

INSERT INTO POSTAL(Id_Postal,CODIGO,lOCALIDADE)
VALUES(1,'3500-432','VISEU')
INSERT INTO POSTAL(Id_Postal,CODIGO,lOCALIDADE)
VALUES(2,'3460-232','TONDELA')
INSERT INTO POSTAL(Id_Postal,CODIGO,lOCALIDADE)
VALUES(3,'1000-232','LISBOA')
INSERT INTO POSTAL(Id_Postal,CODIGO,lOCALIDADE)
VALUES(4,'6000-001','PORTO')
INSERT INTO POSTAL(Id_Postal,CODIGO,lOCALIDADE)
VALUES(5,'3534-909','Mangualde')

/*==============================================================*/
/* INSERT: CURSO                                 				*/
/*==============================================================*/

INSERT INTO CURSO(Cod_Curso,Nome)
VALUES(1,'EFA-B3 Carpintaria')
INSERT INTO CURSO(Cod_Curso,Nome)
VALUES(2,'EFA-B3 SERRALHEIRO MECÂNICO')
INSERT INTO CURSO(Cod_Curso,Nome)
VALUES(3,'VA 8/2017 Programador Informática')
INSERT INTO CURSO(Cod_Curso,Nome)
VALUES(4,'EFA-NS TÉCNICO Agropecuaria')
INSERT INTO CURSO(Cod_Curso,Nome)
VALUES(5,'COZINHEIRO/A')
INSERT INTO CURSO(Cod_Curso,Nome)
VALUES(6,'EFA-B2 Carpintaria')

INSERT INTO CURSO(Cod_Curso,Nome)
VALUES(7,'EFA-NS TÉCNICO DE INFORMATICA')

/*==============================================================*/
/* INSERT: ACAO                                 				*/
/*==============================================================*/

INSERT INTO ACAO(Id_Acao,Data_Inicio,Data_Fim,Tipo_Acao,Local_Curso,Cod_Curso)
VALUES(1,'2016-07-01','2017-09-15','EFA-B3','CFV-COIMBRÕES',1)
INSERT INTO ACAO(Id_Acao,Data_Inicio,Data_Fim,Tipo_Acao,Local_Curso,Cod_Curso)
VALUES(2,'2017-09-01','2018-06-10','EFA-B3','CFV-COIMBRÕES',2)
INSERT INTO ACAO(Id_Acao,Data_Inicio,Data_Fim,Tipo_Acao,Local_Curso,Cod_Curso)
VALUES(3,'2017-12-20','2018-07-15','VA 1','ESTGV-VISEU',3)
INSERT INTO ACAO(Id_Acao,Data_Inicio,Data_Fim,Tipo_Acao,Local_Curso,Cod_Curso)
VALUES(4,'2016-12-04','2018-04-10','EFA-NS','COAP-MANGUALDE',4)
INSERT INTO ACAO(Id_Acao,Data_Inicio,Data_Fim,Tipo_Acao,Local_Curso,Cod_Curso)
VALUES(5,'2016-11-16','2018-02-09','EFA-B3','PROMOVER',5)
INSERT INTO ACAO(Id_Acao,Data_Inicio,Data_Fim,Tipo_Acao,Local_Curso,Cod_Curso)
VALUES(6,'2016-12-04','2018-04-10','EFA-B3','CAMPO FUTEBOL O.FRADES',5)
INSERT INTO ACAO(Id_Acao,Data_Inicio,Data_Fim,Tipo_Acao,Local_Curso,Cod_Curso)
VALUES(7,'2012-12-04','2013-03-10','EFA-B2','CFV',5)

INSERT INTO ACAO(Id_Acao,Data_Inicio,Data_Fim,Tipo_Acao,Local_Curso,Cod_Curso)
VALUES(8,'2017-12-04','2019-03-10','EFA-NS','CFV',7)
/*==============================================================*/
/* INSERT: FORMANDO                                 			*/
/*==============================================================*/

INSERT INTO FORMANDO(N_FORMANDO,NOME,BI,C_Postal,Data_Nascimento,E_mail,Telefone)
VALUES (1,'Barbara Santos','11345678',1,'1980-04-17','bsp@gmail.com','963258741')
INSERT INTO FORMANDO(N_FORMANDO,NOME,BI,C_Postal,Data_Nascimento,E_mail,Telefone)
VALUES (2,'Pedro Rodrigues','11245678',1,'1978-04-30','pr_p@gmail.com','963258981')
INSERT INTO FORMANDO(N_FORMANDO,NOME,BI,C_Postal,Data_Nascimento,E_mail,Telefone)
VALUES (3,'Paulo juvenal','1123221',5,'1968-03-08',DEFAULT,DEFAULT)
INSERT INTO FORMANDO(N_FORMANDO,NOME,BI,C_Postal,Data_Nascimento,E_mail,Telefone)
VALUES (4,'Ricardo Lopes','11958456',5,'1977-01-30','rlopes_01@gmail.com','963365478')

INSERT INTO FORMANDO(N_FORMANDO,NOME,BI,C_Postal,Data_Nascimento,E_mail,Telefone)
VALUES (5,'ANA SOUSA','11900054',1,'1994-05-26','anas_26@gmail.com','963222365')
INSERT INTO FORMANDO(N_FORMANDO,NOME,BI,C_Postal,Data_Nascimento,E_mail,Telefone)
VALUES (6,'BRIAND MONTEIRO','11900128',1,'1992-06-26','briand_26@gmail.com','96322365')
INSERT INTO FORMANDO(N_FORMANDO,NOME,BI,C_Postal,Data_Nascimento,E_mail,Telefone)
VALUES (7,'DANIEL ALBUQUERQUE','11911153',2,'1993-05-26','daniel_7@gmail.com','912366365')
INSERT INTO FORMANDO(N_FORMANDO,NOME,BI,C_Postal,Data_Nascimento,E_mail,Telefone)
VALUES (8,'DANY ALMEIDA','12900154',1,'1995-03-26','dany@hotmail.com','933212365')

INSERT INTO FORMANDO(N_FORMANDO,NOME,BI,C_Postal,Data_Nascimento,E_mail,Telefone)
VALUES (9,'CELESTINO LOPES','25125654',1,'1970-05-26','cl_n@gmail.com','963222365')
INSERT INTO FORMANDO(N_FORMANDO,NOME,BI,C_Postal,Data_Nascimento,E_mail,Telefone)
VALUES (10,'PAULO LEITÃO','11844028',1,'1975-07-26','p_leitao@gmail.com','96352365')
INSERT INTO FORMANDO(N_FORMANDO,NOME,BI,C_Postal,Data_Nascimento,E_mail,Telefone)
VALUES (11,'DANIEL PEREIRA','11911153',3,'1970-05-13','daniel_p@gmail.com','91236965')
INSERT INTO FORMANDO(N_FORMANDO,NOME,BI,C_Postal,Data_Nascimento,E_mail,Telefone)
VALUES (12,'PAULA ALMEIDA','12900154',1,'1975-03-27','paula@hotmail.com','912582365')


INSERT INTO FORMANDO(N_FORMANDO,NOME,BI,C_Postal,Data_Nascimento,E_mail,Telefone)
VALUES (13,'FÁBIO SANTOS','11901054',3,'1991-07-26','fa_26@gmail.com','96300365')
INSERT INTO FORMANDO(N_FORMANDO,NOME,BI,C_Postal,Data_Nascimento,E_mail,Telefone)
VALUES (14,'HUGO CARVALHO','11902128',1,'1993-06-23','hc_23@gmail.com','96301365')
INSERT INTO FORMANDO(N_FORMANDO,NOME,BI,C_Postal,Data_Nascimento,E_mail,Telefone)
VALUES (15,'JESSI SANTOS','11903153',2,'1991-08-15','jessi_7@gmail.com','912002365')
INSERT INTO FORMANDO(N_FORMANDO,NOME,BI,C_Postal,Data_Nascimento,E_mail,Telefone)
VALUES (16,'JOSÉ CORREIA','12904154',1,'1992-03-27','jc_27@hotmail.com','93303365')

INSERT INTO FORMANDO(N_FORMANDO,NOME,BI,C_Postal,Data_Nascimento,E_mail,Telefone)
VALUES (17,'VITÓRIA SANTOS','10114154',1,'1990-03-28','vt_27@hotmail.com','93403365')



/*==============================================================*/
/* INSERT: FORMANDO_ACAO                                 	    */
/*==============================================================*/

INSERT INTO FORMANDO_ACAO(N_Formando,Id_Acao,Estado)
VALUES(1,4,1)
INSERT INTO FORMANDO_ACAO(N_Formando,Id_Acao,Estado)
VALUES(2,4,1)
INSERT INTO FORMANDO_ACAO(N_Formando,Id_Acao,Estado)
VALUES(3,4,1)
INSERT INTO FORMANDO_ACAO(N_Formando,Id_Acao,Estado)
VALUES(4,4,1)


INSERT INTO FORMANDO_ACAO(N_Formando,Id_Acao,Estado)
VALUES(5,3,1)
INSERT INTO FORMANDO_ACAO(N_Formando,Id_Acao,Estado)
VALUES(6,3,1)
INSERT INTO FORMANDO_ACAO(N_Formando,Id_Acao,Estado)
VALUES(7,3,1)
INSERT INTO FORMANDO_ACAO(N_Formando,Id_Acao,Estado)
VALUES(8,3,1)

INSERT INTO FORMANDO_ACAO(N_Formando,Id_Acao,Estado)
VALUES(13,3,1)
INSERT INTO FORMANDO_ACAO(N_Formando,Id_Acao,Estado)
VALUES(14,3,1)
INSERT INTO FORMANDO_ACAO(N_Formando,Id_Acao,Estado)
VALUES(15,3,1)
INSERT INTO FORMANDO_ACAO(N_Formando,Id_Acao,Estado)
VALUES(16,3,1)

INSERT INTO FORMANDO_ACAO(N_Formando,Id_Acao,Estado)
VALUES(17,8,1)



INSERT INTO FORMANDO_ACAO(N_Formando,Id_Acao,Estado)
VALUES(9,1,1)
INSERT INTO FORMANDO_ACAO(N_Formando,Id_Acao,Estado)
VALUES(10,1,1)
INSERT INTO FORMANDO_ACAO(N_Formando,Id_Acao,Estado)
VALUES(11,1,1)
INSERT INTO FORMANDO_ACAO(N_Formando,Id_Acao,Estado)
VALUES(12,1,1)
INSERT INTO FORMANDO_ACAO(N_Formando,Id_Acao,Estado)
VALUES(9,7,DEFAULT)



/*

FÁBIO MANUEL RODRIGUES DOS SANTOS
HUGO RENATO GARCIA CARVALHO
JESSI MIGUEL SOUSA SANTOS
JOSÉ ANTÓNIO ALMEIDA CORREIA
MARIA JOÃO PEREIRA SOUSA (não iniciou)
MIGUEL ALBUQUERQUE FERREIRA
PATRICK LOPES
PATRICK SOUSA MARQUES (não iniciou)
RICARDO JORGE ALVES GOMES
RICARDO JORGE SOARES DUARTE
ANA CLAUDIA MONTEIRO LEAL
ANA ISABEL PINTO AFONSO
CARLA FILIPA DA COSTA LOPES
ÂNGELA HIRONDINA NEVES FIGUEIREDO
FRANCISCA JOÃO FERREIRA DOS SANTOS LARANJO
PEDRO MIGUEL ALMEIDA LOPES
RICARDO MIGUEL ANTUNES RODRIGUES DE ALMEIDA (não iniciou)
RUI FILIPE ALMEIDA SILVA
VITOR MANUEL MORAIS MONTEIRO
CELINA RODRIGUES DE OLIVEIRA (Iniciou em 3/1/2018)

*/
/*==============================================================*/
/* INSERT: FORMACAO_ACADEMICA                                 	*/
/*==============================================================*/

INSERT INTO FORMACAO_ACADEMICA(Id_AREA,DESIGNACAO)
VALUES(1,'INFORMATICA')
INSERT INTO FORMACAO_ACADEMICA(Id_AREA,DESIGNACAO)
VALUES(2,'ELETRÓNICA')
INSERT INTO FORMACAO_ACADEMICA(Id_AREA,DESIGNACAO)
VALUES(3,'MECANICA')
INSERT INTO FORMACAO_ACADEMICA(Id_AREA,DESIGNACAO)
VALUES(4,'JARDINAGEM')
INSERT INTO FORMACAO_ACADEMICA(Id_AREA,DESIGNACAO)
VALUES(5,'MADEIRAS')
INSERT INTO FORMACAO_ACADEMICA(Id_AREA,DESIGNACAO)
VALUES(6,'CONTABILIDADE')
INSERT INTO FORMACAO_ACADEMICA(Id_AREA,DESIGNACAO)
VALUES(7,'MATEMATICA')
INSERT INTO FORMACAO_ACADEMICA(Id_AREA,DESIGNACAO)
VALUES(8,'PORTUGUÊS')

/*==============================================================*/
/* INSERT: FORMADOR                                 	        */
/*==============================================================*/

INSERT INTO FORMADOR(Id_FORMADOR,Nome,BI,C_POSTAL,Data_Nascimento,E_mail,Telefone,Area_Formacao)
VALUES(1,'RUI PEREIRA','11377256',2,'1978-03-08','rpereira4161@hotmail.com','913456789',1)
INSERT INTO FORMADOR(Id_FORMADOR,Nome,BI,C_POSTAL,Data_Nascimento,E_mail,Telefone,Area_Formacao)
VALUES(2,'SÓNIA TORRES','11375256',2,'1983-03-09','sonia_torres@hotmail.com','93156789',1)
INSERT INTO FORMADOR(Id_FORMADOR,Nome,BI,C_POSTAL,Data_Nascimento,E_mail,Telefone,Area_Formacao)
VALUES(3,'ELISABETE SANTOS','113773756',2,'1983-03-09','elisabete_s83@sapo.pt','963852147',1)
INSERT INTO FORMADOR(Id_FORMADOR,Nome,BI,C_POSTAL,Data_Nascimento,E_mail,Telefone,Area_Formacao)
VALUES(4,'Andreia Quintal','11377657',1,'1979-04-09','andreia_3@sapo.pt','921234568',1)
INSERT INTO FORMADOR(Id_FORMADOR,Nome,BI,C_POSTAL,Data_Nascimento,E_mail,Telefone,Area_Formacao)
VALUES(5,'Ângela Antunes','11377657',2,'1980-04-13','angela_a_4@sapo.pt','965478882',1)
INSERT INTO FORMADOR(Id_FORMADOR,Nome,BI,C_POSTAL,Data_Nascimento,E_mail,Telefone,Area_Formacao)
VALUES(6,'David Mateus','12276573',1,'1980-07-25','dav_m_13@sapo.pt','965874123',1)
INSERT INTO FORMADOR(Id_FORMADOR,Nome,BI,C_POSTAL,Data_Nascimento,E_mail,Telefone,Area_Formacao)
VALUES(7,'Paulo Coimbra','12222257',1,'1980-05-13','paulo_c_5@sapo.pt','91254789',1)
INSERT INTO FORMADOR(Id_FORMADOR,Nome,BI,C_POSTAL,Data_Nascimento,E_mail,Telefone,Area_Formacao)
VALUES(8,'Nelson Ferreira','12212257',1,'1977-05-13','nelson_f_13@sapo.pt','969542123',1)
INSERT INTO FORMADOR(Id_FORMADOR,Nome,BI,C_POSTAL,Data_Nascimento,E_mail,Telefone,Area_Formacao)
VALUES(9,'LUIS COSTA','11378256',2,'1983-03-09','luiscosta_c83@sapo.pt','96852147',2)
INSERT INTO FORMADOR(Id_FORMADOR,Nome,BI,C_POSTAL,Data_Nascimento,E_mail,Telefone,Area_Formacao)
VALUES(10,'CARLOS SANTOS','11379256',2,'1974-03-09','santix_@sapo.pt','96123857',5)
INSERT INTO FORMADOR(Id_FORMADOR,Nome,BI,C_POSTAL,Data_Nascimento,E_mail,Telefone,Area_Formacao)
VALUES(11,'GUMERCINDO','11776256',2,'1964-03-09','ggumercindo_@gmail.pt','96312458',5)
INSERT INTO FORMADOR(Id_FORMADOR,Nome,BI,C_POSTAL,Data_Nascimento,E_mail,Telefone,Area_Formacao)
VALUES(12,'JOSÉ TORRES','11575256',2,'1974-03-09','santix_@sapo.pt','963852123',4)



/*==============================================================*/
/* INSERT: FORMADOR_ACAO                                 	     */
/*==============================================================*/
INSERT INTO FORMADOR_ACAO(Id_Formador,Id_Acao)
VALUES(1,3)
INSERT INTO FORMADOR_ACAO(Id_Formador,Id_Acao)
VALUES(1,1)
INSERT INTO FORMADOR_ACAO(Id_Formador,Id_Acao)
VALUES(4,3)
INSERT INTO FORMADOR_ACAO(Id_Formador,Id_Acao)
VALUES(5,3)
INSERT INTO FORMADOR_ACAO(Id_Formador,Id_Acao)
VALUES(6,3)
INSERT INTO FORMADOR_ACAO(Id_Formador,Id_Acao)
VALUES(7,3)
INSERT INTO FORMADOR_ACAO(Id_Formador,Id_Acao)
VALUES(8,3)
INSERT INTO FORMADOR_ACAO(Id_Formador,Id_Acao)
VALUES(12,4)
INSERT INTO FORMADOR_ACAO(Id_Formador,Id_Acao)
VALUES(1,2)
INSERT INTO FORMADOR_ACAO(Id_Formador,Id_Acao)
VALUES(1,4)


/*==============================================================*/
/* INSERT: FORMADOR_CURSO                                 	     */
/*==============================================================*/

/*INSERT INTO FORMADOR_CURSO(Id_Formador,Cod_Curso)
VALUES(1,3)
INSERT INTO FORMADOR_CURSO(Id_Formador,Cod_Curso)
VALUES(1,1)
INSERT INTO FORMADOR_CURSO(Id_Formador,Cod_Curso)
VALUES(4,3)
INSERT INTO FORMADOR_CURSO(Id_Formador,Cod_Curso)
VALUES(5,3)
INSERT INTO FORMADOR_CURSO(Id_Formador,Cod_Curso)
VALUES(6,3)
INSERT INTO FORMADOR_CURSO(Id_Formador,Cod_Curso)
VALUES(7,3)
INSERT INTO FORMADOR_CURSO(Id_Formador,Cod_Curso)
VALUES(8,3)
INSERT INTO FORMADOR_CURSO(Id_Formador,Cod_Curso)
VALUES(12,4)
INSERT INTO FORMADOR_CURSO(Id_Formador,Cod_Curso)
VALUES(10,3)
INSERT INTO FORMADOR_CURSO(Id_Formador,Cod_Curso)
VALUES(11,3)
*/
/*==============================================================*/
/* INSERT: UFCD                                 	            */
/*==============================================================*/

INSERT INTO  UFCD(CODIGO_UFCD,Nome_UFCD,N_Horas)
VALUES(0806,'Principios metodológicos da programação',25)
INSERT INTO UFCD(CODIGO_UFCD,Nome_UFCD,N_Horas)
VALUES(0804,'Algoritmos',25)
INSERT INTO  UFCD(CODIGO_UFCD,Nome_UFCD,N_Horas)
VALUES(3935,'Programação em C#',50)
INSERT INTO  UFCD(CODIGO_UFCD,Nome_UFCD,N_Horas)
VALUES(3936,'Programação em ASP.NET',50)
INSERT INTO  UFCD(CODIGO_UFCD,Nome_UFCD,N_Horas)
VALUES(3937,'Programação de sistemas distribuidos - Web Services com.NET',50)
INSERT INTO  UFCD(CODIGO_UFCD,Nome_UFCD,N_Horas)
VALUES(0812,'Programação em Linguagem SQL',50)
INSERT INTO  UFCD(CODIGO_UFCD,Nome_UFCD,N_Horas)
VALUES(2332,'Desenho técnico',50)

INSERT INTO  UFCD(CODIGO_UFCD,Nome_UFCD,N_Horas)
VALUES(1,'Matemática',200)

INSERT INTO  UFCD(CODIGO_UFCD,Nome_UFCD,N_Horas)
VALUES(2,'TIC',200)

INSERT INTO  UFCD(CODIGO_UFCD,Nome_UFCD,N_Horas)
VALUES(3,'LINGUAGEM E COMUNICAÇÃO',200)

INSERT INTO  UFCD(CODIGO_UFCD,Nome_UFCD,N_Horas)
VALUES(4,'LINGUA ESTRANGUEIRA (INGLÊS)',100)

INSERT INTO  UFCD(CODIGO_UFCD,Nome_UFCD,N_Horas)
VALUES(5,'CIDADANIA E EMPREGABILIDADE',200)

/*==============================================================*/
/* INSERT: CLASSIFICACAO                                 	     */
/*==============================================================*/

INSERT INTO CLASSIFICACAO(N_FORMANDO,N_UFCD,Data_Lancamento,Nota,Falta)
VALUES(5,0806,'2018-01-02',12,2)
INSERT INTO CLASSIFICACAO(N_FORMANDO,N_UFCD,Data_Lancamento,Nota,Falta)
VALUES(6,0806,'2018-01-02',16,3)
INSERT INTO CLASSIFICACAO(N_FORMANDO,N_UFCD,Data_Lancamento,Nota,Falta)
VALUES(7,0806,'2018-01-02',11,1)
INSERT INTO CLASSIFICACAO(N_FORMANDO,N_UFCD,Data_Lancamento,Nota,Falta)
VALUES(8,0806,'2018-01-02',19,0)

INSERT INTO CLASSIFICACAO(N_FORMANDO,N_UFCD,Data_Lancamento,Nota,Falta)
VALUES(13,0806,'2018-01-02',10,6)
INSERT INTO CLASSIFICACAO(N_FORMANDO,N_UFCD,Data_Lancamento,Nota,Falta)
VALUES(14,0806,'2018-01-02',9,10)
INSERT INTO CLASSIFICACAO(N_FORMANDO,N_UFCD,Data_Lancamento,Nota,Falta)
VALUES(15,0806,'2018-01-02',8,7)


INSERT INTO CLASSIFICACAO(N_FORMANDO,N_UFCD,Data_Lancamento,Nota,Falta)
VALUES(5,0812,'2018-01-20',11,3)
INSERT INTO CLASSIFICACAO(N_FORMANDO,N_UFCD,Data_Lancamento,Nota,Falta)
VALUES(6,0812,'2018-01-20',13,5)
INSERT INTO CLASSIFICACAO(N_FORMANDO,N_UFCD,Data_Lancamento,Nota,Falta)
VALUES(7,0812,'2018-01-20',7,10)
INSERT INTO CLASSIFICACAO(N_FORMANDO,N_UFCD,Data_Lancamento,Nota,Falta)
VALUES(8,0812,'2018-01-20',19,2)

INSERT INTO CLASSIFICACAO(N_FORMANDO,N_UFCD,Data_Lancamento,Nota,Falta)
VALUES(13,0812,'2018-01-20',7,6)
INSERT INTO CLASSIFICACAO(N_FORMANDO,N_UFCD,Data_Lancamento,Nota,Falta)
VALUES(14,0812,'2018-01-20',10,3)
INSERT INTO CLASSIFICACAO(N_FORMANDO,N_UFCD,Data_Lancamento,Nota,Falta)
VALUES(15,0812,'2018-01-20',9,4)

INSERT INTO CLASSIFICACAO(N_FORMANDO,N_UFCD,Data_Lancamento,Nota,Falta)
VALUES(16,0812,'2018-01-25',19,0)

INSERT INTO CLASSIFICACAO(N_FORMANDO,N_UFCD,Data_Lancamento,Nota,Falta)
VALUES(17,0806,'2018-01-25',16,0)

/*==============================================================*/
/* INSERT: FORMADOR_UFCD                                 	     */
/*==============================================================*/

INSERT INTO FORMADOR_UFCD(CODIGO_UFCD,Id_FORMADOR)
VALUES(0812,1)
INSERT INTO FORMADOR_UFCD(CODIGO_UFCD,Id_FORMADOR)
VALUES(0806,4)
INSERT INTO FORMADOR_UFCD(CODIGO_UFCD,Id_FORMADOR)
VALUES(0804,5)
INSERT INTO FORMADOR_UFCD(CODIGO_UFCD,Id_FORMADOR)
VALUES(3935,6)
INSERT INTO FORMADOR_UFCD(CODIGO_UFCD,Id_FORMADOR)
VALUES(3936,7)
INSERT INTO FORMADOR_UFCD(CODIGO_UFCD,Id_FORMADOR)
VALUES(3937,8)
INSERT INTO FORMADOR_UFCD(CODIGO_UFCD,Id_FORMADOR)
VALUES(2332,10)

/*==============================================================*/
/* INSERT: CURSO_UFCD                                 	        */
/*==============================================================*/

Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(0804,3)
Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(0806,3)
Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(3935,3)
Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(3936,3)
Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(3937,3)
Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(0812,3)
Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(2332,1)
Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(2332,2)
Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(2332,3)
Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(2332,4)
Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(2332,5)
Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(2332,6)

/*BASE CARPINTARIA*/
Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(1,1)
Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(2,1)
Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(3,1)
Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(4,1)
Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(5,1)


/*BASE S.MECANICA*/
Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(1,2)
Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(2,2)
Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(3,2)
Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(4,2)
Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(5,2)

/*BASE S.COZINHA*/
Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(1,5)
Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(2,5)
Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(3,5)
Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(4,5)
Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(5,5)



Insert into CURSO_UFCD(cod_UFCD,Cod_curso)
VALUES(0806,7)