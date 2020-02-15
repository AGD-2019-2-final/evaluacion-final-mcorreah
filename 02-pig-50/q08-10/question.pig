-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` compute la cantidad de registros por letra de la 
-- columna 2 y clave de al columna 3; esto es, por ejemplo, la cantidad de 
-- registros en tienen la letra `b` en la columna 2 y la clave `jjj` en la 
-- columna 3 es:
-- 
--   ((b,jjj), 216)
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--

u = LOAD 'data.tsv' AS (f1:CHARARRAY,f2:BAG{t:(v:CHARARRAY)},f3:MAP[]);
w = FOREACH u GENERATE FLATTEN(f2) AS w1,FLATTEN(f3) AS w2;
x = FOREACH w GENERATE w1,w2;
y = FOREACH x GENERATE CONCAT('(',w1,',',w2,')') AS g;
z = GROUP y BY g;
a = FOREACH z GENERATE group, COUNT(y); 


DUMP a;
STORE a INTO 'output';
fs -get output/ .; 