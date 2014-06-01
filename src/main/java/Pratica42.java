
import utfpr.ct.dainf.if62c.pratica.Circulo;
import utfpr.ct.dainf.if62c.pratica.Elipse;

/**
 * UTFPR - Universidade Tecnológica Federal do Paraná
 * DAINF - Departamento Acadêmico de Informática
 * IF62C - Fundamentos de Programação 2
 * 
 * Prática de programação.
 * @author Wilson Horstmeyer Bogado <wilson@utfpr.edu.br>
 */
public class Pratica42 {
    public static void main(String[] args) {
        Elipse e = new Elipse(5, 5);
        Circulo c = new Circulo(5);
        Elipse e1 = new Elipse(2.2, 1.1);
        
        System.out.println("Teste de eixos:");
        System.out.println("Eixo menor = " + e1.getEixoMenor());
        System.out.println("Eixo maior = " + e1.getEixoMaior());

        double pe = e.getPerimetro();
        double ae = e.getArea();
        double pc = c.getPerimetro();
        double ac = c.getArea();
        double dp = pe - pc;
        double da = ae - ac;

        System.out.println("Perímetro da " + e + " = " + pe);
        System.out.println("Área da " + e + " = " + ae);
        System.out.println("Perímetro do " + c + " = " + pc);
        System.out.println("Área do " + c + " = " + ac);
        if (Math.abs(dp) < 1e-4) {
            System.out.println(String.format("Diferenca de perímetros (%g) é aceitável.", dp));
        } else {
            System.out.println(String.format("Cálculo incorreto. Diferença de perímetros (%g) excessiva", dp));
        }

        if (ae == ac) {
            System.out.println("Cáculo correto. Áreas são iguais.");
        } else {
            System.out.println(String.format("Cálculo incorreto. Diferença de áreas (%g) excessiva", da));
        }
    }
}
