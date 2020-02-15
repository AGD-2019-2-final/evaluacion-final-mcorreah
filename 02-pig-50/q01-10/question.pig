-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` compute la cantidad de registros por letra. 
-- Escriba el resultado a la carpeta `output` del directorio actual.
--
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
u = LOAD 'data.tsv' AS (f1:CHARARRAY,f2:CHARARRAY,f3:INT);
k = GROUP u BY f1;
v= FOREACH k GENERATE group, COUNT(u);

DUMP v;
STORE v INTO 'output';
fs -get output/ .; 