CREATE TABLE plantilla_plan(
   id          bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
   nombre	VARCHAR,
   somatotipo	VARCHAR,
   plan_id	bigint,
   usuario_id  bigint,
   PRIMARY KEY (id)
);
