<?php
class ci_administrar_area_conocimiento extends exatecacad_ci
{
    
    protected $s__area_de_conocimiento_id;


    //-----------------------------------------------------------------------------------
    //---- form -------------------------------------------------------------------------
    //-----------------------------------------------------------------------------------

    /**
     * Permite cambiar la configuración del formulario previo a la generación de la salida
     * El formato del carga debe ser array(<campo> => <valor>, ...)
     */
    function conf__form(exatecacad_ei_formulario $form)
    {
        if (isset($this->s__area_de_conocimiento_id)) {
            $datos = $this->dep('datos')->get();
            $form->set_datos($datos);
        }
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
        $datos = toba::consulta_php('datos_propios')->get_areas_de_conocimiento();
        $cuadro->set_datos($datos);
    }

    /**
     * Atrapa la interacción del usuario con el botón asociado
     * @param array $datos Estado del componente al momento de ejecutar el evento. El formato es el mismo que en la carga de la configuración
     */
    function evt__form__alta($datos)
    {
        $this->dep('datos')->nueva_fila($datos);
        $this->dep('datos')->sincronizar();
        $this->dep('datos')->resetear();
    }

    /**
     * Atrapa la interacción del usuario con el botón asociado
     */
    function evt__form__baja()
    {
        if ($this->dep('datos')->esta_cargada()) {
            $this->dep('datos')->eliminar_filas();
            $this->dep('datos')->sincronizar();
            $this->dep('datos')->resetear();   
        }
    }

    /**
     * Atrapa la interacción del usuario con el botón asociado
     * @param array $datos Estado del componente al momento de ejecutar el evento. El formato es el mismo que en la carga de la configuración
     */
    function evt__form__modificacion($datos)
    {
        $this->dep('datos')->set($datos);
        $this->dep('datos')->sincronizar();
        $this->dep('datos')->resetear();        
    }

    /**
     * Atrapa la interacción del usuario con el botón asociado
     */
    function evt__form__cancelar()
    {
        $this->dep('datos')->resetear();
        $this->evt__cancelar();
    }

    function evt__cuadro__seleccion($seleccion)
    {
        $this->s__area_de_conocimiento_id = $seleccion['id'];
        $clave = ['id' => $this->s__area_de_conocimiento_id];
        $this->dep('datos')->cargar($clave);
    }

}
?>