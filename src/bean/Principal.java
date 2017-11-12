package bean;
import bancoDeDados.CanalBD;
import java.util.InputMismatchException;
import java.util.Scanner;
import bancoDeDados.ClienteBD;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Principal {

    public static void main(String[] args) throws SQLException {
        
        boolean menu = true;
        int opcao = 0;
        CanalBD ca = new CanalBD();
        
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        StringBuilder builder = new StringBuilder();
        
        String showDate = String.valueOf(builder.append("Horario:").append(";").append(sdf.format(d)));
        String[] dataHora = showDate.split(";");
        
        System.out.println(dataHora[0]);
        System.out.println(dataHora[1]);
        
        System.out.println("______________________________");
        System.out.println("| SISTEMA DE VENDA DE CANAIS |");
        System.out.println("------------------------------");
        
        while (menu == true) { 
            System.out.println("______________________________________");
            System.out.println("|[1] Consultar dados do cliente      |");
            System.out.println("|[2] Consultar canais do plano       |");
            System.out.println("|[3] Consultar programas dos canais  |");
            System.out.println("|[4] Adquirir canal                  |");
            System.out.println("|[5] Sair.                           |");
            System.out.println("--------------------------------------");
            System.out.print("Selecione uma opção: ");
            try {
                Scanner pegarOpcao = new Scanner(System.in);
                opcao = pegarOpcao.nextInt();

            } catch (InputMismatchException e) {
                System.out.println("\nOpcção incorreta");
            }
            switch(opcao){
                case 1:
                    ClienteBD cl = new ClienteBD();
                    cl.consultarCliente();
                    
                    break;
                case 2:
                    
                    ca.consultarCanais();
                    
                    break;
                case 3:
                    ca.consultarProgramação();
                    break;
                case 4:
                    ca.adicionarCanalBD();
                    break;
                case 5:
                    menu = false;
                    break;
                default:
                    System.err.println("Opção inválida");
            }
            
            
            
        }
        
    }
    
}
