------------------------------------------------------------
--[146000030]--  Configurar mapa de departamento 
------------------------------------------------------------

------------------------------------------------------------
-- apex_objeto
------------------------------------------------------------

--- INICIO Grupo de desarrollo 146
INSERT INTO apex_objeto (proyecto, objeto, anterior, identificador, reflexivo, clase_proyecto, clase, punto_montaje, subclase, subclase_archivo, objeto_categoria_proyecto, objeto_categoria, nombre, titulo, colapsable, descripcion, fuente_datos_proyecto, fuente_datos, solicitud_registrar, solicitud_obj_obs_tipo, solicitud_obj_observacion, parametro_a, parametro_b, parametro_c, parametro_d, parametro_e, parametro_f, usuario, creacion, posicion_botonera) VALUES (
	'exatecacad', --proyecto
	'146000030', --objeto
	NULL, --anterior
	NULL, --identificador
	NULL, --reflexivo
	'toba', --clase_proyecto
	'toba_ci', --clase
	'146000001', --punto_montaje
	'ci_configurar_mapa_departamento', --subclase
	'operaciones/administracion/configurar_mapa_departamento/ci_configurar_mapa_departamento.php', --subclase_archivo
	NULL, --objeto_categoria_proyecto
	NULL, --objeto_categoria
	'Configurar mapa de departamento', --nombre
	'Configurar mapa departamento', --titulo
	'0', --colapsable
	NULL, --descripcion
	NULL, --fuente_datos_proyecto
	NULL, --fuente_datos
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
	'2019-04-02 09:45:10', --creacion
	'abajo'  --posicion_botonera
);
--- FIN Grupo de desarrollo 146

------------------------------------------------------------
-- apex_objeto_eventos
------------------------------------------------------------

--- INICIO Grupo de desarrollo 146
INSERT INTO apex_objeto_eventos (proyecto, evento_id, objeto, identificador, etiqueta, maneja_datos, sobre_fila, confirmacion, estilo, imagen_recurso_origen, imagen, en_botonera, ayuda, orden, ci_predep, implicito, defecto, display_datos_cargados, grupo, accion, accion_imphtml_debug, accion_vinculo_carpeta, accion_vinculo_item, accion_vinculo_objeto, accion_vinculo_popup, accion_vinculo_popup_param, accion_vinculo_target, accion_vinculo_celda, accion_vinculo_servicio, es_seleccion_multiple, es_autovinculo) VALUES (
	'exatecacad', --proyecto
	'146000041', --evento_id
	'146000030', --objeto
	'procesar', --identificador
	'&Guardar', --etiqueta
	'1', --maneja_datos
	NULL, --sobre_fila
	NULL, --confirmacion
	NULL, --estilo
	'apex', --imagen_recurso_origen
	NULL, --imagen
	'1', --en_botonera
	NULL, --ayuda
	'1', --orden
	NULL, --ci_predep
	'0', --implicito
	'1', --defecto
	NULL, --display_datos_cargados
	NULL, --grupo
	NULL, --accion
	'0', --accion_imphtml_debug
	NULL, --accion_vinculo_carpeta
	NULL, --accion_vinculo_item
	NULL, --accion_vinculo_objeto
	'0', --accion_vinculo_popup
	NULL, --accion_vinculo_popup_param
	NULL, --accion_vinculo_target
	NULL, --accion_vinculo_celda
	NULL, --accion_vinculo_servicio
	'0', --es_seleccion_multiple
	'0'  --es_autovinculo
);
INSERT INTO apex_objeto_eventos (proyecto, evento_id, objeto, identificador, etiqueta, maneja_datos, sobre_fila, confirmacion, estilo, imagen_recurso_origen, imagen, en_botonera, ayuda, orden, ci_predep, implicito, defecto, display_datos_cargados, grupo, accion, accion_imphtml_debug, accion_vinculo_carpeta, accion_vinculo_item, accion_vinculo_objeto, accion_vinculo_popup, accion_vinculo_popup_param, accion_vinculo_target, accion_vinculo_celda, accion_vinculo_servicio, es_seleccion_multiple, es_autovinculo) VALUES (
	'exatecacad', --proyecto
	'146000042', --evento_id
	'146000030', --objeto
	'cancelar', --identificador
	'&Cancelar', --etiqueta
	'0', --maneja_datos
	NULL, --sobre_fila
	NULL, --confirmacion
	NULL, --estilo
	'apex', --imagen_recurso_origen
	NULL, --imagen
	'1', --en_botonera
	NULL, --ayuda
	'2', --orden
	NULL, --ci_predep
	'0', --implicito
	'0', --defecto
	NULL, --display_datos_cargados
	NULL, --grupo
	NULL, --accion
	'0', --accion_imphtml_debug
	NULL, --accion_vinculo_carpeta
	NULL, --accion_vinculo_item
	NULL, --accion_vinculo_objeto
	'0', --accion_vinculo_popup
	NULL, --accion_vinculo_popup_param
	NULL, --accion_vinculo_target
	NULL, --accion_vinculo_celda
	NULL, --accion_vinculo_servicio
	'0', --es_seleccion_multiple
	'0'  --es_autovinculo
);
--- FIN Grupo de desarrollo 146

------------------------------------------------------------
-- apex_objeto_mt_me
------------------------------------------------------------
INSERT INTO apex_objeto_mt_me (objeto_mt_me_proyecto, objeto_mt_me, ev_procesar_etiq, ev_cancelar_etiq, ancho, alto, posicion_botonera, tipo_navegacion, botonera_barra_item, con_toc, incremental, debug_eventos, activacion_procesar, activacion_cancelar, ev_procesar, ev_cancelar, objetos, post_procesar, metodo_despachador, metodo_opciones) VALUES (
	'exatecacad', --objeto_mt_me_proyecto
	'146000030', --objeto_mt_me
	NULL, --ev_procesar_etiq
	NULL, --ev_cancelar_etiq
	'950px', --ancho
	NULL, --alto
	NULL, --posicion_botonera
	'wizard', --tipo_navegacion
	'0', --botonera_barra_item
	'1', --con_toc
	NULL, --incremental
	NULL, --debug_eventos
	NULL, --activacion_procesar
	NULL, --activacion_cancelar
	NULL, --ev_procesar
	NULL, --ev_cancelar
	NULL, --objetos
	NULL, --post_procesar
	NULL, --metodo_despachador
	NULL  --metodo_opciones
);

------------------------------------------------------------
-- apex_objeto_dependencias
------------------------------------------------------------

--- INICIO Grupo de desarrollo 146
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES (
	'exatecacad', --proyecto
	'146000029', --dep_id
	'146000030', --objeto_consumidor
	'146000033', --objeto_proveedor
	'cuadro_materias', --identificador
	NULL, --parametros_a
	NULL, --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	NULL  --orden
);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES (
	'exatecacad', --proyecto
	'146000028', --dep_id
	'146000030', --objeto_consumidor
	'146000032', --objeto_proveedor
	'fitro_materias', --identificador
	NULL, --parametros_a
	NULL, --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	NULL  --orden
);
INSERT INTO apex_objeto_dependencias (proyecto, dep_id, objeto_consumidor, objeto_proveedor, identificador, parametros_a, parametros_b, parametros_c, inicializar, orden) VALUES (
	'exatecacad', --proyecto
	'146000027', --dep_id
	'146000030', --objeto_consumidor
	'146000031', --objeto_proveedor
	'form_departamentos', --identificador
	NULL, --parametros_a
	NULL, --parametros_b
	NULL, --parametros_c
	NULL, --inicializar
	NULL  --orden
);
--- FIN Grupo de desarrollo 146

------------------------------------------------------------
-- apex_objeto_ci_pantalla
------------------------------------------------------------

--- INICIO Grupo de desarrollo 146
INSERT INTO apex_objeto_ci_pantalla (objeto_ci_proyecto, objeto_ci, pantalla, identificador, orden, etiqueta, descripcion, tip, imagen_recurso_origen, imagen, objetos, eventos, subclase, subclase_archivo, template, template_impresion, punto_montaje) VALUES (
	'exatecacad', --objeto_ci_proyecto
	'146000030', --objeto_ci
	'146000012', --pantalla
	'departamento_ac', --identificador
	'2', --orden
	'Departamento y Área de Conocimiento', --etiqueta
	'Seleccione el departamento para configurar y un área de conocimiento', --descripcion
	NULL, --tip
	'apex', --imagen_recurso_origen
	NULL, --imagen
	NULL, --objetos
	NULL, --eventos
	NULL, --subclase
	NULL, --subclase_archivo
	NULL, --template
	NULL, --template_impresion
	'146000001'  --punto_montaje
);
INSERT INTO apex_objeto_ci_pantalla (objeto_ci_proyecto, objeto_ci, pantalla, identificador, orden, etiqueta, descripcion, tip, imagen_recurso_origen, imagen, objetos, eventos, subclase, subclase_archivo, template, template_impresion, punto_montaje) VALUES (
	'exatecacad', --objeto_ci_proyecto
	'146000030', --objeto_ci
	'146000013', --pantalla
	'materias', --identificador
	'3', --orden
	'Materias', --etiqueta
	NULL, --descripcion
	NULL, --tip
	'apex', --imagen_recurso_origen
	NULL, --imagen
	NULL, --objetos
	NULL, --eventos
	NULL, --subclase
	NULL, --subclase_archivo
	NULL, --template
	NULL, --template_impresion
	NULL  --punto_montaje
);
INSERT INTO apex_objeto_ci_pantalla (objeto_ci_proyecto, objeto_ci, pantalla, identificador, orden, etiqueta, descripcion, tip, imagen_recurso_origen, imagen, objetos, eventos, subclase, subclase_archivo, template, template_impresion, punto_montaje) VALUES (
	'exatecacad', --objeto_ci_proyecto
	'146000030', --objeto_ci
	'146000014', --pantalla
	'docentes', --identificador
	'4', --orden
	'Docentes', --etiqueta
	NULL, --descripcion
	NULL, --tip
	'apex', --imagen_recurso_origen
	NULL, --imagen
	NULL, --objetos
	NULL, --eventos
	NULL, --subclase
	NULL, --subclase_archivo
	NULL, --template
	NULL, --template_impresion
	NULL  --punto_montaje
);
INSERT INTO apex_objeto_ci_pantalla (objeto_ci_proyecto, objeto_ci, pantalla, identificador, orden, etiqueta, descripcion, tip, imagen_recurso_origen, imagen, objetos, eventos, subclase, subclase_archivo, template, template_impresion, punto_montaje) VALUES (
	'exatecacad', --objeto_ci_proyecto
	'146000030', --objeto_ci
	'146000015', --pantalla
	'inicial', --identificador
	'1', --orden
	'Configuración del Departamento', --etiqueta
	'Con esta operación podrá configurar el mapa del departamento:
<ol type = 1>
<li>Seleccionar el departamento y el área de conocimiento
<li>Seleccionar la materia, filtrando por carrera y plan
<li>Agregar los docentes con sus cargos y datos técnicos propios
</ol>', --descripcion
	NULL, --tip
	'apex', --imagen_recurso_origen
	NULL, --imagen
	NULL, --objetos
	NULL, --eventos
	NULL, --subclase
	NULL, --subclase_archivo
	NULL, --template
	NULL, --template_impresion
	'146000001'  --punto_montaje
);
--- FIN Grupo de desarrollo 146

------------------------------------------------------------
-- apex_objetos_pantalla
------------------------------------------------------------
INSERT INTO apex_objetos_pantalla (proyecto, pantalla, objeto_ci, orden, dep_id) VALUES (
	'exatecacad', --proyecto
	'146000012', --pantalla
	'146000030', --objeto_ci
	'0', --orden
	'146000027'  --dep_id
);
INSERT INTO apex_objetos_pantalla (proyecto, pantalla, objeto_ci, orden, dep_id) VALUES (
	'exatecacad', --proyecto
	'146000013', --pantalla
	'146000030', --objeto_ci
	'0', --orden
	'146000028'  --dep_id
);
INSERT INTO apex_objetos_pantalla (proyecto, pantalla, objeto_ci, orden, dep_id) VALUES (
	'exatecacad', --proyecto
	'146000013', --pantalla
	'146000030', --objeto_ci
	'1', --orden
	'146000029'  --dep_id
);

------------------------------------------------------------
-- apex_eventos_pantalla
------------------------------------------------------------
INSERT INTO apex_eventos_pantalla (pantalla, objeto_ci, evento_id, proyecto) VALUES (
	'146000012', --pantalla
	'146000030', --objeto_ci
	'146000042', --evento_id
	'exatecacad'  --proyecto
);
INSERT INTO apex_eventos_pantalla (pantalla, objeto_ci, evento_id, proyecto) VALUES (
	'146000013', --pantalla
	'146000030', --objeto_ci
	'146000042', --evento_id
	'exatecacad'  --proyecto
);
INSERT INTO apex_eventos_pantalla (pantalla, objeto_ci, evento_id, proyecto) VALUES (
	'146000014', --pantalla
	'146000030', --objeto_ci
	'146000041', --evento_id
	'exatecacad'  --proyecto
);
INSERT INTO apex_eventos_pantalla (pantalla, objeto_ci, evento_id, proyecto) VALUES (
	'146000014', --pantalla
	'146000030', --objeto_ci
	'146000042', --evento_id
	'exatecacad'  --proyecto
);
INSERT INTO apex_eventos_pantalla (pantalla, objeto_ci, evento_id, proyecto) VALUES (
	'146000015', --pantalla
	'146000030', --objeto_ci
	'146000042', --evento_id
	'exatecacad'  --proyecto
);
