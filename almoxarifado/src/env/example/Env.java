package example;
 
// Environment code for project almoxarifado
 
import jason.asSyntax.*;
import jason.environment.*;
import jason.asSyntax.parser.*;
 
import java.util.Random;
import java.util.logging.*;
 
public class Env extends Environment {
 
    private Logger logger = Logger.getLogger("almoxarifado."+Env.class.getName());
    int totalPecas;
 
    private String sortearPeca() {
        Random gerador = new Random();
        int numero = gerador.nextInt(3);
        if (numero == 1) {
            return "peca(pequena)";
        }
        if (numero == 2) {
            return "peca(media)";
        }
        return "peca(grande)";
    }
 
    /** Called before the MAS execution with the args informed in .mas2j */
    @Override
    public void init(String[] args) {
        super.init(args);
        totalPecas = Integer.parseInt(args[0]);
        try {
            addPercept(ASSyntax.parseLiteral("totalPecas("+args[0]+")"));
            addPercept(ASSyntax.parseLiteral( "peca(media)" ));
            totalPecas--;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
 
    @Override
    public boolean executeAction(String agName, Structure action) {    
        if (action.getFunctor().equals("ajudar")) {
            logger.info(agName+ " ajudando o r2");
        } else {
            String tamanho = action.getTerm(0).toString();
            if (action.getFunctor().equals("guardarPeca")) {
                logger.info(agName + " está guardando peça " + tamanho);
                try {
                    removePercept(ASSyntax.parseLiteral( "peca(" + tamanho + ")" ));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else {
                logger.info("executing: "+action+", but not implemented!");
            }
 
            if (totalPecas > 0) {
            try {  
                    Thread.sleep(5000);
                    logger.info("UMA PEÇA ESTÁ CHEGANDO NO ALMOXARIFADO...." + totalPecas);              
                    addPercept(ASSyntax.parseLiteral( sortearPeca() ));
                    totalPecas--;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return true; // the action was executed with success
    }
 
    /** Called before the end of MAS execution */
    @Override
    public void stop() {
        super.stop();
    }
}
 