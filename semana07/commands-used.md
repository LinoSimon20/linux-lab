# Comandos Usados - Semana 07: Ciclos en Bash
En esta sesión se exploraron las estructuras de repetición y comandos de control de flujo para la automatización de tareas y monitoreo del sistema.

## 1. Generadores y Control de Tiempo
* **`seq`**: Utilizado para generar secuencias numéricas, especialmente útil cuando los límites son variables.
* **`sleep`**: Pausa la ejecución del script por un intervalo definido (segundos, minutos u horas).
* **`timeout`**: Ejecuta un comando con un límite de tiempo; si el comando excede el tiempo, se termina con un código de salida 124.

## 2. Estructuras de Repetición (Ciclos)
* **`for`**: Itera sobre listas de valores, archivos o la salida de comandos.
* **`while`**: Ejecuta un bloque de código mientras una condición sea verdadera. Se usó para:
    * Ciclos infinitos (`while true`).
    * Leer archivos línea por línea (`while read`).
* **`until`**: Ejecuta un bloque de código hasta que la condición se vuelva verdadera (mientras sea falsa).

## 3. Control de Flujo Interno
* **`break`**: Termina el bucle de manera inmediata.
* **`continue`**: Salta el resto del cuerpo del ciclo y pasa a la siguiente iteración.

## 4. Comandos Auxiliares de Administración
* **`xargs`**: Convierte la entrada estándar en argumentos para otros comandos, resolviendo limitaciones de tuberías (pipes).
* **`trap`**: Captura señales del sistema (como `Ctrl+C`) para ejecutar acciones de limpieza o resúmenes antes de finalizar.
* **`tee -a`**: Permite escribir la salida en la pantalla y, simultáneamente, añadirla (append) a un archivo de log.
* **`shift`**: Desplaza los parámetros de posición (`$1`, `$2`, etc.), utilizado aquí para procesar los argumentos del script en el bloque `case`.

## 5. Herramientas de Extracción de Datos
* **`df`**: Reporta el uso de espacio en disco de los sistemas de archivos.
* **`free`**: Muestra la cantidad de memoria RAM libre y usada en el sistema.
* **`uptime`**: Proporciona el tiempo que el sistema ha estado encendido y la carga promedio del CPU.
* **`awk`**: Procesador de texto utilizado para filtrar y formatear las métricas de hardware.
