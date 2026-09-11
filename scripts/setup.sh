#!/usr/bin/env bash
# Puesta en marcha del entorno en Linux, macOS o WSL.
#   Uso:  bash scripts/setup.sh
#
# Idempotente: si el venv ya existe, solo sincroniza las dependencias.

set -euo pipefail

raiz="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
venv="$raiz/.venv"
py="$venv/bin/python"

echo "Repo: $raiz"

if [ ! -x "$py" ]; then
    echo "Creando .venv ..."
    python3 -m venv "$venv"
else
    echo ".venv ya existe, lo reuso."
fi

echo "Actualizando pip ..."
"$py" -m pip install --upgrade pip --quiet

echo "Instalando dependencias de requirements.txt ..."
"$py" -m pip install -r "$raiz/requirements.txt" --quiet

echo
"$py" "$raiz/scripts/verificar-entorno.py"

echo
echo "Para activar el entorno en esta terminal:"
echo "    source .venv/bin/activate"
