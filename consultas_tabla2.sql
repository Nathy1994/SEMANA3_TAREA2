//ELIMINAR RESTRICCIONES//
ALTER TABLE detalle_pedido_2_h
DROP FOREIGN KEY detalle_pedido_ibfk_1_2_H;
DROP FOREIGN KEY detalle_pedido_ibfk_2_2_H;

//ELIMINAR CLAVE PRIMARIA//
ALTER TABLE detalle_pedido_2_h
DROP PRIMARY KEY;

//AÑADIR COLUMNA//
ALTER TABLE detalle_pedido_2_h
ADD id_codigo_pedido INT AUTO_INCREMENT PRIMARY KEY FIRST;

//SE AÑADE LAS RELACIONES DE detalle_pedido_2_h
ALTER TABLE `detalle_pedido_2_h` ADD  CONSTRAINT `detalle_pedido_ibfk_1_2_H` 
FOREIGN KEY (`codigo_pedido`) REFERENCES `pedido`(`codigo_pedido`) 
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `detalle_pedido_2_h` ADD  CONSTRAINT `detalle_pedido_ibfk_2_2_H` 
FOREIGN KEY (`codigo_producto`) REFERENCES `producto`(`codigo_producto`) 
ON DELETE RESTRICT ON UPDATE RESTRICT;