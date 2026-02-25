SELECT c.nombre,
       SUM(v.total_venta) AS total_gastado
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
JOIN detalle_ventas d ON v.id_venta = d.id_venta
JOIN productos p ON d.id_producto = p.id_producto
GROUP BY c.id_cliente
HAVING COUNT(DISTINCT p.categoria) = 1
   AND MAX(p.categoria) = 'Paracaídas';