# Preguntas abiertas

Cada vez que algo no cierre: se anota acá y se sigue estudiando. No se frena.

**Se revisa los domingos.** La mitad se responde sola con el avance de la
semana; la otra mitad marca dónde está el hueco real.

Formato: `- [ ] AAAA-MM-DD — la pregunta` y, al resolverla, se marca y se
escribe abajo la respuesta en una línea (o el link a la nota que la contesta).

---

## Abiertas

*(ninguna por ahora)*

## Resueltas

- [x] 2026-09-10 — ¿Por qué NumPy es tanto más rápido que un bucle de Python
      si al final hace las mismas operaciones?
      → El bucle no desaparece: se muda a C y viaja liviano. NumPy declara el
      tipo una vez para todo el array y guarda números crudos del mismo tamaño
      en un bloque contiguo, así que C no pregunta el tipo en cada vuelta, la
      posición se calcula en vez de buscarse, y no se crean objetos nuevos.
      Ver `notas/conceptos/` (pendiente de escribir).
