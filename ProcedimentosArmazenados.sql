-- UFCD 3933 Administração de bases de dados para programadores
-- BD FORMACAO
-- Patrícia Sousa

-- Procedimentos Armazenados

-- Ex. 1
-- Script que cria um procedimento armazenado.

USE FORMACAO
IF OBJECT_ID('Formador_Facademica') IS NOT NULL
DROP PROC Formador_Facademica
GO

CREATE PROCEDURE Formador_Facademica AS
SELECT F.Nome, FA.DESIGNACAO
FROM FORMADOR F JOIN FORMACAO_ACADEMICA FA ON F.Area_Formacao=FA.Id_AREA
WHERE FA.Id_AREA=1
ORDER BY F.Nome

-- Chamar o procedimento armazenado
EXEC Formador_Facademica


-----------------------------------------------------------------------------------------------------------------------------------
-- Ex. 2
-- Script que cria um procedimento armazenado que copia uma tabela.

IF OBJECT_ID('spCopiaFormacaoAcademica') IS NOT NULL
DROP PROC spCopiaFormacaoAcademica
GO

CREATE PROCEDURE spCopiaFormacaoAcademica AS
IF OBJECT_ID('CopiaF_Academica') IS NOT NULL
DROP TABLE CopiaF_Academica

SELECT * INTO CopiaF_Academica FROM FORMACAO_ACADEMICA

-- Chamar procedimento armazenado
EXEC spCopiaFormacaoAcademica

SELECT * FROM CopiaF_Academica

SELECT * FROM FORMACAO_ACADEMICA



-----------------------------------------------------------------------------------------------------------------------------------
-- Ex. 3
-- Criação de um procedimento armazenado que utiliza um parâmetro de entrada opcionais e um parâmetro de saída.

USE FORMACAO
IF OBJECT_ID('spTotalHorasPCurso') IS NOT NULL
DROP PROCEDURE spTotalHorasPCurso
GO

CREATE PROCEDURE spTotalHorasPCurso
		@totalCurso INT OUTPUT,
		@codCurso INT=0
AS
SELECT @totalCurso=SUM(U.N_Horas) FROM CURSO C, CURSO_UFCD CU, UFCD U
WHERE C.Cod_Curso=CU.Cod_Curso AND CU.Cod_UFCD=U.CODIGO_UFCD AND C.Cod_Curso=@codCurso
GROUP BY C.Nome

-- Chamar procedimento armazenado
DECLARE @numeroHoras INT, @cod_Curso INT=3
EXEC spTotalHorasPCurso @numeroHoras OUTPUT, @cod_Curso
PRINT 'O Curso com o ID ' + CONVERT(VARCHAR, @cod_Curso, 1) + ' tem: ' + CONVERT(VARCHAR, @numeroHoras, 1) + ' horas.'



-----------------------------------------------------------------------------------------------------------------------------------
-- Ex. 4
-- Procedimento armazenado com um parâmetro de saída.

-- Total de formadores
USE FORMACAO
IF OBJECT_ID('Total_Formadores_INF') IS NOT NULL
DROP PROCEDURE Total_Formadores_INF
GO

CREATE PROCEDURE Total_Formadores_INF(@Total INT OUTPUT)
AS
SELECT @Total=COUNT(*) 
FROM FORMADOR F JOIN FORMACAO_ACADEMICA FA ON F.Area_Formacao=FA.Id_AREA
WHERE FA.Id_AREA=1

-- Passar parâmetros por posição, chamando o procedimento armazenado
DECLARE @Total_F INT
EXEC Total_Formadores_INF @Total_F OUTPUT
PRINT 'Total de formadores de Informática: ' + CONVERT(VARCHAR, @Total_F, 1)



-- Total de formadores apresentando uma tabela
USE FORMACAO
IF OBJECT_ID('Numero_Formador_INF') IS NOT NULL
DROP PROCEDURE Numero_Formador_INF
GO

CREATE PROCEDURE Numero_Formador_INF(@Total INT OUTPUT)
AS
SELECT 'Numero Formador' AS [Número], COUNT(*) AS [Total] 
FROM FORMADOR F JOIN FORMACAO_ACADEMICA FA ON F.Area_Formacao=FA.Id_AREA
WHERE FA.Id_AREA=1

-- Passar parâmetros por posição, chamando o procedimento armazenado
DECLARE @Total_F INT
EXEC Numero_Formador_INF @Total_F OUTPUT
PRINT 'TOTAL' + CONVERT(VARCHAR, @Total_F, 1)


-----------------------------------------------------------------------------------------------------------------------------------
-- Ex. 5
-- Criação de um procedimento armazenado que devolve um valor (RETURN).

-- Total de formadores da área de Informática
USE FORMACAO
IF OBJECT_ID('Devolve_Numero_Formador') IS NOT NULL
DROP PROCEDURE Devolve_Numero_Formador
GO

CREATE PROCEDURE Devolve_Numero_Formador 
AS
	DECLARE @numeroFormador INT
SELECT @numeroFormador=COUNT(F.Id_FORMADOR)
FROM FORMADOR F JOIN FORMACAO_ACADEMICA FA ON F.Area_Formacao=FA.Id_AREA
WHERE FA.Id_AREA=1
RETURN @numeroFormador

-- Chamar procedimento armazenado
DECLARE @numFormador INT
EXEC @numFormador = Devolve_Numero_Formador
PRINT 'Número de formadores da área de Informática: ' + CONVERT(varchar, @numFormador)




-- Criação de um procedimento armazenado que devolve um valor.
USE FORMACAO
IF OBJECT_ID('spInserirFormador') IS NOT NULL
DROP PROCEDURE spInserirFormador
GO

CREATE PROCEDURE spInserirFormador 
	@idFormador INT,
	@nomeFormador VARCHAR(50),
	@biFormador VARCHAR(12),
	@codPostalFormador INT,
	@dataNascFormador DATE,
	@emailFormador VARCHAR(100),
	@telefFormador VARCHAR(9),
	@areaFormador INT
AS
IF EXISTS(SELECT * FROM FORMACAO_ACADEMICA FA WHERE FA.Id_AREA=@areaFormador)
	BEGIN
	INSERT FORMADOR
	VALUES (
				@idFormador,
				@nomeFormador,
				@biFormador,
				@codPostalFormador,
				@dataNascFormador,
				@emailFormador,
				@telefFormador,
				@areaFormador )
	END
ELSE
	BEGIN
			RAISERROR('Area académica não válida', 11, 1)
	END


-- Chamar procedimento armazenado
BEGIN TRY
			EXEC spInserirFormador 13, 'RUI PEREIRA', '11377256', 2, '1978-03-08', 'rpereira4161@hotmail.com', '913456789', 20
END TRY
BEGIN CATCH
			PRINT 'Ocorreu um erro.'
			PRINT 'Mensagem: ' + CONVERT(VARCHAR, ERROR_MESSAGE())
			IF ERROR_NUMBER()=50000
				PRINT 'Esta é uma mensagem de erro personalizada.'
END CATCH


-----------------------------------------------------------------------------------------------------------------------------------
-- Ex. 6
-- Crie o mesmo procedimento armazenado onde o id_Area é passado por parâmetro.

USE FORMACAO
IF OBJECT_ID('Devolve_Numero_Formadores') IS NOT NULL
DROP PROC Devolve_Numero_Formadores
GO

CREATE PROCEDURE Devolve_Numero_Formadores
	@idArea INT -- parâmetro de entrada
AS
DECLARE @NumeroFormador INT -- variável
SELECT  @NumeroFormador=count(F.Id_FORMADOR)
FROM FORMADOR F JOIN FORMACAO_ACADEMICA FA ON F.Area_Formacao = FA.Id_AREA
WHERE FA.Id_AREA=@idArea
RETURN @NumeroFormador 

-- Chamar procedimento armazenado
BEGIN TRY
	DECLARE @MeuNUMEROFOR int
	EXEC @MeuNUMEROFOR = Devolve_Numero_Formadores @idArea=1
	PRINT 'Número de formadores: '+ CONVERT(varchar, @MeuNUMEROFOR)
END TRY
BEGIN CATCH
	PRINT 'Ocorreu um erro.'
	PRINT 'Número do erro: ' + CONVERT(varchar, ERROR_NUMBER())
	PRINT 'Mensagem de erro: ' + CONVERT(varchar, ERROR_MESSAGE())
END CATCH




-----------------------------------------------------------------------------------------------------------------------------------
-- Ex. 7
-- Crie um procedimento armazenado que insira na tabela formação académica uma área inexistente.

USE FORMACAO
IF OBJECT_ID('spInserirFormacaoAcademica') IS NOT NULL
DROP PROC spInserirFormacaoAcademica
GO

CREATE PROCEDURE spInserirFormacaoAcademica
	@IDAREA INT,
	@DESIG VARCHAR(10)
AS
IF EXISTS(SELECT * FROM FORMACAO_ACADEMICA FA)
	BEGIN
	INSERT FORMACAO_ACADEMICA
	VALUES (
				@IDAREA,
				@DESIG )
	END
ELSE
	BEGIN
			RAISERROR('ERRO.', 11, 1)
	END

-- Chamar procedimento armazenado
BEGIN TRY
	EXEC spInserirFormacaoAcademica 9, 'Química'
	PRINT 'O registo foi inserido com sucesso.'
END TRY
BEGIN CATCH
	PRINT 'Ocorreu um erro. O registo não foi inserido.'
	PRINT 'Número do erro: ' + CONVERT(varchar, ERROR_NUMBER())
	PRINT 'Mensagem de erro: ' + CONVERT(varchar, ERROR_MESSAGE())
END CATCH



SELECT * FROM FORMACAO_ACADEMICA


-----------------------------------------------------------------------------------------------------------------------------------
-- Ex. 8
-- Crie um procedimento armazenado que devolva os formandos validados e não validados de uma determinada UFCD. O procedimento
-- deve receber como parâmetro valor da nota e o código da UFCD.

USE FORMACAO
IF OBJECT_ID('DEVOLVE_NOTAS_UFCD') IS NOT NULL
DROP PROC DEVOLVE_NOTAS_UFCD
GO

CREATE PROCEDURE DEVOLVE_NOTAS_UFCD
	@var_valornota INT,
	@var_ufcd INT
AS
-- Notas positivas - AQUELES QUE VALIDARAM
DECLARE @NotasPositivas TABLE(N_formando INT, Nome VARCHAR(50), Nota FLOAT)
DECLARE @NotasNegativas TABLE(N_formando INT, Nome VARCHAR(50), Nota FLOAT)
DECLARE @UFCD INT
DECLARE @NOTA FLOAT, @ValorNota FLOAT
SET @ValorNota=10
SET @NOTA=9.5
IF @NOTA<=@ValorNota
BEGIN
INSERT @NotasPositivas
SELECT F.N_formando, Nome, Nota FROM FORMANDO F, CLASSIFICACAO C
WHERE F.N_Formando=C.N_Formando AND N_UFCD=@var_ufcd AND Nota>@var_valornota

SELECT * FROM @NotasPositivas
END

IF @NOTA>@ValorNota
BEGIN
INSERT @NotasNegativas
SELECT F.N_formando, Nome, Nota FROM FORMANDO F,CLASSIFICACAO C
WHERE F.N_Formando=C.N_Formando AND N_UFCD=@var_ufcd AND Nota<@var_valornota

SELECT * FROM @NotasNegativas
END

-- Notas negativas - AQUELES QUE NÃO VALIDARAM
DECLARE @Notas_Positivas TABLE(N_formando INT, Nome VARCHAR(50), Nota FLOAT)
DECLARE @Notas_Negativas TABLE(N_formando INT, Nome VARCHAR(50),Nota FLOAT)
DECLARE @ufcd_ INT
DECLARE @nota_ FLOAT, @valor_nota FLOAT
SET @valor_nota=8
SET @nota_=9.5
IF @nota_<=@valor_nota
BEGIN
insert @Notas_Positivas
SELECT F.N_formando, Nome, Nota FROM FORMANDO F,CLASSIFICACAO C
WHERE F.N_Formando=C.N_Formando AND N_UFCD=@var_ufcd AND Nota>@var_valornota

SELECT * FROM @Notas_Positivas
END

IF @nota_>@valor_nota
BEGIN
INSERT @Notas_Negativas
SELECT F.N_formando, Nome, Nota FROM FORMANDO F,CLASSIFICACAO C
where F.N_Formando=C.N_Formando AND N_UFCD=@var_ufcd AND Nota<=@var_valornota

SELECT * FROM @Notas_Negativas
END


-- Chamar procedimento armazenado
EXEC DEVOLVE_NOTAS_UFCD @var_valornota=9.5, @var_ufcd=806





