<?php

require_once('class/contato.php');
$contato = new ContatoClass();
$lista = $contato->ListarContato();

//Teste
//var_dump($lista);

?>


<h2 class="display-4">Página Contato</h2>


<div class="table_responsive">
    <h2 class="info-lista">Lista de E-mail</h2>
    <table class="table table-bordered border-primary table-striped">
        <thead>
            <tr class="tabela-titulo">
                <th>Id Contato</th>
                <th>Nome Contato</th>
                <th>E-mail contato</th>
                <th>Telefone Contato</th>
                <th>Mensagem</th>
                <th>Data</th>
                <th>Hora</th>
                <th>Status</th>
            </tr>
        </thead>

        <tbody>

            <?php foreach ($lista as $linha) : ?>

                <tr>
                    <th><?php echo $linha['idContato']; ?></th>
                    <th><?php echo $linha['nomeContato']; ?></th>
                    <th><?php echo $linha['emailContato']; ?></th>
                    <th><?php echo $linha['telefoneContato']; ?></th>
                    <th><?php echo $linha['mensagemContato']; ?></th>
                    <th><?php echo $linha['dataContato']; ?></th>
                    <th><?php echo $linha['horaContato']; ?></th>
                    <th><?php echo $linha['statusContato']; ?></th>
                </tr>

            <?php endforeach; ?>

        </tbody>

    </table>

</div>