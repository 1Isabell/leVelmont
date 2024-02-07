<?php
if (isset($_POST['nomeProduto'])) {

    /* Será responsável de passar as informações do banco de dados para a página que vai confirmada as informações  */

    $nomeProduto =            $_POST['nomeProduto'];
    $tipoProduto =            $_POST['tipoProduto'];
    $descricaoProduto =       $_POST['descricaoProduto'];
    $categoriaProduto =       $_POST['categoriaProduto'];
    $precoProduto =           $_POST['precoProduto'];
    $statusProduto =          $_POST['statusProduto'];

    
    //Foto

    $arquivo =  $_FILES['fotoProduto'];

    //Responsável de fazer o upload da imagem que está no diretório raiz para o banco de dados, onde caso não
    // for encontrado irá mostrar erro / Uma situação para cada imprevisto 
    if($arquivo['error']){
        throw new Exception('Error'.$arquivo['error']);
    }

    if(move_uploaded_file($arquivo['tmp_name'], '../img/imagem/produto/' . $arquivo['name'])){
        $fotoProduto = 'produto/' . $arquivo['name']; //exercicio/corrida.png
    }else{
        throw new Exception('Erro; não foi possivel realizar o upload da imagem.');
    }

    /***De onde vai vir as inforações da class* */
    require_once('class/produto_class.php');

    /***Objeto que traz todas as informaçao da class*/
    $produtos = new ProdutoClass();
    $produtos -> nomeProduto = $nomeProduto;
    $produtos -> tipoProduto = $tipoProduto;
    $produtos -> descricaoProduto = $descricaoProduto;
    $produtos -> categoriaProduto = $categoriaProduto;
    $produtos -> precoProduto = $precoProduto;
    $produtos -> fotoProduto = $fotoProduto;
    $produtos -> statusProduto = $statusProduto;

    
    $produtos -> CadastrarA();


   var_dump($_POST['nomeProduto']); 
   //echo   $_POST['descricaoExercicio']; //echo   $_POST['grupoMuscularExercicio']; //print($_POST['nomeExercicio']);
}
?>

<section>
    
<form action="index.php?p=produtos&prod=cadastrar" method="POST" enctype="multipart/form-data">
  <!--SEÇÃO FOTO-->
    <div class="mb-3 foto-produto">
    <img src="../produto/pizzadequeijo.png" id="imgFoto">
    <input type="file" class="form-control" id="fotoProduto" 
    name="fotoProduto" style="display: none;">
    <!---name que faz referencia ao banco---->
    </div>

    <div class="form-row">
    <!--NOME-->
    <div class="form-group col-md-6 ">
      <label for="nomeProduto">NOME DO PRODUTO</label>
      <input type="text" class="form-control"
       id="nomeProduto" name="nomeProduto" 
       placeholder="Informe o nome do produto">
    </div>
    <!--TIPO-->
    <div class="form-group col-md-6 ">
      <label for="tipoProduto" name="tipoProduto" id ="tipoProduto"
      >TIPO DE PRODUTO</label>
      <select id="tipoProduto" class="form-control"
      name="tipoProduto" id ="tipoProduto">
        <option selected>Escolha</option>
        <option>PIZZA</option>
        <option>ESFIHAS</option>
        <option>CALZONE</option>
        <option>BROTOS</option>
        <option>BEBIDAS</option>
        <option>BEBIDAS ALCOÓLICAS</option>
      </select>
    </div>
     <!--DESCRIÇÃO-->
    <div class="form-group col-md-6">
    <label for="descricaoProduto">
        DESCRIÇÃO DO PRODUTO
    </label>
      <input type="text" class="form-control"
       id="descricaoProduto" name="descricaoProduto" 
       placeholder="DESCRIÇÃO DO PRODUTO"> 
  </div>
    <!--CATEGORIA-->
    <div class="form-group col-md-6 ">
      <label for="categoriaProduto">CATEGORIA</label>
      <input type="text" class="form-control"
       id="categoriaProduto" name="categoriaProduto" 
       placeholder="CATEGORIA DO PRODUTO 'SIMPLES'">  
    </div>
    <!--PREÇO-->
    <div class="form-group col-md-6">
    <label for="precoProduto">PREÇO DO PRODUTO</label>
      <input type="text" class="form-control"
       id="precoProduto" name="precoProduto" 
       placeholder="PREÇO DO PRODUTO"> 

    </div>
        
    
    <fieldset class="row mb-3">
        <div class="form-group col-md-4" name="statusProduto" id="statusProduto" require>
            <label for="statusProduto">Status</label>
            <select id="inputState" class="form-control" name="statusProduto" id="statusProduto" require>
                <option selected>---</option>
                <option>ATIVO</option>
                <option>INATIVO</option>
                <option>DESATIVO</option>
            </select>
        </div>

    </fieldset>
  
    <div class="col-12">
        <button type="submit" class="btn btn-primary">Cadastrar Produto</button>
    </div>

</form>
</section>


<script>
    document.getElementById('imgFoto').addEventListener('click', function() {
        // alert('Click na Img')
        document.getElementById('fotoProduto').click();
    });

    document.getElementById('fotoProduto').addEventListener('change', function(e) {
        let imgFoto = document.getElementById('imgFoto'); //quem ta pedando a foto
        let arquivo = e.target.files[0];

        if (arquivo) {
            let carregar = new FileReader();

            carregar.onload = function(e) {
                imgFoto.src = e.target.result; //
            }

            carregar.readAsDataURL(arquivo);
        }

    });
</script>