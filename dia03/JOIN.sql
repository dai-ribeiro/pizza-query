-- Databricks notebook source
SELECT * 
FROM silver.pizza_query.item_pedido
ORDER BY rand()
LIMIT 100

-- COMMAND ----------

SELECT *
FROM silver.pizza_query.item_pedido AS t1
LEFT JOIN silver.pizza_query.produto AS t2
ON t1.descItem = t2.descItem

-- COMMAND ----------

SELECT t1.*,
       t2.vlPreco
FROM silver.pizza_query.item_pedido AS t1
LEFT JOIN silver.pizza_query.produto AS t2
ON t1.descItem = t2.descItem

-- COMMAND ----------

SELECT t1.idPedido,
       SUM(t2.vlPreco) AS vlPedido
FROM silver.pizza_query.item_pedido AS t1
LEFT JOIN silver.pizza_query.produto AS t2
ON t1.descItem = t2.descItem
GROUP BY t1.idPedido

-- COMMAND ----------

SELECT t1.idPedido,
       SUM(t2.vlPreco) AS vlPedido
FROM silver.pizza_query.item_pedido AS t1
LEFT JOIN silver.pizza_query.produto AS t2
ON t1.descItem = t2.descItem
WHERE t1.descTipoItem != 'bebida'
GROUP BY t1.idPedido

-- COMMAND ----------


