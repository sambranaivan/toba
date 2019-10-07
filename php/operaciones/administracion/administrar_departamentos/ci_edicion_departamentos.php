<?php
class ci_edicion_departamentos extends exatecacad_ci
{
    
    /**
     * @return toba_datos_relacion datos relacion 
     */
    function get_relacion()
    {
        return $this->controlador()->get_relacion();
    }
    
    
    /**
     *  @return toba_datos_tabla datos tabla
     * @param string $tabla
     */
    
    function get_tabla($tabla)
    {
        return $this->get_relacion()->tabla($tabla);
    }
    //-----------------------------------------------------------------------------------
    //---- form_ml ----------------------------------------------------------------------
    //-----------------------------------------------------------------------------------

    function conf__form_ml(exatecacad_ei_formulario_ml $form_ml)
    {
        $datos = $this->get_tabla('departamento_ac')->get_filas(NULL, TRUE);
        $form_ml->set_datos($datos);
    }

    function evt__form_ml__modificacion($datos)
    {
        $this->get_tabla('departamento_ac')->procesar_filas($datos);
    }

    //-----------------------------------------------------------------------------------
    //---- form -------------------------------------------------------------------------
    //-----------------------------------------------------------------------------------

    function conf__form(exatecacad_ei_formulario $form)
    {
        $datos = $this->get_tabla('departamento')->get();
        $form->set_datos($datos);
    }

    function evt__form__modificacion($datos)
    {
        $this->get_tabla('departamento')->set($datos);
    }

}

?>