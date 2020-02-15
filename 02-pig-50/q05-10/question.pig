-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` compute Calcule la cantidad de registros en que 
-- aparece cada letra minúscula en la columna 2.
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--

u = LOAD 'data.tsv' AS (f1:CHARARRAY,f2:BAG{t:(p:CHARARRAY)},f3:CHARARRAY);
w = FOREACH u GENERATE FLATTEN(f2);
x = GROUP w BY $0;
y = FOREACH x GENERATE group, COUNT(w);


DUMP y;
STORE y INTO 'output';
fs -get output/ .; 