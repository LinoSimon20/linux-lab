# Semana 08: Comandos y Tecnicas Usadas
## mapfile
```bash
mapfile -t archivos < <( find "$REPO" -type f | sort)
```

Para que sirve: Carga cada linea de la salida de find en un
elemento del array ’archivos’. La opcion -t elimina el newline
de cada elemento.

## Arrays asociativos
```bash
declare -A conteo
conteo ["$ext"]=$(( ${conteo["$ext"]:-0} + 1 ))
```

Para que sirve: acumula el conteo de archivos por extension.
El patron: -0 inicializa la clave a 0 si no existia.

## Matriz con array indexado
```bash
matriz [$(( i * COLS + col ))]="$valor"
```

Para que sirve: simula una tabla bidimensional usando un
array lineal. El indice se calcula como fila * columnas +
columna.

## column
```bash
{ echo "ENCABEZADO1 ENCABEZADO2"; datos; } | column -t
```

Para que sirve: alinea automaticamente las columnas del texto
sin calcular anchos manualmente.

## paste
```bash
paste -sd ’,’ lista.txt
```

Para que sirve: convierte una columna en una sola linea
separada por comas.

