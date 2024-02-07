<?php
require_once('conexao.php');

class ExerciciosClass
{

    // Atributos da Class

    public $idExercicio;
    public $nomeExercicio;
    public $altExercicio;
    public $descricaoExercicio;
    public $grupoMuscularExercicio;
    public $statusExercicio;
    public $fotoExercicio;
    public $linkExercicio;

    //Metodo da Class

    //Listar
    public function Listar()
    {
        $sql = "SELECT * FROM tblexercicios WHERE  statusExercicio = 'ATIVO' ORDER BY nomeExercicio ASC";
        $conn = Conexao::LigarConexao();
        $resultado = $conn->query($sql);
        $lista = $resultado->fetchAll();
        return $lista;
    }


    //Cadastrar
    public function Cadastrar()
    {
        $query = "INSERT INTO tblexercicios (nomeExercicio,
                                            altExercicio,
                                            descricaoExercicio,
                                            grupoMuscularExercicio,
                                            statusExercicio,
                                            fotoExercicio,
                                            linkExercicio)
                    VALUES ('" . $this->nomeExercicio . "',
                             '" . $this->altExercicio . "',
                              '" . $this->descricaoExercicio . "',
                               '" . $this->grupoMuscularExercicio . "',
                                '" . $this->statusExercicio . "', 
                                '" . $this->fotoExercicio . "',
                                 '" . $this->linkExercicio . "')";

        $conn = Conexao::LigarConexao();
        $conn->exec($query);

        echo "<script>document.location='index.php?p=exercicios'</script>";


    }


}
?>