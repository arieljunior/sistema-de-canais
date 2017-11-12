package bancoDeDados;

import conexao.Conexao;
import bean.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ClienteBD {

    private Connection con;
    private PreparedStatement pt;
    private ResultSet rs;

    public void consultarCliente() {

        con = Conexao.getConn();

        try {
            pt = con.prepareStatement("SELECT * FROM Cliente");
            rs = pt.executeQuery();
            while (rs.next()) {
                String nome = (rs.getString("nome"));
                String sobrenome = (rs.getString("sobrenome"));
                String endereco = (rs.getString("endereco"));
                String cpf = (rs.getString("cpf"));
                
                Cliente cliente = new Cliente(nome, sobrenome, cpf, endereco);

                System.out.println("\n|Nome: " + cliente.getNome() + " " + cliente.getSobrenome());
                System.out.println("|CPF: " + cliente.getCpf());
                System.out.println("|Endereço: " + cliente.getEndereco());
            }

        } catch (Exception e) {
        }
    }

}
