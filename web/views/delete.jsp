<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>Sacrificar Animal</title>
    <!-- Link para o CSS temático -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilo-animais.css">
</head>

<body data-page="delete">
    <header>
        <h1>🐾 Sacrificar Animal</h1>
    </header>

    <main style="display: flex; flex-direction: column; align-items: center; padding: 20px;">
        <div class="card-animal" style="max-width: 400px;">
            <p>Tem certeza de que deseja sacrificar este animal?</p>
            <p><strong>Raça:</strong> ${animal.raca}</p>
            <p><strong>Peso:</strong> ${animal.peso}</p>
            <p><strong>Quantidade:</strong> ${animal.quantidade}</p>

            <form action="${pageContext.request.contextPath}/deleteAnimal" method="post">
                <input type="hidden" name="_method" value="post"/>
                <input type="hidden" name="id" value="${animal.id}"/>
                <input type="submit" value="Sacrificar" class="btn-animal"/>
                
            </form>

            <br/>
                
        
                
         
                
        </div>
                <a href="${pageContext.request.contextPath}/views/read.jsp">
                <button class="btn-animal"> Cancelar Abate </button>
</a>
    </main>

</body>
</html>



          