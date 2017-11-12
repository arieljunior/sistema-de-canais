
package conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
    private static Connection conexao;
    private static String url = "jdbc:mysql://localhost:3306/at";
    private static String user = "root";
    private static String senha = "";
    
    /**
     *
     * @return
     */
    public static Connection getConn(){
        
        try {
            conexao = DriverManager.getConnection(url, user, senha);
        } catch (SQLException e) {
            System.out.println("Erro ao conectar-se ao banco de dados. Erro: " + e.toString());
        }
        
        
        return conexao;
    }
    
    
}
