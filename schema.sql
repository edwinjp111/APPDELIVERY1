
PRAGMA foreign_keys = ON;


DROP TABLE IF EXISTS Detalle_Pedido;
DROP TABLE IF EXISTS Pedido;
DROP TABLE IF EXISTS Plato;
DROP TABLE IF EXISTS Repartidor;
DROP TABLE IF EXISTS Restaurante;
DROP TABLE IF EXISTS Usuario;
DROP TABLE IF EXISTS Categoria;


-- 1. TABLA USUARIO
CREATE TABLE Usuario (
    id_usuario INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    correo TEXT NOT NULL UNIQUE,
    telefono TEXT
    -- direccion TEXT,
    -- contrasena TEXT NOT NULL
);

-- Crear tabla categorías

CREATE TABLE Categoria (
id_categoría INTEGER PRIMARY KEY, 
nombre TEXT NOT NULL
);

-- 2. TABLA RESTAURANTE
CREATE TABLE Restaurante (
    id_restaurante INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    direccion TEXT NOT NULL,
    telefono TEXT,
    categoria TEXT,
    estado TEXT DEFAULT 'Activo'
);

-- 3. TABLA REPARTIDOR
CREATE TABLE Repartidor (
    id_repartidor INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    telefono TEXT,
    placa_vehiculo TEXT,
    disponibilidad TEXT DEFAULT 'Disponible'
);

-- 4. TABLA PLATO
CREATE TABLE Plato (
    id_plato INTEGER PRIMARY KEY AUTOINCREMENT,
    id_restaurante INTEGER NOT NULL,

    nombre TEXT NOT NULL,
    descripcion TEXT,
    precio REAL NOT NULL CHECK (precio >= 0),
    disponibilidad INTEGER DEFAULT 1,
    id_categoría INTEGER NOT NULL,
    categoria TEXT,
    FOREIGN KEY (id_categoría)
        REFERENCES categoria(id_categoría) 
    FOREIGN KEY (id_restaurante)
        REFERENCES Restaurante(id_restaurante)
    
);

-- 5. TABLA PEDIDO
CREATE TABLE Pedido (
    id_pedido INTEGER PRIMARY KEY AUTOINCREMENT,
    id_usuario INTEGER NOT NULL,
    id_restaurante INTEGER NOT NULL,
    id_repartidor INTEGER,
    fecha_pedido TEXT DEFAULT CURRENT_TIMESTAMP,
    direccion_entrega TEXT NOT NULL,
    estado TEXT DEFAULT 'Pendiente',
    total REAL NOT NULL DEFAULT 0,
    FOREIGN KEY (id_usuario)
        REFERENCES Usuario(id_usuario),
    FOREIGN KEY (id_restaurante)
        REFERENCES Restaurante(id_restaurante),
    FOREIGN KEY (id_repartidor)
        REFERENCES Repartidor(id_repartidor)
);

-- 6. TABLA DETALLE_PEDIDO
CREATE TABLE Detalle_Pedido (
    id_detalle INTEGER PRIMARY KEY AUTOINCREMENT,
    id_pedido INTEGER NOT NULL,
    id_plato INTEGER NOT NULL,
    cantidad INTEGER NOT NULL CHECK (cantidad > 0),
    precio_unitario REAL NOT NULL CHECK (precio_unitario >= 0),
    FOREIGN KEY (id_pedido)
        REFERENCES Pedido(id_pedido),
    FOREIGN KEY (id_plato)
        REFERENCES Plato(id_plato)
);

-- INDICES PARA CONSULTAS FRECUENTES
CREATE INDEX idx_plato_restaurante
ON Plato(id_restaurante);

CREATE INDEX idx_pedido_usuario
ON Pedido(id_usuario);

CREATE INDEX idx_pedido_restaurante
ON Pedido(id_restaurante);

CREATE INDEX idx_pedido_repartidor
ON Pedido(id_repartidor);

CREATE INDEX idx_pedido_fecha
ON Pedido(fecha_pedido);

CREATE INDEX idx_pedido_estado
ON Pedido(estado);

CREATE INDEX idx_detalle_pedido
ON Detalle_Pedido(id_pedido);

CREATE INDEX idx_detalle_plato
ON Detalle_Pedido(id_plato);
