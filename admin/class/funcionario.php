<?php
require_once('conexao.php');

class FuncionarioClass
{

    // Atributos da Class

    public $idFuncionario;
    public $nomeFuncionario;
    public $dataNascFuncionario;
    public $cpfFuncionario;
    public $telefoneFuncionario;
    public $emailFuncionario;
    public $turnoFuncionario;
    public $funcaoFuncionario;
    public $acessoFuncionario;
    public $statusFuncionario;


    //Metodo da Class


    //Carregar
    public function __construct($id = false)
    {
        if ($id) {
            $this->idFuncionario = $id;
            $this->Carregar();
        }
    }


    //Listar
    public function Listar()
    {
        $sql = "SELECT * FROM tblfuncionario WHERE  statusFuncionario = 'ATIVO' ORDER BY nomeFuncionario ASC";
        $conn = Conexao::LigarConexao();
        $resultado = $conn->query($sql);
        $lista = $resultado->fetchAll();
        return $lista;
    }


    //Cadastrar
    public function Cadastrar()
    {
        $query = "INSERT INTO tblfuncionario (nomeFuncionario,
                                            dataNascFuncionario,
                                            cpfFuncionario,
                                            telefoneFuncionario,
                                            emailFuncionario,
                                            turnoFuncionario,
                                            funcaoFuncionario,
                                            acessoFuncionario,
                                            statusFuncionario)
                    VALUES ('" . $this->nomeFuncionario . "',
                             '" . $this->dataNascFuncionario . "',
                              '" . $this->cpfFuncionario . "',
                               '" . $this->telefoneFuncionario . "',
                                '" . $this->emailFuncionario . "', 
                                '" . $this->turnoFuncionario . "',
                                 '" . $this->funcaoFuncionario . "',
                                 '" . $this->acessoFuncionario . "',
                                 '" . $this->statusFuncionario . "')";

        $conn = Conexao::LigarConexao();
        $conn->exec($query);

        echo "<script>document.location='index.php?p=funcionario'</script>";
    }
}
