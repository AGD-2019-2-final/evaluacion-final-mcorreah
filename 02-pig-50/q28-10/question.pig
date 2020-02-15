-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para responder la pregunta use el archivo `data.csv`.
-- 
-- Escriba el código equivalente a la siguiente consulta SQL.
-- 
--    SELECT 
--        birthday, 
--        DATE_FORMAT(birthday, "yyyy"),
--        DATE_FORMAT(birthday, "yy"),
--    FROM 
--        persons
--    LIMIT
--        5;
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
u = LOAD 'data.csv' USING PigStorage(',') 
    AS (id:int, 
        firstname:CHARARRAY, 
        surname:CHARARRAY, 
        birthday:CHARARRAY, 
        color:CHARARRAY, 
        quantity:INT);
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
w = FOREACH u GENERATE birthday;
B = FOREACH w GENERATE birthday,ToDate(birthday, 'yyyy-MM-dd') AS my_date;
C = FOREACH B GENERATE ToString(my_date,'yyyy') AS my_date,ToString(my_date,'yy') AS my_date2;
DUMP C;
STORE C INTO 'output' USING PigStorage(',');
fs -get output/ .;

