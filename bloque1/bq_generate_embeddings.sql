-- Creamos el modelo para generar los embeddings
CREATE OR REPLACE MODEL `<NOMBRE_PROYECTO>.ecommerce.embedding`
  REMOTE WITH CONNECTION `projects/<NOMBRE_PROYECTO>/locations/europe-west1/connections/cnx_vertex`
  OPTIONS (ENDPOINT = 'textembedding-gecko@001');

-- Creamos una tabla con los embeddings utilizando el modelo anterior
CREATE OR REPLACE TABLE `ecommerce.embeddings` AS
SELECT * FROM ML.GENERATE_TEXT_EMBEDDING(
  MODEL ecommerce.embedding_model,
  (
    SELECT
      CONCAT(
        'Category: ', category, '. ',
        'Name: ', name, '. ',
        'Department: ', department, '. ',
        'Price: ', CAST(retail_price AS STRING)
      ) AS content,
      id as id,
    FROM `<NOMBRE_PROYECTO>.ecommerce.products`
    WHERE distribution_center_id = 1 -- Solo Memphis
    AND name IS NOT NULL
  )
);
 
select * from `ecommerce.embeddings`;
 
-- Hacemos una búsqueda de similitud haciendo el embedding de "Green cap" y comparándolo con el resto
SELECT base.*, distance
FROM VECTOR_SEARCH(
  TABLE `ecommerce.embeddings`,
  'text_embedding',
  (
    SELECT text_embedding, content AS query
    FROM ML.GENERATE_TEXT_EMBEDDING(
    MODEL `<NOMBRE_PROYECTO>.ecommerce.embedding_model`,
    (SELECT "Green cap" AS content))
  ),
  top_k => 5,
  distance_type => 'COSINE');
 
 