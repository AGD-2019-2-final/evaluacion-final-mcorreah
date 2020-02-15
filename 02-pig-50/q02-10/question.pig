-- Pregunta
-- ===========================================================================
-- 
-- Ordene el archivo `data.tsv`  por letra y valor (3ra columna).
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
-- 
--  >>> Escriba el codigo del mapper a partir de este punto <<<
-- 

u = LOAD 'data.tsv' AS (f1:CHARARRAY,f2:CHARARRAY,f3:INT);
k = order u BY $0,$2;

DUMP k;
STORE k INTO 'output';
fs -get output/ .; 