<?php

require_once('conexao.php');


class ProdutoClass{

   public  $idProduto; 
   
   public $nomeProduto; 
   
   public $tipoProduto; 
   
   public $precoProduto; 
   
   public $statusProduto; 
   
   public $descricaoProduto; 
   
   public $fotoProduto; 
   
   public $categoriaProduto;


   public function __construct($id = false)
   {

       if ($id) {

           $this->idProduto = $id;
           $this->Carregar();
       }
   }
   


   //LISTAR 
   public function Listar(){
    $sql = "SELECT * FROM `tblproduto` WHERE statusProduto = 'ATIVO' ORDER BY nomeProduto ASC";
    $conn = Conexao::LigarConexao();
    $resultado = $conn->query($sql);
    $lista = $resultado->fetchAll();
    return $lista;

   }

   //CADASTRAR 
   public function CadastrarA() {
      $query = "INSERT INTO tblproduto(idProduto,     
          nomeProduto, 
          tipoProduto, 
          precoProduto, 
          statusProduto, 
          descricaoProduto,
          fotoProduto,   
          categoriaProduto)
          VALUES ('" . $this->idProduto . "',
                  '" . $this->nomeProduto . "',
                  '" . $this->tipoProduto . "',
                  '" . $this->precoProduto . "',
                  '" . $this->statusProduto . "',
                  '" . $this->descricaoProduto . "', 
                  '" . $this->fotoProduto . "',
                  '" . $this->categoriaProduto . "')";
  
      $conn = Conexao::LigarConexao();
      $conn->exec($query);
                       
      echo "<script>document.location='index.php?p=produtos'</script>";                     
  }

   //CARREGAR

   
   public function Carregar(){

      
   $query = "SELECT * FROM tblproduto  WHERE idProduto = " . $this->idProduto;
   $conn = Conexao::LigarConexao();
   $resultado = $conn->query($query);
   $lista = $resultado->fetchAll();
      
    foreach ($lista as $linha) {
    $this ->   nomeProduto =            $linha['nomeProduto'];
    $this ->   tipoProduto =            $linha['tipoProduto'];
    $this ->   descricaoProduto =       $linha['descricaoProduto'];
    $this ->   categoriaProduto =       $linha['categoriaProduto'];
    $this ->   precoProduto =           $linha['precoProduto'];
    $this ->   fotoProduto =            $linha['fotoProduto'];
    $this ->   statusProduto =          $linha['statusProduto'];}
   
   }


   
   public function Atualizar(){
          
      $query = "UPDATE tblproduto SET nomeProduto = '".$this->nomeProduto."',
      tipoProduto               = '".$this->tipoProduto."',
      descricaoProduto           = '".$this->descricaoProduto."',
      categoriaProduto           = '".$this->categoriaProduto."',
      precoProduto            = '".$this->precoProduto."',
      fotoProduto              = '".$this->fotoProduto."',
      statusProduto              = '".$this->statusProduto."'
                                  WHERE tblproduto.idProduto = " . $this->idProduto;   

      $conn = Conexao::LigarConexao();   
      $conn->query($query);
      echo "<script>document.location='index.php?p=produtos'</script>'";     
}


public function desativar(){
   $sql = "UPDATE tblproduto SET statusProduto = 'Desativado' WHERE idProduto = " . $this->idProduto;
   $conn = Conexao::LigarConexao();
   $conn->exec($sql);

   echo " <script>document.location='index.php?p=produtos'</script>";

}

}