
use burgerfly_db

CREATE TABLE productos (
id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
titulo_producto VARCHAR(150) NOT NULL,
imagen_producto VARCHAR(500) NOT NULL,
descripcion_producto VARCHAR (300) NOT NULL,
fecha_creacion DATETIME NOT NULL
);
ALTER TABLE `burgerfly_db`.`productos` 
ADD COLUMN `createdAt` DATE NOT NULL AFTER `createdAt`;

ALTER TABLE `burgerfly_db`.`productos` 
ADD COLUMN `updateAt` DATE NOT NULL AFTER `updateAt`;
DROP COLUMN 'fecha_creacion' DATETIME NOT NULL;

CREATE TABLE usuarios (
id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(150) NOT NULL,
imagen_perfil VARCHAR(500) NOT NULL,
email VARCHAR(200) UNIQUE NOT NULL,
password VARCHAR(20) NOT NULL,
birthdate DATE NOT NULL
);
ALTER TABLE `burgerfly_db`.`usuarios` 
ADD COLUMN `createdAt` DATE NOT NULL AFTER `createdAt`;

ALTER TABLE `burgerfly_db`.`usuarios` 
ADD COLUMN `updateAt` DATE NOT NULL AFTER `updateAt`;
INSERT INTO `usuarios` (`id`, `username`, `imagen_perfil`, `email`, `password`, `birthdate`, `createdAt`, `updateAt`) VALUES
(1, 'maurooso', '', 'mauro@gmail.com', 'hola123', '2003-09-12', NULL, NULL),
(2, 'marianom', '', 'marianom@gmail.com', 'hola123', '2004-10-09', NULL, NULL),
(3, 'franco', '', 'francoo@gmail.com', 'hola123', '0200-09-12', NULL, NULL);


CREATE TABLE comentarios(
id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
texto_comentario VARCHAR(500),
id_product INT UNSIGNED,
id_usuarios INT UNSIGNED,
FOREIGN KEY (id_product) REFERENCES productos(id),
FOREIGN KEY (id_usuarios) REFERENCES usuarios(id)
);
ALTER TABLE `burgerfly_db`.`comentarios` 
ADD COLUMN `createdAt` DATE NOT NULL AFTER `createdAt`;


CREATE TABLE seguidores (
id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
id_usuarios_seguido INT UNSIGNED,
id_usuarios_seguidor INT UNSIGNED,
FOREIGN KEY (id_usuarios_seguido) REFERENCES usuarios(id),
FOREIGN KEY (id_usuarios_seguidor) REFERENCES usuarios(id)
);

































insert into usuarios (username, imagen_perfil, email, password, birthdate, created_at, update_at) 
values ('kundo','','kundo@gmail.com', 'hola123','1999-03-06','2022-04-04','2022-05-05'),
('marian','','marian@gmail.com','hola123','2003-03-25','2022-04-04','2022-05-05'),
('mauro', '','mauro@gmail.com','hola123', '2003-04-19','2022-04-04','2022-04-04'),
('franco', '', 'franco@gmail.com', 'hola123', '2002-09-09','2022-04-04','2022-04-04'),
('roman','','roman@gmail.com', 'hola123', '1975-06-24','2022-05-05','2022-06-06'),
('Brian','', 'brian@gmail.com', 'hola123', '1992-01-01','2022-05-05','2022-06-06'),
('Luis','', 'luis@gmail.com', 'hola123', '1985-10-10','2022-05-05','2022-06-06');

insert into productos ( titulo_producto, imagen_producto, descripcion_producto, fecha_creacion, update_at)
values ('Big Mac', '', 'El clásico de siempre, esta vez modernizado','2022-06-15','2022-06-15'),
('Cuarto de Libra', '', 'Historicamente nuestra mejor hamburguesa','2022-06-15','2022-06-15'),
('Triple Bacon', '', 'La panceta hace mejor a las hamburguesas','2022-06-15','2022-06-15'),
('McFiesta', '', 'Fiessta en tu bocaaa','2022-06-15','2022-06-15'),
('Grand Tasty Turbo Bacon', '', 'la mejor hamburguesa de la era moderna','2022-06-15','2022-06-15'),
('McVeggie', '', 'Vegeteraiana para todos los gustos','2022-06-15','2022-06-15'),
('McPollo', '', 'Y si sos del pollo es por acá..','2022-06-15','2022-06-15'),
('DobleCheese', '', 'Q','2022-06-15','2022-06-15'),
('Tripe Monster', '', 'te la bancas?','2022-06-15','2022-06-15'),
('Original Meet', '', 'Carne vacuna ','2022-06-15','2022-06-15'),
('Chimi Burger', '', 'Un poquito del asado en una hamburgesa','2022-06-15','2022-06-15'),
('Pork Burger', '', 'Hamburgeusa hecha a base de cerdo','2022-06-15','2022-06-15'),
('ChoriBurger', '', 'el embutido por excelencia','2022-06-15','2022-06-15'),
('CasaMoma', '', 'La mejor hamburguesa que vas a probar en tu vida','2022-06-15','2022-06-15'),
('Mostaza', '', 'Buena alternativa','2022-06-15','2022-06-15'),
('Triple Queso', '', 'No Falla.','2022-06-15','2022-06-15'),
('TFTS', '', 'Hamburguesa texana','2022-06-15','2022-06-15'),
('Buenos Aires', '', 'Bien porteña','2022-06-15','2022-06-15'),
('Chaco', '', 'La chaconeta señores...','2022-06-15','2022-06-15'),
('Uruguay', '', 'Hamburguesa de nuestros hermanos uruguayos','2022-06-15','2022-06-15'),
('TEXAS', '', 'Grilled master piece','2022-06-15','2022-06-15');

insert into comentarios ( texto_comentario, created_at, update_at)
values ('nooo, tremenda!!', '2022-06-15','2022-06-15'),
('muy buenaaaaaa', '2022-06-15','2022-06-15'),
('fiesta!!', '2022-06-15','2022-06-15'),
('caravana!!', '2022-06-15','2022-06-15'),
('que locura!!', '2022-06-15','2022-06-15'),
('la quiero!', '2022-06-15','2022-06-15'),
('dondeeee', '2022-06-15','2022-06-15'),
('wow', '2022-06-15','2022-06-15'),
('sin palabras', '2022-06-15','2022-06-15'),
('es una locura esto', '2022-06-15','2022-06-15'),
('jajajaj', '2022-06-15','2022-06-15'),
('jjujuj', '2022-06-15','2022-06-15'),
('es la mejor hamburguesa que probé en mi vida', '2022-06-15','2022-06-15'),
('quiero comerla ya', '2022-06-15','2022-06-15'),
('receta?', '2022-06-15','2022-06-15'),
('en donde la comieron?', '2022-06-15','2022-06-15'),
('cuanto cuesta?', '2022-06-15','2022-06-15'),
('quien la hizo', '2022-06-15','2022-06-15'),
('que locura esa hamburguesa', '2022-06-15','2022-06-15'),
('uruguay no falla', '2022-06-15','2022-06-15'),
('quiero hacerla', '2022-06-15','2022-06-15'),
('con que pan está hecha?', '2022-06-15','2022-06-15'),
('nunca falla ese lugar', '2022-06-15','2022-06-15'),
('macdonalds', '2022-06-15','2022-06-15'),
('mac no fallaaaaaa', '2022-06-15','2022-06-15'),
('masterpiece', '2022-06-15','2022-06-15'),
('nunca vi algo igual', '2022-06-15','2022-06-15'),
('tengo hambre', '2022-06-15','2022-06-15'),
('que masa esa burrrggga', '2022-06-15','2022-06-15'),
('mira lo que es eso papaaaaaa', '2022-06-15','2022-06-15'),
('que paso aca?', '2022-06-15','2022-06-15'),
('muy muy muy muy muy buena', '2022-06-15','2022-06-15'),
('OMG', '2022-06-15','2022-06-15'),
('beautiful burgerrrr!!', '2022-06-15','2022-06-15'),
('esto es un delirio hermano', '2022-06-15','2022-06-15');




CREATE TABLE usuarios (
id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(150) NOT NULL,
imagen_perfil VARCHAR(500) NOT NULL,
email VARCHAR(200) UNIQUE NOT NULL,
password VARCHAR(20) NOT NULL,
birthdate DATE NOT NULL,
created_at DATE,
update_at Datetime,
producto_id int unsigned,
foreign key (producto_id) references productos (id),
seguidores_id int unsigned,
foreign key (seguidores_id) references seguidores (seguidor_id),
seguidos_id int unsigned,
foreign key (seguidos_id) references seguidores (seguidos_id)
);

ALTER TABLE `burgerfly_db`.`productos` 
ADD INDEX `usuarios_id_idx` (`usuarios_id` ASC);
;
ALTER TABLE `burgerfly_db`.`productos` 
ADD CONSTRAINT `usuarios_id`
  FOREIGN KEY (`usuarios_id`)
  REFERENCES `burgerfly_db`.`usuarios` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;












CREATE TABLE productos (
id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
titulo_producto VARCHAR(150) NOT NULL,
imagen_producto VARCHAR(500) NOT NULL,
descripcion_producto VARCHAR (300) NOT NULL,
created_at DATETIME,
update_at Datetime,
usuarios_id int unsigned,
foreign key (usuarios_id) references usuarios (id),
comentarios_id int unsigned,
foreign key (comentarios_id) references comentarios (id)

);
CREATE TABLE comentarios(
id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
texto_comentario VARCHAR(500),
productos_id INT UNSIGNED,
usuarios_id INT UNSIGNED,
created_at Datetime,
FOREIGN KEY (productos_id) REFERENCES productos(id),
FOREIGN KEY (usuarios_id) REFERENCES usuarios(id)
);

CREATE TABLE seguidores (
id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
usuarios_seguidos_id INT UNSIGNED,
usuarios_seguidores_id INT UNSIGNED,
FOREIGN KEY (usuarios_seguidos_id) REFERENCES usuarios(id),
FOREIGN KEY (usuarios_seguidores_id) REFERENCES usuarios(id)
);
