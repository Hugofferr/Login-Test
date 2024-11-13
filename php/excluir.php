<?php

    include("conecta.php");

    // Vamos pegar o "codigo" da barra de endereço:
    $codigo = $_GET["id_prod"];

    $comando = $pdo->prepare("DELETE FROM produto WHERE id_prod=$codigo ");
    $resultado = $comando->execute();
    include("listar.php");
    
?>