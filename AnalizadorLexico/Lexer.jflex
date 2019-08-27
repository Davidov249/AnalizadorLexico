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

%%
%class MiniSQL
%unicode
%public
%standalone
%line
%column
%char
Entero = [0-9]+
Boolean = [01|NULL]
Float = ([0-9]+.[0-9]*)|([0-9]+.[0-9]*[eE][0-9]*)|([0-9]+.[0-9]*[eE][\+-][0-9]*)
Cadena = \'[^\'\n]*\'
Cadenaerror = (\'[^\'\n]*[\n])|(\'[^\'\n]*)
ComentarioLinea = --[^\n]*
ComentarioMultiliena = \/\*[^(\*\/)]*\*\/
ComentarioMultilienaerror = (\/\*[^\n\*\/]*\n)|(\/\*[^\n\*\/]*)
Signomas = \+
Signomenos = -
Signomult = \*
Signodiv = \/
Signoporcentaje = %
Signomayor = >
Signomayorigual = >=
Signomenor = < 
Signomenorigual = <=
Signoigual = =
Signoigualigual = ==
Signonotigual = \!=
Signoyy = &&
Signoor = \|\|
Signoadmiracion = \!
Puntoycoma = \;
Coma = ,
Punto = \.
Corcheteapertura = \[
Corchetecerradura = \]
Corchetes = \[\]
Parentesisapertura = \(
Parentesiscerradura = \)
Parentesis = \(\)
Llaveapertura = \{
Llavecerradura = \}
Llaves = \{\}
Arroba = @
Sharp = #
Sharpsharp = ##
Identificador = [_a-zA-Z][a-zA-Z0-9]*
Espacio = \s+

%{
    String File = "";
    String ArchivoEscribir = "";
    Scanner scanner = new Scanner(System.in);
%}
%eof{
	System.out.println("Inserte nombre de archivo");
	File = scanner.nextLine();
	try{
		PrintWriter writer = new PrintWriter(File + ".out", "UTF-8");
		writer.print(ArchivoEscribir);
		writer.close();
	}catch (Exception e){
		System.err.println("Error: " + e.getMessage());
	}
%eof}

%%

{Entero} { ArchivoEscribir = ArchivoEscribir + "Entero" + yytext(); }

{Boolean} {ArchivoEscribir = ArchivoEscribir + "Boolean" + yytext();}

{Float} {ArchivoEscribir = ArchivoEscribir + "Float" + yytext();}

{Cadena} {ArchivoEscribir = ArchivoEscribir + "Cadena" + yytext();}

{Cadenaerror} {ArchivoEscribir = ArchivoEscribir + "Error" + yytext();}

{ComentarioLinea} {ArchivoEscribir = ArchivoEscribir + "Comentario" + yytext();}

{ComentarioMultiliena} {ArchivoEscribir = ArchivoEscribir + "Comentariomult" + yytext();}

{ComentarioMultilienaerror} {ArchivoEscribir = ArchivoEscribir + "Errormulti" + yytext();}

{Signomas} {ArchivoEscribir = ArchivoEscribir + "+" + yytext();}

{Signomenos} {ArchivoEscribir = ArchivoEscribir +"-" + yytext();}

{Signomult} {ArchivoEscribir = ArchivoEscribir + "*" + yytext();}

{Signodiv} {ArchivoEscribir = ArchivoEscribir + "/" + yytext();}

{Signoporcentaje} {ArchivoEscribir = ArchivoEscribir + "%" + yytext();}

{Signomayor} {ArchivoEscribir = ArchivoEscribir + ">" + yytext();}

{Signomayorigual} {ArchivoEscribir = ArchivoEscribir + ">=" + yytext();}

{Signomenor} {ArchivoEscribir = ArchivoEscribir + "<" + yytext();}

{Signomenorigual} {ArchivoEscribir = ArchivoEscribir + "<=" + yytext();}

{Signoigual} {ArchivoEscribir = ArchivoEscribir + "=" + yytext();}

{Signoigualigual} {ArchivoEscribir = ArchivoEscribir + "==" + yytext();}

{Signonotigual} {ArchivoEscribir = ArchivoEscribir + "!" + yytext();}

{Signoyy} {ArchivoEscribir = ArchivoEscribir + "&&" + yytext();}

{Signoor} {ArchivoEscribir = ArchivoEscribir + "||" + yytext();}

{Signoadmiracion} {ArchivoEscribir = ArchivoEscribir + "!" + yytext();}

{Puntoycoma} {ArchivoEscribir = ArchivoEscribir + ";" + yytext();}

{Coma} {ArchivoEscribir = ArchivoEscribir + "," + yytext();}

{Punto} {ArchivoEscribir = ArchivoEscribir + "." + yytext();}

{Corcheteapertura} {ArchivoEscribir = ArchivoEscribir + "[" + yytext();}

{Corchetecerradura} {ArchivoEscribir = ArchivoEscribir + "]" + yytext();}

{Corchetes} {ArchivoEscribir = ArchivoEscribir + "[]" + yytext();}

{Parentesisapertura} {ArchivoEscribir = ArchivoEscribir + "(" + yytext();}

{Parentesiscerradura} {ArchivoEscribir = ArchivoEscribir + ")" + yytext();}

{Parentesis} {ArchivoEscribir = ArchivoEscribir + "()" + yytext();}

{Llaveapertura} {ArchivoEscribir = ArchivoEscribir + "{" + yytext();}

{Llavecerradura} {ArchivoEscribir = ArchivoEscribir + "}" + yytext();}

{Llaves} {ArchivoEscribir = ArchivoEscribir + "{}" + yytext();}

{Arroba} {ArchivoEscribir = ArchivoEscribir + "@" + yytext();}

{Sharp} {ArchivoEscribir = ArchivoEscribir + "#" + yytext();}

{Sharpsharp} {ArchivoEscribir = ArchivoEscribir + "##" + yytext();}
 
{Identificador} { 
	if(yylength() < 31)
	{
		ArchivoEscribir = ArchivoEscribir + "Identificador" + yytext();
	}else{
	ArchivoEscribir = ArchivoEscribir + "Identificador" + yytext().substring(0,31); }
}

{Espacio} {/*Hacer nada equisde*/}

[^] {
	ArchivoEscribir = ArchivoEscribir + "Error" + yytext();
		 }