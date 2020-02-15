-- Pregunta
-- ===========================================================================
-- 
-- Obtenga los cinco (5) valores más pequeños de la 3ra columna.
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
u = LOAD 'data.tsv' AS (f1:CHARARRAY,f2:CHARARRAY,f3:INT);
z = FOREACH u GENERATE $2;
k = ORDER z BY $0;
v= LIMIT k 5;

DUMP v;
STORE v INTO 'output';
fs -get output/ .; 