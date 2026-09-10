# Progreso

> Este archivo es el tablero. Si solo vas a leer un archivo antes de sentarte
> a estudiar, es este. Actualizalo al cerrar cada sesión.

**Fase actual:** 0 — Base de datos y matemática mínima
**Semana:** 1 de 3
**Arranque:** 2026-09-10

**Próximo paso concreto:**
Escribir las tres notas de concepto de la sesión del 10-09 — `vector`,
`matriz` y `producto-punto` — con `/concepto`, antes de tocar NumPy en código.

---

## Fase 0 — Base (3 semanas)

**Objetivo:** manejar datos con soltura y tener intuición geométrica, no
formal, de vectores, matrices, derivadas y probabilidad.

### Semana 1 — NumPy
- [x] Entorno listo: venv, numpy, pandas, matplotlib, jupyter
- [ ] Arrays, shapes, indexing, broadcasting
- [ ] Operaciones vectorizadas vs. bucles (medir la diferencia de tiempo)
- [ ] 3Blue1Brown, *Essence of Linear Algebra*: caps. 1-4
- [ ] Notas de concepto: `vector`, `matriz`, `producto-punto`, `broadcasting`

### Semana 2 — pandas
- [ ] Series y DataFrames, carga de CSV
- [ ] Filtros, `groupby`, `merge`, pivots
- [ ] Fechas y series temporales
- [ ] Valores faltantes: detectar y decidir qué hacer
- [ ] Ejercicio real: cargar las ventas de la cremería y sacar 5 preguntas
      del negocio respondidas con código
- [ ] 3Blue1Brown, *Essence of Calculus*: caps. 1-4

### Semana 3 — Visualización y probabilidad
- [ ] matplotlib: líneas, barras, histogramas, scatter
- [ ] Distribuciones: normal, binomial, uniforme
- [ ] Media, varianza, desviación estándar (qué significan, no cómo se calculan)
- [ ] Bayes con un ejemplo concreto
- [ ] StatQuest: playlist de estadística básica
- [ ] Sincronizar con la materia de Probabilidad de la U
- [ ] Notas de concepto: `distribucion`, `varianza`, `bayes`, `verosimilitud`

**Criterio de salida de la Fase 0:** poder tomar un CSV que nunca viste,
explorarlo, limpiarlo y graficar tres cosas interesantes en menos de una hora,
sin buscar sintaxis a cada rato.

---

## Fase 1 — ML clásico (7 semanas)

Se planifica al terminar la Fase 0. Temas: regresión lineal y logística,
árboles, random forest, gradient boosting, k-means. Y lo que de verdad
importa: train/test/validation, validación cruzada, overfitting, data leakage,
métricas, clases desbalanceadas, feature engineering.

Libro ancla: *Hands-On Machine Learning* — Géron.
Proyecto: predicción de demanda diaria con datos reales de la cremería.

## Fase 2 — Deep learning (8 semanas)

PyTorch. fast.ai + *Zero to Hero* de Karpathy.
Proyecto: selección automática de fotos.

## Fase 3 — LLMs (8 semanas)

Embeddings, pgvector, RAG, function calling, agentes, evals, LoRA/QLoRA.
Proyecto: asistente de WhatsApp de Poskia.

## Fase 4 — MLOps (desde la Fase 2, en paralelo)

FastAPI, MLflow o W&B, versionado de datos, drift, CI/CD de modelos.
Regla: todo proyecto termina desplegado en el VPS.

---

## Registro semanal

| Semana | Fechas | Horas | Qué salió | Qué se atascó |
|---|---|---|---|---|
| 1 | 2026-09-10 → | 2 | Álgebra lineal mínima (vector, matriz, producto punto) y el modelo de memoria de NumPy. Entorno instalado. | Sintetizar: el mecanismo lo dedujo, pero el resumen en una frase se le achicaba a algo circular. |
