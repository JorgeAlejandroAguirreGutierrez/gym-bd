CREATE TABLE sesion(
   id          bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
   estado      boolean,
   fecha_apertura	timestamp without time zone NOT NULL,
   fecha_cierre	timestamp without time zone,
   usuario_id	bigint,
   PRIMARY KEY (id)
);
