# 03 — LLMs, RAG, agentes y fine-tuning

Acá está el empleo hoy.

**Orden que no se altera:** prompt → RAG → fine-tuning.
Lo primero que hay que aprender del fine-tuning es cuándo *no* hacerlo. La
mayoría de los casos que parecen necesitarlo se resuelven con mejor contexto.

**Temas:** embeddings, base vectorial (pgvector — o sea, Postgres, que ya
manejás), chunking, búsqueda semántica, reranking, function calling,
arquitectura de agentes, y sobre todo **evals**.

Los evals son la habilidad que más falta en el mercado. Cualquiera arma un
demo de RAG; casi nadie puede demostrar con números que la versión nueva es
mejor que la anterior.

**Fine-tuning:** LoRA/QLoRA con PEFT de HuggingFace o Unsloth. GPU alquilada
por horas en Colab o Runpod. Armado del dataset de instrucciones, formato,
y evaluación del resultado contra el modelo base.

Se completa al terminar la Fase 2.
