<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="animal" class="DAO.AnimalDAO"/>

<!DOCTYPE html>
<html>

    <table border="1">
        <tr>
            <th>ID</th>
            <th>Raça</th>
            <th>Peso</th>
            <th>Quantidade</th>
            <th>Ações</th>
        </tr>

        <c:forEach var="animal" items="${animal.listarAnimal()}">
            <tr>
                <td>${animal.getId()}</td>
                <td>${animal.getRaca()}</td>
                <td>${animal.getPeso()}</td>
                <td>${animal.getQuantidade()}</td>
                <td>
                    <a href="<%=request.getContextPath()%>/animal?id=${animal.getId()}"><button>Detalhes</button></a>
                    <a href="${pageContext.request.contextPath}/updateAnimal?id=${animal.getId()}"><button>Editar</button></a>
                    <a href="${pageContext.request.contextPath}/deleteAnimal?id=${animal.getId()}"><button>Sacrificar</button></a
                </td>
            </tr>
        </c:forEach>
    </table>

    <br>
    <a href="${pageContext.request.contextPath}/views/create.jsp">
        <button>Cadastrar Novo Animal</button>
    </a>
</body>
</html>