package DAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import conexao.Conexao;
import model.Animal;

public class AnimalDAO {

    public void adicionarAnimal(Animal animal) {
                System.out.println("entrou no dao de adc");

        String sql = "INSERT INTO animal (raca, peso, quantidade) VALUES (?, ?, ?)";
        try (Connection conn = Conexao.conectar();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, animal.getRaca());
            stmt.setInt(2, animal.getPeso());
            stmt.setInt(3, animal.getQuantidade());
            stmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public List<Animal> listarAnimal() {
                System.out.println("entrou no dao de listar");

        List<Animal> lista = new ArrayList<>();
        String sql = "SELECT * FROM animal";
        try (Connection conn = Conexao.conectar();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Animal animal = new Animal();
                animal.setId(rs.getInt("id"));
                animal.setRaca(rs.getString("raca"));
                animal.setPeso(rs.getInt("peso"));
                animal.setQuantidade(rs.getInt("quantidade"));
                lista.add(animal);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lista;
    }


    public void atualizarAnimal (Animal animal) {
        System.out.println("entrou no dao de update");

        String sql = "UPDATE animal SET raca = ?, peso = ?, quantidade = ? WHERE id = ?";
        try (Connection conn = Conexao.conectar();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, animal.getRaca());
            stmt.setInt(2, animal.getPeso());
            stmt.setInt(3, animal.getQuantidade());
            stmt.setInt(4, animal.getId());
            stmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deletarAnimal(int id) {
        System.out.println("entrou no dao de deletar");
        String sql = "DELETE FROM animal WHERE id = ?";
        try (Connection conn = Conexao.conectar();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            stmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
