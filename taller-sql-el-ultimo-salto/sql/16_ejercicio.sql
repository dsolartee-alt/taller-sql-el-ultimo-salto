SELECT c.nombre,SUM(v.total_venta) AS total_gastado
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente
ORDER BY total_gastado DESC
LIMIT 1
