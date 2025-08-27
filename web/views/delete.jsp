<%-- 
    Document   : delete
    Created on : 26 de ago. de 2025, 16:13:09
    Author     : T1092654
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deletar Animal</title>
    </head>
    <body>
        <h1>Deletar Animal</h1>
        <p>Tem certeza de que deseja sacrificar este animal?</p>
        <p>Raça: ${animal.raca}</p>
        <p>Peso: ${animal.peso}</p>
        <p>Quantidade: ${animal.quantidade}</p>
        <form action="${pageContext.request.contextPath}/deleteAnimal" method="post">
            <input type="hidden" name="_method" value="post"/>
            <input type="hidden" name="id" value="${animal.id}"/>
            <input type="submit" value="Deletar"/>
        </form>
       <a href="${pageContext.request.contextPath}/read.jsp">
           <button>Cancelar</button></a>
    </body>
</html>
