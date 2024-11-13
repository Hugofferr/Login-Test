<?php

//Pegar o que foi digitado nos imputs
$codigo = $_POST["codigo"];
$descricao = $_POST["descricao"];

//Conecta com o DB
include("conecta.php");

//O botão "inserir" foi setado
if(isset($_POST["Inserir"]))
{
    $comando = $pdo->prepare("INSERT INTO produto (id_prod,nome_prod) VALUES($codigo,'$descricao')");
    $resultado = $comando->execute();
    echo("
        <script>
            alert('Dados gravados')
            window.open('cadastrar.html','_self')
        </script>
    ");
}

if(isset($_POST["Deletar"]))
{
    $comando = $pdo->prepare("DELETE FROM produto WHERE id_prod=$codigo");
    $resultado = $comando->execute();
    echo
    ("
        <script>
            alert('Dados excluidos')
            window.open('cadastrar.html','_self')
        </script>
    ");
}

if(isset($_POST["Listar"]))
{
    include("listar.php");
}

if(isset($_POST["Alterar"]))
{
    $comando = $pdo->prepare("UPDATE produto SET nome_prod='$descricao' WHERE id_prod=$codigo");
    $resultado = $comando->execute();
    echo
    ("
        <script>
            alert('Dados alterados')
            window.open('cadastrar.html','_self')
        </script>
    ");
}
?>