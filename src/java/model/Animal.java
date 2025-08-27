package model;
public class Animal {

    private int id;
    private String raca;
    private int peso;
    private int quantidade;

    public Animal() {
    }

    public Animal(int id, String raca, int peso, int quantidade) {
        this.id = id;
        this.raca = raca;
        this.peso = peso;
        this.quantidade = quantidade;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRaca() {
        return raca;
    }

    public void setRaca(String raca) {
        this.raca = raca;
    }

    public int getPeso() {
        return peso;
    }

    public void setPeso(int peso) {
        this.peso = peso;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    

}
