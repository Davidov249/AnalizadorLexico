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
import java_cup.runtime.*;
import MiniSQL;



%%
%class Lexer
%unicode
%public
//%standalone
%cup
%cupsym Simbolos
%line
%column
%char

//---------------------------------------------------------Expresiones Regulares--------------------------------------------------------

resABSOLUTE = ABSOLUTE 
resACTION = ACTION 
resADA = ADA 
resADD = ADD 
resALL = ALL 
resALLOCATE = ALLOCATE 
resALTER = ALTER 
resAND = AND 
resANY = ANY 
resARE = ARE 
resAS = AS 
resASC = ASC 
resASSERTION = ASSERTION 
resAT = AT 
resAUTHORIZATION = AUTHORIZATION 
resAVG = AVG 
resBACKUP = BACKUP 
resBEGIN = BEGIN 
resBETWEEN = BETWEEN 
resBIT = BIT 
resBIT_LENGTH = BIT_LENGTH 
resBOTH = BOTH 
resBREAK = BREAK 
resBROWSE = BROWSE 
resBULK = BULK 
resBY = BY 
resCASCADE = CASCADE 
resCASCADED = CASCADED 
resCASE = CASE 
resCAST = CAST 
resCATALOG = CATALOG 
resCHAR = CHAR 
resCHAR_LENGTH = CHAR_LENGTH 
resCHARACTER = CHARACTER 
resCHARACHTER_LENGTH = CHARACHTER_LENGTH 
resCHECK = CHECK 
resCHECKPOINT = CHECKPOINT 
resCLOSE = CLOSE 
resCLUSTERED = CLUSTERED 
resCOALESCE = COALESCE 
resCOLLATE = COLLATE 
resCOALLITION = COALLITION 
resCOLUMN = COLUMN 
resCOMMIT = COMMIT 
resCOMPUTE = COMPUTE 
resCONNECT = CONNECT 
resCONNECTION = CONNECTION 
resCONSTRAINT = CONSTRAINT 
resCONSTRAINTS = CONSTRAINTS 
resCONTAINS = CONTAINS 
resCONTAINSTABLE = CONTAINSTABLE 
resCONTINUE = CONTINUE 
resCONVERT = CONVERT 
resCORRESPONDING = CORRESPONDING 
resCOUNT = COUNT 
resCREATE = CREATE 
resCROSS = CROSS 
resCURRENT = CURRENT 
resCURRENT_DATE = CURRENT_DATE 
resCURRENT_TIME = CURRENT_TIME 
resCURRENT_TIMES = CURRENT_TIMESTAMP 
resCURRENT_USER = CURRENT_USER 
resCURSOR = CURSOR 
resDATABASE = DATABASE 
resDATE = DATE 
resDAY = DAY 
resDBCC = DBCC 
resDEALLOCATE = DEALLOCATE 
resDEC = DEC 
resDECIMAL = DECIMAL 
resDECLARE = DECLARE 
resDEFAULT = DEFAULT 
resDEFERRABLE = DEFERRABLE 
resDEFERRED = DEFERRED 
resDELETE = DELETE 
resDENY = DENY 
resDESC = DESC 
resDESCRIBE = DESCRIBE 
resDESCRIPTOR = DESCRIPTOR 
resDIAGNOSTICS = DIAGNOSTICS 
resDISCONNECT = DISCONNECT 
resDISK = DISK 
resDISTINCT = DISTINCT 
resDISTURBED = DISTURBED 
resDOMAIN = DOMAIN 
resDOUBLE = DOUBLE 
resDROP = DROP 
resDUMP = DUMP 
resELSE = ELSE 
resEND = END 
resENDEXEC = END-EXEC 
resERRLVL = ERRLVL 
resESCAPE = ESCAPE 
resEXCEPT = EXCEPT 
resEXCEPTION = EXCEPTION 
resEXEC = EXEC 
resEXECUTE = EXECUTE 
resEXISTS = EXISTS 
resEXIT = EXIT 
resEXTERNAL = EXTERNAL 
resFETCH = FETCH 
resEXTRACT = EXTRACT 
resFALSE = FALSE 
resFILE = FILE 
resFILLFACTOR = FILLFACTOR 
resFIRST = FIRST 
resFOR = FOR 
resFLOAT = FLOAT 
resFOREIGN = FOREIGN 
resFREETEXT = FREETEXT 
resFORTRAN = FORTRAN 
resFOUND = FOUND 
resFROM = FROM 
resFREETEXTTABLE = FREETEXTTABLE 
resFULL = FULL 
resGET = GET 
resGLOBAL = GLOBAL 
resFUNCTION = FUNCTION 
resGO = GO 
resGOTO = GOTO 
resGRANT = GRANT 
resGROUP = GROUP 
resHAVING = HAVING 
resHOLDLOCK = HOLDLOCK 
resHOUR = HOUR 
resIDENTITY = IDENTITY 
resIMMEDIATE = IMMEDIATE 
resIN = IN 
resINCLUDE = INCLUDE 
resINDEX = INDEX 
resINDICATOR = INDICATOR 
resINITIALLY = INITIALLY 
resINNER = INNER 
resIDENTITY_INSERT = IDENTITY_INSERT 
resINPUT = INPUT 
resIDENTITYCOL = IDENTITYCOL 
resIF = IF 
resINSENSITIVE = INSENSITIVE 
resINSERT = INSERT 
resINT = INT 
resINTEGER = INTEGER 
resINTERSECT = INTERSECT 
resINTERVAL = INTERVAL 
resINTO = INTO 
resIS = IS 
resISOLATION = ISOLATION 
resJOIN = JOIN 
resKEY = KEY 
resKILL = KILL 
resLEFT = LEFT 
resLANGUAGE = LANGUAGE 
resLAST = LAST 
resLEADING = LEADING 
resLIKE = LIKE 
resLINENO = LINENO 
resLEVEL = LEVEL 
resLOAD = LOAD 
resMERGE = MERGE 
resLOCAL = LOCAL 
resNATIONAL = NATIONAL 
resLOWER = LOWER 
resNOCHECK = NOCHECK 
resMATCH = MATCH 
resNONCLUSTERED = NONCLUSTERED 
resMAX = MAX 
resNOT = NOT 
resMIN = MIN 
resNULL = NULL 
resMINUTE = MINUTE 
resMODULE = MODULE 
resNULLIF = NULLIF 
resOF = OF 
resMONTH = MONTH 
resNAMES = NAMES 
resOFF = OFF 
resNATURAL = NATURAL 
resOFFSES = OFFSES 
resNCHAR = NCHAR 
resNEXT = NEXT 
resNO = NO 
resON = ON 
resNONE = NONE 
resOPEN = OPEN 
resOPENDATASOURCE = OPENDATASOURCE 
resNUMERIC = NUMERIC 
resOCTET_LENGTH = OCTET_LENGTH 
resOPENQUERY = OPENQUERY 
resOPENROWSET = OPENROWSET 
resOPENXML = OPENXML 
resOPTION = OPTION 
resONLY = ONLY 
resOR = OR 
resORDER = ORDER 
resOUTER = OUTER 
resOVER = OVER 
resPERCENT = PERCENT 
resPIVOT = PIVOT 
resPLAN = PLAN 
resOUTPUT = OUTPUT 
resPRECISION = PRECISION 
resPRIMARY = PRIMARY 
resPRINT = PRINT 
resPROC = PROC 
resOVERLAPS = OVERLAPS 
resPAD = PAD 
resPARTIAL = PARTIAL 
resPROCEDURE = PROCEDURE 
resPASCAL = PASCAL 
resPUBLIC = PUBLIC 
resPOSITION = POSITION 
resRAISERROR = RAISERROR 
resPREPARE = PREPARE 
resREAD = READ 
resPRESERVE = PRESERVE 
resREADTEXT = READTEXT 
resPRIOR = PRIOR 
resRECONFIGURE = RECONFIGURE 
resPRIVILEGES = PRIVILEGES 
resREFERENCES = REFERENCES 
resREPLICATION = REPLICATION 
resREAL = REAL 
resRESTORE = RESTORE 
resRESTRICT = RESTRICT 
resRELATIVE = RELATIVE 
resRETURN = RETURN 
resREVOKE = REVOKE 
resRIGHT = RIGHT 
resROLLBACK = ROLLBACK 
resREVERT = REVERT 
resROWS = ROWS 
resROWCOUNT = ROWCOUNT 
resSCHEMA = SCHEMA 
resSCROLL = SCROLL 
resROWGUIDCOL = ROWGUIDCOL 
resSECOND = SECOND 
resSECTION = SECTION 
resSELECT = SELECT 
resSESSION = SESSION 
resSESSION_USER = SESSION_USER 
resSET = SET 
resSIZE = SIZE 
resRULE = RULE 
resSMALLINT = SMALLINT 
resSAVE = SAVE 
resSOME = SOME 
resSECURITYAUDIT = SECURITYAUDIT 
resSPACE = SPACE 
resSEMANTICKEYPHRASETABLE = SEMANTICKEYPHRASETABLE 
resSQL = SQL 
resSQLCA = SQLCA 
resSEMANTICSIMILARITYDETAILSTABLE = SEMANTICSIMILARITYDETAILSTABLE 
resSQLCODE = SQLCODE 
resSEMANTICSIMILARITYTABLE = SEMANTICSIMILARITYTABLE 
resSQLERROR = SQLERROR 
resSQLSTATE = SQLSTATE 
resSQLWARNING = SQLWARNING 
resSUBSTRING = SUBSTRING 
resSUM = SUM 
resSETUSER = SETUSER 
resSHUTDOWN = SHUTDOWN 
resSYSTEM_USER = SYSTEM_USER 
resSTATISTICS = STATISTICS 
resTABLE = TABLE 
resTEMPORARY = TEMPORARY 
resTHEN = THEN 
resTIME = TIME 
resTIMESTAMP = TIMESTAMP 
resTABLESAMPLE = TABLESAMPLE 
resTIMEZONE_HOUR = TIMEZONE_HOUR 
resTEXTSIZE = TEXTSIZE 
resTIMEZONE_MINUTE = TIMEZONE_MINUTE 
resTO = TO 
resTRAILING = TRAILING 
resTOP = TOP 
resTRANSACTION = TRANSACTION 
resTRAN = TRAN 
resTRANSLATE = TRANSLATE 
resTRANSLATION = TRANSLATION 
resTRIM = TRIM 
resTRIGGER = TRIGGER 
resTRUNCATE = TRUNCATE 
resTRUE = TRUE 
resUNION = UNION 
resUNIQUE = UNIQUE 
resTRY_CONVERT = TRY_CONVERT 
resUNKNOWN = UNKNOWN 
resTSEQUAL = TSEQUAL 
resUPDATE = UPDATE 
resUPPER = UPPER 
resUSAGE = USAGE 
resUSER = USER 
resUNPIVOT = UNPIVOT 
resUSING = USING 
resVALUE = VALUE 
resVALUES = VALUES 
resVARCHAR = VARCHAR 
resVARYING = VARYING 
resUPDATETEXT = UPDATETEXT 
resVIEW = VIEW 
resUSE = USE 
resWHEN = WHEN 
resWHENEVER = WHENEVER 
resWHERE = WHERE 
resWITH = WITH 
resWAITFOR = WAITFOR 
resWORK = WORK 
resWRITE = WRITE 
resYEAR = YEAR 
resWHILE = WHILE 
resZONE = ZONE 
resWITHINGROUP = WITHINGROUP 
resWRITETEXT= WRITETEXT
Entero = [0-9]+
Boolean = [01|NULL]
Float = ([0-9]+\.[0-9]*)|([0-9]+\.[0-9]*[eE][0-9]*)|([0-9]+\.[0-9]*[eE][\+-][0-9]*)
Cadena = \'[^\'\n]*\'
Cadenaerror = (\'[^\'\n]*[\n])|(\'[^\'\n]*)
ComentarioLinea = --[^\n]*
ComentarioMultiliena = ([/][*]+)([^*]|\*+[^/*])*([*]+[/])
//ComentarioMultilienaerror = (\/\*[^\n\*\/]*\n)|(\/\*[^\n\*\/]*)
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
Identificador = [a-zA-Z][a-zA-Z0-9_]*
Espacio = \s+

%{
	public int noToken = 0;	

	/*
    public void nextToken() {

	}
    */


	public void Advertencia(int col, int fil) {
			System.out.println("---- Advertencia: identificador en la linea " + fil + " columna " + col + " excede la longitud permitida, sera truncado. ----");
	;}

	public void ErrorLexico(String token) {
			if(token.equals('\'')){

			}
	;}

	//public ArrayList<MyTOKEN> TOKENS = new ArrayList<MyTOKEN>();

	



%}
%eof{
	
	//AnalizadorSintactico anal = new AnalizadorSintactico(TOKENS);
	//anal.Analizar();
	/*if(anal.errores == 0){
		System.out.println("¡El archivo a sido analizado con exito!");
	}*/
	//AnalizadorSintactico(TOKENS);
	
%eof}

%%
//RESERVADAS 
<YYINITIAL> {resABSOLUTE} { return new Symbol(Simbolos.ABSOLUTE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resACTION} { return new Symbol(Simbolos.ACTION, yycolumn, yyline, yytext() );}

<YYINITIAL> {resADA} { return new Symbol(Simbolos.ADA, yycolumn, yyline, yytext() );}

<YYINITIAL> {resADD} { return new Symbol(Simbolos.ADD, yycolumn, yyline, yytext() );}

<YYINITIAL> {resALL} { return new Symbol(Simbolos.ALL, yycolumn, yyline, yytext() );}

<YYINITIAL> {resALLOCATE} { return new Symbol(Simbolos.ALLOCATE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resALTER} { return new Symbol(Simbolos.ALTER, yycolumn, yyline, yytext() );}

<YYINITIAL> {resAND} { return new Symbol(Simbolos.AND, yycolumn, yyline, yytext() );}

<YYINITIAL> {resANY} { return new Symbol(Simbolos.ANY, yycolumn, yyline, yytext() );}

<YYINITIAL> {resARE} { return new Symbol(Simbolos.ARE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resAS} { return new Symbol(Simbolos.AS, yycolumn, yyline, yytext() );}

<YYINITIAL> {resASC} { return new Symbol(Simbolos.ASC, yycolumn, yyline, yytext() );}

<YYINITIAL> {resASSERTION} { return new Symbol(Simbolos.ASSERTION, yycolumn, yyline, yytext() );}

<YYINITIAL> {resAT} { return new Symbol(Simbolos.AT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resAUTHORIZATION} { return new Symbol(Simbolos.AUTHORIZATION, yycolumn, yyline, yytext() );}

<YYINITIAL> {resAVG} { return new Symbol(Simbolos.AVG, yycolumn, yyline, yytext() );}

<YYINITIAL> {resBACKUP} { return new Symbol(Simbolos.BACKUP, yycolumn, yyline, yytext() );}

<YYINITIAL> {resBEGIN} { return new Symbol(Simbolos.BEGIN, yycolumn, yyline, yytext() );}

<YYINITIAL> {resBETWEEN} { return new Symbol(Simbolos.BETWEEN, yycolumn, yyline, yytext() );}

<YYINITIAL> {resBIT} { return new Symbol(Simbolos.BIT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resBIT_LENGTH} { return new Symbol(Simbolos.BIT_LENGTH, yycolumn, yyline, yytext() );}

<YYINITIAL> {resBOTH} { return new Symbol(Simbolos.BOTH, yycolumn, yyline, yytext() );}

<YYINITIAL> {resBREAK} { return new Symbol(Simbolos.BREAK, yycolumn, yyline, yytext() );}

<YYINITIAL> {resBROWSE} { return new Symbol(Simbolos.BROWSE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resBULK} { return new Symbol(Simbolos.BULK, yycolumn, yyline, yytext() );}

<YYINITIAL> {resBY} { return new Symbol(Simbolos.BY, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCASCADE} { return new Symbol(Simbolos.CASCADE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCASCADED} { return new Symbol(Simbolos.CASCADED, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCASE} { return new Symbol(Simbolos.CASE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCAST} { return new Symbol(Simbolos.CAST, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCATALOG} { return new Symbol(Simbolos.CATALOG, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCHAR} { return new Symbol(Simbolos.CHAR, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCHAR_LENGTH} { return new Symbol(Simbolos.CHAR_LENGTH, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCHARACTER} { return new Symbol(Simbolos.CHARACTER, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCHARACHTER_LENGTH} { return new Symbol(Simbolos.CHARACHTER_LENGTH, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCHECK} { return new Symbol(Simbolos.CHECK, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCHECKPOINT} { return new Symbol(Simbolos.CHECKPOINT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCLOSE} { return new Symbol(Simbolos.CLOSE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCLUSTERED} { return new Symbol(Simbolos.CLUSTERED, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCOALESCE} { return new Symbol(Simbolos.COALESCE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCOLLATE} { return new Symbol(Simbolos.COLLATE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCOALLITION} { return new Symbol(Simbolos.COALLITION, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCOLUMN} { return new Symbol(Simbolos.COLUMN, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCOMMIT} { return new Symbol(Simbolos.COMMIT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCOMPUTE} { return new Symbol(Simbolos.COMPUTE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCONNECT} { return new Symbol(Simbolos.CONNECT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCONNECTION} { return new Symbol(Simbolos.CONNECTION, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCONSTRAINT} { return new Symbol(Simbolos.CONSTRAINT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCONSTRAINTS} { return new Symbol(Simbolos.CONSTRAINTS, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCONTAINS} { return new Symbol(Simbolos.CONTAINS, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCONTAINSTABLE} { return new Symbol(Simbolos.CONTAINSTABLE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCONTINUE} { return new Symbol(Simbolos.CONTINUE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCONVERT} { return new Symbol(Simbolos.CONVERT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCORRESPONDING} { return new Symbol(Simbolos.CORRESPONDING, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCOUNT} { return new Symbol(Simbolos.COUNT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCREATE} { return new Symbol(Simbolos.CREATE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCROSS} { return new Symbol(Simbolos.CROSS, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCURRENT} { return new Symbol(Simbolos.CURRENT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCURRENT_DATE} { return new Symbol(Simbolos.CURRENT_DATE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCURRENT_TIME} { return new Symbol(Simbolos.CURRENT_TIME, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCURRENT_TIMES} { return new Symbol(Simbolos.CURRENT_TIMESTAMP, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCURRENT_USER} { return new Symbol(Simbolos.CURRENT_USER, yycolumn, yyline, yytext() );}

<YYINITIAL> {resCURSOR} { return new Symbol(Simbolos.CURSOR, yycolumn, yyline, yytext() );}

<YYINITIAL> {resDATABASE} { return new Symbol(Simbolos.DATABASE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resDATE} { return new Symbol(Simbolos.DATE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resDAY} { return new Symbol(Simbolos.DAY, yycolumn, yyline, yytext() );}

<YYINITIAL> {resDBCC} { return new Symbol(Simbolos.DBCC, yycolumn, yyline, yytext() );}

<YYINITIAL> {resDEALLOCATE} { return new Symbol(Simbolos.DEALLOCATE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resDEC} { return new Symbol(Simbolos.DEC, yycolumn, yyline, yytext() );}

<YYINITIAL> {resDECIMAL} { return new Symbol(Simbolos.DECIMAL, yycolumn, yyline, yytext() );}

<YYINITIAL> {resDECLARE} { return new Symbol(Simbolos.DECLARE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resDEFAULT} { return new Symbol(Simbolos.DEFAULT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resDEFERRABLE} { return new Symbol(Simbolos.DEFERRABLE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resDEFERRED} { return new Symbol(Simbolos.DEFERRED, yycolumn, yyline, yytext() );}

<YYINITIAL> {resDELETE} { return new Symbol(Simbolos.DELETE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resDENY} { return new Symbol(Simbolos.DENY, yycolumn, yyline, yytext() );}

<YYINITIAL> {resDESC} { return new Symbol(Simbolos.DESC, yycolumn, yyline, yytext() );}

<YYINITIAL> {resDESCRIBE} { return new Symbol(Simbolos.DESCRIBE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resDESCRIPTOR} { return new Symbol(Simbolos.DESCRIPTOR, yycolumn, yyline, yytext() );}

<YYINITIAL> {resDIAGNOSTICS} { return new Symbol(Simbolos.DIAGNOSTICS, yycolumn, yyline, yytext() );}

<YYINITIAL> {resDISCONNECT} { return new Symbol(Simbolos.DISCONNECT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resDISK} { return new Symbol(Simbolos.DISK, yycolumn, yyline, yytext() );}

<YYINITIAL> {resDISTINCT} { return new Symbol(Simbolos.DISTINCT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resDISTURBED} { return new Symbol(Simbolos.DISTURBED, yycolumn, yyline, yytext() );}

<YYINITIAL> {resDOMAIN} { return new Symbol(Simbolos.DOMAIN, yycolumn, yyline, yytext() );}

<YYINITIAL> {resDOUBLE} { return new Symbol(Simbolos.DOUBLE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resDROP} { return new Symbol(Simbolos.DROP, yycolumn, yyline, yytext() );}

<YYINITIAL> {resDUMP} { return new Symbol(Simbolos.DUMP, yycolumn, yyline, yytext() );}

<YYINITIAL> {resELSE} { return new Symbol(Simbolos.ELSE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resEND} { return new Symbol(Simbolos.END, yycolumn, yyline, yytext() );}

<YYINITIAL> {resENDEXEC} { return new Symbol(Simbolos.END-EXEC, yycolumn, yyline, yytext() );}

<YYINITIAL> {resERRLVL} { return new Symbol(Simbolos.ERRLVL, yycolumn, yyline, yytext() );}

<YYINITIAL> {resESCAPE} { return new Symbol(Simbolos.ESCAPE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resEXCEPT} { return new Symbol(Simbolos.EXCEPT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resEXCEPTION} { return new Symbol(Simbolos.EXCEPTION, yycolumn, yyline, yytext() );}

<YYINITIAL> {resEXEC} { return new Symbol(Simbolos.EXEC, yycolumn, yyline, yytext() );}

<YYINITIAL> {resEXECUTE} { return new Symbol(Simbolos.EXECUTE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resEXISTS} { return new Symbol(Simbolos.EXISTS, yycolumn, yyline, yytext() );}

<YYINITIAL> {resEXIT} { return new Symbol(Simbolos.EXIT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resEXTERNAL} { return new Symbol(Simbolos.EXTERNAL, yycolumn, yyline, yytext() );}

<YYINITIAL> {resFETCH} { return new Symbol(Simbolos.FETCH, yycolumn, yyline, yytext() );}

<YYINITIAL> {resEXTRACT} { return new Symbol(Simbolos.EXTRACT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resFALSE} { return new Symbol(Simbolos.FALSE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resFILE} { return new Symbol(Simbolos.FILE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resFILLFACTOR} { return new Symbol(Simbolos.FILLFACTOR, yycolumn, yyline, yytext() );}

<YYINITIAL> {resFIRST} { return new Symbol(Simbolos.FIRST, yycolumn, yyline, yytext() );}

<YYINITIAL> {resFOR} { return new Symbol(Simbolos.FOR, yycolumn, yyline, yytext() );}

<YYINITIAL> {resFLOAT} { return new Symbol(Simbolos.FLOAT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resFOREIGN} { return new Symbol(Simbolos.FOREIGN, yycolumn, yyline, yytext() );}

<YYINITIAL> {resFREETEXT} { return new Symbol(Simbolos.FREETEXT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resFORTRAN} { return new Symbol(Simbolos.FORTRAN, yycolumn, yyline, yytext() );}

<YYINITIAL> {resFOUND} { return new Symbol(Simbolos.FOUND, yycolumn, yyline, yytext() );}

<YYINITIAL> {resFROM} { return new Symbol(Simbolos.FROM, yycolumn, yyline, yytext() );}

<YYINITIAL> {resFREETEXTTABLE} { return new Symbol(Simbolos.FREETEXTTABLE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resFULL} { return new Symbol(Simbolos.FULL, yycolumn, yyline, yytext() );}

<YYINITIAL> {resGET} { return new Symbol(Simbolos.GET, yycolumn, yyline, yytext() );}

<YYINITIAL> {resGLOBAL} { return new Symbol(Simbolos.GLOBAL, yycolumn, yyline, yytext() );}

<YYINITIAL> {resFUNCTION} { return new Symbol(Simbolos.FUNCTION, yycolumn, yyline, yytext() );}

<YYINITIAL> {resGO} { return new Symbol(Simbolos.GO, yycolumn, yyline, yytext() );}

<YYINITIAL> {resGOTO} { return new Symbol(Simbolos.GOTO, yycolumn, yyline, yytext() );}

<YYINITIAL> {resGRANT} { return new Symbol(Simbolos.GRANT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resGROUP} { return new Symbol(Simbolos.GROUP, yycolumn, yyline, yytext() );}

<YYINITIAL> {resHAVING} { return new Symbol(Simbolos.HAVING, yycolumn, yyline, yytext() );}

<YYINITIAL> {resHOLDLOCK} { return new Symbol(Simbolos.HOLDLOCK, yycolumn, yyline, yytext() );}

<YYINITIAL> {resHOUR} { return new Symbol(Simbolos.HOUR, yycolumn, yyline, yytext() );}

<YYINITIAL> {resIDENTITY} { return new Symbol(Simbolos.IDENTITY, yycolumn, yyline, yytext() );}

<YYINITIAL> {resIMMEDIATE} { return new Symbol(Simbolos.IMMEDIATE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resIN} { return new Symbol(Simbolos.IN, yycolumn, yyline, yytext() );}

<YYINITIAL> {resINCLUDE} { return new Symbol(Simbolos.INCLUDE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resINDEX} { return new Symbol(Simbolos.INDEX, yycolumn, yyline, yytext() );}

<YYINITIAL> {resINDICATOR} { return new Symbol(Simbolos.INDICATOR, yycolumn, yyline, yytext() );}

<YYINITIAL> {resINITIALLY} { return new Symbol(Simbolos.INITIALLY, yycolumn, yyline, yytext() );}

<YYINITIAL> {resINNER} { return new Symbol(Simbolos.INNER, yycolumn, yyline, yytext() );}

<YYINITIAL> {resIDENTITY_INSERT} { return new Symbol(Simbolos.IDENTITY_INSERT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resINPUT} { return new Symbol(Simbolos.INPUT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resIDENTITYCOL} { return new Symbol(Simbolos.IDENTITYCOL, yycolumn, yyline, yytext() );}

<YYINITIAL> {resIF} { return new Symbol(Simbolos.IF, yycolumn, yyline, yytext() );}

<YYINITIAL> {resINSENSITIVE} { return new Symbol(Simbolos.INSENSITIVE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resINSERT} { return new Symbol(Simbolos.INSERT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resINT} { return new Symbol(Simbolos.INT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resINTEGER} { return new Symbol(Simbolos.INTEGER, yycolumn, yyline, yytext() );}

<YYINITIAL> {resINTERSECT} { return new Symbol(Simbolos.INTERSECT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resINTERVAL} { return new Symbol(Simbolos.INTERVAL, yycolumn, yyline, yytext() );}

<YYINITIAL> {resINTO} { return new Symbol(Simbolos.INTO, yycolumn, yyline, yytext() );}

<YYINITIAL> {resIS} { return new Symbol(Simbolos.IS, yycolumn, yyline, yytext() );}

<YYINITIAL> {resISOLATION} { return new Symbol(Simbolos.ISOLATION, yycolumn, yyline, yytext() );}

<YYINITIAL> {resJOIN} { return new Symbol(Simbolos.JOIN, yycolumn, yyline, yytext() );}

<YYINITIAL> {resKEY} { return new Symbol(Simbolos.KEY, yycolumn, yyline, yytext() );}

<YYINITIAL> {resKILL} { return new Symbol(Simbolos.KILL, yycolumn, yyline, yytext() );}

<YYINITIAL> {resLEFT} { return new Symbol(Simbolos.LEFT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resLANGUAGE} { return new Symbol(Simbolos.LANGUAGE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resLAST} { return new Symbol(Simbolos.LAST, yycolumn, yyline, yytext() );}

<YYINITIAL> {resLEADING} { return new Symbol(Simbolos.LEADING, yycolumn, yyline, yytext() );}

<YYINITIAL> {resLIKE} { return new Symbol(Simbolos.LIKE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resLINENO} { return new Symbol(Simbolos.LINENO, yycolumn, yyline, yytext() );}

<YYINITIAL> {resLEVEL} { return new Symbol(Simbolos.LEVEL, yycolumn, yyline, yytext() );}

<YYINITIAL> {resLOAD} { return new Symbol(Simbolos.LOAD, yycolumn, yyline, yytext() );}

<YYINITIAL> {resMERGE} { return new Symbol(Simbolos.MERGE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resLOCAL} { return new Symbol(Simbolos.LOCAL, yycolumn, yyline, yytext() );}

<YYINITIAL> {resNATIONAL} { return new Symbol(Simbolos.NATIONAL, yycolumn, yyline, yytext() );}

<YYINITIAL> {resLOWER} { return new Symbol(Simbolos.LOWER, yycolumn, yyline, yytext() );}

<YYINITIAL> {resNOCHECK} { return new Symbol(Simbolos.NOCHECK, yycolumn, yyline, yytext() );}

<YYINITIAL> {resMATCH} { return new Symbol(Simbolos.MATCH, yycolumn, yyline, yytext() );}

<YYINITIAL> {resNONCLUSTERED} { return new Symbol(Simbolos.NONCLUSTERED, yycolumn, yyline, yytext() );}

<YYINITIAL> {resMAX} { return new Symbol(Simbolos.MAX, yycolumn, yyline, yytext() );}

<YYINITIAL> {resNOT} { return new Symbol(Simbolos.NOT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resMIN} { return new Symbol(Simbolos.MIN, yycolumn, yyline, yytext() );}

<YYINITIAL> {resNULL} { return new Symbol(Simbolos.NULL, yycolumn, yyline, yytext() );}

<YYINITIAL> {resMINUTE} { return new Symbol(Simbolos.MINUTE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resMODULE} { return new Symbol(Simbolos.MODULE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resNULLIF} { return new Symbol(Simbolos.NULLIF, yycolumn, yyline, yytext() );}

<YYINITIAL> {resOF} { return new Symbol(Simbolos.OF, yycolumn, yyline, yytext() );}

<YYINITIAL> {resMONTH} { return new Symbol(Simbolos.MONTH, yycolumn, yyline, yytext() );}

<YYINITIAL> {resNAMES} { return new Symbol(Simbolos.NAMES, yycolumn, yyline, yytext() );}

<YYINITIAL> {resOFF} { return new Symbol(Simbolos.OFF, yycolumn, yyline, yytext() );}

<YYINITIAL> {resNATURAL} { return new Symbol(Simbolos.NATURAL, yycolumn, yyline, yytext() );}

<YYINITIAL> {resOFFSES} { return new Symbol(Simbolos.OFFSES, yycolumn, yyline, yytext() );}

<YYINITIAL> {resNCHAR} { return new Symbol(Simbolos.NCHAR, yycolumn, yyline, yytext() );}

<YYINITIAL> {resNEXT} { return new Symbol(Simbolos.NEXT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resNO} { return new Symbol(Simbolos.NO, yycolumn, yyline, yytext() );}

<YYINITIAL> {resON} { return new Symbol(Simbolos.ON, yycolumn, yyline, yytext() );}

<YYINITIAL> {resNONE} { return new Symbol(Simbolos.NONE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resOPEN} { return new Symbol(Simbolos.OPEN, yycolumn, yyline, yytext() );}

<YYINITIAL> {resOPENDATASOURCE} { return new Symbol(Simbolos.OPENDATASOURCE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resNUMERIC} { return new Symbol(Simbolos.NUMERIC, yycolumn, yyline, yytext() );}

<YYINITIAL> {resOCTET_LENGTH} { return new Symbol(Simbolos.OCTET_LENGTH, yycolumn, yyline, yytext() );}

<YYINITIAL> {resOPENQUERY} { return new Symbol(Simbolos.OPENQUERY, yycolumn, yyline, yytext() );}

<YYINITIAL> {resOPENROWSET} { return new Symbol(Simbolos.OPENROWSET, yycolumn, yyline, yytext() );}

<YYINITIAL> {resOPENXML} { return new Symbol(Simbolos.OPENXML, yycolumn, yyline, yytext() );}

<YYINITIAL> {resOPTION} { return new Symbol(Simbolos.OPTION, yycolumn, yyline, yytext() );}

<YYINITIAL> {resONLY} { return new Symbol(Simbolos.ONLY, yycolumn, yyline, yytext() );}

<YYINITIAL> {resOR} { return new Symbol(Simbolos.OR, yycolumn, yyline, yytext() );}

<YYINITIAL> {resORDER} { return new Symbol(Simbolos.ORDER, yycolumn, yyline, yytext() );}

<YYINITIAL> {resOUTER} { return new Symbol(Simbolos.OUTER, yycolumn, yyline, yytext() );}

<YYINITIAL> {resOVER} { return new Symbol(Simbolos.OVER, yycolumn, yyline, yytext() );}

<YYINITIAL> {resPERCENT} { return new Symbol(Simbolos.PERCENT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resPIVOT} { return new Symbol(Simbolos.PIVOT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resPLAN} { return new Symbol(Simbolos.PLAN, yycolumn, yyline, yytext() );}

<YYINITIAL> {resOUTPUT} { return new Symbol(Simbolos.OUTPUT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resPRECISION} { return new Symbol(Simbolos.PRECISION, yycolumn, yyline, yytext() );}

<YYINITIAL> {resPRIMARY} { return new Symbol(Simbolos.PRIMARY, yycolumn, yyline, yytext() );}

<YYINITIAL> {resPRINT} { return new Symbol(Simbolos.PRINT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resPROC} { return new Symbol(Simbolos.PROC, yycolumn, yyline, yytext() );}

<YYINITIAL> {resOVERLAPS} { return new Symbol(Simbolos.OVERLAPS, yycolumn, yyline, yytext() );}

<YYINITIAL> {resPAD} { return new Symbol(Simbolos.PAD, yycolumn, yyline, yytext() );}

<YYINITIAL> {resPARTIAL} { return new Symbol(Simbolos.PARTIAL, yycolumn, yyline, yytext() );}

<YYINITIAL> {resPROCEDURE} { return new Symbol(Simbolos.PROCEDURE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resPASCAL} { return new Symbol(Simbolos.PASCAL, yycolumn, yyline, yytext() );}

<YYINITIAL> {resPUBLIC} { return new Symbol(Simbolos.PUBLIC, yycolumn, yyline, yytext() );}

<YYINITIAL> {resPOSITION} { return new Symbol(Simbolos.POSITION, yycolumn, yyline, yytext() );}

<YYINITIAL> {resRAISERROR} { return new Symbol(Simbolos.RAISERROR, yycolumn, yyline, yytext() );}

<YYINITIAL> {resPREPARE} { return new Symbol(Simbolos.PREPARE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resREAD} { return new Symbol(Simbolos.READ, yycolumn, yyline, yytext() );}

<YYINITIAL> {resPRESERVE} { return new Symbol(Simbolos.PRESERVE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resREADTEXT} { return new Symbol(Simbolos.READTEXT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resPRIOR} { return new Symbol(Simbolos.PRIOR, yycolumn, yyline, yytext() );}

<YYINITIAL> {resRECONFIGURE} { return new Symbol(Simbolos.RECONFIGURE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resPRIVILEGES} { return new Symbol(Simbolos.PRIVILEGES, yycolumn, yyline, yytext() );}

<YYINITIAL> {resREFERENCES} { return new Symbol(Simbolos.REFERENCES, yycolumn, yyline, yytext() );}

<YYINITIAL> {resREPLICATION} { return new Symbol(Simbolos.REPLICATION, yycolumn, yyline, yytext() );}

<YYINITIAL> {resREAL} { return new Symbol(Simbolos.REAL, yycolumn, yyline, yytext() );}

<YYINITIAL> {resRESTORE} { return new Symbol(Simbolos.RESTORE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resRESTRICT} { return new Symbol(Simbolos.RESTRICT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resRELATIVE} { return new Symbol(Simbolos.RELATIVE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resRETURN} { return new Symbol(Simbolos.RETURN, yycolumn, yyline, yytext() );}

<YYINITIAL> {resREVOKE} { return new Symbol(Simbolos.REVOKE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resRIGHT} { return new Symbol(Simbolos.RIGHT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resROLLBACK} { return new Symbol(Simbolos.ROLLBACK, yycolumn, yyline, yytext() );}

<YYINITIAL> {resREVERT} { return new Symbol(Simbolos.REVERT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resROWS} { return new Symbol(Simbolos.ROWS, yycolumn, yyline, yytext() );}

<YYINITIAL> {resROWCOUNT} { return new Symbol(Simbolos.ROWCOUNT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSCHEMA} { return new Symbol(Simbolos.SCHEMA, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSCROLL} { return new Symbol(Simbolos.SCROLL, yycolumn, yyline, yytext() );}

<YYINITIAL> {resROWGUIDCOL} { return new Symbol(Simbolos.ROWGUIDCOL, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSECOND} { return new Symbol(Simbolos.SECOND, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSECTION} { return new Symbol(Simbolos.SECTION, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSELECT} { return new Symbol(Simbolos.SELECT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSESSION} { return new Symbol(Simbolos.SESSION, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSESSION_USER} { return new Symbol(Simbolos.SESSION_USER, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSET} { return new Symbol(Simbolos.SET, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSIZE} { return new Symbol(Simbolos.SIZE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resRULE} { return new Symbol(Simbolos.RULE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSMALLINT} { return new Symbol(Simbolos.SMALLINT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSAVE} { return new Symbol(Simbolos.SAVE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSOME} { return new Symbol(Simbolos.SOME, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSECURITYAUDIT} { return new Symbol(Simbolos.SECURITYAUDIT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSPACE} { return new Symbol(Simbolos.SPACE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSEMANTICKEYPHRASETABLE} { return new Symbol(Simbolos.SEMANTICKEYPHRASETABLE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSQL} { return new Symbol(Simbolos.SQL, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSQLCA} { return new Symbol(Simbolos.SQLCA, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSEMANTICSIMILARITYDETAILSTABLE} { return new Symbol(Simbolos.SEMANTICSIMILARITYDETAILSTABLE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSQLCODE} { return new Symbol(Simbolos.SQLCODE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSEMANTICSIMILARITYTABLE} { return new Symbol(Simbolos.SEMANTICSIMILARITYTABLE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSQLERROR} { return new Symbol(Simbolos.SQLERROR, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSQLSTATE} { return new Symbol(Simbolos.SQLSTATE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSQLWARNING} { return new Symbol(Simbolos.SQLWARNING, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSUBSTRING} { return new Symbol(Simbolos.SUBSTRING, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSUM} { return new Symbol(Simbolos.SUM, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSETUSER} { return new Symbol(Simbolos.SETUSER, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSHUTDOWN} { return new Symbol(Simbolos.SHUTDOWN, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSYSTEM_USER} { return new Symbol(Simbolos.SYSTEM_USER, yycolumn, yyline, yytext() );}

<YYINITIAL> {resSTATISTICS} { return new Symbol(Simbolos.STATISTICS, yycolumn, yyline, yytext() );}

<YYINITIAL> {resTABLE} { return new Symbol(Simbolos.TABLE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resTEMPORARY} { return new Symbol(Simbolos.TEMPORARY, yycolumn, yyline, yytext() );}

<YYINITIAL> {resTHEN} { return new Symbol(Simbolos.THEN, yycolumn, yyline, yytext() );}

<YYINITIAL> {resTIME} { return new Symbol(Simbolos.TIME, yycolumn, yyline, yytext() );}

<YYINITIAL> {resTIMESTAMP} { return new Symbol(Simbolos.TIMESTAMP, yycolumn, yyline, yytext() );}

<YYINITIAL> {resTABLESAMPLE} { return new Symbol(Simbolos.TABLESAMPLE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resTIMEZONE_HOUR} { return new Symbol(Simbolos.TIMEZONE_HOUR, yycolumn, yyline, yytext() );}

<YYINITIAL> {resTEXTSIZE} { return new Symbol(Simbolos.TEXTSIZE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resTIMEZONE_MINUTE} { return new Symbol(Simbolos.TIMEZONE_MINUTE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resTO} { return new Symbol(Simbolos.TO, yycolumn, yyline, yytext() );}

<YYINITIAL> {resTRAILING} { return new Symbol(Simbolos.TRAILING, yycolumn, yyline, yytext() );}

<YYINITIAL> {resTOP} { return new Symbol(Simbolos.TOP, yycolumn, yyline, yytext() );}

<YYINITIAL> {resTRANSACTION} { return new Symbol(Simbolos.TRANSACTION, yycolumn, yyline, yytext() );}

<YYINITIAL> {resTRAN} { return new Symbol(Simbolos.TRAN, yycolumn, yyline, yytext() );}

<YYINITIAL> {resTRANSLATE} { return new Symbol(Simbolos.TRANSLATE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resTRANSLATION} { return new Symbol(Simbolos.TRANSLATION, yycolumn, yyline, yytext() );}

<YYINITIAL> {resTRIM} { return new Symbol(Simbolos.TRIM, yycolumn, yyline, yytext() );}

<YYINITIAL> {resTRIGGER} { return new Symbol(Simbolos.TRIGGER, yycolumn, yyline, yytext() );}

<YYINITIAL> {resTRUNCATE} { return new Symbol(Simbolos.TRUNCATE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resTRUE} { return new Symbol(Simbolos.TRUE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resUNION} { return new Symbol(Simbolos.UNION, yycolumn, yyline, yytext() );}

<YYINITIAL> {resUNIQUE} { return new Symbol(Simbolos.UNIQUE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resTRY_CONVERT} { return new Symbol(Simbolos.TRY_CONVERT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resUNKNOWN} { return new Symbol(Simbolos.UNKNOWN, yycolumn, yyline, yytext() );}

<YYINITIAL> {resTSEQUAL} { return new Symbol(Simbolos.TSEQUAL, yycolumn, yyline, yytext() );}

<YYINITIAL> {resUPDATE} { return new Symbol(Simbolos.UPDATE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resUPPER} { return new Symbol(Simbolos.UPPER, yycolumn, yyline, yytext() );}

<YYINITIAL> {resUSAGE} { return new Symbol(Simbolos.USAGE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resUSER} { return new Symbol(Simbolos.USER, yycolumn, yyline, yytext() );}

<YYINITIAL> {resUNPIVOT} { return new Symbol(Simbolos.UNPIVOT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resUSING} { return new Symbol(Simbolos.USING, yycolumn, yyline, yytext() );}

<YYINITIAL> {resVALUE} { return new Symbol(Simbolos.VALUE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resVALUES} { return new Symbol(Simbolos.VALUES, yycolumn, yyline, yytext() );}

<YYINITIAL> {resVARCHAR} { return new Symbol(Simbolos.VARCHAR, yycolumn, yyline, yytext() );}

<YYINITIAL> {resVARYING} { return new Symbol(Simbolos.VARYING, yycolumn, yyline, yytext() );}

<YYINITIAL> {resUPDATETEXT} { return new Symbol(Simbolos.UPDATETEXT, yycolumn, yyline, yytext() );}

<YYINITIAL> {resVIEW} { return new Symbol(Simbolos.VIEW, yycolumn, yyline, yytext() );}

<YYINITIAL> {resUSE} { return new Symbol(Simbolos.USE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resWHEN} { return new Symbol(Simbolos.WHEN, yycolumn, yyline, yytext() );}

<YYINITIAL> {resWHENEVER} { return new Symbol(Simbolos.WHENEVER, yycolumn, yyline, yytext() );}

<YYINITIAL> {resWHERE} { return new Symbol(Simbolos.WHERE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resWITH} { return new Symbol(Simbolos.WITH, yycolumn, yyline, yytext() );}

<YYINITIAL> {resWAITFOR} { return new Symbol(Simbolos.WAITFOR, yycolumn, yyline, yytext() );}

<YYINITIAL> {resWORK} { return new Symbol(Simbolos.WORK, yycolumn, yyline, yytext() );}

<YYINITIAL> {resWRITE} { return new Symbol(Simbolos.WRITE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resYEAR} { return new Symbol(Simbolos.YEAR, yycolumn, yyline, yytext() );}

<YYINITIAL> {resWHILE} { return new Symbol(Simbolos.WHILE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resZONE} { return new Symbol(Simbolos.ZONE, yycolumn, yyline, yytext() );}

<YYINITIAL> {resWITHINGROUP} { return new Symbol(Simbolos.WITHINGROUP, yycolumn, yyline, yytext() );}

<YYINITIAL> {resWRITETEXT} { return new Symbol(Simbolos.WRITETEXT, yycolumn, yyline, yytext() );}


//FIN RESERVADAS
{Entero} {
	//TOKENS.add(new MyTOKEN(yytext(), "Entero", yycolumn, yyline)) ;
    return new Symbol(Simbolos.Entero, yycolumn, yyline, yytext());
	}

{Boolean} {
	//TOKENS.add(new MyTOKEN(yytext(), "Boolean", yycolumn, yyline));
    return new Symbol(Simbolos.Boolean, yycolumn, yyline, yytext());
	}

{Float} {
	//TOKENS.add(new MyTOKEN(yytext(), "Float", yycolumn, yyline));
    return new Symbol(Simbolos.Float, yycolumn, yyline, yytext());
	}

{Cadena} {
	//TOKENS.add(new MyTOKEN(yytext(), "Cadena", yycolumn, yyline));
    return new Symbol(Simbolos.Cadena, yycolumn, yyline, yytext());
	}

{Cadenaerror} {//ArchivoEscribir = ArchivoEscribir + "Error en la col: " + yycolumn + " fila: " + yyline + " Cadena sin cerrar"+ "\n";
	//TOKENS.add(new MyTOKEN(yytext(), "ERROR", yycolumn, yyline));
    return new Symbol(Simbolos.ERROR, yycolumn, yyline, yytext());
}

{ComentarioLinea} {
	////TOKENS.add(new MyTOKEN(yytext(), "Comentario.Linea", yycolumn, yyline));
    //return new Symbol(Simbolos.ComentarioLinea, yycolumn, yyline, yytext());
	}

{ComentarioMultiliena} {
	
	////TOKENS.add(new MyTOKEN(yytext(), "Comentario.Multilinea", yycolumn, yyline));
    //return new Symbol(Simbolos.ComentarioMultiliena, yycolumn, yyline, yytext());
	//System.out.println(yytext());
	
	}
//{ComentarioMultilienaerror} {ArchivoEscribir = ArchivoEscribir + "Error en la col: " + yycolumn + " fila: " + yyline + " Comentario multilinea sin cerrar"+ "\n";}

{Signomas} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return new Symbol(Simbolos.Signomas, yycolumn, yyline, yytext());
	}

{Signomenos} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return new Symbol(Simbolos.Signomenos, yycolumn, yyline, yytext());
	}

{Signomult} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return new Symbol(Simbolos.Signomult, yycolumn, yyline, yytext());
	}

{Signodiv} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return new Symbol(Simbolos.Signodiv, yycolumn, yyline, yytext());
	}

{Signoporcentaje} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return new Symbol(Simbolos.Signoporcentaje, yycolumn, yyline, yytext());
	}

{Signomayor} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return new Symbol(Simbolos.Signomayor, yycolumn, yyline, yytext());
	}

{Signomayorigual} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return new Symbol(Simbolos.Signomayorigual, yycolumn, yyline, yytext());
	}

{Signomenor} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return new Symbol(Simbolos.Signomenor, yycolumn, yyline, yytext());
	}

{Signomenorigual} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return new Symbol(Simbolos.Signomenorigual, yycolumn, yyline, yytext());
	}

{Signoigual} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return new Symbol(Simbolos.Signoigual, yycolumn, yyline, yytext());
	}

{Signoigualigual} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return new Symbol(Simbolos.Signoigualigual, yycolumn, yyline, yytext());
	}

{Signonotigual} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return new Symbol(Simbolos.Signonotigual, yycolumn, yyline, yytext());
	}

{Signoyy} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return new Symbol(Simbolos.Signoyy, yycolumn, yyline, yytext());
	}

{Signoor} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return new Symbol(Simbolos.Signoor, yycolumn, yyline, yytext());
	}

{Signoadmiracion} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return new Symbol(Simbolos.Signoadmiracion, yycolumn, yyline, yytext());
	}

{Puntoycoma} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return new Symbol(Simbolos.Puntoycoma, yycolumn, yyline, yytext());
	}

{Coma} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return new Symbol(Simbolos.Coma, yycolumn, yyline, yytext());
	}

{Punto} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return new Symbol(Simbolos.Punto, yycolumn, yyline, yytext());
	}

{Corcheteapertura} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return new Symbol(Simbolos.Corcheteapertura, yycolumn, yyline, yytext());
	}

{Corchetecerradura} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return new Symbol(Simbolos.Corchetecerradura, yycolumn, yyline, yytext());
	}

{Corchetes} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return new Symbol(Simbolos.Corchetes, yycolumn, yyline, yytext());
	}

{Parentesisapertura} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return new Symbol(Simbolos.Parentesisapertura, yycolumn, yyline, yytext());
	}

{Parentesiscerradura} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return new Symbol(Simbolos.Parentesiscerradura, yycolumn, yyline, yytext());
	}

{Parentesis} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return new Symbol(Simbolos.Parentesis, yycolumn, yyline, yytext());
	}

{Llaveapertura} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return new Symbol(Simbolos.Llaveapertura, yycolumn, yyline, yytext());
	}

{Llavecerradura} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return new Symbol(Simbolos.Llavecerradura, yycolumn, yyline, yytext());
	}

{Llaves} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return new Symbol(Simbolos.Llaves, yycolumn, yyline, yytext());
	}

{Arroba} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return new Symbol(Simbolos.Arroba, yycolumn, yyline, yytext());
	}

{Sharp} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return new Symbol(Simbolos.Sharp, yycolumn, yyline, yytext());
	}

{Sharpsharp} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return new Symbol(Simbolos.Sharpsharp, yycolumn, yyline, yytext());
	}
 
{Identificador} { 
	if(yylength() < 31)
	{
		//TOKENS.add(new MyTOKEN(yytext(), "Identificador", yycolumn, yyline));
        return new Symbol(Simbolos.Identificador, yycolumn, yyline, yytext());
	}else{
		Advertencia(yyline, yycolumn);
		//TOKENS.add(new MyTOKEN(yytext(), "Identificador", yycolumn, yyline)) ;
        return new Symbol(Simbolos.Identificador, yycolumn, yyline, yytext().substring(0, 30));
	}
}

{Espacio} {/*Hacer nada equisde*/}

[^] {
	//TOKENS.add(new MyTOKEN(yytext(), "ERROR", yycolumn, yyline));
    return new Symbol(Simbolos.ERROR, yycolumn, yyline, yytext());
	//ArchivoEscribir = ArchivoEscribir + "Error en la col: " + yycolumn + " fila: " + yyline + " Caracter no Reconocido" + "\n";
}