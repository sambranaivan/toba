<?php
/**
 * Esta clase fue y será generada automáticamente. NO EDITAR A MANO.
 * @ignore
 */
class exainfoacad_autoload 
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
		'exainfoacad_comando' => 'extension_toba/exainfoacad_comando.php',
		'exainfoacad_modelo' => 'extension_toba/exainfoacad_modelo.php',
	);
}
?>