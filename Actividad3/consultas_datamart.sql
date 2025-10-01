USE datamart;

SELECT p.nombre AS producto,
    SUM(f.cantidad) AS total_vendido
FROM fact_ventas f
JOIN dim_producto p ON f.id_producto = p.id_producto
GROUP BY p.nombre
ORDER BY total_vendido DESC
LIMIT 1;

-- ventas totales por mes
SELECT t.anio, t.mes, SUM(f.total_venta) AS ventas_mes
FROM fact_ventas f
JOIN dim_tiempo t ON f.id_tiempo = t.id_tiempo
GROUP BY t.anio, t.mes
ORDER BY t.anio, t.mes;

-- mejor cliente por mas compras
SELECT c.nombre_cliente, SUM(f.total_venta) AS total_compras
FROM fact_ventas f
JOIN dim_cliente c ON f.id_cliente = c.id_cliente
GROUP BY c.nombre_cliente
ORDER BY total_compras DESC
LIMIT 1;

-- mejor vendedor
SELECT CONCAT(e.nombre, ' ', e.apellido1) AS empleado,
    SUM(f.total_venta) AS total_ventas
FROM fact_ventas f
JOIN dim_empleado e ON f.id_empleado = e.id_empleado
GROUP BY empleado
ORDER BY total_ventas DESC
LIMIT 1;

-- ventas por producto y año
SELECT t.anio, 
    p.nombre AS producto, 
    SUM(f.total_venta) AS ventas
FROM fact_ventas f
JOIN dim_tiempo t 
    ON f.id_tiempo = t.id_tiempo
JOIN dim_producto p 
    ON f.id_producto = p.id_producto
GROUP BY t.anio, p.nombre
ORDER BY t.anio, ventas DESC
LIMIT 1000;