CREATE TABLE ejercicio(
   id          bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
   descripcion varchar        NOT NULL,
   imagen      varchar        NOT NULL,
   tipo_musculo_id   bigint        NOT NULL,
   PRIMARY KEY (id)
);
