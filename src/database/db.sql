SECRETO=CLOUDINARY_URL=cloudinary://676913744321497:yEvf3siWSfFfzqzhHCO_v4wvu-4@tomascabfer4


DROP DATABASE IF EXISTS tienda;

CREATE DATABASE tienda;
USE tienda;

DROP TABLE IF EXISTS articulos;

CREATE TABLE articulos (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL,
    descripcion VARCHAR(200),
    precio DECIMAL(10,2),
    imagen VARCHAR(200),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO articulos (id, nombre, descripcion, precio, imagen) VALUES
(1, 'Monitor 17 pulgadas', 'Monitor plano LCD', 110.22, "https://res.cloudinary.com/tomascabfer4/image/upload/v1765816460/tienda/1558-dell-17-e1715s-17-led-sxga.webp"),
(2, 'Teclado', 'Teclado USB en español', 20.12, "https://res.cloudinary.com/tomascabfer4/image/upload/v1765816546/tienda/61pOv4Rr7ML._AC_UF1000%2C1000_QL80_.jpg"),
(3, 'Impresora', 'Impresora láser a color', 360.05, "https://res.cloudinary.com/tomascabfer4/image/upload/v1765816574/tienda/HP_Color_Laser_150nw_impresora_laser_a_color_con_WiFi_4ZB95A_4ZB95AB19_896087_m2_big.jpg"),
(4, 'Ratón óptico', 'Ratón USB con sensor óptico', 9.99, "https://res.cloudinary.com/tomascabfer4/image/upload/v1765816626/tienda/download.jpg"),
(5, 'Altavoces', 'Altavoces estéreo para ordenador', 25.99, "https://res.cloudinary.com/tomascabfer4/image/upload/v1765816788/tienda/118-cool-office-equipo-altavoces-para-pc-6w.webp"),
(6, 'Disco duro externo 1TB', 'Disco duro USB 3.0 portátil', 54.99, "https://res.cloudinary.com/tomascabfer4/image/upload/v1765816805/tienda/1795-verbatim-store-n-go-disco-duro-portatil-1tb-usb-30-negro.webp"),
(7, 'Memoria USB 64GB', 'Pendrive USB 3.0', 12.99, "https://res.cloudinary.com/tomascabfer4/image/upload/v1765816928/tienda/fee_786_587_png.png"),
(8, 'Portátil 15 pulgadas', 'Portátil con procesador Intel i5', 589.99, "https://res.cloudinary.com/tomascabfer4/image/upload/v1765816943/tienda/1405-hp-15-fd0080ns-intel-core-i5-1334u-16gb-512gb-ssd-156.webp"),
(9, 'Webcam HD', 'Cámara web 1080p con micrófono', 34.99, "https://res.cloudinary.com/tomascabfer4/image/upload/v1765817133/tienda/51TgPJyHvoS._AC_UF894%2C1000_QL80_.jpg"),
(10, 'Auriculares', 'Auriculares con micrófono integrado', 28.99, "https://res.cloudinary.com/tomascabfer4/image/upload/v1765817192/tienda/450_1000.png"),
(11, 'Router Wi-Fi', 'Router inalámbrico doble banda', 45.99, "https://res.cloudinary.com/tomascabfer4/image/upload/v1765817173/tienda/tp-link-archer-ax10-router-inalambrico-doble-banda-ax1500-wi-fi-6.webp"),
(12, 'Silla de oficina', 'Silla ergonómica regulable', 129.99, "https://res.cloudinary.com/tomascabfer4/image/upload/v1765817158/tienda/images.jpg"),
(13, 'Mesa de escritorio', 'Mesa de oficina de madera', 189.99, "https://res.cloudinary.com/tomascabfer4/image/upload/v1765817119/tienda/Mesa-para-oficina-Panel1.jpg"),
(14, 'Pantalla 24 pulgadas', 'Monitor LED Full HD', 179.99, "https://res.cloudinary.com/tomascabfer4/image/upload/v1765817208/tienda/3938-samsung-s24d302gau-24-led-ips-fullhd-100hz-mejor-precio.webp"),
(15, 'Alfombrilla para ratón', 'Alfombrilla antideslizante', 4.99, "https://res.cloudinary.com/tomascabfer4/image/upload/v1765817230/tienda/71tIA7Z3y0L.jpg"),
(16, 'Regleta eléctrica', 'Regleta con protección contra sobretensiones', 15.99, "https://res.cloudinary.com/tomascabfer4/image/upload/v1765817146/tienda/51P8YzTwgoL.jpg"),
(17, 'SAI / UPS', 'Sistema de alimentación ininterrumpida', 89.99, "https://res.cloudinary.com/tomascabfer4/image/upload/v1765817103/tienda/SAI-de-linea-interactiva-Supra-de-900VA-con-2-schuko--UP10200.jpg"),
(18, 'Tarjeta gráfica', 'Tarjeta gráfica dedicada 8GB', 329.99, "https://res.cloudinary.com/tomascabfer4/image/upload/v1765817062/tienda/71h48w-NEsL.jpg"),
(19, 'Placa base', 'Placa base ATX compatible con Intel', 149.99, "https://res.cloudinary.com/tomascabfer4/image/upload/v1765817042/tienda/0YCE0M--042B310B0M0009-0.jpg"),
(20, 'Procesador', 'Procesador Intel Core i7', 319.99, "https://res.cloudinary.com/tomascabfer4/image/upload/v1765817009/tienda/41ZlpceMzcL._AC_UF894%2C1000_QL80_.jpg"),
(21, 'Memoria RAM 16GB', 'Memoria DDR4 16GB', 79.99, "https://res.cloudinary.com/tomascabfer4/image/upload/v1765816993/tienda/51VO7toQIyL.jpg"),
(22, 'Fuente de alimentación', 'Fuente de alimentación 650W', 69.99, "https://res.cloudinary.com/tomascabfer4/image/upload/v1765816977/tienda/1.webp"),
(23, 'Caja de ordenador', 'Caja ATX con ventilación optimizada', 55.99, "https://res.cloudinary.com/tomascabfer4/image/upload/v1765816963/tienda/61b66RUVUZL._AC_UF1000%2C1000_QL80_.jpg");



DROP TABLE IF EXISTS proveedores;

CREATE TABLE proveedores (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL,
    descripcion VARCHAR(200),
    telefono VARCHAR(20),
    email VARCHAR(100),
    imagen VARCHAR(200),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO proveedores (nombre, descripcion, telefono, email) VALUES
('TecnoGlobal S.L.', 'Distribuidor de componentes informáticos y periféricos.', '+34915550001', 'contacto@tecnoglobal.es', "https://res.cloudinary.com/tomascabfer4/image/upload/v1765823240/tienda/download.jpg"),
('OfiEquip Express', 'Suministro de mobiliario y equipos de oficina.', '+34935550002', 'ventas@ofiequipexpress.com', "https://res.cloudinary.com/tomascabfer4/image/upload/v1765823315/tienda/download.png"),
('PowerLink Componentes', 'Especializados en fuentes de alimentación y conectividad.', '+34955550003', 'soporte@powerlink.net', "https://res.cloudinary.com/tomascabfer4/image/upload/v1765823412/tienda/images.png"),
('DataStorage Ibérica', 'Proveedores de soluciones de almacenamiento y memorias.', '+34900555004', 'info@datastorage.es', "https://res.cloudinary.com/tomascabfer4/image/upload/v1765823555/tienda/download.jpg"),
('SoftLogic Distribución', 'Proveedores de software y equipos de alto rendimiento.', '+34888555005', 'comercial@softlogic.com', "https://res.cloudinary.com/tomascabfer4/image/upload/v1765823573/tienda/unnamed.png"),
('Redes y Conexiones S.A.', 'Especialistas en routers, cables y equipos de red.', '+34925550006', 'admin@redesyconexiones.es' , "https://res.cloudinary.com/tomascabfer4/image/upload/v1765823676/tienda/download.jpg"),
('ErgoLife Solutions', 'Proveedores de sillas y mesas ergonómicas.', '+34965550007', 'clientes@ergolife.net', "https://res.cloudinary.com/tomascabfer4/image/upload/v1765823699/tienda/download.jpg");

