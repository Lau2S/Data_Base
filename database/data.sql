-- ####################################################################
-- Database Course
-- Univalle 23-10-2024
-- Laura Salazar 
-- ####################################################################

-- Insertar valores en la tabla cliente
INSERT INTO cliente (id_clte, nombre_clte, apellido_clte, observaciones) VALUES 
(1, 'Juan', 'Pérez', 'Cliente frecuente'),
(2, 'María', 'González', 'Cliente ocasional'),
(3, 'Carlos', 'López', 'Cliente nuevo'),
(4, 'Ana', 'Rodríguez', 'Cliente frecuente'),
(5, 'Luis', 'Martínez', 'Visita cada semana'),
(6, 'Sofía', 'Ramírez', 'Alergia a mariscos'),
(7, 'Miguel', 'Hernández', 'Cliente fiel'),
(8, 'Lucía', 'Torres', 'Prefiere mesas al aire libre'),
(9, 'Daniel', 'Flores', 'Recomienda el lugar a otros'),
(10, 'Laura', 'Vargas', 'Cliente ocasional');

-- Insertar valores en la tabla mesero
INSERT INTO mesero (id_msro, nombre_msero, apellido1_msero, apellido2_msero) VALUES 
(1, 'Pedro', 'Sánchez', 'García'),
(2, 'Fernando', 'Díaz', 'López'),
(3, 'Camila', 'Pérez', 'Rodríguez'),
(4, 'Andrea', 'Morales', 'Martínez'),
(5, 'Javier', 'Gómez', 'Ramírez'),
(6, 'Carmen', 'Hernández', 'Vega'),
(7, 'Roberto', 'Luna', 'Castañeda'),
(8, 'Sara', 'Ortiz', 'Cruz'),
(9, 'Adrián', 'Martínez', 'Guerra'),
(10, 'Claudia', 'Rivas', 'Pineda');

-- Insertar valores en la tabla platillo
INSERT INTO platillo (id_plat, nombre_plat, importe_plat) VALUES 
(1, 'Chuleta de cerdo', 35000),
(2, 'Bandeja Paisa', 85000),
(3, 'Lechona Tolimense', 70000),
(4, 'Cazuela de Mariscos', 105000),
(5, 'Churrasco', 100000),
(6, 'Tamales Vallunos', 70000),
(7, 'Pargo Rojo Frito', 100000),
(8, 'Arroz con Coco', 65000),
(9, 'Sobrebarriga', 55000),
(10, 'Sancocho de Gallina', 35000);

-- Insertar valores en la tabla bebida
INSERT INTO bebida (id_bdida, nombre_bdida, importe_bdida) VALUES 
(1, 'Agua de Panela', 10000),
(2, 'Limonada de Coco', 20000),
(3, 'Refajo', 30000),
(4, 'Aguardiente', 40000),
(5, 'Ron', 60000),
(6, 'Café', 15000),
(7, 'Jugo de uva', 10000),
(8, 'Vino Tinto', 120000),
(9, 'Whisky', 150000),
(10, 'Cerveza', 30000);

-- Insertar valores en la tabla mesa
INSERT INTO mesa (id_msa, num_comensales, ubicacion) VALUES 
(1, 4, 'Terraza'),
(2, 2, 'Ventana'),
(3, 6, 'Barra'),
(4, 8, 'Interior'),
(5, 10, 'Terraza'),
(6, 2, 'Barra'),
(7, 4, 'Exterior'),
(8, 6, 'Salon privado'),
(9, 2, 'Interior'),
(10, 8, 'Salón privado');

-- Insertar valores en la tabla factura
INSERT INTO factura (id_fact, fecha_fact, id_clte, id_msro, id_msa, id_plat, id_bdida) VALUES 
(1, '2024-10-17', 1, 1, 1, 1, 1),
(2, '2024-09-06', 2, 2, 2, 2, 2),
(3, '2024-08-21', 3, 3, 3, 3, 3),
(4, '2024-10-22', 4, 4, 4, 4, 4),
(5, '2024-09-06', 5, 5, 5, 5, 5),
(6, '2024-05-15', 6, 6, 6, 6, 6),
(7, '2024-06-04', 7, 7, 7, 7, 7),
(8, '2024-10-02', 8, 8, 8, 8, 8),
(9, '2024-08-19', 9, 9, 9, 9, 9),
(10, '2024-06-14', 10, 10, 10, 10, 10);
