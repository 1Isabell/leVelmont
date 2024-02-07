<!--################################################
                    Página Funcionário
####################################################-->


<?php

require_once('class/funcionario.php');
$funcionario = new FuncionarioClass();
$lista = $funcionario->Listar();

//var_dump($lista);


?>

<h2 class="display-4">Lista de Funcionários</h2>


<div class="table_responsive">


    <div class="cadastrar">
    <a class="icon-link icon-link-hover cadastrar" style="--bs-icon-link-transform: translate3d(0, -.125rem, 0);" href="index.php?p=funcionario&f=funcionario">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-wrench-adjustable" viewBox="0 0 16 16">
            <path d="M16 4.5a4.492 4.492 0 0 1-1.703 3.526L13 5l2.959-1.11c.027.2.041.403.041.61Z" />
            <path d="M11.5 9c.653 0 1.273-.139 1.833-.39L12 5.5 11 3l3.826-1.53A4.5 4.5 0 0 0 7.29 6.092l-6.116 5.096a2.583 2.583 0 1 0 3.638 3.638L9.908 8.71A4.49 4.49 0 0 0 11.5 9Zm-1.292-4.361-.596.893.809-.27a.25.25 0 0 1 .287.377l-.596.893.809-.27.158.475-1.5.5a.25.25 0 0 1-.287-.376l.596-.893-.809.27a.25.25 0 0 1-.287-.377l.596-.893-.809.27-.158-.475 1.5-.5a.25.25 0 0 1 .287.376ZM3 14a1 1 0 1 1 0-2 1 1 0 0 1 0 2Z" />
        </svg>
        Novo Funcionário
    </a>
    </div>

    <table class="table table-bordered border-primary table-striped">
        <thead>
            <tr class="tabela-titulo">
                <th>ID</th>
                <th>Nome</th>
                <th>Data Nascimento</th>
                <th>CPF</th>
                <th>Telefone</th>
                <th>E-mail</th>
                <th>Turno</th>
                <th>Função</th>
                <th>Acesso</th>
                <th>Status</th>
                <th>Atualizar</th>  
                <th>Desativar</th>
            </tr>
        </thead>

        <tbody>

            <?php foreach ($lista as $linha) : ?>

                <tr>
                
                    <td>
                        <?php echo $linha['idFuncionario'] ?>
                    </td>
                    
                    <td>
                        <?php echo $linha['nomeFuncionario'] ?>
                    </td>

                    <td>
                        <?php echo $linha['dataNascFuncionario'] ?>
                    </td>

                    <td>
                        <?php echo $linha['cpfFuncionario'] ?>
                    </td>

                    <td>
                        <?php echo $linha['telefoneFuncionario'] ?>
                    </td>

                    <td>
                        <?php echo $linha['emailFuncionario'] ?>
                    </td>

                    <td>
                        <?php echo $linha['turnoFuncionario'] ?>
                    </td>

                    <td>
                        <?php echo $linha['funcaoFuncionario'] ?>
                    </td>

                    <td>
                        <?php echo $linha['acessoFuncionario'] ?>
                    </td>

                    <td>
                        <?php echo $linha['statusFuncionario'] ?>
                    </td>

                    <td>
                        <a class="icon-link icon-link-hover atualizar" style="--bs-icon-link-transform: translate3d(0, -.125rem, 0);" href="index.php?p=funcionario&f=atualizar&id=<?php echo $linha['idFuncionario'] ?>">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-brush" viewBox="0 0 16 16">
                                <path d="M15.825.12a.5.5 0 0 1 .132.584c-1.53 3.43-4.743 8.17-7.095 10.64a6.067 6.067 0 0 1-2.373 1.534c-.018.227-.06.538-.16.868-.201.659-.667 1.479-1.708 1.74a8.118 8.118 0 0 1-3.078.132 3.659 3.659 0 0 1-.562-.135 1.382 1.382 0 0 1-.466-.247.714.714 0 0 1-.204-.288.622.622 0 0 1 .004-.443c.095-.245.316-.38.461-.452.394-.197.625-.453.867-.826.095-.144.184-.297.287-.472l.117-.198c.151-.255.326-.54.546-.848.528-.739 1.201-.925 1.746-.896.126.007.243.025.348.048.062-.172.142-.38.238-.608.261-.619.658-1.419 1.187-2.069 2.176-2.67 6.18-6.206 9.117-8.104a.5.5 0 0 1 .596.04zM4.705 11.912a1.23 1.23 0 0 0-.419-.1c-.246-.013-.573.05-.879.479-.197.275-.355.532-.5.777l-.105.177c-.106.181-.213.362-.32.528a3.39 3.39 0 0 1-.76.861c.69.112 1.736.111 2.657-.12.559-.139.843-.569.993-1.06a3.122 3.122 0 0 0 .126-.75l-.793-.792zm1.44.026c.12-.04.277-.1.458-.183a5.068 5.068 0 0 0 1.535-1.1c1.9-1.996 4.412-5.57 6.052-8.631-2.59 1.927-5.566 4.66-7.302 6.792-.442.543-.795 1.243-1.042 1.826-.121.288-.214.54-.275.72v.001l.575.575zm-4.973 3.04.007-.005a.031.031 0 0 1-.007.004zm3.582-3.043.002.001h-.002z" />
                            </svg>
                            Atualizar Funcionário
                        </a>
                    </td>

                    <td><a class="icon-link icon-link-hover desativar" style="--bs-icon-link-transform: translate3d(0, -.125rem, 0);" href="index.php?p=funcionario&f=desativar&id=<?php echo $linha['idFuncionario'] ?>" onclick="return confirmarDesativacao()">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5Zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5Zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6Z" />
                                <path d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1ZM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118ZM2.5 3h11V2h-11v1Z" />
                            </svg>
                            Desativar Funcionário
                        </a>
                    </td>
                </tr>

            <?php endforeach; ?>

        </tbody>

    </table>

</div>