CREATE TABLE usuario(
   id          bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
   nombre		varchar NOT NULL,
   identificacion	varchar NOT NULL,
   contrasena		varchar,
   talla		bigint NOT NULL,
   edad		bigint NOT NULL,
   activo		boolean,
   plan_id		bigint,
   perfil_id		bigint,
   PRIMARY KEY (id)
);
