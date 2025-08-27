<%-- 
    Document   : create
    Created on : 26 de ago. de 2025, 16:12:00
    Author     : T1092654
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cadastrar Animal</title>
</head>
<body>
    <h1>Cadastrar Novo Animal</h1>

    <form action="<%=request.getContextPath()%>/createAnimal" method="post">
        Raça: <input type="text" name="raca" required /><br/>
        Peso: <input type="number" name="peso" required /><br/>
        Quantidade: <input type="number" name="quantidade" required /><br/>
        <input type="submit" value="Adicionar" />
    </form>
</body>
</html>
