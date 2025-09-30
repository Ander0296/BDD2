
USE staging;

CREATE TABLE staging_oficina (
    id_oficina VARCHAR(10) PRIMARY KEY,
    ciudad VARCHAR(50),
    pais VARCHAR(50),
    codigo_postal VARCHAR(15),
    telefono VARCHAR(20)
);

CREATE TABLE staging_empleado (
    id_empleado INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido1 VARCHAR(50),
    id_oficina VARCHAR(10),
    id_jefe INT,
    puesto VARCHAR(50),
    FOREIGN KEY (id_oficina) REFERENCES staging_oficina(id_oficina)
    -- Nota: la FK a jefe se puede omitir en staging para evitar problemas de carga circular
);

CREATE TABLE staging_cliente (
    id_cliente INT PRIMARY KEY,
    nombre_cliente VARCHAR(100),
    nombre_contacto VARCHAR(50),
    apellido_contacto VARCHAR(50),
    ciudad VARCHAR(50),
    pais VARCHAR(50),
    id_empleado_rep_ventas INT,
    limite_credito DECIMAL(15,2),
    FOREIGN KEY (id_empleado_rep_ventas) REFERENCES staging_empleado(id_empleado)
);

CREATE TABLE staging_producto (
    id_producto INT PRIMARY KEY,
    nombre VARCHAR(100),
    gama VARCHAR(50),
    dimensiones VARCHAR(50),
    proveedor VARCHAR(100),
    precio_venta DECIMAL(15,2)
);

CREATE TABLE staging_pedido (
    id_pedido INT PRIMARY KEY,
    fecha_pedido DATE,
    fecha_entrega DATE,
    estado ENUM('Pendiente','Entregado','Rechazado'),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES staging_cliente(id_cliente)
);

CREATE TABLE staging_detalle_pedido (
    id_pedido INT,
    id_producto INT,
    cantidad INT,
    precio_unidad DECIMAL(15,2),
    PRIMARY KEY (id_pedido, id_producto),
    FOREIGN KEY (id_pedido) REFERENCES staging_pedido(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES staging_producto(id_producto)
);

CREATE TABLE staging_pago (
    id_pago INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    forma_pago ENUM('Transferencia','Cheque','Tarjeta'),
    fecha_pago DATE,
    total DECIMAL(15,2),
    FOREIGN KEY (id_cliente) REFERENCES staging_cliente(id_cliente)
);
