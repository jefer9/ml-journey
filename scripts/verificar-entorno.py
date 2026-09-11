"""Chequeo de que el entorno quedó usable. No enseña nada: solo avisa si falta algo.

Uso:  python scripts/verificar-entorno.py
"""

import importlib
import sys

PAQUETES = [
    ("numpy", "2."),
    ("pandas", "3."),
    ("matplotlib", "3."),
    ("sklearn", "1."),
    ("scipy", "1."),
    ("jupyterlab", None),
]

MINIMO_PYTHON = (3, 11)


def main() -> int:
    fallos = []

    print(f"python      {sys.version.split()[0]}  ({sys.executable})")
    if sys.version_info < MINIMO_PYTHON:
        fallos.append(f"Python {'.'.join(map(str, MINIMO_PYTHON))}+ requerido")

    if sys.prefix == sys.base_prefix:
        fallos.append("No estás dentro del venv: activá .venv antes de correr esto")

    for nombre, prefijo_esperado in PAQUETES:
        try:
            mod = importlib.import_module(nombre)
        except ImportError:
            fallos.append(f"falta {nombre} — corré el script de setup")
            print(f"{nombre:<12}FALTA")
            continue

        version = getattr(mod, "__version__", "?")
        print(f"{nombre:<12}{version}")
        if prefijo_esperado and not str(version).startswith(prefijo_esperado):
            fallos.append(
                f"{nombre} {version}: se esperaba {prefijo_esperado}x "
                "(no es fatal, pero los ejemplos pueden no calzar)"
            )

    # matplotlib tiene que poder dibujar sin pantalla: si esto rompe,
    # rompe también dentro de Jupyter.
    try:
        import matplotlib

        matplotlib.use("Agg")
        import matplotlib.pyplot as plt

        fig = plt.figure()
        fig.add_subplot().plot([0, 1], [0, 1])
        plt.close(fig)
        print("matplotlib  dibuja ok (backend Agg)")
    except Exception as exc:  # noqa: BLE001
        fallos.append(f"matplotlib no puede dibujar: {exc}")

    print()
    if fallos:
        print("PROBLEMAS:")
        for f in fallos:
            print(f"  - {f}")
        return 1

    print("Entorno listo.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
