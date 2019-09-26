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

    public List<MyTOKEN> TOKENS = new ArrayList<MyTOKEN>();
    public MyTOKEN tokenActual;
    public boolean errorSentenciaAcutal = false;

    public void error(){
        errorSentenciaAcutal = true;
    }

    public void resetErrores(){
        errorSentenciaAcutal = false;
    }

    public AnalizadorSintactico(List<MyTOKEN> tok){
        TOKENS = tok;
    }

    public void printError(String expectedToken){
        System.out.println("Error en la Linea: " + tokenActual.fila + ", columna: " + tokenActual.columna + ", se esperaba: " + expectedToken);
    }

    public void consumirToken(){
        TOKENS.remove(0);
    }

    public void nextToken(){
        tokenActual = TOKENS.get(0);
    }

    public void SearchC(){
        SearchWMatch();
        Search2();
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
        }else if()
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
            E();
            PRED2();
        }
    }

    public void PRED3(){
        if(tokenActual.Token.equals("BETWEEN")){
            consumirToken();
            nextToken();
            E();
        }else if(tokenActual.Token.equals("IN")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals(",")){
                consumirToken();
                nextToken();
                E();
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
        if(tokenActual.Token.equals(">") || tokenActual.Token.equals("<") || tokenActual.Token.equals(">=") || tokenActual.Token.equals("<=") || tokenActual.Token.equals("!=")){

        }
    }

    public void E(){

    }

    public void Const(){
        if(tokenActual.Token.equals("NULL") || tokenActual.tipo.equals("Entero") || tokenActual.tipo.equals("Float") || tokenActual.tipo.equals("Cadena")){
            consumirToken();
            nextToken();
        }else{
            printError("constante de tipo float, entera, cadena o boolena");
            //System.out.println("Error en la Linea: " + tokenActual.fila + ", columna: " + tokenActual.columna + ", se esperaba una constante de tipo float, entera, cadena o booleana");
        }

    }
}