SELECT p.nombre,SUM(d.cantidad * d.precio_unitario) AS ingreso_total
FROM detalle_ventas d
JOIN productos p ON d.id_producto = p.id_producto
GROUP BY p.id_producto
ORDER BY ingreso_total DESC
LIMIT 5;