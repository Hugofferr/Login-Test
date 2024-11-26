<?php

$login = $_POST["username"];
$senha = $_POST["password"];

include("conecta.php");

$comando = $pdo->prepare("SELECT * FROM usuario where nome='$login' AND senha='$senha'");
$resultado = $comando->execute();
    
    while($linha = $comando->fetch())
    {
        $achou = 1;
        $permissao = $linha["permissao"];
    }

    if($achou==1 && $permissao=="A")
    {
        include("cadastrar.html");
    }

    if($achou==1 && $permissao!="A")
    {
        include("inicio.html");
    }

    if($achou==0)
    {
        include("login.html");
    }
?>