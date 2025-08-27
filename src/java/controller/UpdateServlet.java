package controller;

import DAO.AnimalDAO;
import model.Animal;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import java.util.List;

@WebServlet("/updateAnimal")
public class UpdateServlet extends HttpServlet {
    
    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("entrou na rota put do update");
        String id = request.getParameter("id");
        String raca = request.getParameter("raca");
        int peso = Integer.parseInt(request.getParameter("peso"));
        int quantidade = Integer.parseInt(request.getParameter("quantidade"));

        Animal animal = new Animal();
        animal.setId(Integer.parseInt(id));
        animal.setRaca(raca);
        animal.setPeso(peso);
        animal.setQuantidade(quantidade);

        try {
            AnimalDAO dao = new AnimalDAO();
            dao.atualizarAnimal(animal);
        } catch (Exception e) {
            e.printStackTrace();
        }

        response.sendRedirect("views/read.jsp");
    }
    
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println(" ENTROU  no get do UPDATE");
        try {
            String id = request.getParameter("id");

            if (id != null) {
                Animal animal = new AnimalDAO().listarAnimal()
                        .stream()
                        .filter(a -> a.getId() == Integer.parseInt(id))
                        .findFirst()
                        .orElse(null);

                request.setAttribute("animal", animal);
                request.getRequestDispatcher("views/update.jsp").forward(request, response);
            } else {
                List<Animal> animais = new AnimalDAO().listarAnimal();
                request.setAttribute("animais", animais);
                request.getRequestDispatcher("views/update.jsp").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}


