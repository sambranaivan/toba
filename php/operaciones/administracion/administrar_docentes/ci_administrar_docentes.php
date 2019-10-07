<?php
class ci_administrar_docentes extends exatecacad_ci
{
    protected $s__filtro;
    protected $s__legajo;
    protected $s__nro_documento;
    //-----------------------------------------------------------------------------------
    //---- propios -----------------------------------------------------------------------
    //-----------------------------------------------------------------------------------
    //
    
    function get_legajo()
    {
        return $this->s__legajo;
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
            $legajo = $this->s__filtro['legajo']['valor'];
            $cliente = toba::servicio_web_rest('mapuche')->guzzle();
            $get = "agentes/{$legajo}" ;
            try {
                $response = $cliente->get($get);
                $estado   = array(json_decode($response->getBody()->getContents(), true));
                $datos    = $estado;
                toba::memoria()->set_dato_operacion('datos_agente', $datos[0]);
                $cuadro->set_datos($datos);
            }
            catch (Exception $ex) {
                $msg = $ex->getMessage();
                toba::notificacion()->agregar($msg);
            }
        }
    }

    /**
            * Atrapa la interacción del usuario con el botón asociado
            * @param array $seleccion Id. de la fila seleccionada
            */
    function evt__cuadro__seleccion($seleccion)
    {
        $this->s__legajo = $seleccion['legajo'];
        toba::memoria()->set_dato_operacion('legajo', $this->s__legajo);
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

    /**
            * Atrapa la interacción del usuario con el botón asociado
            * @param array $datos Estado del componente al momento de ejecutar el evento. El formato es el mismo que en la carga de la configuración
            */
    function evt__filtro__filtrar($datos)
    {
        $this->s__filtro = $datos;
    }

    /**
            * Atrapa la interacción del usuario con el botón asociado
            */
    function evt__filtro__cancelar()
    {
        unset ($this->s__filtro);
    }

}
?>