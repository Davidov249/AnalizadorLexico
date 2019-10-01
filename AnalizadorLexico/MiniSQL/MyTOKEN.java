package MiniSQL;

import java.lang.String;

public class MyTOKEN {
    String Token;
    String tipo;
    int columna;
    int fila;
    //boolean errlexico;

    public MyTOKEN(String Tk, String ti, int col, int fil/*, boolean err*/){
        Token = Tk;
        tipo = ti;
        columna = col;
        fila = fil;
        //errlexico = err;
    }
}