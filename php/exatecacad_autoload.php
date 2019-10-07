<?php
/**
 * Esta clase fue y será generada automáticamente. NO EDITAR A MANO.
 * @ignore
 */
class exatecacad_autoload 
{
	static function existe_clase($nombre)
	{
		return isset(self::$clases[$nombre]);
	}

	static function cargar($nombre)
	{
		if (self::existe_clase($nombre)) { 
			 require_once(dirname(__FILE__) .'/'. self::$clases[$nombre]); 
		}
	}

	static protected $clases = array(
		'cuadro_seleccion_diferida' => 'comunes/componentes/cuadros/cuadro_seleccion_diferida.php',
		'pant_datos_agente' => 'comunes/componentes/pantallas/pant_datos_agente.php',
		'cuadro_seleccion_diferida_salida_html' => 'comunes/componentes/salidas/cuadro_seleccion_diferida_salida_html.php',
		'exainfoacad_autoload' => 'exainfoacad_autoload.php',
		'exatecacad_autoload' => 'exatecacad_autoload.php',
		'exainfoacad_ci' => 'extension_toba/componentes/exainfoacad_ci.php',
		'exainfoacad_cn' => 'extension_toba/componentes/exainfoacad_cn.php',
		'exainfoacad_datos_relacion' => 'extension_toba/componentes/exainfoacad_datos_relacion.php',
		'exainfoacad_datos_tabla' => 'extension_toba/componentes/exainfoacad_datos_tabla.php',
		'exainfoacad_ei_arbol' => 'extension_toba/componentes/exainfoacad_ei_arbol.php',
		'exainfoacad_ei_archivos' => 'extension_toba/componentes/exainfoacad_ei_archivos.php',
		'exainfoacad_ei_calendario' => 'extension_toba/componentes/exainfoacad_ei_calendario.php',
		'exainfoacad_ei_codigo' => 'extension_toba/componentes/exainfoacad_ei_codigo.php',
		'exainfoacad_ei_cuadro' => 'extension_toba/componentes/exainfoacad_ei_cuadro.php',
		'exainfoacad_ei_esquema' => 'extension_toba/componentes/exainfoacad_ei_esquema.php',
		'exainfoacad_ei_filtro' => 'extension_toba/componentes/exainfoacad_ei_filtro.php',
		'exainfoacad_ei_firma' => 'extension_toba/componentes/exainfoacad_ei_firma.php',
		'exainfoacad_ei_formulario' => 'extension_toba/componentes/exainfoacad_ei_formulario.php',
		'exainfoacad_ei_formulario_ml' => 'extension_toba/componentes/exainfoacad_ei_formulario_ml.php',
		'exainfoacad_ei_grafico' => 'extension_toba/componentes/exainfoacad_ei_grafico.php',
		'exainfoacad_ei_mapa' => 'extension_toba/componentes/exainfoacad_ei_mapa.php',
		'exainfoacad_servicio_web' => 'extension_toba/componentes/exainfoacad_servicio_web.php',
		'exatecacad_ci' => 'extension_toba/componentes/exatecacad_ci.php',
		'exatecacad_cn' => 'extension_toba/componentes/exatecacad_cn.php',
		'exatecacad_datos_relacion' => 'extension_toba/componentes/exatecacad_datos_relacion.php',
		'exatecacad_datos_tabla' => 'extension_toba/componentes/exatecacad_datos_tabla.php',
		'exatecacad_ei_arbol' => 'extension_toba/componentes/exatecacad_ei_arbol.php',
		'exatecacad_ei_archivos' => 'extension_toba/componentes/exatecacad_ei_archivos.php',
		'exatecacad_ei_calendario' => 'extension_toba/componentes/exatecacad_ei_calendario.php',
		'exatecacad_ei_codigo' => 'extension_toba/componentes/exatecacad_ei_codigo.php',
		'exatecacad_ei_cuadro' => 'extension_toba/componentes/exatecacad_ei_cuadro.php',
		'exatecacad_ei_esquema' => 'extension_toba/componentes/exatecacad_ei_esquema.php',
		'exatecacad_ei_filtro' => 'extension_toba/componentes/exatecacad_ei_filtro.php',
		'exatecacad_ei_firma' => 'extension_toba/componentes/exatecacad_ei_firma.php',
		'exatecacad_ei_formulario' => 'extension_toba/componentes/exatecacad_ei_formulario.php',
		'exatecacad_ei_formulario_ml' => 'extension_toba/componentes/exatecacad_ei_formulario_ml.php',
		'exatecacad_ei_grafico' => 'extension_toba/componentes/exatecacad_ei_grafico.php',
		'exatecacad_ei_mapa' => 'extension_toba/componentes/exatecacad_ei_mapa.php',
		'exatecacad_servicio_web' => 'extension_toba/componentes/exatecacad_servicio_web.php',
		'exainfoacad_comando' => 'extension_toba/exainfoacad_comando.php',
		'exainfoacad_modelo' => 'extension_toba/exainfoacad_modelo.php',
		'exatecacad_comando' => 'extension_toba/exatecacad_comando.php',
		'exatecacad_modelo' => 'extension_toba/exatecacad_modelo.php',
		'ci_login' => 'login/ci_login.php',
		'cuadro_autologin' => 'login/cuadro_autologin.php',
		'pant_login' => 'login/pant_login.php',
		'datos_propios' => 'modelo/consultas/datos_propios.php',
		'datos_mapuche' => 'modelo/datos_mapuche.php',
		'ci_administrar_area_conocimiento' => 'operaciones/administracion/administrar_area_conocimiento/ci_administrar_area_conocimiento.php',
		'ci_administrar_departamentos' => 'operaciones/administracion/administrar_departamentos/ci_administrar_departamentos.php',
		'ci_edicion_departamentos' => 'operaciones/administracion/administrar_departamentos/ci_edicion_departamentos.php',
		'ci_administrar_docentes' => 'operaciones/administracion/administrar_docentes/ci_administrar_docentes.php',
		'ci_edicion_agente' => 'operaciones/administracion/administrar_docentes/ci_edicion_agente.php',
		'ci_configurar_mapa_departamento' => 'operaciones/administracion/configurar_mapa_departamento/ci_configurar_mapa_departamento.php',
	);
}
?>