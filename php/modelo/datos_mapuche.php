<?php
class datos_mapuche
{
    
    static function get_nombre_agente($legajo = NULL)
    {
        if (!isset($legajo)) {
            return NULL;
        }
        $datos = self::get_agente_api_rest($legajo);
        return $datos[0]['agente'];
//        foreach ($datos as $dato) {
//            if ($dato['legajo'] == $legajo) {
//                return $dato['agente'];
//            }
//        }
    }


    static function get_agentes_x_apellido($filtro = NULL)
    {
        $parametro = 'apellido';
        $condicion = 'contiene';
        $valor = $filtro;
        if (! isset($filtro) || ($filtro == null) || trim($filtro) == '') {
            return [];
        }
        $datos = self::get_agentes_api_rest($parametro, $condicion, $valor);
        return $datos;
    }
    
    static function get_agentes_api_rest($parametro, $condicion, $valor)
    {
        $cliente = toba::servicio_web_rest('mapuche')->guzzle();
        $get = "agentes?{$parametro}={$condicion};{$valor}" ;
        try {
            $response = $cliente->get($get);
            $datos = json_decode($response->getBody()->getContents(), true);
//            $datos = array(json_decode($response->getBody()->getContents(), true));
            return $datos;
        }
        catch (Exception $ex) {
            $msg = $ex->getMessage();
            toba::notificacion()->agregar($msg);
        }
    }
    
    static function get_agente_api_rest($legajo)
    {
        $cliente = toba::servicio_web_rest('mapuche')->guzzle();
        $get = "agentes/{$legajo}" ;
        try {
            $response = $cliente->get($get);
            $datos = array(json_decode($response->getBody()->getContents(), true));
            return $datos;
        }
        catch (Exception $ex) {
            $msg = $ex->getMessage();
            toba::notificacion()->agregar($msg);
        }
    }
}