SELECT c.nombre,
       CAST((strftime('%Y', 'now') - strftime('%Y', c.fecha_nacimiento)) AS INTEGER) AS edad_aproximada,
       SUM(v.total_venta) AS total_gastado
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
WHERE edad_aproximada > 60
GROUP BY c.id_cliente;