<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<head>
    <title>Editar Animal</title>
    <meta charset="UTF-8">
    
     <!-- Link para o CSS temático -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilo-animais.css">
    
</head>
<body data-page="update">
    <header>
        <h1>🐾 Editar Animal</h1>
    </header>

    <main>
           <form action="${pageContext.request.contextPath}/updateAnimal" method="post" class="card-animal">
            <input type="hidden" name="id" value="${animal.id}" />

            <label for="raca">Raça:</label><br/>
            <input type="text" id="raca" name="raca" value="${animal.raca}" required class="card-animal"/><br/><br/>

            <label for="peso">Peso:</label><br/>
            <input type="number" id="peso" name="peso" value="${animal.peso}" required class="card-animal"/><br/><br/>

            <label for="quantidade">Quantidade:</label><br/>
            <input type="number" id="quantidade" name="quantidade" value="${animal.quantidade}" required class="card-animal"/><br/><br/>

            <input type="submit" value="Atualizar" class="btn-animal"/>
        </form>

        <br/>
        <a href="${pageContext.request.contextPath}/views/read.jsp">
            <button class="btn-animal">Voltar</button>
        </a>
    </main>

