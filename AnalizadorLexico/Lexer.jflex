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
Reservadas = (ABSOLUTE|ACTION|ADA|ADD|ALL|ALLOCATE|ALTER|AND|ANY|ARE|AS|ASC|ASSERTION|AT|AUTHORIZATION|AVG|BACKUP|BEGIN|BETWEEN|BIT|BIT_LENGTH|BOTH|BREAK|BROWSE|BULK|BY|CASCADE|CASCADED|CASE|CAST|CATALOG|CHAR|CHAR_LENGTH|CHARACTER|CHARACHTER_LENGTH|CHECK|CHECKPOINT|CLOSE|CLUSTERED|COALESCE|COLLATE|COALLITION|COLUMN|COMMIT|COMPUTE|CONNECT|CONNECTION|CONSTRAINT|CONSTRAINTS|CONTAINS|CONTAINSTABLE|CONTINUE|CONVERT|CORRESPONDING|COUNT|CREATE|CROSS|CURRENT|CURRENT_DATE|CURRENT_TIME|CURRENT_TIMES|CURRENT_USER|CURSOR|DATABASE|DATE|DAY|DBCC|DEALLOCATE|DEC|DECIMAL|DECLARE|DEFAULT|DEFERRABLE|DEFERRED|DELETE|DENY|DESC|DESCRIBE|DESCRIPTOR|DIAGNOSTICS|DISCONNECT|DISK|DISTINCT|DISTURBED|DOMAIN|DOUBLE|DROP|DUMP|ELSE|END|END-EXEC|ERRLVL|ESCAPE|EXCEPT|EXCEPTION|EXEC|EXECUTE|EXISTS|EXIT|EXTERNAL|FETCH|EXTRACT|FALSE|FILE|FILLFACTOR|FIRST|FOR|FLOAT|FOREIGN|FREETEXT|FORTRAN|FOUND|FROM|FREETEXTTABLE|FULL|GET|GLOBAL|FUNCTION|GO|GOTO|GRANT|GROUP|HAVING|HOLDLOCK|HOUR|IDENTITY|IMMEDIATE|IN|INCLUDE|INDEX|INDICATOR|INITIALLY|INNER|IDENTITY_INSERT|INPUT|IDENTITYCOL|IF|INSENSITIVE|INSERT|INT|INTEGER|INTERSECT|INTERVAL|INTO|IS|ISOLATION|JOIN|KEY|KILL|LEFT|LANGUAGE|LAST|LEADING|LIKE|LINENO|LEVEL|LOAD|MERGE|LOCAL|NATIONAL|LOWER|NOCHECK|MATCH|NONCLUSTERED|MAX|NOT|MIN|NULL|MINUTE|MODULE|NULLIF|OF|MONTH|NAMES|OFF|NATURAL|OFFSES|NCHAR|NEXT|NO|ON|NONE|OPEN|OPENDATASOURCE|NUMERIC|OCTET_LENGTH|OPENQUERY|OPENROWSET|OPENXML|OPTION|ONLY|OR|ORDER|OUTER|OVER|PERCENT|PIVOT|PLAN|OUTPUT|PRECISION|PRIMARY|PRINT|PROC|OVERLAPS|PAD|PARTIAL|PROCEDURE|PASCAL|PUBLIC|POSITION|RAISERROR|PREPARE|READ|PRESERVE|READTEXT|PRIOR|RECONFIGURE|PRIVILEGES|REFERENCES|REPLICATION|REAL|RESTORE|RESTRICT|RELATIVE|RETURN|REVOKE|RIGHT|ROLLBACK|REVERT|ROWS|ROWCOUNT|SCHEMA|SCROLL|ROWGUIDCOL|SECOND|SECTION|SELECT|SESSION|SESSION_USER|SET|SIZE|RULE|SMALLINT|SAVE|SOME|SECURITYAUDIT|SPACE|SEMANTICKEYPHRASETABLE|SQL|SQLCA|SEMANTICSIMILARITYDETAILSTABLE|SQLCODE|SEMANTICSIMILARITYTABLE|SQLERROR|SQLSTATE|SQLWARNING|SUBSTRING|SUM|SETUSER|SHUTDOWN|SYSTEM_USER|STATISTICS|TABLE|TEMPORARY|THEN|TIME|TIMESTAMP|TABLESAMPLE|TIMEZONE_HOUR|TEXTSIZE|TIMEZONE_MINUTE|TO|TRAILING|TOP|TRANSACTION|TRAN|TRANSLATE|TRANSLATION|TRIM|TRIGGER|TRUNCATE|TRUE|UNION|UNIQUE|TRY_CONVERT|UNKNOWN|TSEQUAL|UPDATE|UPPER|USAGE|USER|UNPIVOT|USING|VALUE|VALUES|VARCHAR|VARYING|UPDATETEXT|VIEW|USE|WHEN|WHENEVER|WHERE|WITH|WAITFOR|WORK|WRITE|YEAR|WHILE|ZONE|WITHINGROUP|WRITETEXT)
Entero = [0-9]+
Boolean = [01|NULL]
Float = ([0-9]+\.[0-9]*)|([0-9]+\.[0-9]*[eE][0-9]*)|([0-9]+\.[0-9]*[eE][\+-][0-9]*)
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
		System.out.println("El archivo a sido generado con exito");
	}catch (Exception e){
		System.err.println("Error: " + e.getMessage());
	}
%eof}

%%

{Reservadas} {ArchivoEscribir = ArchivoEscribir + "Reservada" + " | " + yytext() + " | " + yycolumn + " | " + yyline + "\n";}

{Entero} { ArchivoEscribir = ArchivoEscribir + "Entero" + " | " + yytext()+ " | " + yycolumn + " | " + yyline + "\n"; }

{Boolean} {ArchivoEscribir = ArchivoEscribir + "Boolean" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Float} {ArchivoEscribir = ArchivoEscribir + "Float" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Cadena} {ArchivoEscribir = ArchivoEscribir + "Cadena" + " | "+ yytext().substring(0, yylength() - 1) + " | " + yycolumn + " | " + yyline + "\n";}

{Cadenaerror} {ArchivoEscribir = ArchivoEscribir + "Error en la col: " + yycolumn + " fila: " + yyline + " Cadena sin cerrar"+ "\n";}

{ComentarioLinea} {ArchivoEscribir = ArchivoEscribir + "Comentario" + " | "+ yytext().substring(0, yylength() - 1) + " | " + yycolumn + " | " + yyline + "\n";}

{ComentarioMultiliena} {ArchivoEscribir = ArchivoEscribir + "Comentariomult" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{ComentarioMultilienaerror} {ArchivoEscribir = ArchivoEscribir + "Error en la col: " + yycolumn + " fila: " + yyline + " Comentario multilinea sin cerrar"+ "\n";}

{Signomas} {ArchivoEscribir = ArchivoEscribir + "Operador" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Signomenos} {ArchivoEscribir = ArchivoEscribir +"Operador" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Signomult} {ArchivoEscribir = ArchivoEscribir +"Operador" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Signodiv} {ArchivoEscribir = ArchivoEscribir + "Operador" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Signoporcentaje} {ArchivoEscribir = ArchivoEscribir + "Operador"+ " | " + yytext()+ " | " + yycolumn + " | " + yyline+ "\n";}

{Signomayor} {ArchivoEscribir = ArchivoEscribir + "Operador" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Signomayorigual} {ArchivoEscribir = ArchivoEscribir + "Operador" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Signomenor} {ArchivoEscribir = ArchivoEscribir + "Operador" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Signomenorigual} {ArchivoEscribir = ArchivoEscribir + "Operador" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Signoigual} {ArchivoEscribir = ArchivoEscribir + "Operador"+ " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Signoigualigual} {ArchivoEscribir = ArchivoEscribir + "Operador" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Signonotigual} {ArchivoEscribir = ArchivoEscribir + "Operador" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Signoyy} {ArchivoEscribir = ArchivoEscribir + "Operador" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Signoor} {ArchivoEscribir = ArchivoEscribir + "Operador" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Signoadmiracion} {ArchivoEscribir = ArchivoEscribir +"Operador" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Puntoycoma} {ArchivoEscribir = ArchivoEscribir + "Simbolo" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Coma} {ArchivoEscribir = ArchivoEscribir + "Simbolo" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Punto} {ArchivoEscribir = ArchivoEscribir + "Simbolo"+ " | " + yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Corcheteapertura} {ArchivoEscribir = ArchivoEscribir + "Operador"+ " | " + yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Corchetecerradura} {ArchivoEscribir = ArchivoEscribir + "Operador" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Corchetes} {ArchivoEscribir = ArchivoEscribir +"Operador" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Parentesisapertura} {ArchivoEscribir = ArchivoEscribir +"Operador"+ " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Parentesiscerradura} {ArchivoEscribir = ArchivoEscribir + "Operador"+ " | " + yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Parentesis} {ArchivoEscribir = ArchivoEscribir + "Operador" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Llaveapertura} {ArchivoEscribir = ArchivoEscribir +"Operador" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Llavecerradura} {ArchivoEscribir = ArchivoEscribir + "Operador" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Llaves} {ArchivoEscribir = ArchivoEscribir + "Operador" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Arroba} {ArchivoEscribir = ArchivoEscribir + "Simbolo" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Sharp} {ArchivoEscribir = ArchivoEscribir + "Simbolo" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}

{Sharpsharp} {ArchivoEscribir = ArchivoEscribir + "Simbolo" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";}
 
{Identificador} { 
	if(yylength() < 31)
	{
		ArchivoEscribir = ArchivoEscribir + "Identificador" + " | "+ yytext()+ " | " + yycolumn + " | " + yyline + "\n";
	}else{
	ArchivoEscribir = ArchivoEscribir + "Identificador" + " | "+ yytext().substring(0,31) + " Advertencia: Identificador truncado" + "\n"; }
}

{Espacio} {/*Hacer nada equisde*/}

[^] {
	ArchivoEscribir = ArchivoEscribir + "Error en la col: " + yycolumn + " fila: " + yyline + " Caracter no Reconocido" + "\n";
		 }