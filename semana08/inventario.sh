#!/bin/bash
set -euo pipefail

REPO="${1:-$HOME/linux-lab}"

if [[ ! -d "$REPO" ]]; then
    echo "Error: directorio '$REPO' no existe." >&2
    exit 1
fi

echo "Analizando repositorio: $REPO"

# --- 1. Cargar lista de archivos ---
mapfile -t archivos < <(find "$REPO" -type f | sort)
echo "Total de archivos encontrados: ${#archivos[@]}"

# --- 2. Conteo por extensión ---
declare -A conteo
declare -A tamano_ext

for f in "${archivos[@]}"; do
    nombre="${f##*/}"
    if [[ "$nombre" == *.* ]]; then
        ext="${nombre##*.}"
    else
        ext="(sin extension)"
    fi
    # El patrón :-0 inicializa la clave a 0 si no existía
    conteo["$ext"]=$(( ${conteo["$ext"]:-0} + 1 ))
    bytes=$(stat -c %s "$f" 2>/dev/null || echo 0)
    tamano_ext["$ext"]=$(( ${tamano_ext["$ext"]:-0} + bytes ))
done
