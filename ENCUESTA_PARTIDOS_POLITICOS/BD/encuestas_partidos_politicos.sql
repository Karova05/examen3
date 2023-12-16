CREATE DATABASE ENCUESTA_PARTIDOS_POLITICOS

GO

USE ENCUESTA_PARTIDOS_POLITICOS

GO

CREATE TABLE part_politicos

(

id int PRIMARY KEY,
partido VARCHAR(50) UNIQUE

)

GO

CREATE TABLE datosencuesta

(
numeroencuesta int identity	(1, 1) PRIMARY KEY,
nombre VARCHAR (50) NOT NULL,
edad int NOT NULL,
correoelectronico VARCHAR (50) NOT NULL,
partido VARCHAR (50) NOT NULL,
FOREIGN KEY (partido) REFERENCES part_politicos(partido)

)

GO

CREATE PROCEDURE  AgregarEncuesta
    @nombre VARCHAR(50),
    @edad INT,
    @correoelectronico VARCHAR(50),
	@partido VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        
        INSERT INTO encuesta (nombre, edad, correoelectronico)
        VALUES (@nombre, @edad, @correoelectronico, @partido);
		PRINT 'encuesta agregada satisfactoriamente.';
    END TRY
    BEGIN CATCH
        -- Manejar errores
        PRINT 'Hubo un error su encuesta no se agrego. Detalles del error: ' + ERROR_MESSAGE();
    END CATCH
END;

CREATE PROCEDURE ReporteEncuestas
AS
BEGIN
    
    SELECT
        numeroencuesta,
        nombre,
        edad,
		correoelectronico,
		partido,
        

    FROM
        datosencuesta; 

END;

GO

EXEC AgregarEncuesta

EXEC ReporteEncuestas