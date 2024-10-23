-- ####################################################################
-- Database Course
-- Univalle 23-10-2024
-- Laura Salazar
-- ####################################################################

-- Cliente table
CREATE TABLE cliente(
id_clte INTEGER PRIMARY KEY,
nombre_clte VARCHAR(45),
apellido_clte VARCHAR(45),
observaciones VARCHAR(45)
);

--  Mesero table
CREATE TABLE mesero(
id_msro INTEGER PRIMARY KEY,
nombre_msero VARCHAR(45),
apellido1_msero VARCHAR(45),
apellido2_msero VARCHAR(45)
);

-- PLatillo table
CREATE TABLE platillo(
id_plat INTEGER PRIMARY KEY,
nombre_plat VARCHAR(45),
importe_plat DECIMAL(10,2)
);

-- Bebida table
CREATE TABLE bebida(
id_bdida INTEGER PRIMARY KEY,
nombre_bdida VARCHAR(45),
importe_bdida DECIMAL(10,2)
);

-- Mesa table
CREATE TABLE mesa(
id_msa INTEGER PRIMARY KEY,
num_comensales INTEGER,
ubicacion VARCHAR(45)
);

-- Factura table
CREATE TABLE factura(
id_fact INTEGER PRIMARY KEY,
fecha_fact DATE,
id_clte INTEGER NOT NULL DEFAULT 1,
id_msro INTEGER NOT NULL,
id_msa INTEGER NOT NULL,
id_plat INTEGER,
id_bdida INTEGER NOT NULL,
FOREIGN KEY (id_clte) REFERENCES cliente(id_clte) ON DELETE SET DEFAULT ON UPDATE NO ACTION,
FOREIGN KEY (id_msro) REFERENCES mesero(id_msro) ON DELETE RESTRICT ON UPDATE NO ACTION,
FOREIGN KEY (id_msa) REFERENCES mesa(id_msa) ON DELETE RESTRICT ON UPDATE NO ACTION,
FOREIGN KEY (id_plat) REFERENCES platillo(id_plat) ON DELETE SET NULL ON UPDATE NO ACTION,
FOREIGN KEY (id_bdida) REFERENCES bebida(id_bdida) ON DELETE CASCADE ON UPDATE CASCADE
);