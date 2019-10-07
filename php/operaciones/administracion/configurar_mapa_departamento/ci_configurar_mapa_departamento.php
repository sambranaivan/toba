<?php
class ci_configurar_mapa_departamento extends exatecacad_ci
{
    protected $s__datos_departamento_ac;
    protected $s__dd_departamento_ac;
    protected $s__datos_carrera_plan_materia = [];
    protected $s__filtro;
    //-----------------------------------------------------------------------------------
    //---- cuadro_materias --------------------------------------------------------------
    //-----------------------------------------------------------------------------------

    function conf__cuadro_materias(cuadro_seleccion_diferida $cuadro)
    {
        $datos = [0 => ['id' => '1', 'nombre' => 'materia1'], 
            1 => ['id' => '2', 'nombre' => 'materia2']];
        $cuadro->set_datos($datos);
    }

    function evt__cuadro_materias__seleccion($seleccion)
    {
        $this->s__datos_carrera_plan_materia['materia'] = $seleccion;
    }

    //-----------------------------------------------------------------------------------
    //---- fitro_materias ---------------------------------------------------------------
    //-----------------------------------------------------------------------------------

    function conf__fitro_materias(exatecacad_ei_filtro $filtro)
    {
        if (isset($this->s__filtro)) {
            $filtro->set_datos($this->s__filtro);
        }
    }

    function evt__fitro_materias__filtrar($datos)
    {
        $this->s__filtro = $datos;
    }

    function evt__fitro_materias__cancelar()
    {
    }

    //-----------------------------------------------------------------------------------
    //---- form_departamentos -----------------------------------------------------------
    //-----------------------------------------------------------------------------------

    function conf__form_departamentos(exatecacad_ei_formulario $form)
    {
        if (isset($this->s__datos_departamento_ac)) {
            $form->set_datos($this->s__datos_departamento_ac);
        }
    }

    function evt__form_departamentos__modificacion($datos)
    {
        $this->s__datos_departamento_ac = $datos;
        $this->s__dd_departamento_ac['departamento'] = $this->dep('form_departamentos')->ef('departamento')->get_descripcion_estado('html');
        $this->s__dd_departamento_ac['ac'] = $this->dep('form_departamentos')->ef('ac')->get_descripcion_estado('html');
    }

    //-----------------------------------------------------------------------------------
    //---- Configuraciones --------------------------------------------------------------
    //-----------------------------------------------------------------------------------

    /**
     * Ventana de extensión para configurar la pantalla. Se ejecuta previo a la configuración de los componentes pertenecientes a la pantalla 
     * por lo que es ideal por ejemplo para ocultarlos en base a una condición dinámica, ej. $pant->eliminar_dep("tal") 
     * @param toba_ei_pantalla $pantalla
     */
    function conf__departamento_ac(toba_ei_pantalla $pantalla)
    {
    }

    /**
     * Ventana de extensión para configurar la pantalla. Se ejecuta previo a la configuración de los componentes pertenecientes a la pantalla 
     * por lo que es ideal por ejemplo para ocultarlos en base a una condición dinámica, ej. $pant->eliminar_dep("tal") 
     * @param toba_ei_pantalla $pantalla
     */
    function conf__materias(toba_ei_pantalla $pantalla)
    {
        if (isset($this->s__dd_departamento_ac)) {
            $datos = $this->s__dd_departamento_ac;
            ei_arbol($datos, 'departamento');
        }
        $pantalla->set_descripcion("Configurando el departamento: {$datos}", "info");
    }

    /**
     * Ventana de extensión para configurar la pantalla. Se ejecuta previo a la configuración de los componentes pertenecientes a la pantalla 
     * por lo que es ideal por ejemplo para ocultarlos en base a una condición dinámica, ej. $pant->eliminar_dep("tal") 
     * @param toba_ei_pantalla $pantalla
     */
    function conf__docentes(toba_ei_pantalla $pantalla)
    {
        if (isset($this->s__datos_departamento_ac)) {
            $datos_departamento_ac = $this->s__dd_departamento_ac;
            ei_arbol($datos_departamento_ac, 'departamento y ac');
        }
        if (isset($this->s__datos_carrera_plan_materia)) {
            $datos_carrera_plan_materia = $this->s__datos_carrera_plan_materia;
            ei_arbol($datos_carrera_plan_materia, 'carrera plan materias');
        }
        $pantalla->set_descripcion("Configurando el departamento: {$datos_departamento_ac} y para la materia: {$datos_carrera_plan_materia}");
    }

}
?>