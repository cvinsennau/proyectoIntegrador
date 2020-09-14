CREATE TABLE comentarios_post (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
id_post INT UNSIGNED NOT NULL,
id_usuario_que_comento INT UNSIGNED NOT NULL,
texto_comentario VARCHAR(140) NULL,
fecha_de_comentario DATE NOT NULL
)