<%-- 
    Document   : update]
    Created on : 26 de ago. de 2025, 16:12:55
    Author     : T1092654
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Editar Animal</title>
</head>
<body>
    <h1>Editar Animal</h1>

    <form action="${pageContext.request.contextPath}/updateAnimal" method="get">
        <input type="hidden" name="id" value="${animal.id}" />
        Raça: <input type="text" name="raca" value="${animal.raca}" required /><br/>
        Peso: <input type="number" name="peso" value="${animal.peso}" required /><br/>
        Quantidade: <input type="number" name="quantidade" value="${animal.quantidade}" required /><br/>
        <input type="submit" value="Atualizar" />
    </form>

    <br>
    <a href="${pageContext.request.contextPath}/readAnimal">
        <button>Voltar</button>
    </a>
</body>
</html>
