Feature: Avalia a Prática 4.2 de IF62C-Fundamentos de Programação 2
    Como professor da disciplica de Fundamentos de Programação 2
    Quero avaliar a prática 4.2
    A fim de verificar a compreensão dos estudantes

    Background:
        Given the maximum grade is 100
        Given the main class is 'Pratica42'
        Given I set the script timeout to 3000
        Given I evaluate 'import utfpr.ct.dainf.if62c.pratica.*'
        Given I evaluate 'import utfpr.ct.dainf.grader.*'
        Given I evaluate 'import java.util.regex.*'
    
    Scenario: Verifica se a classe Pratica42 classe existe no pacote padrão e contem o método main (10 pontos)
        Given I report 'Iniciando avaliação...'
        Given I report 'Avaliando item 3...'
        Given class 'Pratica42' exists somewhere store class in <mainClass>
        Given the class <mainClass> is in the 'default' package
        And class <mainClass> has 'public' modifier
        Then award 5 points
        Given class <mainClass> declares 'main(java.lang.String[])' method save in <mainMethod>
        And method <mainMethod> returns type 'void'
        And member <mainMethod> has 'public' modifier
        And member <mainMethod> has 'static' modifier
        Then award 5 points

    Scenario: Verifica se a interface Figura existe
        Given I report 'Avaliando item 4...'
        Given class 'utfpr.ct.dainf.if62c.pratica.Figura' exists store class in <figuraInterface>
        And <figuraInterface> is an interface
        Then award 10 points

    Scenario: Verifica se a interface FiguraComEixos existe e extende Figura
        Given class 'utfpr.ct.dainf.if62c.pratica.FiguraComEixos' exists store class in <figeixosInterface>
        And <figeixosInterface> is an interface
        And class 'utfpr.ct.dainf.if62c.pratica.Figura' is assignable from <figeixosInterface> 
        Then award 10 points

    Scenario: Verifica se a interface FiguraComEixos declara o método getEixoMaior()
        Given class <figeixosInterface> declares 'getEixoMaior()' method save in <gemaiorMethod>
        And method <gemaiorMethod> returns type 'double'
        Then award 10 points

    Scenario: Verifica se a interface FiguraComEixos declara o método getEixoMenor()
        Given class <figeixosInterface> declares 'getEixoMenor()' method save in <gememprMethod>
        And method <gememprMethod> returns type 'double'
        Then award 10 points

    Scenario: Verifica se a classe Elipse existe e implementa a interface FiguraComEixos
        Given I report 'Avaliando item 5...'
        Given class 'utfpr.ct.dainf.if62c.pratica.Elipse' exists store class in <elipseClass>
        Then award 5 points
        Given class 'utfpr.ct.dainf.if62c.pratica.FiguraComEixos' is assignable from <elipseClass> 
        Then award 15 points

    Scenario: Verifica se a classe Circulo existe e extende Elipse
        Given class 'utfpr.ct.dainf.if62c.pratica.Circulo' exists store class in <circuloClass>
        Then award 5 points
        Given class 'utfpr.ct.dainf.if62c.pratica.Elipse' is assignable from <circuloClass>  
        Then award 15 points

    Scenario: Verifica se exibe algo numérico na saída (10 pontos)
        Given I report 'Avaliando item 6...'
        Given I evaluate 'testMain = new Pratica42()'
        Given I set output to <testOut>
        And I evaluate 'testMain.main(new String[0])'
        And I set output to <default>
        And <testOut> matches regex '.*\d+.*' with 'Pattern.DOTALL' option
        Then award 10 points

    Scenario: Report final grade.
        Given I report grade formatted as 'FINAL GRADE: %.1f'
