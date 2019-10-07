<?php
class pant_datos_agente extends toba_ei_pantalla
{
	function generar_layout()
	{
            $this->set_descripcion('Descripcion nueva');
            $this->dep('cuadro_rrhh')->generar_html();
	}

}
?>