<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listagem</title>

    <style>
        body{
            width: 100%;
            height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
    </style>
</head>
<body>
    <h1>LISTAGEM DE PRODUTOS</h1>
    <table align="center" cellpadding="5" cellspacing="0">
        <tr>
            <td align="center">Código</td>
            <td align="center">Descrição dos produtos</td>
        </tr>
        <?php
            include("conecta.php");
            $comando = $pdo->prepare("SELECT * FROM produto");
            $resultado = $comando->execute();
            
            while($linha = $comando->fetch())
            {
                $codigo = $linha["id_prod"];
                $nome = $linha["nome_prod"];
        
                echo("
                    <tr>
                        <td> $codigo </td>
                        <td> $nome </td>
                        <td> 
                            <a href='excluir.php?id_prod=$codigo'>
                                <img src='lixeira.png' width='25px'> 
                            </a>
                        </td>
                    </tr>
                ");
            }
        ?>

    </table>
</body>
</html>






