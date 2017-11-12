package bean;

import java.util.Scanner;
import bancoDeDados.CanalBD;

public class Canal {
    private String nome;
    private String descricao;

    public void adquirirCanal(){
        System.out.println("_________________");
        System.out.println("|Adicionar Canal|");
        System.out.println("-----------------");
        
        Scanner scanNome = new Scanner(System.in);
        Scanner scanDescricao = new Scanner(System.in);
        System.out.print("Digite o nome do canal: ");
        this.nome = scanNome.next();
      //  System.out.println("Digite a descrição: ");
      //  this.descricao = scanDescricao.next();
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
    
}
