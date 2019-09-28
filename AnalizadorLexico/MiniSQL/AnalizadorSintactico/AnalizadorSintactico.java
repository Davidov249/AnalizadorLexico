package AnalizadorSintactico;

import java.lang.Object;
import java.lang.String;
import java.io.PrintWriter;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.lang.System;
import java.io.Console;
import java.io.InputStream;
import java.util.Scanner;
import AnalizadorSintactico.MyTOKEN;


public class AnalizadorSintactico {

    public List<MyTOKEN> TOKENS;
    public MyTOKEN tokenActual;
    public boolean errorSentenciaAcutal = false;
    public int errores = 0;
    public int longitud = 0;
    public int numToken = 0;

    public void Analizar(){
        //SearchCWMatch();

        System.out.println("Prueba");
    }

    public void error(){
        errorSentenciaAcutal = true;
    }

    public void resetErrores(){
        errorSentenciaAcutal = false;
    }

    public AnalizadorSintactico(List<MyTOKEN> tok){
        TOKENS = tok;
        TOKENS.add(new MyTOKEN("FIN", "FIN", 0, 0));
        longitud = TOKENS.size();
    }

    public void printError(String expectedToken){
        System.out.println("Error en la Linea: " + tokenActual.fila + ", columna: " + tokenActual.columna + ", se esperaba: " + expectedToken);
    }

    public void consumirToken(){
        TOKENS.remove(numToken);
        longitud = longitud - 1;
        numToken++;
    }

    public void nextToken(){
        tokenActual = TOKENS.get(numToken);
    }

    /*
    public void SearchC(){
        SearchCWMatch();
        SearchC2();
    }

    public void SearchC2(){
        if(tokenActual.Token.equals("AND")){
            consumirToken();
            nextToken();
            SearchC();
        }
    }
    */

    public void SearchCWMatch(){
        if(tokenActual.Token.equals("NOT")){
            consumirToken();
            nextToken();
            Predicado();
            SCWM2();
        }else if(tokenActual.Token.equals("(")){
            consumirToken();
            nextToken();
            SearchCWMatch();
            if(tokenActual.Token.equals(")")){
                consumirToken();
                nextToken();
                SCWM2();
            }else{
                printError(")");
            }
        }else{
            Predicado();
            SCWM2();
        }
    }

    public void SCWM2(){
        if(tokenActual.Token.equals("AND")){
            consumirToken();
            nextToken();
            SCWM3();
        }else if(tokenActual.Token.equals("OR")){
            consumirToken();
            nextToken();
            SCWM3();
        }else{
            //SCWM5();
        }
    }

    public void SCWM3(){
        if(tokenActual.Token.equals("NOT")){
            consumirToken();
            nextToken();
            SCWM4();
        }else{
            SCWM4();
        }
    }

    public void SCWM4(){
        if(tokenActual.Token.equals("(")){
            consumirToken();
            nextToken();
            SearchCWMatch();
            if(tokenActual.Token.equals(")")){
                consumirToken();
                nextToken();
                SCWM5();
            }else{
                printError(")");
            }
        }else{
            Predicado();
            SCWM5();
        }
    }

    public void SCWM5(){
        /*if(tokenActual.Token.equals(",")){
            consumirToken();
            nextToken();
            SearchCWMatch();
        }*/
        SCWM2();
    }

    public void Predicado(){
        if(tokenActual.Token.equals("CONTAINS")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("(")){
                consumirToken();
                nextToken();
                FT1();
                if(tokenActual.Token.equals(",")){
                    consumirToken();
                    nextToken();
                    CSC1();
                    if(tokenActual.Token.equals(")")){
                        consumirToken();
                        nextToken();
                    }else{
                        printError(")");
                    }
                }else{
                    printError(",");
                }
            }else{
                printError("(");
            }
        }else if(tokenActual.Token.equals("FREETEXT")){
            consumirToken();
            nextToken();
            if (tokenActual.Token.equals("(")){
                consumirToken();
                nextToken();
                FT1();
                if(tokenActual.Token.equals(",")){
                    consumirToken();
                    nextToken();
                    if(tokenActual.tipo.equals("Cadena")){
                        consumirToken();
                        nextToken();
                        if(tokenActual.Token.equals(")")){

                        }else{
                            printError(")");
                        }
                    }else{
                        printError("Cadena");
                    }
                }else{
                    printError(",");
                }
            }else{
                printError("(");
            }
        }
    }

    public void CSC1(){
        if(tokenActual.tipo.equals("Cadena")){
            consumirToken();
            nextToken();
        }else if(tokenActual.Token.equals("(")){
            consumirToken();
            nextToken();
            CSC1();
            if(tokenActual.Token.equals(")")){
                consumirToken();
                nextToken();
                CSC2();
            }else{
                printError(")");
            }
        }else{
            printError("Cadena o el simbolo \"(\"");
        }
    }

    public void CSC2(){
        if(tokenActual.Token.equals("AND")){

        }else if(tokenActual.Token.equals("OR") || tokenActual.Token.equals("||") || tokenActual.Token.equals("&&")){

        }
    }

    public void CSC3(){
        if(tokenActual.Token.equals("NOT")){
            consumirToken();
            nextToken();
            CSC1();
        }else{
            CSC1();
        }
    }

    public void PRED1(){
        if(tokenActual.Token.equals("IS")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("NOT")){
                consumirToken();
                nextToken();
                if(tokenActual.Token.equals("NULL")){
                    consumirToken();
                    nextToken();
                }else{
                    printError("NULL");
                }
            }else{
                printError("NOT");
            }
        }else if(tokenActual.Token.equals("NOT")){
            NOT1();
        }else if(tokenActual.Token == ">" || tokenActual.Token == "<" || tokenActual.Token == ">=" || tokenActual.Token == "<=" || tokenActual.Token == "!="){
            Comparadores();
        }else{
            printError("un comparador o NOT o IS ");
        }
    }

    public void NOT1(){
        if(tokenActual.Token.equals("NOT")){
            consumirToken();
            nextToken();
        }
    }

    public void FT1(){
        if(tokenActual.Token.equals("*") || tokenActual.tipo.equals("Identificador")){
            consumirToken();
            nextToken();
        }else{
            printError("* o un Identificador");
        }
    }

    public void PRED2(){
        if(tokenActual.Token.equals(",")){
            consumirToken();
            nextToken();
            ESC();
            PRED2();
        }
    }

    public void PRED3(){
        if(tokenActual.Token.equals("BETWEEN")){
            consumirToken();
            nextToken();
            ESC();
            if(tokenActual.Token.equals("AND")){
                consumirToken();
                nextToken();
                ESC();
            }
        }else if(tokenActual.Token.equals("IN")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals(",")){
                consumirToken();
                nextToken();
                ESC();
                PRED2();
                if(tokenActual.Token.equals(")")){
                    consumirToken();
                    nextToken();
                }else{
                    printError(")");
                }
            }
        }else{
            printError("palabra reservada BETWEEN o IN");
        }
    }

    public void Comparadores(){
        if(tokenActual.Token.equals(">") || tokenActual.Token.equals("<") || tokenActual.Token.equals(">=") || tokenActual.Token.equals("<=") || tokenActual.Token.equals("!=") || tokenActual.Token.equals("=")){
            consumirToken();
            nextToken();
        }else{
            printError("comparador");
        }
    }

    public void ESC(){
        TSC();
        ESCP();
    }

    public void TSC(){
        GSC();
        TSCP();
    }

    public void ESCP(){
        if(tokenActual.Token.equals("+") || tokenActual.Token.equals("-")){
            consumirToken();
            nextToken();
            TSC();
            ESCP();
        }
    }

    public void TSCP(){
        if(tokenActual.Token.equals("*") || tokenActual.Token.equals("/")){
            consumirToken();
            nextToken();
            GSC();
            TSCP();
        }
    }


    public void GSC(){
        if(tokenActual.tipo.equals("Identificador") || tokenActual.tipo.equals("Entero") || tokenActual.tipo.equals("Float")){
            consumirToken();
            nextToken();
        }else if(tokenActual.Token.equals("NULL")){
            consumirToken();
            nextToken();
        }else{
            printError("Un Identificador, Un Entero, Un Float o La palabra reservada NULL");
        }
    }
    /*
    public void EXPI(){
        if(tokenActual.tipo.equals("Identificador") || tokenActual.tipo.equals("Entero") || tokenActual.tipo.equals("Float")){
            consumirToken();
            nextToken();
        }else if(tokenActual.Token.equals("NULL")){
            consumirToken();
            nextToken();
        }else{
            printError("Un Identificador, Un Entero, Un Float o La palabra reservada NULL");
        }
    }
    */
    public void Const(){
        if(tokenActual.Token.equals("NULL") || tokenActual.tipo.equals("Entero") || tokenActual.tipo.equals("Float") || tokenActual.tipo.equals("Cadena")){
            consumirToken();
            nextToken();
        }else{
            printError("constante de tipo float, entera, cadena o boolena");
            //System.out.println("Error en la Linea: " + tokenActual.fila + ", columna: " + tokenActual.columna + ", se esperaba una constante de tipo float, entera, cadena o booleana");
        }

    }

    public void SEXP(){
        SEXP3();
        SEXP2();
    }

    public void SEXP2(){
        if(tokenActual.Token.equals("+") || tokenActual.Token.equals("-")){
            consumirToken();
            nextToken();
            SEXP3();
            SEXP2();
        }
    }

    public void SEXP3(){
        SEXP5();
        SEXP4();
    }

    public void SEXP4(){
        if(tokenActual.Token.equals("*") || tokenActual.Token.equals("/")){
            consumirToken();
            nextToken();
            SEXP5();
            SEXP4();
        }
    }

    public void SEXP5(){
        if(tokenActual.Token.equals("(")){
            consumirToken();
            nextToken();
            SEXP();
        }else if(tokenActual.tipo.equals("Entero") || tokenActual.tipo.equals("Float")){
            consumirToken();
            nextToken();
        }else if(tokenActual.Token.equals("@")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
            }else{
                printError("Identificador");
            }
        }else{
            AGG_FN();
        }
    }

    public void AGG_FN(){
        if(tokenActual.Token.equals("AVG")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("(")){
                consumirToken();
                nextToken();
                SEL_AVG();
                if(tokenActual.Token.equals(")")){
                    consumirToken();
                    nextToken();
                }else{
                    printError(")");
                }
            }else{
                printError("(");
            }
        }else if(tokenActual.Token.equals("COUNT")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("(")){
                consumirToken();
                nextToken();
                SEL_COUNT();
                if(tokenActual.Token.equals(")")){
                    consumirToken();
                    nextToken();
                }else{
                    printError(")");
                }
            }else{
                printError("(");
            }
        }else if(tokenActual.Token.equals("MAX") || tokenActual.Token.equals("MIN") || tokenActual.Token.equals("SUM")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("(")){
                consumirToken();
                nextToken();
                SEL_AGR();
                if(tokenActual.Token.equals(")")){
                    consumirToken();
                    nextToken();
                }else{
                    printError(")");
                }
            }else{
                printError("(");}
        }else{
            printError("Funcion de Agregacion");
        }
    }

    public void SEL_AVG(){
        SEL_AVG1();
        SEL_AVG2();
    }

    public void SEL_AVG1(){
        if(tokenActual.Token.equals("ALL") || tokenActual.Token.equals("DISTINC")){
            consumirToken();
            nextToken();
        }
    }

    public void SEL_AVG2(){
        if(tokenActual.tipo.equals("Identificador")){
            consumirToken();
            nextToken();
            SEL_AVG3();
        }else{
            SEXP();
        }
    }

    public void SEL_AVG3(){
        if(tokenActual.Token.equals(".")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
            }else{
                printError("Identificador");
            }
        }
    }

    public void SEL_COUNT(){
        SEL_COUNT1();
        SEL_COUNT2();
    }

    public void SEL_COUNT1(){
        if(tokenActual.Token.equals("ALL") || tokenActual.Token.equals("DISTINCT")){
            consumirToken();
            nextToken();
        }
    }

    public void SEL_COUNT2(){
        if(tokenActual.Token.equals("*")){
            consumirToken();
            nextToken();
        }else if(tokenActual.tipo.equals("Identificador")){
            consumirToken();
            nextToken();
            SEL_COUNT3();
        }else{
            SEXP();
        }
    }

    public void SEL_COUNT3(){
        if(tokenActual.Token.equals(".")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
            }else{
                printError("Identificador");
            }
        }
    }

    public void SEL_AGR(){
        SEL_AGR1();
        SEL_AGR2();
    }

    public void SEL_AGR1(){
        if(tokenActual.Token.equals("ALL") || tokenActual.Token.equals("DISTINCT")){
            consumirToken();
            nextToken();
        }
    }

    public void SEL_AGR2(){
        if(tokenActual.tipo.equals("Identificador")){
            consumirToken();
            nextToken();
            SEL_AGR3();
        }else{
            SEXP();
        }
    }

    public void SEL_AGR3(){
        if(tokenActual.Token.equals(".")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){

            }else{
                printError("Identificador");
            }
        }
    }
}