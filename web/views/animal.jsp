<%-- 
    Document   : animal
    Created on : 26 de ago. de 2025, 16:14:45
    Author     : T1092654
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<head>
</head>
<body>
    <h1>Características do Animal</h1>
    <c:if test="${not empty animal}">
        <p><strong>Raça:</strong> ${animal.raca}</p>
            <strong> ${animal.peso}</strong></p>
        <p><strong>Quantidade:</strong> ${animal.quantidade}</p>
    </c:if>

    <c:if test="${empty animal}">
        <p>Animal não encontrado.</p>
    </c:if>
<br>
<a href="views/read.jsp"><button>Voltar</button></a>
</body>

