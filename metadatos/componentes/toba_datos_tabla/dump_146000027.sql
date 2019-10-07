------------------------------------------------------------
--[146000027]--  DT - gta_info_tecnica 
------------------------------------------------------------

------------------------------------------------------------
-- apex_objeto
------------------------------------------------------------

--- INICIO Grupo de desarrollo 146
INSERT INTO apex_objeto (proyecto, objeto, anterior, identificador, reflexivo, clase_proyecto, clase, punto_montaje, subclase, subclase_archivo, objeto_categoria_proyecto, objeto_categoria, nombre, titulo, colapsable, descripcion, fuente_datos_proyecto, fuente_datos, solicitud_registrar, solicitud_obj_obs_tipo, solicitud_obj_observacion, parametro_a, parametro_b, parametro_c, parametro_d, parametro_e, parametro_f, usuario, creacion, posicion_botonera) VALUES (
	'exatecacad', --proyecto
	'146000027', --objeto
	NULL, --anterior
	NULL, --identificador
	NULL, --reflexivo
	'toba', --clase_proyecto
	'toba_datos_tabla', --clase
	'146000001', --punto_montaje
	NULL, --subclase
	NULL, --subclase_archivo
	NULL, --objeto_categoria_proyecto
	NULL, --objeto_categoria
	'DT - gta_info_tecnica', --nombre
	NULL, --titulo
	NULL, --colapsable
	NULL, --descripcion
	'exatecacad', --fuente_datos_proyecto
	'exatecacad', --fuente_datos
	NULL, --solicitud_registrar
	NULL, --solicitud_obj_obs_tipo
	NULL, --solicitud_obj_observacion
	NULL, --parametro_a
	NULL, --parametro_b
	NULL, --parametro_c
	NULL, --parametro_d
	NULL, --parametro_e
	NULL, --parametro_f
	NULL, --usuario
	'2019-03-10 19:35:23', --creacion
	NULL  --posicion_botonera
);
--- FIN Grupo de desarrollo 146

------------------------------------------------------------
-- apex_objeto_db_registros
------------------------------------------------------------
INSERT INTO apex_objeto_db_registros (objeto_proyecto, objeto, max_registros, min_registros, punto_montaje, ap, ap_clase, ap_archivo, tabla, tabla_ext, alias, modificar_claves, fuente_datos_proyecto, fuente_datos, permite_actualizacion_automatica, esquema, esquema_ext) VALUES (
	'exatecacad', --objeto_proyecto
	'146000027', --objeto
	NULL, --max_registros
	NULL, --min_registros
	'146000001', --punto_montaje
	'1', --ap
	NULL, --ap_clase
	NULL, --ap_archivo
	'gta_info_tecnica', --tabla
	NULL, --tabla_ext
	NULL, --alias
	'0', --modificar_claves
	'exatecacad', --fuente_datos_proyecto
	'exatecacad', --fuente_datos
	'1', --permite_actualizacion_automatica
	NULL, --esquema
	'public'  --esquema_ext
);

------------------------------------------------------------
-- apex_objeto_db_registros_col
------------------------------------------------------------

--- INICIO Grupo de desarrollo 146
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'exatecacad', --objeto_proyecto
	'146000027', --objeto
	'146000015', --col_id
	'id', --columna
	'E', --tipo
	'1', --pk
	'gta_info_tecnica_id_seq', --secuencia
	NULL, --largo
	NULL, --no_nulo
	'1', --no_nulo_db
	'0', --externa
	'gta_info_tecnica'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'exatecacad', --objeto_proyecto
	'146000027', --objeto
	'146000016', --col_id
	'departamento_id', --columna
	'E', --tipo
	'0', --pk
	'', --secuencia
	NULL, --largo
	NULL, --no_nulo
	'0', --no_nulo_db
	'0', --externa
	'gta_info_tecnica'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'exatecacad', --objeto_proyecto
	'146000027', --objeto
	'146000017', --col_id
	'area_de_conocimiento_id', --columna
	'E', --tipo
	'0', --pk
	'', --secuencia
	NULL, --largo
	NULL, --no_nulo
	'0', --no_nulo_db
	'0', --externa
	'gta_info_tecnica'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'exatecacad', --objeto_proyecto
	'146000027', --objeto
	'146000018', --col_id
	'carrera_id', --columna
	'C', --tipo
	'0', --pk
	'', --secuencia
	'5', --largo
	NULL, --no_nulo
	'0', --no_nulo_db
	'0', --externa
	'gta_info_tecnica'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'exatecacad', --objeto_proyecto
	'146000027', --objeto
	'146000019', --col_id
	'plan_id', --columna
	'C', --tipo
	'0', --pk
	'', --secuencia
	'5', --largo
	NULL, --no_nulo
	'0', --no_nulo_db
	'0', --externa
	'gta_info_tecnica'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'exatecacad', --objeto_proyecto
	'146000027', --objeto
	'146000020', --col_id
	'materia_id', --columna
	'C', --tipo
	'0', --pk
	'', --secuencia
	'5', --largo
	NULL, --no_nulo
	'0', --no_nulo_db
	'0', --externa
	'gta_info_tecnica'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'exatecacad', --objeto_proyecto
	'146000027', --objeto
	'146000021', --col_id
	'fecha_desde', --columna
	'F', --tipo
	'0', --pk
	'', --secuencia
	NULL, --largo
	NULL, --no_nulo
	'0', --no_nulo_db
	'0', --externa
	'gta_info_tecnica'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'exatecacad', --objeto_proyecto
	'146000027', --objeto
	'146000022', --col_id
	'fecha_hasta', --columna
	'F', --tipo
	'0', --pk
	'', --secuencia
	NULL, --largo
	NULL, --no_nulo
	'0', --no_nulo_db
	'0', --externa
	'gta_info_tecnica'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'exatecacad', --objeto_proyecto
	'146000027', --objeto
	'146000023', --col_id
	'fecha_de_convocatoria', --columna
	'F', --tipo
	'0', --pk
	'', --secuencia
	NULL, --largo
	NULL, --no_nulo
	'0', --no_nulo_db
	'0', --externa
	'gta_info_tecnica'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'exatecacad', --objeto_proyecto
	'146000027', --objeto
	'146000024', --col_id
	'nro_expediente', --columna
	'C', --tipo
	'0', --pk
	'', --secuencia
	'15', --largo
	NULL, --no_nulo
	'0', --no_nulo_db
	'0', --externa
	'gta_info_tecnica'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'exatecacad', --objeto_proyecto
	'146000027', --objeto
	'146000025', --col_id
	'nro_resolucion', --columna
	'C', --tipo
	'0', --pk
	'', --secuencia
	'10', --largo
	NULL, --no_nulo
	'0', --no_nulo_db
	'0', --externa
	'gta_info_tecnica'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'exatecacad', --objeto_proyecto
	'146000027', --objeto
	'146000026', --col_id
	'fecha_vencimiento', --columna
	'F', --tipo
	'0', --pk
	'', --secuencia
	NULL, --largo
	NULL, --no_nulo
	'0', --no_nulo_db
	'0', --externa
	'gta_info_tecnica'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'exatecacad', --objeto_proyecto
	'146000027', --objeto
	'146000027', --col_id
	'contra_cuatrimestre', --columna
	'L', --tipo
	'0', --pk
	'', --secuencia
	NULL, --largo
	NULL, --no_nulo
	'0', --no_nulo_db
	'0', --externa
	'gta_info_tecnica'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'exatecacad', --objeto_proyecto
	'146000027', --objeto
	'146000029', --col_id
	'legajo', --columna
	'C', --tipo
	'0', --pk
	'', --secuencia
	'15', --largo
	NULL, --no_nulo
	'1', --no_nulo_db
	'0', --externa
	'gta_info_tecnica'  --tabla
);
--- FIN Grupo de desarrollo 146
