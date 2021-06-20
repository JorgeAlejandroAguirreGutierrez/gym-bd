CREATE TABLE rutina(
   id          bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
   repeticiones 	bigint,
   series 		bigint,
   valor_peso 		float,
   medida_peso		varchar,
   valor_tiempo	bigint,
   medida_tiempo	varchar,
   ejercicio_id 	bigint,
   dia_id 		bigint,
   PRIMARY KEY (id)
);
