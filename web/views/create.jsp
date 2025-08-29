<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cadastrar Animal</title>
    <meta charset="UTF-8">
    
    <!-- Link para o CSS temático -->
    <link rel="stylesheet" href="../resources/css/estilo-animais.css">
</head>
<body data-page="create">
    <header>
        <h1>🐾 Cadastrar Animal</h1>
    </header>
    
    <main>
       <form action="<%=request.getContextPath()%>/createAnimal" method="post" class="card-animal">
            <label for="raca">Raça:</label><br/>
            <input type="text" id="raca" name="raca" required class="card-animal"/><br/><br/>
            
            <label for="peso">Peso:</label><br/>
            <input type="number" id="peso" name="peso" required class="card-animal"/><br/><br/>
            
            <label for="quantidade">Quantidade:</label><br/>
            <input type="number" id="quantidade" name="quantidade" required class="card-animal"/><br/><br/>
            
            <input type="submit" value="Adicionar" class="btn-animal"/>
        </form>
    </main>
