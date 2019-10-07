<?php
class ci_edicion_agente extends exatecacad_ci
{
    //-----------------------------------------------------------------------------------
    //---- propios ------------------------------------------------------------------
    //-----------------------------------------------------------------------------------
    
    protected $s__seleccion;
    protected $s__legajo;
    
    /**
     * @return toba_datos_tabla tabla gta_info_tecnica
     */
    function datos_info_tec()
    {
        return $this->dep('info_tecnica');
    }
    
    function get_datos_agente()
    {
        $datos_agente = toba::memoria()->get_dato_operacion('datos_agente');
        $legajo = "({$datos_agente['legajo']}) ";
        $agente = "{$datos_agente['agente']} ";
        $documento = "{$datos_agente['nro_documento']} ";
        $salida = $legajo . $agente . $documento;
        return $salida;
    }
    /**
     * 
     * @param array $datos_originales
     * @return array se agrega info del agente al arreglo
     */
    function set_datos_agente($datos_originales)
    {
        $salida = $datos_originales;
        $salida['legajo']= $this->s__legajo;
        return $salida;
    }
            
    function get_datos_academicos()
    {
        $datos = [];
        $datos[0] = ['carrera_nombre' => 'Licenciatura en Física'
                , 'plan' => '2000'
                , 'materia_nombre' => 'Física I'
                , 'cantidad_cursantes' => '100'];
        $datos[1] = ['carrera_nombre' => 'Licenciatura en Matemática'
                , 'plan' => '1999'
                , 'materia_nombre' => 'Elementos de Computación'
                , 'cantidad_cursantes' => '120'];
        return $datos;
    }


    //-----------------------------------------------------------------------------------
    //---- cuadro_rrhh ------------------------------------------------------------------
    //-----------------------------------------------------------------------------------

    function conf__cuadro_rrhh(exatecacad_ei_cuadro $cuadro)
    {
        $legajo = toba::memoria()->get_dato_operacion('legajo');
        $cliente = toba::servicio_web_rest('mapuche')->guzzle();
        $get = "agentes/{$legajo}/cargos" ;
        try {
                $response = $cliente->get($get);
                $datos   = json_decode($response->getBody()->getContents(), true);
                $cuadro->set_datos($datos);
        }
        catch (Exception $ex) {
                $msg = $ex->getMessage();
                toba::notificacion()->agregar($msg);
        }
    }
    //-----------------------------------------------------------------------------------
    //---- Eventos ----------------------------------------------------------------------
    //-----------------------------------------------------------------------------------

    function evt__cancelar()
    {
        parent::evt__cancelar();
        $this->controlador()->set_pantalla('seleccion');
    }

    //-----------------------------------------------------------------------------------
    //---- cuadro_academico -------------------------------------------------------------
    //-----------------------------------------------------------------------------------

    function conf__cuadro_academico(exatecacad_ei_cuadro $cuadro)
    {
        $cuadro->set_datos($this->get_datos_academicos());
    }

    //-----------------------------------------------------------------------------------
    //---- form -------------------------------------------------------------------------
    //-----------------------------------------------------------------------------------

    function conf__form(exatecacad_ei_formulario $form)
    {
        if ($this->datos_info_tec()->esta_cargada()) {
            $datos = $this->datos_info_tec()->get();
            $form->set_datos($datos);
        }
    }

    function evt__form__alta($datos)
    {
        $datos_con_agente = $this->set_datos_agente($datos);
        $this->datos_info_tec()->nueva_fila($datos_con_agente);
        $this->datos_info_tec()->sincronizar();
        $this->datos_info_tec()->resetear();
    }

    function evt__form__baja()
    {
        $this->datos_info_tec()->eliminar_filas();
        $this->datos_info_tec()->sincronizar();
        $this->datos_info_tec()->resetear();
    }

    function evt__form__modificacion($datos)
    {
        $datos_con_agente = $this->set_datos_agente($datos);
        $this->datos_info_tec()->set($datos_con_agente);
        $this->datos_info_tec()->sincronizar();
        $this->datos_info_tec()->resetear();
    }

    function evt__form__cancelar()
    {
        $this->datos_info_tec()->resetear();
        $this->evt__cancelar();
    }

    //-----------------------------------------------------------------------------------
    //---- cuadro -----------------------------------------------------------------------
    //-----------------------------------------------------------------------------------

    function conf__cuadro(exatecacad_ei_cuadro $cuadro)
    {
        $legajo = toba::memoria()->get_dato_operacion('legajo');
        $this->s__legajo = $legajo;
        if (isset($legajo)) {
            $datos = toba::consulta_php('datos_propios')->get_lista_info_tecnica($legajo);
            $cuadro->set_datos($datos);
        }
    }

    function evt__cuadro__seleccion($seleccion)
    {
        $this->s__seleccion = $seleccion;
        $this->datos_info_tec()->cargar($seleccion);
    }

    //-----------------------------------------------------------------------------------
    //---- Configuraciones --------------------------------------------------------------
    //-----------------------------------------------------------------------------------

    function conf__mapuche(toba_ei_pantalla $pantalla)
    {
        $pantalla->set_descripcion($this->get_datos_agente());
    }

    function conf__guarani(toba_ei_pantalla $pantalla)
    {        
        $pantalla->set_descripcion($this->get_datos_agente());
    }

    function conf__tecnica(toba_ei_pantalla $pantalla)
    {        
        $pantalla->set_descripcion($this->get_datos_agente());
    }

}
?>