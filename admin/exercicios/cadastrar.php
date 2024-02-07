<?php

if (isset($_POST['nomeExercicio'])) {

    $nomeExercicio = $_POST['nomeExercicio'];
    $descricaoExercicio = $_POST['descricaoExercicio'];
    $grupoMuscularExercicio = $_POST['grupoMuscularExercicio'];
    $statusExercicio = $_POST['statusExercicio'];
    $linkExercicio = $_POST['linkExercicio'];

    $arquivo = $_FILES['fotoExercicio'];

    if ($arquivo['error']) {
        throw new Exception("o error foi: ", $arquivo['error']);

    }

    if (move_uploaded_file($arquivo['tmp_name'], '../img/exercicio/' . $arquivo['name'])) {
        $fotoExercicio = 'exercicio/' . $arquivo['name']; // exercicio/corrida.png

    } else {
        throw new Exception("o error foi: ", $arquivo['error']);

    }


    require_once('class/exercicios.php');

    $exercicio = new ExerciciosClass();

    $exercicio->nomeExercicio = $nomeExercicio;
    $exercicio->altExercicio = $altExercicio;
    $exercicio->descricaoExercicio = $descricaoExercicio;
    $exercicio->grupoMuscularExercicio = $grupoMuscularExercicio;
    $exercicio->statusExercicio = $statusExercicio;
    $exercicio->fotoExercicio = $fotoExercicio;
    $exercicio->linkExercicio = $linkExercicio;

    $exercicio->Cadastrar();
}

//print($_POST['nomeExercicio']);
//var_dump ($_POST['fotoExercicio']);
//var_dump ($_POST['descricaoExercicio']);
//var_dump ($_POST['grupoMuscularExercicio']);
//var_dump ($_POST['statusExercicio']);
//var_dump ($_POST['linkExercicio']);

?>


<h2 class="display-4">Página Cadastrar Exercícios</h2>





<form action="index.php?p=exercicios&e=cadastrar" method="POST" enctype="multipart/form-data"
    class="formulario-exercicio">

    <div class="mb-3 foto-exercicio">
        <label for="fotoExercicio" class="form-label">Foto:</label>
        <input type="file" class="form-control" id="fotoExercicio" name="fotoExercicio" style="display:none;">
        <img src="../img/imagemPNG/semImagem.png" alt="Imagem Sem Foto" id="imgFoto">
    </div>


    <div class="nome-exercicio">
        <div class="mb-3">
            <label for="nomeExercicio" class="form-label">Nome:</label>
            <input type="text" class="form-control" name="nomeExercicio" id="nomeExercicio"
                placeholder="Nome do exercício">
        </div>


        <div class="mb-3">
            <label for="descricaoExercicio" class="form-label">Descrição:</label>
            <input type="text" class="form-control" name="descricaoExercicio" id="descricaoExercicio"
                placeholder="Descrição do exercício">
        </div>


        <div class="row">

            <div class="mb-3">
                <label for="grupoMuscularExercicio" class="form-label">Status:</label>

                <select class="form-select col-sm-2" aria-label="Default select example" name="grupoMuscularExercicio"
                    required>
                    <option selected="">Selecione a opção de exercício</option>
                    <option value="Peito">Peito</option>
                    <option value="Pernas">Pernas</option>
                    <option value="Bracos">Braços</option>
                    <option value="Abdômen">Abdômen</option>
                    <option value="Cardio">Cardio</option>
                </select>

            </div>




            <fieldset class="row mb-3">
                <div class="col-sm-10">
                    <legend class="col-form-label col-sm-2 pt-0">Status</legend>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="statusExercicio" id="status1" value="ATIVO"
                            checked>
                        <label class="form-check-label" for="status1">
                            ATIVO
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="statusExercicio" id="status2"
                            value="INATIVO">
                        <label class="form-check-label" for="status2">
                            INATIVO
                        </label>
                    </div>

                </div>


                <div class="mb-3">
                    <label for="linkExercicio" class="form-label">Link:</label>
                    <input type="text" class="form-control" id="linkExercicio" name="linkExercicio"
                        placeholder="Link do exercício">
                </div>

            </fieldset>

            <div class="col-12">
                <button type="submit" class="btn btn-primary">Cadastrar Exercício</button>
            </div>

        </div>

    </div>

</form>