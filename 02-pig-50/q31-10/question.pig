-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para responder la pregunta use el archivo `data.csv`.
-- 
-- Cuente la cantidad de personas nacidas por año.
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
B = FOREACH w GENERATE SUBSTRING(birthday,0,4);
C = GROUP B BY $0;
v= FOREACH C GENERATE group, COUNT(B);
DUMP v;
STORE v INTO 'output' USING PigStorage(',');
fs -get output/ .;