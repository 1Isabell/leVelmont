<?php


class Conexao{

    public static function LigarConexao(){
            //mudar o nome do banco de dados para o que esta salvo na sua maquina
        $conn = new PDO('mysql:dbname=bdpizzariale;host=localhost', 'root', '');
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $conn; 

    }
}