package controller;

import DAO.AnimalDAO;
import model.Animal;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;
import javax.servlet.annotation.WebServlet;

@WebServlet("/deleteAnimal")

public class DeleteServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("eentrou no service de delete");
        String id = request.getParameter("id");

        try {
            AnimalDAO dao = new AnimalDAO();
            dao.deletarAnimal(Integer.parseInt(id));
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("views/read.jsp").forward(request, response);
        
    }
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("ENTROU GET DDELETE");
        try {
            String id = request.getParameter("id");

            if (id != null) {
                Animal animal = new AnimalDAO().listarAnimal()
                        .stream()
                        .filter(a -> a.getId() == Integer.parseInt(id))
                        .findFirst()
                        .orElse(null);

                request.setAttribute("animal", animal);
                request.getRequestDispatcher("views/delete.jsp").forward(request, response);
            } else {
                List<Animal> animais = new AnimalDAO().listarAnimal();
                request.setAttribute("animais", animais);
                request.getRequestDispatcher("views/delete.jsp").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
