<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pizzaria</title>

    <link rel="stylesheet" href="css/reset.css">

    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/slick-theme.css">
    <link rel="stylesheet" href="css/lity.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">

    <link rel="stylesheet" href="css/estilo.css">
    <link rel="stylesheet" href="css/responsivo.css">


</head>




<body>


    <!--Começo do Cabeçalho-->
    <header>

        <div class="site">
            <h1 class="animate__animated animate__bounce">Le Velmont</h1>

            <button class="abrir-menu"></button>
            <nav class="menu">
                <button class="fechar-menu"></button>
                <ul>
                    <li><a href="index.php">Home</a></li>
                    <li><a href="promocao.php">Promoções</a></li>
                    <li><a href="#">Quem somos</a></li>
                    <li><a href="contato.php">Contato</a></li>
                </ul>
                <button>Login</button>

            </nav>
        </div>

    </header>
    <!--Fim do Cabeçalho-->







    <!--Começo do Cardapio-->

<section class="cardapio-pagina">
        <h2 >CARDÁPIO</h2>
        <div class="menu-container">
            <button class="menu-button" onclick="showMenu(1)">Pizzas Grandes</button>
            <button class="menu-button" onclick="showMenu(2)">Pizzas Médias</button>
            <button class="menu-button" onclick="showMenu(3)">Broto</button>
            <button class="menu-button" onclick="showMenu(4)">Esfihas</button>
            <button class="menu-button" onclick="showMenu(5)">Bebidas</button>
        </div>
        <div id="menu-details">
            <h4 id="menu-name" class="menu-title"></h4>
            <div id="menu-items">
                <!-- imagens dos itens -->
            </div>

            <div class="menu-columns">
                <div class="menu-column" id="menu-left">
                    
                </div>
                <div class="menu-column" id="menu-right">
                    
                </div>
            </div>
        </div>
        <script src="menu.js"></script>
   
</section>





    <!--Começo do Rodape-->
    <?php require_once('conteudo/rodape.php') ?>
    <!--Fim do Rodape-->


    <script src="https://code.jquery.com/jquery-3.7.1.js"></script> <!--Biblioteca do JQUERY-->

    <script src="js/slick.min.js"></script> <!--Livro da Biblioteca-->
    <script src="js/lity.min.js"></script>
    <script src="js/wow.min.js"></script>

    <script src="js/animacao.js"></script> <!--Animações do java-->



</body>

</html>