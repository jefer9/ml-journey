# Proyectos

Un proyecto por fase. Cada uno es una pieza del portafolio, no un ejercicio.

**Criterio de terminado — los cinco puntos, sin excepción:**

1. Funciona con datos reales, no con un dataset de tutorial.
2. Tiene README que explica el problema, las decisiones y los resultados.
3. Está desplegado en algún lado accesible (VPS, Spaces, Render).
4. Tiene métricas honestas, incluyendo lo que no funcionó.
5. El código está en un repo propio, con historial de commits real.

El punto 4 es el que más pesa. Un README que dice "probé X, dio peor que el
baseline, y esta es mi hipótesis de por qué" vale más para quien contrata que
uno que solo muestra el número bueno.

---

## Fase 1 — Predicción de demanda (cremería)

Datos reales de ventas. Predecir demanda diaria por producto.
Cuidado con: data leakage temporal (el split de series de tiempo no es
aleatorio), estacionalidad, días atípicos.
Baseline obligatorio antes de cualquier modelo: "mañana se vende lo mismo que
hoy". Si el modelo no le gana a eso, no sirve.

## Fase 2 — Selección de fotos

Sobre el archivo de sesiones de quinceañeras. Descarte de ojos cerrados,
fotos movidas, ranking de mejores tomas.
Cuidado con: son fotos de clientes. Nada de datos identificables en el repo
público.

## Fase 3 — Asistente de WhatsApp (Poskia)

RAG sobre la información del negocio + function calling contra el POS.
Lo importante acá no es que responda: es el set de evals que demuestra que
responde mejor que la versión anterior.

## Fase 4 — Transversal

Todo lo de arriba, desplegado y monitoreado.
