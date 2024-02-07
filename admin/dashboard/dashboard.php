<?php

$pagina = @$_GET['p'];


?>

<!DOCTYPE html>
<html lang="pt-br">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>

    <link rel="stylesheet" href="../css/reset.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">


    <link rel="stylesheet" href="css/estilo.css">

</head>






<body>

    <section class="dashboard">
        <div>
            <h2>Relátorio de Vendas</h2>
            <table class="table table-hover">

                <thead>
                    <tr>
                        <th>Período de Tempo</th>
                        <th>Receita Total</th>
                        <th>Vendas por Produto</th>
                        <th>Vendas por Fonte</th>
                        <th>Desempenho do Vendedor</th>
                        <th>Taxa de Conversão</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Insira as linhas de dados aqui -->
                    <tr>
                        <td>Janeiro 2024</td>
                        <td>R$10.000</td>
                        <td>Produto A: 500, Produto B: 500</td>
                        <td>Loja Online: R$5.000, Loja Física: R$5.000</td>
                        <td>Vendedor 1: 10 vendas, Vendedor 2: 10 vendas</td>
                        <td>30%</td>
                    </tr>
                </tbody>
            </table>
        </div>





        <div>
            <h2>Relátorio de Produtos</h2>

            <table class="table table-hover">

                <thead>
                    <tr>
                        <th>ID do Produto</th>
                        <th>Nome do Produto</th>
                        <th>Quantidade em Estoque</th>
                        <th>Preço de Venda</th>
                        <th>Categoria</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Insira as linhas de dados aqui -->
                    <tr>
                        <td>1</td>
                        <td>Produto A</td>
                        <td>100</td>
                        <td>R$10</td>
                        <td>Categoria 1</td>
                    </tr>
                </tbody>
            </table>
        </div>




        <div>
            <h2>Relátorio de Pagamentos</h2>

            <table class="table table-hover">
               
                <thead>
                    <tr>
                        <th>Data do Pagamento</th>
                        <th>ID do Pagamento</th>
                        <th>Valor do Pagamento</th>
                        <th>Forma de Pagamento</th>
                        <th>Status do Pagamento</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Insira as linhas de dados aqui -->
                    <tr>
                        <td>19/01/2024</td>
                        <td>123456</td>
                        <td>R$100</td>
                        <td>Cartão de Crédito</td>
                        <td>Confirmado</td>
                    </tr>
                </tbody>
            </table>
        </div>

    </section>





    <script src="https://code.jquery.com/jquery-3.7.1.js"></script> <!--Biblioteca do JQUERY-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script> <!--Biblioteca do BootStrap-->
    <script src="js/script.js"></script>

</body>

</html>