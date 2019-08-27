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
	}catch (Exception e){
		System.err.println("Error: " + e.getMessage());
	}
%eof}

%%

{Reservadas} {ArchivoEscribir = ArchivoEscribir + "Reservada" + yytext();}

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