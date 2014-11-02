package utfpr.ct.dainf.grader;

/**
 * IF62C Fundamentos de Programação 2
 * Exercício de programação em Java.
 * @author Wilson Horstmeyer Bogado <wilson@utfpr.edu.br>
 */
public class CirculoTest extends ElipseTest {

    public CirculoTest() {
        super();
    }

    public CirculoTest(double raio) {
        super(raio, raio);
    }

    public double getRaio() {
        return getSemiEixo1();
    }

    public void setRaio(double raio) {
        setSemiEixo1(raio);
        setSemiEixo2(raio);
    }

    @Override
    public double getPerimetro() {
        return 2 * Math.PI * getRaio();
    }

    /**
     * Um círculo não pode ter eixos diferentes.
     * @param semiEixo1 O raio do círculo.
     */
    @Override
    public void setSemiEixo1(double semiEixo1) {
        setRaio(semiEixo1);
    }

    /**
     * Um círculo não pode ter eixos diferentes.
     * @param semiEixo2  O raio do círculo.
     */
    @Override
    public void setSemiEixo2(double semiEixo2) {
        setRaio(semiEixo2);
    }

    @Override
    public double getArea() {
        return Math.PI * getSemiEixo1() * getSemiEixo1();
    }

}
