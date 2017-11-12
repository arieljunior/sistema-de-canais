package bancoDeDados;

import conexao.Conexao;
import bean.Canal;
import bean.Programas;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class CanalBD {

    private Connection conexao;
    private PreparedStatement prepareSt;
    private ResultSet resultS;
    Canal canal = new Canal();

    public void consultarCanais() {

        conexao = Conexao.getConn();

        try {
            prepareSt = conexao.prepareStatement("SELECT * FROM Canal");
            resultS = prepareSt.executeQuery();
            System.out.println("\n*******************************");
            System.out.println("*******CANAIS CONTRATADOS******");
            System.out.println("*******************************\n");
            while (resultS.next()) {
                canal.setNome(resultS.getString("nome"));
                canal.setDescricao(resultS.getString("descricao"));

                System.out.println("Canal: " + canal.getNome());
                System.out.println("Descrição: " + canal.getDescricao());
                System.out.println("--------------------------------");
            }
            resultS.close();
            prepareSt.close();
            conexao.close();

        } catch (Exception e) {

        }
    }
    public void consultarProgramação() {
        PreparedStatement canalPS, programasPS;
        ResultSet canalRS, programasRS;

        conexao = Conexao.getConn();

        try {
            canalPS = conexao.prepareStatement("SELECT * FROM Canal");
            canalRS = canalPS.executeQuery();
            programasPS = conexao.prepareStatement("SELECT * FROM programa");
            programasRS = programasPS.executeQuery();

            while (canalRS.next()) {
                canal.setNome(canalRS.getString("nome"));
                System.out.println("\n" + canal.getNome());
                while (programasRS.next()) {
                    if (canalRS.getInt("idCanal") == programasRS.getInt("idCanal")) {
                        Programas pr = new Programas(programasRS.getString("nome"), programasRS.getString("descricao"));
                        System.out.println("Programa: " + pr.getNome());
                        System.out.println("Descrição: " + pr.getDescricao() + "\n");
                    }else{
                        System.out.println("Sem programas para apresentar");
                    }
                }
                System.out.println("---------------------------------");
                programasRS.beforeFirst();
            }
            canalRS.close();
            programasRS.close();
            canalPS.close();
            programasPS.close();
            conexao.close();

        } catch (Exception e) {
        }
    }
    public void adicionarCanalBD(){
        conexao = Conexao.getConn();
            
        try {
            canal.adquirirCanal();
            
            prepareSt = conexao.prepareStatement("INSERT INTO canal VALUES (0, ?, 0)");
            
            prepareSt.setString(1, canal.getNome());
            
            prepareSt.execute();
            prepareSt.close();
            conexao.close();
        } catch (SQLException ex) {
            
            System.out.println("Servidor deu erro!");
        }
        
        
    }
    
    
}
