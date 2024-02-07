<?php

require_once('conexao.php');

class ContatoClass
{

    public $nomeContato;
    public $emailContato;
    public $telefoneContato;
    public $mensagemContato;

    public function Inserir()
    {
        $sql = "INSERT INTO tblcontato(nomeContato, emailContato, telefoneContato, mensagemContato)
                VALUES ('" . $this->nomeContato . "','" . $this->emailContato . "','" . $this->telefoneContato . "','" . $this->mensagemContato . "');";

        $conn = Conexao::LigarConexao();
        $conn->exec($sql);
    }

    public function ListarContato()
    {

        $sql = "SELECT * FROM tblcontato ORDER BY idContato ASC";
        $conn = Conexao::LigarConexao();
        $resultado = $conn->query($sql);
        $lista = $resultado->fetchAll();
        return $lista;
    }
} // Fim da Class Contato