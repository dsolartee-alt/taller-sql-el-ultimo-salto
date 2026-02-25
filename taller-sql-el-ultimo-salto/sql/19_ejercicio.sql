SELECT p.nombre,sum(d.cantidad) as Total_Unidades_vendidas
FROM detalle_ventas d
JOIN productos p on d.id_producto = p.id_producto
GROUP by p.id_producto
ORDER by Total_Unidades_vendidas DESC
LIMIT 15