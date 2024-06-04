CREATE TABLE detalle_pedido_1_h ( codigo_pedido int(11) NOT NULL, codigo_producto varchar(15) NOT NULL, cantidad int(11) NOT NULL, precio_unidad decimal(15,2) NOT NULL, numero_linea smallint(6) NOT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci; 
CREATE TABLE detalle_pedido_2_h ( codigo_pedido int(11) NOT NULL, codigo_producto varchar(15) NOT NULL, cantidad int(11) NOT NULL, precio_unidad decimal(15,2) NOT NULL, numero_linea smallint(6) NOT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci; 
ALTER TABLE detalle_pedido_1_h ADD PRIMARY KEY (codigo_pedido,codigo_producto), ADD KEY codigo_producto (codigo_producto); 
ALTER TABLE detalle_pedido_2_h ADD PRIMARY KEY (codigo_pedido,codigo_producto), ADD KEY codigo_producto (codigo_producto);