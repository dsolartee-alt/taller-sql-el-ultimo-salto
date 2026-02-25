SELECT nombre,precio
FROM productos
WHERE categoria = "Accesorios"
AND precio < 500
order by precio ASC;
