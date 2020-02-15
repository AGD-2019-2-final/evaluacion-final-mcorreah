-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` genere una tabla que contenga la primera columna,
-- la cantidad de elementos en la columna 2 y la cantidad de elementos en la 
-- columna 3 separados por coma. La tabla debe estar ordenada por las 
-- columnas 1, 2 y 3.
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--

u = LOAD 'data.tsv' AS (f1:CHARARRAY,f2:BAG{t:TUPLE(v:CHARARRAY)},f3:MAP[]);
w = FOREACH u GENERATE f1,SIZE(f2) AS w1,SIZE(f3) AS w2;
x = ORDER w BY f1,w1,w2;

DUMP x;
STORE x INTO 'output' USING PigStorage(',');
fs -get output/ .; 