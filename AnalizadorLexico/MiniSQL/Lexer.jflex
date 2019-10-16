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



%%
%class MiniSQL
%unicode
%public
%standalone
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

	public void nextToken() {

	}



	public void Advertencia(int col, int fil) {
			System.out.println("---- Advertencia: identificador en la linea " + fil + " columna " + col + " excede la longitud permitida, sera truncado. ----");
	};

	public void ErrorLexico(String token) {
			if(token.equals('\'')){

			}
	};

	public ArrayList<MyTOKEN> TOKENS = new ArrayList<MyTOKEN>();

	



%}
%eof{
	
	AnalizadorSintactico anal = new AnalizadorSintactico(TOKENS);
	anal.Analizar();
	/*if(anal.errores == 0){
		System.out.println("¡El archivo a sido analizado con exito!");
	}*/
	//AnalizadorSintactico(TOKENS);
	
%eof}

%%
//RESERVADAS 
<YYINITIAL> {resABSOLUTE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resACTION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resADA} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resADD} {
	TOKENS.add(new MyTOKEN(yytext(), "Funcion Agregacion", yycolumn, yyline));
	}

<YYINITIAL> {resALL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resALLOCATE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resALTER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resAND} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resANY} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resARE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resAS} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resASC} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resASSERTION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resAT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resAUTHORIZATION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resAVG} {
	TOKENS.add(new MyTOKEN(yytext(), "Funcion Agregacion", yycolumn, yyline));
	}

<YYINITIAL> {resBACKUP} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resBEGIN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resBETWEEN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resBIT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resBIT_LENGTH} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resBOTH} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resBREAK} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resBROWSE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resBULK} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resBY} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCASCADE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCASCADED} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCASE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCAST} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCATALOG} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCHAR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCHAR_LENGTH} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCHARACTER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCHARACHTER_LENGTH} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCHECK} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCHECKPOINT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCLOSE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCLUSTERED} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCOALESCE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCOLLATE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCOALLITION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCOLUMN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCOMMIT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCOMPUTE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCONNECT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCONNECTION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCONSTRAINT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCONSTRAINTS} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCONTAINS} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCONTAINSTABLE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCONTINUE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCONVERT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCORRESPONDING} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCOUNT} {
	TOKENS.add(new MyTOKEN(yytext(), "Funcion Agregacion", yycolumn, yyline));
	}

<YYINITIAL> {resCREATE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCROSS} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCURRENT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCURRENT_DATE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCURRENT_TIME} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCURRENT_TIMES} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCURRENT_USER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resCURSOR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resDATABASE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resDATE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resDAY} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resDBCC} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resDEALLOCATE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resDEC} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resDECIMAL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resDECLARE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resDEFAULT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resDEFERRABLE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resDEFERRED} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resDELETE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resDENY} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resDESC} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resDESCRIBE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resDESCRIPTOR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resDIAGNOSTICS} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resDISCONNECT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resDISK} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resDISTINCT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resDISTURBED} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resDOMAIN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resDOUBLE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resDROP} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resDUMP} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resELSE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resEND} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resENDEXEC} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resERRLVL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resESCAPE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resEXCEPT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resEXCEPTION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resEXEC} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resEXECUTE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resEXISTS} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resEXIT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resEXTERNAL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resFETCH} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resEXTRACT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resFALSE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resFILE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resFILLFACTOR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resFIRST} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resFOR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resFLOAT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resFOREIGN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resFREETEXT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resFORTRAN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resFOUND} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resFROM} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resFREETEXTTABLE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resFULL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resGET} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resGLOBAL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resFUNCTION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resGO} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resGOTO} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resGRANT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resGROUP} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resHAVING} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resHOLDLOCK} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resHOUR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resIDENTITY} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resIMMEDIATE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resIN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resINCLUDE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resINDEX} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resINDICATOR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resINITIALLY} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resINNER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resIDENTITY_INSERT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resINPUT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resIDENTITYCOL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resIF} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resINSENSITIVE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resINSERT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resINT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resINTEGER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resINTERSECT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resINTERVAL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resINTO} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resIS} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resISOLATION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resJOIN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resKEY} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resKILL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resLEFT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resLANGUAGE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resLAST} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resLEADING} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resLIKE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resLINENO} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resLEVEL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resLOAD} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resMERGE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resLOCAL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resNATIONAL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resLOWER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resNOCHECK} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resMATCH} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resNONCLUSTERED} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resMAX} {
	TOKENS.add(new MyTOKEN(yytext(), "Funcion Agregacion", yycolumn, yyline));
	}

<YYINITIAL> {resNOT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resMIN} {
	TOKENS.add(new MyTOKEN(yytext(), "Funcion Agregacion", yycolumn, yyline));
	}

<YYINITIAL> {resNULL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resMINUTE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resMODULE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resNULLIF} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resOF} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resMONTH} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resNAMES} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resOFF} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resNATURAL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resOFFSES} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resNCHAR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resNEXT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resNO} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resON} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resNONE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resOPEN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resOPENDATASOURCE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resNUMERIC} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resOCTET_LENGTH} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resOPENQUERY} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resOPENROWSET} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resOPENXML} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resOPTION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resONLY} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resOR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resORDER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resOUTER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resOVER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resPERCENT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resPIVOT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resPLAN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resOUTPUT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resPRECISION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resPRIMARY} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resPRINT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resPROC} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resOVERLAPS} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resPAD} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resPARTIAL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resPROCEDURE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resPASCAL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resPUBLIC} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resPOSITION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resRAISERROR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resPREPARE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resREAD} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resPRESERVE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resREADTEXT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resPRIOR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resRECONFIGURE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resPRIVILEGES} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resREFERENCES} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resREPLICATION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resREAL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resRESTORE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resRESTRICT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resRELATIVE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resRETURN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resREVOKE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resRIGHT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resROLLBACK} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resREVERT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resROWS} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resROWCOUNT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSCHEMA} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSCROLL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resROWGUIDCOL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSECOND} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSECTION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSELECT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSESSION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSESSION_USER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSET} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSIZE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resRULE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSMALLINT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSAVE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSOME} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSECURITYAUDIT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSPACE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSEMANTICKEYPHRASETABLE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSQL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSQLCA} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSEMANTICSIMILARITYDETAILSTABLE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSQLCODE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSEMANTICSIMILARITYTABLE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSQLERROR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSQLSTATE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSQLWARNING} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSUBSTRING} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSUM} {
	TOKENS.add(new MyTOKEN(yytext(), "Funcion Agregacion", yycolumn, yyline));
	}

<YYINITIAL> {resSETUSER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSHUTDOWN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSYSTEM_USER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resSTATISTICS} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resTABLE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resTEMPORARY} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resTHEN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resTIME} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resTIMESTAMP} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resTABLESAMPLE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resTIMEZONE_HOUR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resTEXTSIZE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resTIMEZONE_MINUTE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resTO} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resTRAILING} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resTOP} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resTRANSACTION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resTRAN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resTRANSLATE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resTRANSLATION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resTRIM} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resTRIGGER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resTRUNCATE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resTRUE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resUNION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resUNIQUE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resTRY_CONVERT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resUNKNOWN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resTSEQUAL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resUPDATE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resUPPER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resUSAGE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resUSER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resUNPIVOT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resUSING} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resVALUE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resVALUES} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resVARCHAR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resVARYING} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resUPDATETEXT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resVIEW} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resUSE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resWHEN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resWHENEVER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resWHERE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resWITH} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resWAITFOR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resWORK} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resWRITE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resYEAR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resWHILE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resZONE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resWITHINGROUP} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

<YYINITIAL> {resWRITETEXT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}
//FIN RESERVADAS
{Entero} {
	TOKENS.add(new MyTOKEN(yytext(), "Entero", yycolumn, yyline)); 
	}

{Boolean} {
	TOKENS.add(new MyTOKEN(yytext(), "Boolean", yycolumn, yyline));
	}

{Float} {
	TOKENS.add(new MyTOKEN(yytext(), "Float", yycolumn, yyline));
	}

{Cadena} {
	TOKENS.add(new MyTOKEN(yytext(), "Cadena", yycolumn, yyline));
	}

{Cadenaerror} {//ArchivoEscribir = ArchivoEscribir + "Error en la col: " + yycolumn + " fila: " + yyline + " Cadena sin cerrar"+ "\n";
	TOKENS.add(new MyTOKEN(yytext(), "ERROR", yycolumn, yyline));
}

{ComentarioLinea} {
	//TOKENS.add(new MyTOKEN(yytext(), "Comentario.Linea", yycolumn, yyline));
	}

{ComentarioMultiliena} {
	
	//TOKENS.add(new MyTOKEN(yytext(), "Comentario.Multilinea", yycolumn, yyline));
	//System.out.println(yytext());
	
	}
//{ComentarioMultilienaerror} {ArchivoEscribir = ArchivoEscribir + "Error en la col: " + yycolumn + " fila: " + yyline + " Comentario multilinea sin cerrar"+ "\n";}

{Signomas} {
	TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
	}

{Signomenos} {
	TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
	}

{Signomult} {
	TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
	}

{Signodiv} {
	TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
	}

{Signoporcentaje} {
	TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
	}

{Signomayor} {
	TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
	}

{Signomayorigual} {
	TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
	}

{Signomenor} {
	TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
	}

{Signomenorigual} {
	TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
	}

{Signoigual} {
	TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
	}

{Signoigualigual} {
	TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
	}

{Signonotigual} {
	TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
	}

{Signoyy} {
	TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
	}

{Signoor} {
	TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
	}

{Signoadmiracion} {
	TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
	}

{Puntoycoma} {
	TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
	}

{Coma} {
	TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
	}

{Punto} {
	TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
	}

{Corcheteapertura} {
	TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
	}

{Corchetecerradura} {
	TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
	}

{Corchetes} {
	TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
	}

{Parentesisapertura} {
	TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
	}

{Parentesiscerradura} {
	TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
	}

{Parentesis} {
	TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
	}

{Llaveapertura} {
	TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
	}

{Llavecerradura} {
	TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
	}

{Llaves} {
	TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
	}

{Arroba} {
	TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
	}

{Sharp} {
	TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
	}

{Sharpsharp} {
	TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
	}
 
{Identificador} { 
	if(yylength() < 31)
	{
		TOKENS.add(new MyTOKEN(yytext(), "Identificador", yycolumn, yyline));
	}else{
		Advertencia(yyline, yycolumn);
		TOKENS.add(new MyTOKEN(yytext(), "Identificador", yycolumn, yyline)); 
	}
}

{Espacio} {/*Hacer nada equisde*/}

[^] {
	TOKENS.add(new MyTOKEN(yytext(), "ERROR", yycolumn, yyline));
	//ArchivoEscribir = ArchivoEscribir + "Error en la col: " + yycolumn + " fila: " + yyline + " Caracter no Reconocido" + "\n";
}