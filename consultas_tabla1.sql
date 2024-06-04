//ELIMINA RESTRICCIONES//
ALTER TABLE detalle_pedido_1_h
DROP FOREIGN KEY detalle_pedido_ibfk_1_1_H;
DROP FOREIGN KEY detalle_pedido_ibfk_2_1_H;

//ELIMINA CLAVE PRIMARIA//
ALTER TABLE detalle_pedido_1_h
DROP PRIMARY KEY;

//SE AÑADE COLUMNA ID//
ALTER TABLE detalle_pedido_1_h
ADD id_codigo_pedido INT AUTO_INCREMENT PRIMARY KEY FIRST;

//SE AÑADE RELACIONES A LA TABLA detalle_pedido_1_h//
ALTER TABLE `detalle_pedido_1_h` ADD  CONSTRAINT `etalle_pedido_ibfk_1_1_H` 
FOREIGN KEY (`codigo_pedido`) REFERENCES `pedido`(`codigo_pedido`) 
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `detalle_pedido_1_h` ADD  CONSTRAINT `detalle_pedido_ibfk_2_1_H` 
FOREIGN KEY (`codigo_producto`) REFERENCES `producto`(`codigo_producto`) 
ON DELETE RESTRICT ON UPDATE RESTRICT;

//