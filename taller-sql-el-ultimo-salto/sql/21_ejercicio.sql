
SELECT c.nombre,COUNT(v.id_venta)
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
WHERE v.cupon_usado = 'ULTIMO_SUSPIRO'
GROUP BY c.id_cliente
HAVING COUNT(v.id_venta) >= 3