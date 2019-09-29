package MiniSQL;

import java.lang.String;

public class MyTOKEN {
    String Token;
    String tipo;
    int columna;
    int fila;

    public MyTOKEN(String Tk, String ti, int col, int fil){
        Token = Tk;
        tipo = ti;
        columna = col;
        fila = fil;
    }
}