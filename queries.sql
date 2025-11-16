-- ======================== QUERIES ======================== 

-- 1) Listar todos los cursos con su nombre y el profesor a cargo
SELECT 
    c.id_curso,
    c.nombre AS nombre_curso,
    p.nombre AS nombre_profesor
FROM Cursos c
JOIN Profesores p 
    ON c.rut_profesor = p.rut_profesor
ORDER BY c.id_curso;

-- 2) Obtener todos los datos de los programas que tienen cursos registrados
SELECT DISTINCT p.*
FROM Programas p
JOIN Curso_Programa cp 
    ON p.codigo = cp.codigo_programa
ORDER BY p.codigo;

-- 3)  Contar cuántos cursos hay por programa
SELECT 
    cp.codigo_programa,
    p.nombre,
    COUNT(cp.id_curso) AS cantidad_cursos
FROM Curso_Programa cp
JOIN Programas p ON cp.codigo_programa = p.codigo
GROUP BY cp.codigo_programa, p.nombre
ORDER BY cp.codigo_programa;

-- 4) Calcular promedio de calificación por curso
SELECT 
    ID_curso,
    AVG(calificacion) AS promedio_calificacion
FROM Evaluaciones
GROUP BY ID_curso
ORDER BY ID_curso;

-- 5) Mostrar evaluaciones con calificación menor a 4.0
SELECT *
FROM Evaluaciones e
WHERE e.calificacion < 40
ORDER BY e.id_curso, e.calificacion;

-- 6) Ver datos básicos de los estudiantes y su carrera
SELECT *
FROM Estudiante;

-- 7) Listar correos electrónicos únicos de estudiantes
SELECT DISTINCT 
    e.nombre,
    c.correo
FROM Correo_Estudiante c
JOIN Estudiante e 
    ON c.rut_estudiante = e.rut_estudiante
ORDER BY e.nombre, c.correo;

-- 8) Contar cuántos cursos ha evaluado cada estudiante
SELECT 
    e.rut_estudiante,
    COUNT(e.id_curso) AS cursos_evaluados
FROM Evaluaciones e
GROUP BY e.rut_estudiante
ORDER BY cursos_evaluados DESC;

-- 9) Promedio de calificaciones que ha dado cada estudiante
SELECT 
    e.rut_estudiante,
    AVG(e.calificacion) / 10 AS promedio_real
FROM Evaluaciones e
GROUP BY e.rut_estudiante
ORDER BY promedio_real DESC;

-- 11) Ver los 5 cursos mejor evaluados
SELECT 
    ev.id_curso,
    c.nombre AS nombre_curso,
    AVG(ev.calificacion) / 10 AS promedio_real
FROM Evaluaciones ev
JOIN Cursos c 
    ON ev.id_curso = c.id_curso
GROUP BY ev.id_curso, c.nombre
ORDER BY promedio_real DESC
FETCH FIRST 5 ROWS ONLY;

-- ======================== VIEW ======================== 

-- Vista: promedio de calificación por curso (query 4)
CREATE OR REPLACE VIEW vw_promedio_curso AS
SELECT 
    e.id_curso,
    AVG(e.calificacion) AS promedio_calificacion
FROM Evaluaciones e
GROUP BY e.id_curso;

-- Ejemplo de uso de la vista, con ordenamiento
SELECT * 
FROM vw_promedio_curso
ORDER BY id_curso;

-- ======================== STORED PROCEDURE ======================== 

-- SP: Promedio de calificaciones que ha dado cada estudiante (query 9)
create or replace PROCEDURE sp_promedio_estudiantes(
    p_result OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN p_result FOR
        SELECT 
            e.rut_estudiante,
            e.nombre,
            AVG(ev.calificacion)/10 AS promedio_real
        FROM Estudiante e
        JOIN Evaluaciones ev 
            ON e.rut_estudiante = ev.rut_estudiante
        GROUP BY e.rut_estudiante, e.nombre
        ORDER BY promedio_real DESC;
END;

-- ======================== PRUEBA DEL PROCEDIMIENTO ========================

-- Crear cursor temporal
VARIABLE rc REFCURSOR;

-- Llamar al procedimiento
EXEC sp_promedio_estudiantes(:rc);

-- Mostrar resultados
PRINT rc;