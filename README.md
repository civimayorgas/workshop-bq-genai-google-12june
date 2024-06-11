# Workshop BQ & Generative AI - 12 Junio

## Descripción

Este repositorio contiene los materiales y ejemplos del workshop "Desarrolla un chatbot en GCP desde 0 usando BigQuery, Vertex AI y Generative AI". Este workshop es presentado por Cívica y Google Cloud, y cubre conceptos básicos de IA Generativa, embeddings, LLMs, y cómo crear un chatbot utilizando diversas herramientas y servicios de Google Cloud.

## Agenda

- **9:45h** Introducción y Setup
- **10:30h** Indexación
- **11:00h** Approximate Nearest Neighbors
- **11:45h** Coffee Break
- **12:00h** LangChain
- **12:45h** User Interface
- **13:30h** Multimodal

## Equipo de Presentadores y Soporte

- **Javier Mayorgas** - Head of AI, Cívica Software
- **Isaac Blázquez** - Data & AI Sales Executive Iberia, Retail & CPG
- **Fran Yáñez** - Google Cloud Partner Engineer

## Conceptos Clave

- **IA Generativa**: Uso de modelos de lenguaje para generar contenido coherente y consistente para dar recomendaciones.
- **Embeddings**: Vectores de baja dimensión que capturan la semántica del input.
- **Langchain**: Framework para desarrollar aplicaciones con modelos de lenguaje grandes.

## Contenidos teóricos

1. **Introducción y Setup**
   - Conceptos teóricos, presentación de la plaforma, problema y diseño de la solución.

2. **Indexación**
   - Creación de embeddings a través de propiedades de ML de BigQuery.
   - Creación y llenado de un índice.
   - Despliegue del índice.

3. **Approximate Nearest Neighbors**
   - Búsqueda de artículos más similares.

4. **Langchain**
   - Combinación de componentes y LLMs.
   - Llamada a BBDD Vectorial, BigQuery y prompts.

5. **User Interface**
   - Crear un chatbot usando una plantilla en Streamlit.

6. **Multimodal**
   - Añadir soporte para fotografías en el chatbot con ayuda de Gemini.

## Diseño de la Solución

1. **Limpieza de Datos**: Filtrado y preparación de datos para indexación.
2. **Indexación**: Uso de Vertex AI Vector Search para la búsqueda y recomendación.
3. **Construcción del Chatbot**: Desarrollo de una aplicación utilizando Langchain y modelos de lenguaje (Gemini) para realizar búsquedas y recomendaciones.

## Laboratorio Práctico

- **Bloque 1**: Indexación de productos en BigQuery, creación de embeddings e índice.
- **Bloque 2**: Búsqueda de ítems más cercanos.
- **Bloque 3**: Uso de Langchain para obtener y recomendar productos.
- **Bloque 4**: Implementación de la interfaz de usuario del chatbot.
- **Bloque 5**: Soporte multimodal para fotografías en el chatbot.

## Recursos

- [Google Cloud Vertex AI](https://cloud.google.com/vertex-ai)
- [BigQuery](https://cloud.google.com/bigquery)
- [Langchain](https://github.com/langchain/langchain)
- [Streamlit](https://streamlit.io)