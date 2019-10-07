<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of datos_propios
 *
 * @author Damian <dsolalinde@gmail.com>
 */
class datos_propios
{
    
    function get_areas_de_conocimiento()
    {
        $sql = "SELECT 
                id
                , nombre
                , coordinador_docente_id 
                FROM gta_area_conocimiento;";
        return consultar_fuente($sql);
    }
    
    
    function get_departamentos()
    {
        $sql = "SELECT 
            id
            , nombre
            FROM gta_departamento;";
        return consultar_fuente($sql);
    }
    
    function get_lista_info_tecnica($legajo = NULL)
    {
        if (isset($legajo)) {
            $dato = quote($legajo);
            $where = " WHERE it.legajo = {$dato}";
        } else {
            $where = " WHERE 1 = 1 ";
        }
        $sql = "SELECT 
                it.id
                , d.nombre AS departamento_nombre
                , nro_resolucion
                , fecha_vencimiento
            FROM gta_info_tecnica it
                left join gta_departamento d
                on it.departamento_id = d.id
                {$where};";
        return consultar_fuente($sql);
    }
}
