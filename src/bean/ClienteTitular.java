package bean;

public class ClienteTitular {
    ClienteDependente cd = new ClienteDependente();
    private String cpfTitular;
    private String enderecoTitular;
    
    public boolean verificarLogin(String senha){
        cd.setSenha("123");
        if (senha.equals(cd.getSenha())) {
            return true;
        }else{
            return false;
        }
        
    }
    
    public void imprimirDadosTitular(){
        cd.setNome("Ariel");
        cd.setSobrenome("Junior");
        enderecoTitular = "Rio de janeiro, RJ - Ilha do Governador";
        cpfTitular = "12345678954";
        System.out.println("@    DADOS DO TITULAR    @");
        System.out.println("\nNome: "+ cd.getNome() +" "+ cd.getSobrenome());
        System.out.println("CPF: "+ cpfTitular);
        System.out.println("Endereço: "+enderecoTitular);
    }
}
