SELECT c.nombre,COUNT(DISTINCT d.id_producto) AS productos_distintos
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
JOIN detalle_ventas d ON v.id_venta = d.id_venta
GROUP BY c.id_cliente
ORDER BY productos_distintos DESC
LIMIT 1;