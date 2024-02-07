<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Promoções</title>

    <link rel="stylesheet" href="css/reset.css">

    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/slick-theme.css">
    <link rel="stylesheet" href="css/lity.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">

    <link rel="stylesheet" href="css/estilo.css">
    <link rel="stylesheet" href="css/responsivo.css">

</head>





<body>
    <!-----Começo do Cabeçalho-->
    <header>

        <div class="site">
            <h1 class="animate__animated animate__bounce">Le Velmont</h1>

            <button class="abrir-menu"></button>
            <nav class="menu">
                <button class="fechar-menu"></button>
                <ul>
                    <li><a href="index.php">Home</a></li>
                    <li><a href="cardapio.php">Cardapio</a></li>
                    <li><a href="#">Quem somos</a></li>
                    <li><a href="contato.php">Contato</a></li>
                </ul>
                <button>Login</button>

            </nav>
        </div>

    </header>
    <!-----Fim do Cabeçalho----->



    <main class="site">

        <!-----Começo da Promoção-->
        <section class="promocao">
            <h2>Promoções</h2>

            <div>
                <div>
                    <img src="img/imagem/galeria-promacao-1.png" alt="">
                </div>


                <div>
                    <img src="img/imagem/galeria-promacao-2.png" alt="">
                </div>



                <div>
                    <img src="img/imagem/galeria-promacao-3.png" alt="">
                </div>

            </div>

        </section>
        <!-----Fim da Promoção----->

        <section class="site">
            <div class="cardapioPromo">

                <div>
                    <ul>
                        <li>
                            <img src="img/icon.png" alt="">

                        </li>

                        <li>
                            <h3><?php echo  $linha ['nomeTeste']    ?></h3>
                            <p>calabresa e cebola</p>
                        </li>
                </div>

                <div>
                    <ul>
                        <li>
                            <img src="img/icon.png" alt="">

                        </li>

                        <li>
                            <h3>Pizza</h3>
                            <p>calabresa e cebola</p>
                        </li>
                </div>

                <div>
                    <ul>
                        <li>
                            <img src="img/icon.png" alt="">

                        </li>

                        <li>
                            <h3>Pizza</h3>
                            <p>calabresa e cebola</p>
                        </li>
                </div>


            </div>

            <div class="cardapioPromo">

                <div>
                    <ul>
                        <li>
                            <img src="img/icon.png" alt="">
                        </li>
                        <li>
                            <h3>Pizza</h3>
                            <p>calabresa e cebola</p>
                        </li>
                </div>
                <div>
                    <ul>
                        <li>
                            <img src="img/icon.png" alt="">
                        </li>
                        <li>
                            <h3>Pizza</h3>
                            <p>calabresa e cebola</p>
                        </li>
                </div>
                <div>
                    <ul>
                        <li>
                            <img src="img/icon.png" alt="">
                        </li>
                        <li>
                            <h3>Pizza</h3>
                            <p>calabresa e cebola</p>
                        </li>
                </div>

            </div>

            <div class="cardapioPromo">

                <div>
                    <ul>
                        <li>
                            <img src="img/icon.png" alt="">
                        </li>
                        <li>
                            <h3>Pizza</h3>
                            <p>calabresa e cebola</p>
                        </li>
                </div>
                <div>
                    <ul>
                        <li>
                            <img src="img/icon.png" alt="">
                        </li>
                        <li>
                            <h3>Pizza</h3>
                            <p>calabresa e cebola</p>
                        </li>
                </div>
                <div>
                    <ul>
                        <li>
                            <img src="img/icon.png" alt="">
                        </li>
                        <li>
                            <h3>Pizza</h3>
                            <p>calabresa e cebola</p>
                        </li>
                </div>

            </div>
        </section>


    </main>

   




        <!--Começo do Rodape-->
        <?php require_once("conteudo/rodape.php") ?>
        <!--Fim do Rodape-->


        <script src="https://code.jquery.com/jquery-3.7.1.js"></script> <!--Biblioteca do JQUERY-->

        <script src="js/slick.min.js"></script> <!--Livro da Biblioteca-->
        <script src="js/lity.min.js"></script>
        <script src="js/wow.min.js"></script>

        <script src="js/animacao.js"></script> <!--Animações do java-->



</body>

</html>