CREATE TABLE usuarios_activos (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(20) NOT NULL,
fecha_creacion_cuenta DATETIME NOT NULL,
numero_seguidores INT UNSIGNED NOT NULL
);