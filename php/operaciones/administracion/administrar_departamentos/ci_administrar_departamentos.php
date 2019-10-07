<?php
class ci_administrar_departamentos extends exatecacad_ci
{
    
    protected $s__filtro;
    protected $s__sql_where;
    
    
    /**
     * @return toba_datos_relacion relacion
     */
    function get_relacion()
    {
        return $this->dep('datos');
        
    }
    
    
    /**
     * 
     * @return exatecacad_ci
     */
    function get_editor()
    {
        return $this->dep('ci_edicion_departamentos');
    }
    //-----------------------------------------------------------------------------------
	//---- Eventos ----------------------------------------------------------------------
    //-----------------------------------------------------------------------------------

    /**
     * Atrapa la interacción del usuario a través del botón asociado. El método no recibe parámetros
     */
    function evt__agregar()
    {
        $this->set_pantalla('edicion');
    }

    /**
     * Originalmente este método limpia las variables y definiciones del componente, y en caso de exisitr un CN asociado ejecuta su cancelar. Para mantener este comportamiento llamar a parent::evt__cancelar
     */
    function evt__cancelar()
    {
        $this->get_editor()->disparar_limpieza_memoria();
        $this->get_relacion()->resetear();
        $this->set_pantalla('seleccion');
    }

    /**
     * Atrapa la interacción del usuario a través del botón asociado. El método no recibe parámetros
     */
    function evt__eliminar()
    {
        $this->get_relacion()->eliminar_todo();
        $this->set_pantalla('seleccion');
    }

    /**
     * Atrapa la interacción del usuario a través del botón asociado. El método no recibe parámetros
     */
    function evt__guardar()
    {
        $this->get_editor()->disparar_limpieza_memoria();
        $this->get_relacion()->sincronizar();
        $this->get_relacion()->resetear();
        $this->set_pantalla('seleccion');
    }

    //-----------------------------------------------------------------------------------
    //---- cuadro -----------------------------------------------------------------------
    //-----------------------------------------------------------------------------------

    /**
     * Permite cambiar la configuración del cuadro previo a la generación de la salida
     * El formato de carga es de tipo recordset: array( array('columna' => valor, ...), ...)
     */
    function conf__cuadro(exatecacad_ei_cuadro $cuadro)
    {
        if (isset($this->s__filtro)) {
            $where = $this->s__sql_where . ";";
        } else {
            $where = " 1 = 1;";
        }
        $sql = "SELECT 
            id
            , nombre
            FROM gta_departamento WHERE {$where}";
        $datos = consultar_fuente($sql);
        $cuadro->set_datos($datos);
    }

    /**
     * Atrapa la interacción del usuario con el botón asociado
     * @param array $seleccion Id. de la fila seleccionada
     */
    function evt__cuadro__seleccion($seleccion)
    {
        $this->get_relacion()->cargar($seleccion);
        $this->set_pantalla('edicion');
    }

    //-----------------------------------------------------------------------------------
    //---- filtro -----------------------------------------------------------------------
    //-----------------------------------------------------------------------------------

    /**
     * Permite cambiar la configuración del formulario previo a la generación de la salida
     * El formato del carga debe ser array(<campo> => <valor>, ...)
     */
    function conf__filtro(exatecacad_ei_filtro $filtro)
    {
        if (isset($this->s__filtro)) {
            $filtro->set_datos($this->s__filtro);
        }
    }

    

    function evt__filtro__filtrar($datos)
    {
        $this->s__filtro = $datos;
        $where = $this->dep('filtro')->get_sql_where();
        $this->s__sql_where = $where;
        ei_arbol(["where" => $where]);
    }

    function evt__filtro__cancelar()
    {
        unset($this->s__filtro);
    }

    //-----------------------------------------------------------------------------------
    //---- Configuraciones --------------------------------------------------------------
    //-----------------------------------------------------------------------------------

    function conf__seleccion(toba_ei_pantalla $pantalla)
    {
//        $this->set_grupo_eventos_activo('cargado');
    }
    
    

    function conf__edicion(toba_ei_pantalla $pantalla)
    {
//        $this->set_grupo_eventos_activo('cargado');
        if (! $this->get_relacion()->esta_cargada()) {
            $pantalla->eliminar_evento('eliminar');
        }
    }

}
?>