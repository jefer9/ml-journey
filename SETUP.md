# Puesta en marcha

## Máquina nueva (el camino corto)

Si el repo ya existe en GitHub y solo estás montando otra máquina:

```powershell
# Windows / PowerShell
git clone https://github.com/<usuario>/ml-journey.git
cd ml-journey
.\scripts\setup.ps1
```

```bash
# Linux, macOS o WSL
git clone https://github.com/<usuario>/ml-journey.git
cd ml-journey
bash scripts/setup.sh
```

El script crea el `.venv`, instala las versiones exactas de `requirements.txt`
y corre `scripts/verificar-entorno.py`. Es idempotente: si el venv ya está, solo
sincroniza dependencias. Si termina en "Entorno listo", podés estudiar.

Para activar el entorno en cada terminal nueva:

```powershell
.\.venv\Scripts\Activate.ps1   # Windows
source .venv/bin/activate      # Linux / macOS / WSL
```

Si PowerShell se niega a correr el script de activación:
`Set-ExecutionPolicy -Scope CurrentUser RemoteSigned`.

El resto de esta página es el camino largo, para la primera vez.

---

## 1. Repo

```bash
cd ~/proyectos            # donde tengas tus repos
unzip ~/Downloads/ml-journey.zip
cd ml-journey
git init
git add .
git commit -m "chore: estructura inicial del repo de aprendizaje"
gh repo create ml-journey --public --source=. --push
```

Público desde el día uno. Es parte del portafolio, no un borrador.

## 2. Obsidian

Descargar Obsidian → *Open folder as vault* → elegir esta carpeta.

Ajustes que valen la pena:
- **Files & Links → New link format:** *Shortest path when possible*
- **Files & Links → Default location for new notes:** carpeta actual
- Plugin *Graph view*: ya viene. A las pocas semanas te muestra qué áreas
  quedaron desconectadas, que suele ser lo que no entendiste.

En WSL, Obsidian corre en Windows y abre la carpeta por `\\wsl$\...`, o bien
tenés el repo del lado de Windows. Cualquiera de las dos funciona; lo que no
conviene es duplicarlo en los dos lados.

## 3. Entorno de Python

Lo hace el script de setup de arriba. A mano, si preferís verlo:

```bash
python3 -m venv .venv
source .venv/bin/activate        # .\.venv\Scripts\Activate.ps1 en Windows
pip install -r requirements.txt
python scripts/verificar-entorno.py
```

`requirements.txt` está pineado con `pip freeze`. Cuando instales algo nuevo,
volvé a congelarlo y commiteá el cambio:

```bash
pip install <paquete>
pip freeze > requirements.txt
```

Así todas las máquinas corren la misma versión de NumPy, y un resultado raro
nunca es "será la versión".

Jupyter: `jupyter lab` desde la raíz del repo, con el venv activado. El kernel
`python3` que ve el notebook es el del venv.

## 4. Primer uso de Claude Code

```bash
claude
```

Va a leer `CLAUDE.md` solo. Probá `/bitacora` para abrir la sesión del día.

Comandos disponibles:

| Comando | Cuándo |
|---|---|
| `/bitacora` | Al sentarte a estudiar |
| `/cerrar` | Al terminar la sesión |
| `/concepto <tema>` | Cuando vas a escribir una nota nueva |
| `/examen` | Una o dos veces por semana, sin avisar |
| `/revision` | Domingos |

---

## Hábito

Tres cosas, y con eso alcanza:

1. `/bitacora` al empezar, `/cerrar` al terminar. Sin excepción, aunque la
   sesión haya sido de 30 minutos.
2. Commit todos los días que estudies. El historial es parte del portafolio.
3. Domingos: `/revision`.

Si en algún momento se vuelve una carga administrativa, recortá el sistema, no
el estudio. La herramienta está al servicio de la ruta.

---

## Si algo se rompe

| Síntoma | Causa casi siempre |
|---|---|
| `ModuleNotFoundError: numpy` | El venv no está activado, o estás en otra terminal. |
| Jupyter no ve las librerías | Abriste `jupyter` global, no el del venv. Activá primero. |
| `Activate.ps1 no se puede cargar` | Política de ejecución: `Set-ExecutionPolicy -Scope CurrentUser RemoteSigned`. |
| Números distintos a los de tus notas | Versión distinta: `pip install -r requirements.txt` otra vez. |
