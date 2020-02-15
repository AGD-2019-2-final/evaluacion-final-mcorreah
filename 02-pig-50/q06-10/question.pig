-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` Calcule la cantidad de registros por clave de la 
-- columna 3. En otras palabras, cuántos registros hay que tengan la clave 
-- `aaa`?
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--

u = LOAD 'data.tsv' AS (f1:CHARARRAY,f2:BAG{t:(p:CHARARRAY)},f3:MAP[]);
w = FOREACH u GENERATE FLATTEN(f3);
x = GROUP w BY $0;
y = FOREACH x GENERATE group, COUNT(w);


DUMP y;
STORE y INTO 'output' USING PigStorage(',');
fs -get output/ .; 