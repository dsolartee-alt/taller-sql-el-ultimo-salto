SELECT *
FROM ventas
WHERE strftime('%Y', fecha_venta) = '2025'
ORDER by fecha_venta DESC