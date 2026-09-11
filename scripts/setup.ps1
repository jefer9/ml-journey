# Puesta en marcha del entorno en Windows (PowerShell).
#   Uso:  .\scripts\setup.ps1
#
# Idempotente: si el venv ya existe, solo sincroniza las dependencias.

$ErrorActionPreference = "Stop"

$raiz = Split-Path -Parent $PSScriptRoot
$venv = Join-Path $raiz ".venv"
$py   = Join-Path $venv "Scripts\python.exe"

Write-Host "Repo: $raiz"

if (-not (Test-Path $py)) {
    Write-Host "Creando .venv ..."
    $sistema = (Get-Command python -ErrorAction SilentlyContinue)
    if (-not $sistema) { throw "No encuentro 'python' en el PATH. Instalá Python 3.11+ desde python.org." }
    & $sistema.Source -m venv $venv
} else {
    Write-Host ".venv ya existe, lo reuso."
}

Write-Host "Actualizando pip ..."
& $py -m pip install --upgrade pip --quiet

Write-Host "Instalando dependencias de requirements.txt ..."
& $py -m pip install -r (Join-Path $raiz "requirements.txt") --quiet

Write-Host ""
& $py (Join-Path $raiz "scripts\verificar-entorno.py")

Write-Host ""
Write-Host "Para activar el entorno en esta terminal:"
Write-Host "    .\.venv\Scripts\Activate.ps1"
Write-Host "Si PowerShell bloquea el script de activacion:"
Write-Host "    Set-ExecutionPolicy -Scope CurrentUser RemoteSigned"
