package MiniSQL;

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

public class AnalizadorSintactico {

    public ArrayList<MyTOKEN> TOKENS = new ArrayList<MyTOKEN>();
    public MyTOKEN tokenActual;
    public boolean errorSentenciaAcutal = false;
    public int errores = 0;
    public int longitud = 0;
    public int numToken = 0;

    public void Analizar(){
        nextToken();
        Inicio();
        //System.out.print(TOKENS.size());
    }

    public void error(){
        errorSentenciaAcutal = true;
    }

    public void resetErrores(){
        errorSentenciaAcutal = false;
    }

    public AnalizadorSintactico(ArrayList<MyTOKEN> tok){
        TOKENS = tok;
        TOKENS.add(new MyTOKEN("FINARCHIVO", "FINARCHIVO",0,0));
        longitud = TOKENS.size();
    }

    public void printError(String expectedToken){
        System.out.println("Error en la Linea: " + tokenActual.fila + ", columna: " + tokenActual.columna + ", se esperaba: " + expectedToken);
    }

    public void consumirToken(){
        TOKENS.remove(0);
        longitud = longitud - 1;
        //numToken++;
    }

    public void nextToken(){
        tokenActual = TOKENS.get(0);
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
    public void Inicio(){
        if(tokenActual.Token.equals("DELETE")){
            DELETE1();
        }else if(tokenActual.Token.equals("DROP")){
            DROP();
        }else if(tokenActual.Token.equals("ALTER")){
            ALTERP();
        }else if(tokenActual.Token.equals("FINARCHIVO")){
            System.out.println("Se termino de analizar el archivo");
        }
    }

    public void ALTERP(){
        if(tokenActual.Token.equals("ALTER")){
            consumirToken();
            nextToken();
            ALTERP1();
            FinSentencia();
        }
    }

    public void ALTERP1(){
        if(tokenActual.Token.equals("VIEW")){
            ALTERV();
        }else if(tokenActual.Token.equals("USER")){
            ALTERU();
        }else if(tokenActual.Token.equals("DATABASE")){
            ALTERD();
        }else if(tokenActual.Token.equals("TABLE")){
            ALTERT();
        }
    }

    public void ALTERT(){

    }

    public void ALTERD(){
        if(tokenActual.Token.equals("DATABASE")){
            consumirToken();
            nextToken();
            ALTERD1();
        }
    }

    public void ALTERD1(){
        if(tokenActual.Token.equals("CURRENT")){
            consumirToken();
            nextToken();
            ALTERD2();
        }else if(tokenActual.tipo.equals("Identificador")){
            consumirToken();
            nextToken();
            ALTERD2();
        }
    }

    public void ALTERD2(){
        if(tokenActual.Token.equals("COLLATE")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
            }else{
                printError("Identificador");
            }
        }else{
            printError("COLLATE");
        }
    }

    public void ALTERU(){
        if(tokenActual.Token.equals("USER")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
            }else{
                printError("Identificador");
            }
        }else{
            printError("USER");
        }
    }

    public void ALTERV(){
        if(tokenActual.Token.equals("VIEW")){
            consumirToken();
            nextToken();
            ALTERV1();
            ALTERV3();
            /*if(tokenActual.Token.equals("AS")){
                consumirToken();
                nextToken();
                SELECT_STATEMENT();
                ALTERV5();
            }else{
                printError("AS");
            }*/
        }else{
            printError("VIEW");
        }
    }

    public void ALTERV1(){
        if(tokenActual.tipo.equals("Identificador")){
            consumirToken();
            nextToken();
            ALTERV2();
        }else{
            printError("Identificador");
        }
    }

    public void ALTERV2(){
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

    public void ALTERV3(){
        if(tokenActual.Token.equals("(")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
                ALTERV4();
            }else{
                printError("Identificador");
            }
        }
    }

    public void ALTERV4(){
        if(tokenActual.Token.equals(",")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
                ALTERV4();
            }else{
                printError("Identificador");
            }
        }else if(tokenActual.tipo.equals("Identificador")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals(")")){
                consumirToken();
                nextToken();
            }else{
                printError(")");
            }
        }else{
            printError(", o Identificador");
        }
    }

    public void ALTERV5(){
        if(tokenActual.Token.equals("WITH")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("CHECK")){
                consumirToken();
                nextToken();
                if(tokenActual.Token.equals("OPTION")){
                    consumirToken();
                    nextToken();
                }else{
                    printError("OPTION");
                }
            }else{
                printError("CHECK");
            }
        }
    }

    public void DELETE1(){
        if (tokenActual.Token.equals("DELETE")){
            consumirToken();
            nextToken();
            DEL2();
        }else{
            printError("DELETE");
        }
    }

    public void DROP(){
        if(tokenActual.Token.equals("DROP")){
            consumirToken();
            nextToken();
            DROPP();
            FinSentencia();
        }
    }

    public void DROPP(){
        if(tokenActual.Token.equals("TABLE")){
            DROPT();
        }else if(tokenActual.Token.equals("DATABASE")){
            DROPD();
        }else if(tokenActual.Token.equals("USER")){
            DROPU();
        }else if(tokenActual.Token.equals("VIEW")){
            DROPV();
        }else if(tokenActual.Token.equals("INDEX")){
            DROPI();
        }else{
            printError("la palabra reservada TABLE, DATABASE, USER, VIEW o INDEX");
        }
    }

    public void DROPI(){
        if(tokenActual.Token.equals("INDEX")){
            consumirToken();
            nextToken();
            IFEXI();
        }else{
            printError("INDEX");
        }
    }

    public void IFEXI(){
        if(tokenActual.Token.equals("IF")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("EXISTS")){
                consumirToken();
                nextToken();
                IFEXI1();
            }else{
                printError("EXISTS");
            }
        }else{
            IFEXI1();
        }
    }

    public void IFEXI1(){
        if(tokenActual.tipo.equals("Identificador")){
            consumirToken();
            nextToken();
            DROPI1();
        }else{
            printError("Identificador");
        }
    }

    public void DROPI1(){
        if(tokenActual.Token.equals("ON")){
            consumirToken();
            nextToken();
            OBJECT();
            DROPI3();
        }else if(tokenActual.Token.equals(".")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
                DROPI2();
            }else{
                printError("Identificador");
            }
        }else{
            printError(". o la palabra reservada ON");
        }
    }

    public void DROPI2(){
        if(tokenActual.Token.equals(".")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
                DROPI3();
            }else{
                printError("Identificador");
            }
        }else{
            DROPI3();
        }
    }

    public void DROPI3(){
        if(tokenActual.Token.equals(",")){
            consumirToken();
            nextToken();
            IFEXT1();
        }
    }

    public void DROPV(){
        if(tokenActual.Token.equals("VIEW")){
            consumirToken();
            nextToken();
            IFEXV();
        }else{
            printError("VIEW");
        }
    }

    public void IFEXV(){
        if(tokenActual.Token.equals("IF")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("EXISTS")){
                consumirToken();
                nextToken();
                IFEXV1();
            }else{
                printError("EXISTS");
            }
        }else{
            IFEXV1();
        }
    }

    public void IFEXV1(){
        if(tokenActual.tipo.equals("Identificador")){
            consumirToken();
            nextToken();
            IFEXV2();
        }else{
            IFEXV2();
        }
    }

    public void IFEXV2(){
        if(tokenActual.Token.equals(".")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                IFEXV3();
            }else{
                printError("Identificador");
            }
        }else{
            IFEXV3();
        }
    }

    public void IFEXV3(){
        if(tokenActual.Token.equals(",")){
            consumirToken();
            nextToken();
            IFEXV1();
        }
    }

    public void DROPU(){
        if(tokenActual.Token.equals("USER")){
            consumirToken();
            nextToken();
            IFEXU();
        }else{
            printError("USER");
        }
    }
    
    public void IFEXU(){
        if(tokenActual.Token.equals("IF")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("EXISTS")){
                consumirToken();
                nextToken();
                IFEXU1();
            }else{
                printError("EXISTS");
            }
        }else{
            IFEXU1();
        }
    }

    public void IFEXU1(){
        if(tokenActual.tipo.equals("Identificador")){
            consumirToken();
            nextToken();
        }else{
            printError("Identificador");
        }
    }

    public void DROPD(){
        if(tokenActual.Token.equals("DATABASE")){
            consumirToken();
            nextToken();
            IFEXD();
        }
    }

    public void DROPT(){
        if(tokenActual.Token.equals("TABLE")){
            consumirToken();
            nextToken();
            IFEXT();
        }else{
            printError("TABLE");
        }
    }

    public void IFEXD(){
        if(tokenActual.Token.equals("IF")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("EXISTS")){
                consumirToken();
                nextToken();
                IFEXD1();
            }else{
                printError("EXISTS");
            }
        }else{
            IFEXD1();
        }
    }

    public void IFEXD1(){
        if(tokenActual.tipo.equals("Identificador")){
            consumirToken();
            nextToken();
            IFEXD2();
        }
    }
    
    public void IFEXD2(){
        if(tokenActual.Token.equals(",")){
            consumirToken();
            nextToken();
            IFEXD1();
        }
    }

    public void IFEXT(){
        if(tokenActual.Token.equals("IF")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("EXISTS")){
                consumirToken();
                nextToken();
                IFEXT1();
            }else{
                printError("EXISTS");
            }
        }else{
            IFEXT1();
        }
    }

    public void IFEXT1(){
        if(tokenActual.tipo.equals("Identificador")){
            consumirToken();
            nextToken();
            IFEXT2();
        }else{
            printError("Identificador");
        }
    }

    public void IFEXT2(){
        if(tokenActual.Token.equals(".")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
                IFEXT3();
            }else{
                printError("Identificador");
            }
        }else{
            IFEXT3();
        }
    }

    public void IFEXT3(){
        if(tokenActual.Token.equals(".")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
                IFEXT4();
            }else{
                printError("Identificador");
            }
        }else{
            IFEXT4();
        }
    }

    public void IFEXT4(){
        if(tokenActual.Token.equals(",")){
            consumirToken();
            nextToken();
            IFEXT1();
        }
    }

    public void OBJECT(){
        if(tokenActual.tipo.equals("Identificador")){
            consumirToken();
            nextToken();
            OBJ1();
        }
    }

    public void OBJ1(){
        if(tokenActual.Token.equals(".")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
                OBJ2();
            }else{
                printError("Identificador");
            }
        }else{
            OBJ2();
        }
    }

    public void OBJ2(){
        if(tokenActual.Token.equals(".")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
                OBJ3();
            }else{
                printError("Identificador");
            }
        }else{
            OBJ3();
        }
    }

    public void OBJ3(){
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

    public void DROPT2(){
        if(tokenActual.Token.equals("IF")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("EXISTS")){
                consumirToken();
                nextToken();
                DROPT3();
            }else{
                printError("EXISTS");
            }
        }else{
            DROPT3();
        }
    }

    public void DROPT3(){
        OBJECT();
        DROPT4();
    }

    public void DROPT4(){
        if(tokenActual.Token.equals(",")){
            consumirToken();
            nextToken();
            DROPT3();
        }else{
            FinSentencia();
        }
    }

    public void DEL2(){
        if(tokenActual.Token.equals("TOP")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("(")){
                consumirToken();
                nextToken();
                SEXP();
                if(tokenActual.Token.equals(")")){
                    consumirToken();
                    nextToken();
                    DEL2();
                }else{
                    printError(")");
                }
            }else{
                printError("(");
            }
        }else{
            DEL4();
        }
    }

    public void DEL3(){
        if(tokenActual.Token.equals("PERCENT")){
            consumirToken();
            nextToken();
            DEL4();
        }else{
            DEL4();
        }
    }

    public void DEL4(){
        if(tokenActual.Token.equals("FROM")){
            consumirToken();
            nextToken();
            DEL5();
        }else{
            DEL5();
        }
    }

    public void DEL5(){
        if(tokenActual.Token.equals("@")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
            }else{
                printError("Identificador");
            }
        }else if(tokenActual.tipo.equals("Identificador")){
            OBJECT();
            DEL6();
        }else{
            printError("@ID o Identificador");
        }
    }

    public void DEL6(){
        if(tokenActual.Token.equals("OUTPUT")){
            OutputC(); //no se consume token porque en OutputC se consumira
        }else{
            DEL9();
        }
    }

    public void DEL9(){
        if(tokenActual.Token.equals("WHERE")){
            consumirToken();
            nextToken();
            SearchCWMatch();
            FinSentencia();
        }else{
            FinSentencia();
        }
    }

    public void COLNAME(){
        if(tokenActual.tipo.equals("Identificador")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals(".")){
                consumirToken();
                nextToken();
                COLNAME1();
            }else{
                printError(".");
            }
        }else{
            printError("Identificador");
        }
    }

    public void COLNAME1(){
        if(tokenActual.Token.equals("*")){
            consumirToken();
            nextToken();
        }else if(tokenActual.tipo.equals("Identificador")){
            consumirToken();
            nextToken();
        }else{
            printError("* o un Identificador");
        }
    }

    public void DML1(){
        DML2();
        DML3();
    }

    public void DML2(){
        if(tokenActual.tipo.equals("Identificador")){
            COLNAME();
        }else{
            SEXP();
        }
    }

    public void DML3(){
        if(tokenActual.Token.equals("AS")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
                DML4();
            }else{
                printError("Identificador");
            }
        }
    }

    public void DML4(){
        if(tokenActual.Token.equals(",")){
            consumirToken();
            nextToken();
            DML1();
        }
    }

    public void OutputC(){
        if(tokenActual.Token.equals("OUTPUT")){
            consumirToken();
            nextToken();
            DML1();
            OUTCL1();
        }
    }

    public void OUTCL1(){
        if(tokenActual.Token.equals("INTO")){
            consumirToken();
            nextToken();
            OUTCL2();
        }
    }

    public void OUTCL2(){
        if(tokenActual.Token.equals("@")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
                OUTCL3();
            }else{
                printError("Identificador");
            }
        }else if(tokenActual.tipo.equals("Identificador")){
            consumirToken();
            nextToken();
            OUTCL3();
        }else{
            printError("@ o un Identificador");
        }
    }

    public void OUTCL3(){
        if(tokenActual.Token.equals("(")){
            COLST(); //No se consume token por que en COLST se consumira
        }
    }

    public void COLST(){
        if(tokenActual.Token.equals("(")){
            consumirToken();
            nextToken();
            COLST1();
        }else{
            printError("(");
        }
    }

    public void COLST1(){
        if(tokenActual.tipo.equals("Identificador")){
            consumirToken();
            nextToken();
            COLST2();
        }else{
            printError("Identificador");
        }
    }

    public void COLST2(){
        if(tokenActual.Token.equals(",")){
            consumirToken();
            nextToken();
            COLST1();
        }else if(tokenActual.Token.equals(")")){
            consumirToken();
            nextToken();
        }else{
            printError(", o )");
        }
    }

    public void FinSentencia(){
        if(tokenActual.Token.equals(";") || tokenActual.Token.equals("GO")){
                consumirToken();
                nextToken();
                Inicio();
        }else{
            printError("GO o ;");
        }
    }

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

    public void CREATE()

    public void SEED(){
        if(tokenActual.tipo.equals("Entero") || tokenActual.tipo.equals("Float")){
            consumirToken();
            nextToken();
        }else{
            printError("Entero o Float");
        }
    }

    public void COLUMN_DEF(){

    }

    public void COLUMN_DEF2(){

    }

    public void COLUMNDEF3(){

    }

    public void COLUMNDEF4(){

    }

    public void COLUMNDEF5(){

    }

    public void COLUMNDEF6(){

    }

    public void COLUMNDEF7(){

    }

    public void COLUMNDEF8(){

    }

    public void COLUMNDEF9(){

    }

    public void COLUMNDEF10(){

    }

    public void COLUMNDEF11(){

    }

    public void COLUMNDEF12(){

    }

    public void COLUMNDEF13(){

    }



    public void COLUMNCONSTRAINT(){

    }

    public void COLUMNC2(){

    }

    public void COLUMNC3(){

    }

    public void COLUMNC4(){

    }

    public void COLUMNC5(){

    }

    public void COLUMNC6(){

    }

    public void COLUMNC7(){

    }

    public void COLUMNC8(){

    }

    public void COLUMNC9(){

    }

    public void COLUMNC10(){

    }

    public void COLUMNC11(){

    }

    public void COLUMNC12(){

    }

    public void COLUMNC13(){

    }

    public void COLUMNC14(){

    }
    
    public void COLUMNC15(){

    }

    public void COLUMNC16(){

    }

    public void COLUMNC17(){

    }

    public void COL_IND(){

    }

    public void COL_IND1(){

    }

    public void COL_IND2(){

    }

    public void CCD(){

    }

    public void TABLECON(){

    }

    public void TABLECON1(){

    }

    public void TABLECON2(){

    }

    public void TABLECON3(){

    }

    public void TABLECON8(){

    }

    public void TABLECON4(){

    }

    public void TABLECON5(){

    }

    public void TABLECON6(){

    }

    public void TABLECON7(){

    }


}