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
        }else if(tokenActual.Token.equals("TRUNCATE")){
            TRUNC();
        }else if(tokenActual.Token.equals("FINARCHIVO")){
            System.out.println("Se termino de analizar el archivo");
        }
    }

    public void TRUNC(){
        if(tokenActual.Token.equals("TRUNCATE")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("TABLE")){
                consumirToken();
                nextToken();
                OBJECT();
                FinSentencia();
            }
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
        if(tokenActual.Token.equals("TABLE")){
            consumirToken();
            nextToken();
            OBJECT();
            ALTERT1();
        }
    }

    public void ALTER1(){
        if(tokenActual.Token.equals("ALTER")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("COLUMN")){
                consumirToken();
                nextToken();
                if(tokenActual.tipo.equals("Identificador")){
                    consumirToken();
                    nextToken();
                    ALTERT1();
                }else{
                    printError("Identificador");
                }
            }else{
                printError("COLUMN");
            }
        }else if(tokenActual.Token.equals("ADD")){
            consumirToken();
            nextToken();
            ALTERT8();
        }else if(tokenActual.Token.equals("DROP")){
            consumirToken();
            nextToken();
            ALTERT10();
        }
    }

    public void ALTERT1(){
        if(tokenActual.tipo.equals("Identificador")){
            consumirToken();
            nextToken();
            ALTERT2();
        }else{
            ALTERT6();
        }
    }

    public void ALTERT2(){
        if(tokenActual.Token.equals(".")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
                ALTERT3();
            }else{
                printError("Identificador");
            }
        }else{
            ALTERT2();
        }
    }

    public void ENT(){
        if(tokenActual.Token.equals(",")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Entero")){
                consumirToken();
                nextToken();
            }else{
                printError("Entero");
            }
        }
    }

    public void ALTERT3(){
        if(tokenActual.Token.equals("(")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Entero")){
                consumirToken();
                nextToken();
                ENT();
                if(tokenActual.Token.equals(")")){
                    consumirToken();
                    nextToken();
                    ALTERT4();
                }else{
                    printError(")");
                }
            }else{
                printError("Entero");
            }
        }else{
            ALTERT4();
        }
    }

    public void ALTERT4(){
        if(tokenActual.Token.equals("COLLATE")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
                ALTERT5();
            }else{
                printError("Identificador");
            }
        }else{
            ALTERT5();
        }
    }

    public void ALTERT5(){
        if(tokenActual.Token.equals("NULL")){
            consumirToken();
            nextToken();
        }else if(tokenActual.Token.equals("NOT")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("NULL")){
                consumirToken();
                nextToken();
            }else{
                printError("NULL");
            }
        }
    }

    public void ALTERT6(){
        if(tokenActual.Token.equals("ADD")){
            consumirToken();
            nextToken();
            ALTERT7();
        }else if(tokenActual.Token.equals("DROP")){
            consumirToken();
            nextToken();
            ALTERT7();
        }else{
            printError("ADD o DROP");
        }
    }
    
    public void ALTERT7(){
        if(tokenActual.Token.equals("ROWGUIDCOL")){
            consumirToken();
            nextToken();
        }else if(tokenActual.Token.equals("NOT")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("FOR")){
                consumirToken();
                nextToken();
                if(tokenActual.Token.equals("REPLICATION")){
                    consumirToken();
                    nextToken();
                }else{
                    printError("REPLICATION");
                }
            }else{
                printError("FOR");
            }
        }else{
            printError("NOT o ROWGUIDCOL");
        }
    }

    public void ALTERT8(){
        if(tokenActual.tipo.equals("Identificador")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("AS")){
                CCD();
                ALTERT9();
            }else if(tokenActual.Token.equals("BIT") || tokenActual.Token.equals("INT") || tokenActual.Token.equals("INTEGER") || tokenActual.Token.equals("FLOAT") || tokenActual.Token.equals("VARCHAR") || tokenActual.Token.equals("DATE") || tokenActual.Token.equals("REAL") || tokenActual.Token.equals("DECIMAL") || tokenActual.Token.equals("NUMERIC") || tokenActual.Token.equals("SMALLINT") || tokenActual.Token.equals("TIME") || tokenActual.Token.equals("CHAR") || tokenActual.Token.equals("NCHAR")){
                COLUMN_DEF();
                ALTERT9();
            }
        }else if(tokenActual.Token.equals("CONSTRAINT")){
            consumirToken();
            nextToken();
        }else{
            printError("Identificador o DATATYPE");
        }
    }

    public void ALTERT9(){
        if(tokenActual.Token.equals(",")){ 
            consumirToken();
            nextToken();
            ALTERT8();
        }
    }

    public void ALTERT10(){
        if(tokenActual.Token.equals("COLUMN")){
            consumirToken();
            nextToken();
            ALTERT12();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
                ALTERT13();
            }else{
                printError("Identificador");
            }
        }else{
            ALTERT11();
            ALTERT12();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
                ALTERT13();
            }
        }
    }

    public void ALTERT11(){
        if(tokenActual.Token.equals("CONSTRAINT")){
            consumirToken();
            nextToken();
        }
    }

    public void ALTERT12(){
        if(tokenActual.Token.equals("IF")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("EXISTS")){
                consumirToken();
                nextToken();
            }else{
                printError("EXISTS");
            }
        }
    }

    public void ALTERT13(){
        if(tokenActual.Token.equals(",")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
                ALTERT13();
            }else{
                printError("Identificador");
            }
        }
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

    public void CREATE(){
        CREATE();
        CREATEP();
        FinSentencia();
    }
    
    public void CREATEP(){
        if(tokenActual.Token.equals("TABLE")){
            consumirToken();
            nextToken();
        }
    }

    public void CREATET1(){
        OBJECT();
        CREATET2();
        CREATET5();
    }

    public void CREATET2(){
        if(tokenActual.tipo.equals("Identificador")){
            consumirToken();
            nextToken();
            CREATET4();
            COLUMNC4();
        }else if(tokenActual.Token.equals("INDEX")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("Identificador")){
                consumirToken();
                nextToken();
                TABLECON2();
                if(tokenActual.Token.equals("(")){
                    consumirToken();
                    nextToken();
                    TABLECON8();
                    if(tokenActual.Token.equals(")")){
                        consumirToken();
                        nextToken();
                        COLUMNC4();
                    }else{
                        printError(")");
                    }
                }else{
                    printError("(");
                }
            }
        }else if(tokenActual.Token.equals("CONSTRAINT")){
            consumirToken();
            nextToken();
            TABLECON();
        }else if(tokenActual.Token.equals("PRIMARY") || tokenActual.Token.equals("UNIQUE") || tokenActual.Token.equals("FOREIGN") || tokenActual.Token.equals("CHECK")){
            consumirToken();
            nextToken();
            TABLECON1();
        }else{
            printError("Identificador, INDEX, CONSTRAINT, PRIMARY, UNIQUE, FOREIGN o CHECK");
        }
    }

    public void CREATET3(){
        if(tokenActual.Token.equals(",")){
            consumirToken();
            nextToken();
            TABLECON();
            CREATET3();
        }
    }

    public void CREATET4(){
        if(tokenActual.Token.equals("AS")){
            consumirToken();
            nextToken();
        }else if(tokenActual.Token.equals("PRIMARY") || tokenActual.Token.equals("UNIQUE") || tokenActual.Token.equals("FOREIGN") || tokenActual.Token.equals("CHECK")){

        }
    }

    public void CREATET5(){
        if(tokenActual.Token.equals(",")){
            consumirToken();
            nextToken();
            CREATET2();
        }
    }

    public void SEED(){
        if(tokenActual.tipo.equals("Entero") || tokenActual.tipo.equals("Float")){
            consumirToken();
            nextToken();
        }else{
            printError("Entero o Float");
        }
    }

    public void COLUMN_DEF(){
        if(tokenActual.tipo.equals("Identificador")){
            consumirToken();
            nextToken();
            DATATYPE();
            COLUMN_DEF2();
        }
    }

    public void COLUMN_DEF2(){
        if(tokenActual.Token.equals("COLLATE")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
                COLUMNDEF3();
            }else{
                printError("Identificador");
            }
        }else{
            COLUMNDEF3();
        }
    }

    public void COLUMNDEF3(){
        if(tokenActual.Token.equals("CONSTRAINT")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
                COLUMNDEF4();
            }else{
                printError("Identificador");
            }
        }else{
            COLUMNDEF5();
        }
    }

    public void COLUMNDEF4(){
        if(tokenActual.Token.equals("DEFAULT")){
            consumirToken();
            nextToken();
            Const();
            COLUMNDEF5();
        }else{
            COLUMNDEF5();
        }
    }

    public void COLUMNDEF5(){
        if(tokenActual.Token.equals("IDENTITY")){
            consumirToken();
            nextToken();
            COLUMNDEF6();
        }else{
            COLUMNDEF7();
        }
    }

    public void COLUMNDEF6(){
        if(tokenActual.Token.equals("(")){
            consumirToken();
            nextToken();
            SEED();
            if(tokenActual.Token.equals(",")){
                consumirToken();
                nextToken();
                SEED();
                if(tokenActual.Token.equals(")")){
                    consumirToken();
                    nextToken();
                    COLUMNDEF7();
                }else{
                    printError(")");
                }
            }else{
                printError(",");
            }
        }else{
            COLUMNDEF7();
        }
    }

    public void COLUMNDEF7(){
        if(tokenActual.Token.equals("NOT")){
            consumirToken();
            nextToken();
            COLUMNDEF8();
        }else{
            COLUMNDEF9();
        }
    }

    public void COLUMNDEF8(){
        if(tokenActual.Token.equals("FOR")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("REPLIACTION")){
                consumirToken();
                nextToken();
                COLUMNDEF9();
            }else{
                printError("REPLICATION");
            }
        }else if(tokenActual.Token.equals("NULL")){
            consumirToken();
            nextToken();
            COLUMNDEF10();
        }else{
            COLUMNDEF10();
        }
    }

    public void COLUMNDEF9(){
        if(tokenActual.Token.equals("NOT")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("NULL")){
                consumirToken();
                nextToken();
            }else{
                printError("NULL");
            }
        }else if(tokenActual.Token.equals("NULL")){
            consumirToken();
            nextToken();
        }else{
            COLUMNDEF10();
        }
    }

    public void COLUMNDEF10(){
        if(tokenActual.Token.equals("ROWGUIDCONTROL")){
            consumirToken();
            nextToken();
            COLUMNDEF11();
        }else{
            COLUMNDEF11();
        }
    }

    public void COLUMNDEF11(){
        if(tokenActual.Token.equals("CONSTRAINT")){
            consumirToken();
            nextToken();
            COLUMNDEF13();
            COLUMNDEF12();
        }else{
            COLUMNDEF12();
        }
    }

    public void COLUMNDEF12(){
        COL_IND();
    }

    public void COLUMNDEF13(){
        if(tokenActual.Token.equals(",")){
            consumirToken();
            nextToken();
            COLUMNCONSTRAINT();
            COLUMNDEF13();
        }
    }



    public void COLUMNCONSTRAINT(){
        if(tokenActual.Token.equals("CONSTRAINT")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
                COLUMNC12();
            }else{
                printError("Identificador");
            }
        }else{
            COLUMNC12();
        }
    }

    public void COLUMNC2(){
        if(tokenActual.Token.equals("PRIMARY")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("KEY")){
                consumirToken();
                nextToken();
                COLUMNC3();
            }else{
                printError("KEY");
            }
        }else if(tokenActual.Token.equals("UNIQUE")){
            consumirToken();
            nextToken();
            COLUMNC3();
        }else if(tokenActual.Token.equals("FOREIGN")){
            consumirToken();
            nextToken();
            COLUMNC5();
        }else if(tokenActual.Token.equals("REFERENCES")){
            consumirToken();
            nextToken();
            COLUMNC5();
        }else if(tokenActual.Token.equals("CHECK")){
            consumirToken();
            nextToken();
            COLUMNC16();
        }
    }

    public void COLUMNC3(){
        if(tokenActual.Token.equals("CLUSTERED")){
            consumirToken();
            nextToken();
            COLUMNC4();
        }else if(tokenActual.Token.equals("NONCLUSTERED")){
            consumirToken();
            nextToken();
            COLUMNC4();
        }else{
            COLUMNC4();
        }
    }  

    public void COLUMNC4(){
        if(tokenActual.Token.equals("ON")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
                if(tokenActual.Token.equals("(")){
                    consumirToken();
                    nextToken();
                    if(tokenActual.Token.equals("Identificador")){
                        consumirToken();
                        nextToken();
                        if(tokenActual.Token.equals(")")){
                            consumirToken();
                            nextToken();
                        }else{
                            printError(")");
                        }
                    }else{
                        printError("Identificador");
                    }
                }else{
                    printError("(");
                }
            }else{
                printError("Identificador");
            }
        }else if(tokenActual.Token.equals("Identificador")){
            consumirToken();
            nextToken();
        }
    }

    public void COLUMNC5(){
        if(tokenActual.Token.equals("FOREIGN")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("KEY")){
                consumirToken();
                nextToken();
                COLUMNC6();
            }else{
                printError("KEY");
            }
        }else{
            COLUMNC6();
        }
    }

    public void COLUMNC6(){
        if(tokenActual.Token.equals("REFERENCES")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
                COLUMNC7();
            }else{
                printError("Identificador");
            }
        }else{
            printError("REFERENCES");
        }
    }

    public void COLUMNC7(){
        if(tokenActual.Token.equals(".")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
                COLUMNC8();
            }else{
                printError("Identificador");
            }
        }else{
            COLUMNC8();
        }
    }

    public void COLUMNC8(){
        if(tokenActual.Token.equals("(")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
                COLUMNC10();
                if(tokenActual.Token.equals(")")){
                    consumirToken();
                    nextToken();
                    COLUMNC9();
                }else{ 
                    printError(")");
                }
            }else{
                printError("Identificador");
            }
        }else{
            COLUMNC9();
        }
    }

    public void COLUMNC9(){
        if(tokenActual.Token.equals("ON")){
            consumirToken();
            nextToken();
            COLUMNC11();
        }else{
            COLUMNC15();
        }
    }

    public void COLUMNC10(){

    }

    public void COLUMNC11(){
        if(tokenActual.Token.equals("DELETE")){
            consumirToken();
            nextToken();
            COLUMNC12();
            COLUMNC14();
        }else if(tokenActual.Token.equals("UPDATE")){
            consumirToken();
            nextToken();
            COLUMNC12();
            COLUMNC14();
        }else{
            printError("DELETE o UPDATE");
        }
    }

    public void COLUMNC12(){
        if(tokenActual.Token.equals("NO")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("ACTION")){
                consumirToken();
                nextToken();
            }else{
                printError("ACTION");
            }
        }else if(tokenActual.Token.equals("CASCADE")){
            consumirToken();
            nextToken();
        }else if(tokenActual.Token.equals("SET")){
            consumirToken();
            nextToken();
            COLUMNC13();
        }else{
            printError("NO, CASCADE o SET");
        }
    }

    public void COLUMNC13(){
        if(tokenActual.Token.equals("NULL")){
            consumirToken();
            nextToken();
        }else if(tokenActual.Token.equals("DEFAULT")){
            consumirToken();
            nextToken();
        }else{
            printError("NULL o DEFAULT");
        }
    }

    public void COLUMNC14(){
        if(tokenActual.Token.equals("ON")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("UPDATE")){
                consumirToken();
                nextToken();
                COLUMNC12();
                COLUMNC15();
            }else{
                printError("UPDATE");
            }
        }else{
            COLUMNC15();
        }
    }
    
    public void COLUMNC15(){
        if(tokenActual.Token.equals("NOT")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("FOR")){
                consumirToken();
                nextToken();
                if(tokenActual.Token.equals("REPLICATION")){
                    consumirToken();
                    nextToken();
                }else{
                    printError("REPLICATION");
                }
            }else{
                printError("FOR");
            }
        }
    }

    public void COLUMNC16(){
        if(tokenActual.Token.equals("CHECK")){
            consumirToken();
            nextToken();
            COLUMNC17();
            if(tokenActual.Token.equals("(")){
                consumirToken();
                nextToken();
                EXPRESION();
                if(tokenActual.Token.equals(")")){
                    consumirToken();
                    nextToken();
                }else{
                    printError(")");
                }
            }else{
                printError("(");
            }
        }else{
            printError("CHECK");
        }
    }

    public void COLUMNC17(){
        if(tokenActual.Token.equals("NOT")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("FOR")){
                consumirToken();
                nextToken();
                if(tokenActual.Token.equals("REPLICATION")){
                    consumirToken();
                    nextToken();
                }else{
                    printError("REPLICATION");
                }
            }else{
                printError("FOR");
            }
        }
    }

    public void COL_IND(){
        if(tokenActual.Token.equals("INDEX")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
                COL_IND1();
                COL_IND2();
            }else{
                printError("Identificador");
            }
        }else{
            printError("INDEX");
        }
    }

    public void COL_IND1(){
        if(tokenActual.Token.equals("CLUSTERED")){
            consumirToken();
            nextToken();
        }else if(tokenActual.Token.equals("NONCLUSTERED")){
            consumirToken();
            nextToken();
        }
    }

    public void COL_IND2(){
        COLUMNC4();
    }

    public void CCD(){
        if(tokenActual.tipo.equals("Identificador")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("AS")){
                consumirToken();
                nextToken();
                if(tokenActual.tipo.equals("Identificador")){
                    consumirToken();
                    nextToken();
                    COLUMNC2();
                }else{
                    printError("Identificador");
                }
            }else{
                printError("AS");
            }
        }else{
            printError("Identificador");
        }
    }

    public void TABLECON(){
        if(tokenActual.Token.equals("CONSTRAINT")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
                TABLECON1();
            }else{
                printError("Identificador");
            }
        }else{
            TABLECON1();
        }
    }

    public void TABLECON1(){
        if(tokenActual.Token.equals("PRIMARY")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("KEY")){
                consumirToken();
                nextToken();
                TABLECON2();
                TABLECON3();
            }else{
                printError("KEY");
            }
        }else if(tokenActual.Token.equals("UNIQUE")){
            consumirToken();
            nextToken();
            TABLECON2();
            TABLECON3();
        }else if(tokenActual.Token.equals("FOREIGN")){
            consumirToken();
            nextToken();
            if(tokenActual.Token.equals("KEY")){
                consumirToken();
                nextToken();
                if(tokenActual.Token.equals("(")){
                    consumirToken();
                    nextToken();
                    if(tokenActual.tipo.equals("Identificador")){
                        consumirToken();
                        nextToken();
                        TABLECON7();
                        if(tokenActual.Token.equals(")")){
                            consumirToken();
                            nextToken();
                            COLUMNC6();
                        }else{
                            printError(")");
                        }
                    }else{
                        printError("Identificador");
                    }
                }else{
                    printError("(");
                }
            }else{
                printError("KEY");
            }
        }else if(tokenActual.Token.equals("CHECK")){
            consumirToken();
            nextToken();
            COLUMNC16();
        }else{
            printError("PRIMARY, UNIQUE, FOREIGN o CHECK");
        }
    }

    public void TABLECON2(){
        if(tokenActual.Token.equals("CLUSTERED")){
            consumirToken();
            nextToken();
        }else if(tokenActual.Token.equals("NONCLUSTERED")){
            consumirToken();
            nextToken();
        }
    }

    public void TABLECON3(){
        if(tokenActual.Token.equals("(")){
            consumirToken();
            nextToken();
            TABLECON8();
            if(tokenActual.Token.equals(")")){
                consumirToken();
                nextToken();
                COLUMNC4();
            }else{
                printError(")");
            }
        }else{
            printError("(");
        }
    }

    public void TABLECON8(){
        if(tokenActual.tipo.equals("Identificador")){
            consumirToken();
            nextToken();
            TABLECON4();
        }else{
            printError("Identificador");
        }
    }

    public void TABLECON4(){
        if(tokenActual.Token.equals("ASC")){
            consumirToken();
            nextToken();
            TABLECON6();
        }else if(tokenActual.Token.equals("DESC")){
            consumirToken();
            nextToken();
            TABLECON6();
        }else{
            TABLECON6();
        }
    }

    public void TABLECON6(){
        if(tokenActual.Token.equals(",")){
            consumirToken();
            nextToken();
            TABLECON8();
        }
    }

    public void TABLECON7(){
        if(tokenActual.Token.equals(",")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
                TABLECON7();
            }else{
                printError("Identificador");
            }
        }
    }

    public void TABIND(){
        if(tokenActual.Token.equals("INDEX")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
                TABLECON2();
                if(tokenActual.Token.equals("(")){
                    consumirToken();
                    nextToken();
                    TABLECON8();
                    if(tokenActual.Token.equals(")")){
                        consumirToken();
                        nextToken();
                        COLUMNC4();
                    }else{
                        printError(")");
                    }
                }else{
                    printError("(");
                }
            }else{
                printError("Identificador");
            }
        }else{
            printError("INDEX");
        }
    }

    public void DATATYPE(){
        if(tokenActual.tipo.equals("Identificador")){
            consumirToken();
            nextToken();
            DATATYPE2();
        }else{
            DATATYPE3();
        }
    }

    public void DATATYPE2(){
        if(tokenActual.Token.equals(".")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Identificador")){
                consumirToken();
                nextToken();
            }else{
                printError("Identificador");
            }
        }else{
            printError(".");
        }
    }

    public void DATATYPE3(){
        if(tokenActual.Token.equals("BIT")){
            consumirToken();
            nextToken();
            DATATYPE4();
        }else if(tokenActual.Token.equals("INT")){
            consumirToken();
            nextToken();
            DATATYPE4();
        }else if(tokenActual.Token.equals("INTEGER")){
            consumirToken();
            nextToken();
            DATATYPE4();
        }else if(tokenActual.Token.equals("FLOAT")){
            consumirToken();
            nextToken();
            DATATYPE4();
        }else if(tokenActual.Token.equals("VARCHAR")){
            consumirToken();
            nextToken();
            DATATYPE4();
        }else if(tokenActual.Token.equals("DATE")){
            consumirToken();
            nextToken();
            DATATYPE4();
        }else if(tokenActual.Token.equals("REAL")){
            consumirToken();
            nextToken();
            DATATYPE4();
        }else if(tokenActual.Token.equals("DECIMAL")){
            consumirToken();
            nextToken();
            DATATYPE4();
        }else if(tokenActual.Token.equals("NUMERIC")){
            consumirToken();
            nextToken();
            DATATYPE4();
        }else if(tokenActual.Token.equals("SMALLINT")){
            consumirToken();
            nextToken();
            DATATYPE4();
        }else if(tokenActual.Token.equals("TIME")){
            consumirToken();
            nextToken();
            DATATYPE4();
        }else if(tokenActual.Token.equals("CHAR")){
            consumirToken();
            nextToken();
            DATATYPE4();
        }else if(tokenActual.Token.equals("NCHAR")){
            consumirToken();
            nextToken();
            DATATYPE4();
        }else{
            printError("BIT, INT, INTEGER, FLOAT, VARCHAR, DATE, REAL, DECIMAL, NUMERIC, SMALLINT, TIME, CHAR, NCHAR");
        }
    }

    public void DATATYPE4(){
        if(tokenActual.Token.equals("(")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Entero")){
                consumirToken();
                nextToken();
                DATATYPE5();
            }else{
                printError("Entero");
            }
        }
    }

    public void DATATYPE5(){
        if(tokenActual.Token.equals(",")){
            consumirToken();
            nextToken();
            if(tokenActual.tipo.equals("Entero")){
                consumirToken();
                nextToken();
                if(tokenActual.Token.equals(")")){
                    consumirToken();
                    nextToken();
                }else{
                    printError(")");
                }
            }else{
                printError("Entero");
            }
        }else if(tokenActual.Token.equals(")")){
            consumirToken();
            nextToken();
        }else{
            printError(", o )");
        }
    }
}