<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="animal" class="DAO.AnimalDAO" />

<!DOCTYPE html>
<html>
<head>
    <title>Lista de Animais</title>
    <meta charset="UTF-8">
    
    <!-- Link para o CSS temático -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilo-animais.css">
    
</head>
<body data-page="read">
    <header>
        <h1>🐾 Lista de Animais</h1>
    </header>

    <main>
        <table style="width: 100%; border-collapse: collapse; margin-top: 20px;">
            <thead style="background-color: var(--rosa-cha); color: white;">
                <tr>
                    <th>ID</th>
                    <th>Raça</th>
                    <th>Peso</th>
                    <th>Quantidade</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="animal" items="${animal.listarAnimal()}">
                    <tr style="background-color: var(--rosa-palido); text-align: center;">
                        <td>${animal.id}</td>
                        <td>${animal.raca}</td>
                        <td>${animal.peso}</td>
                        <td>${animal.quantidade}</td>
                        <td>
                            </a>
                            <a href="${pageContext.request.contextPath}/updateAnimal?id=${animal.getId()}">
                                <button class="btn-animal">Editar</button>
                            </a>
                            <a href="${pageContext.request.contextPath}/deleteAnimal?id=${animal.getId()}">
                                <button class="btn-animal">Sacrificar</button>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <br/>
        <a href="${pageContext.request.contextPath}/views/create.jsp">
            <button class="btn-animal">Cadastrar Novo Animal</button>
        </a>
    </main>
</body>
</html>