<?php
class cuadro_seleccion_diferida extends exatecacad_ei_cuadro
{
    /**
     * para configurar la seleccion diferida
     * @param type $parametros
     */
    function inicializar($parametros = array())
    {
        parent::inicializar($parametros);
        if ($this->existe_evento('seleccion')) {
            $this->evento('seleccion')->set_disparo_diferido(TRUE);
            $this->evento('seleccion')->set_alineacion_pre_columnas(TRUE);
            $this->set_manejador_salida('html', 'cuadro_seleccion_diferida_salida_html');
        }
        
    }

}

?>