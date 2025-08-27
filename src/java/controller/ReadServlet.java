/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import DAO.AnimalDAO;
import model.Animal;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import java.util.List;

@WebServlet("/animal")

public class ReadServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println(" ENTRO NO GET DO READ");
        try {
            String id = request.getParameter("id");

            if (id != null) {
                Animal animal = new AnimalDAO().listarAnimal()
                        .stream()
                        .filter(a -> a.getId() == Integer.parseInt(id))
                        .findFirst()
                        .orElse(null);

                request.setAttribute("animal", animal);
                request.getRequestDispatcher("views/animal.jsp").forward(request, response);
            } else {
                List<Animal> animais = new AnimalDAO().listarAnimal();
                request.setAttribute("animais", animais);
                request.getRequestDispatcher("views/animal.jsp").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
