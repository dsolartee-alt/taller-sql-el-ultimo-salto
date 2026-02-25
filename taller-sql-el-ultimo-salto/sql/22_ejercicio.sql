SELECT c.nombre,
       SUM(v.total_venta) AS total_gastado,
       CASE
           WHEN SUM(v.total_venta) > 5000 THEN 'Alto Valor'
           WHEN SUM(v.total_venta) BETWEEN 2000 AND 5000 THEN 'Medio Valor'
           ELSE 'Bajo Valor'
       END AS categoria_gasto
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente