<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>CRUD de Animais</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Link para o CSS temático -->
        <link rel="stylesheet" href="resources/css/estilo-animais.css">
    </head>
    <body data-page="index">
        <header>
            <h1>🐾 Meu Projeto CRUD de Animais</h1>
        </header>

        <main>
            <div style="display: flex; gap: 20px; margin-top: 40px;">
                <a href="views/create.jsp">
                    <button class="btn-animal">Criar Animal</button>
                </a>
                <a href="views/read.jsp">
                    <button class="btn-animal">Ver Animais</button>
                </a>
            </div>
        </main>

        <!-- Script JS -->
        <script src="resources/js/index.js"></script>
    </body>
</html>