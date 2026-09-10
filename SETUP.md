# Puesta en marcha

Cuatro pasos, quince minutos.

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

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install numpy pandas matplotlib jupyter scikit-learn
pip freeze > requirements.txt
```

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
