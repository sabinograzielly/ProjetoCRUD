package controller;

import DAO.AnimalDAO;
import model.Animal;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.annotation.WebServlet;
import java.util.List;

@WebServlet("/createAnimal")

public class CreateServlet extends HttpServlet {

    @Override

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String raca = request.getParameter("raca");
        int peso = Integer.parseInt(request.getParameter("peso"));
        int quantidade = Integer.parseInt(request.getParameter("quantidade"));

        System.out.println("Raça: " + raca + " | Peso: " + peso + " | Quantidade: " + quantidade);

        Animal animal = new Animal();
        animal.setRaca(raca);
        animal.setPeso(peso);
        animal.setQuantidade(quantidade);

        try {
            AnimalDAO dao = new AnimalDAO();
            dao.adicionarAnimal(animal);
        } catch (Exception e) {
            throw new ServletException(e);
        }

        response.sendRedirect("views/read.jsp"); // Redireciona para a página de listagem
    }

}
