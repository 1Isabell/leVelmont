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
                    <li><a href="promocao.php">Promoções</a></li>
                    <li><a href="cardapio.php">Cardapio</a></li>
                    <li><a href="#">Quem somos</a></li>
                    <li><a href="contato.php">Contato</a></li>
                </ul>
                <button>Login</button>

            </nav>
        </div>

    </header>
    <!--Fim do Cabeçalho-->





    <!--Começo do Banner-->
    <section class="banner">

        <img src="img/imagem/banner-novo-3.png" alt="">
        <img src="img/imagem/banner-novo-2.png" alt="">
        <img src="img/imagem/banner-novo-1.png" alt="">


    </section>
    <!--Fim do Banner-->



    <!--Começo do Dia-->
    <section class="dia">
        <div>
            <h2>Todo dia é dia de Pizza</h2>
        </div>

    </section>
    <!--Fim do Dia-->




    <!--Começo do Cardapio-->
    <section class="cardapio">
        <h2>Cardapio</h2>

        <div class="site">
            <div>
                <div>

                    <a href="cardapio.php"><img src="img/imagem/cardapioNovo-1.png" alt="">
                        <h3>Pizzas</h3>
                    </a>
                </div>


                <div>

                    <a href="cardapio.php"><img src="img/imagem/cardapioNovo-2.png" alt="">
                        <h3>Esfirras</h3>
                    </a>
                </div>



                <div>

                    <a href="cardapio.php"><img src="img/imagem/cardapioNovo-3.png" alt="">
                        <h3>Bebidas</h3>
                    </a>
                </div>

            </div>
        </div>
    </section>
    <!--Fim do Cardapio-->




    <!--Começo do Sobre-->
    <section class="sobre">

        <div class="fundoSobre">



            <div>
                <h2>Quem Somos</h2>
                <p>
                    <b>Pizzaria Le Velmont
                        criada para trazer a magia e qualidade para seus clientes

                        Criada em 2021 traz um cardápio diverso para todos os paladares, trabalhando com
                        ingredientes
                        selecionados onde a qualidade e o amor e a nossa receita para ser a melhor da região! .</b>
                </p>

            </div>

            <div>

                <img src="img/imagem/quem.jpg" alt="">

            </div>



        </div>

    </section>
    <!--Fim do Sobre-->




    <!--Começo da Galeria-->
    <section class="galeria">

        <img src="img/imagem/pizzaGaleria1.png" alt="">
        <img src="img/imagem/pizzaGaleria2.png" alt="">
        <img src="img/imagem/pizzaGaleria3.png" alt="">
        <img src="img/imagem/pizzaGaleria4.png" alt="">
        <img src="img/imagem/pizzaGaleria1.png" alt="">
        <img src="img/imagem/pizzaGaleria2.png" alt="">
        <img src="img/imagem/pizzaGaleria3.png" alt="">
        <img src="img/imagem/pizzaGaleria4.png" alt="">


    </section>
    <!--Fim da Galeria-->



    <!--Começo da Você Sabia-->
    <section class="sabia">
        <h2>Você Sabia</h2>
        <div>
            <div>
                <a href="conteudo/molho.html" data-lity>
                    <img src="img/imagem/massa.png" alt="">
                    <h3>Preparação da Massa</h3>
              
                </a>
            </div>

            <div>
                <a href="#inline" data-lity>
                    <img src="img/imagem/vegetariana.png" alt="">
                    <h3>Pizza Vegetariana</h3>
                </a>
            </div>

            <div>
                <a href="#inline" data-lity>
                    <img src="img/imagem/molho.png" alt="">
                    <h3>Molho 100% natural</h3>
                </a>
            </div>

            <div>
                <a href="#inline" data-lity>
                    <img src="img/imagem/entrega.png" alt="">
                    <h3>Entregas seguras</h3>
                </a>
            </div>


        </div>

    </section>
    <!--Fim da Você Sabia-->
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