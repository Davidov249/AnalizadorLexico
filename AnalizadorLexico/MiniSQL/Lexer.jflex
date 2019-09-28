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
import AnalizadorSintactico.AnalizadorSintactico;
import AnalizadorSintactico.MyTOKEN;

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
resCURRENT_TIMES = CURRENT_TIMES 
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
ComentarioMultiliena = \/\*[^(\*\/)]*\*\/
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
Identificador = [a-zA-Z][a-zA-Z_]*
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

	

	public List<MyTOKEN> TOKENS = new ArrayList<MyTOKEN>();
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
{resABSOLUTE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resACTION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resADA} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resADD} {
	TOKENS.add(new MyTOKEN(yytext(), "Funcion Agregacion", yycolumn, yyline));
	}

{resALL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resALLOCATE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resALTER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resAND} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resANY} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resARE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resAS} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resASC} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resASSERTION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resAT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resAUTHORIZATION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resAVG} {
	TOKENS.add(new MyTOKEN(yytext(), "Funcion Agregacion", yycolumn, yyline));
	}

{resBACKUP} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resBEGIN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resBETWEEN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resBIT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resBIT_LENGTH} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resBOTH} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resBREAK} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resBROWSE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resBULK} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resBY} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCASCADE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCASCADED} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCASE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCAST} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCATALOG} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCHAR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCHAR_LENGTH} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCHARACTER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCHARACHTER_LENGTH} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCHECK} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCHECKPOINT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCLOSE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCLUSTERED} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCOALESCE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCOLLATE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCOALLITION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCOLUMN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCOMMIT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCOMPUTE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCONNECT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCONNECTION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCONSTRAINT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCONSTRAINTS} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCONTAINS} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCONTAINSTABLE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCONTINUE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCONVERT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCORRESPONDING} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCOUNT} {
	TOKENS.add(new MyTOKEN(yytext(), "Funcion Agregacion", yycolumn, yyline));
	}

{resCREATE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCROSS} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCURRENT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCURRENT_DATE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCURRENT_TIME} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCURRENT_TIMES} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCURRENT_USER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resCURSOR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resDATABASE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resDATE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resDAY} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resDBCC} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resDEALLOCATE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resDEC} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resDECIMAL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resDECLARE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resDEFAULT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resDEFERRABLE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resDEFERRED} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resDELETE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resDENY} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resDESC} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resDESCRIBE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resDESCRIPTOR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resDIAGNOSTICS} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resDISCONNECT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resDISK} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resDISTINCT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resDISTURBED} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resDOMAIN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resDOUBLE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resDROP} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resDUMP} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resELSE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resEND} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resENDEXEC} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resERRLVL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resESCAPE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resEXCEPT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resEXCEPTION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resEXEC} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resEXECUTE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resEXISTS} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resEXIT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resEXTERNAL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resFETCH} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resEXTRACT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resFALSE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resFILE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resFILLFACTOR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resFIRST} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resFOR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resFLOAT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resFOREIGN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resFREETEXT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resFORTRAN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resFOUND} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resFROM} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resFREETEXTTABLE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resFULL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resGET} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resGLOBAL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resFUNCTION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resGO} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resGOTO} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resGRANT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resGROUP} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resHAVING} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resHOLDLOCK} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resHOUR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resIDENTITY} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resIMMEDIATE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resIN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resINCLUDE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resINDEX} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resINDICATOR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resINITIALLY} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resINNER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resIDENTITY_INSERT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resINPUT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resIDENTITYCOL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resIF} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resINSENSITIVE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resINSERT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resINT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resINTEGER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resINTERSECT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resINTERVAL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resINTO} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resIS} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resISOLATION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resJOIN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resKEY} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resKILL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resLEFT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resLANGUAGE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resLAST} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resLEADING} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resLIKE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resLINENO} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resLEVEL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resLOAD} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resMERGE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resLOCAL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resNATIONAL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resLOWER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resNOCHECK} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resMATCH} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resNONCLUSTERED} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resMAX} {
	TOKENS.add(new MyTOKEN(yytext(), "Funcion Agregacion", yycolumn, yyline));
	}

{resNOT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resMIN} {
	TOKENS.add(new MyTOKEN(yytext(), "Funcion Agregacion", yycolumn, yyline));
	}

{resNULL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resMINUTE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resMODULE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resNULLIF} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resOF} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resMONTH} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resNAMES} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resOFF} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resNATURAL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resOFFSES} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resNCHAR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resNEXT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resNO} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resON} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resNONE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resOPEN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resOPENDATASOURCE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resNUMERIC} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resOCTET_LENGTH} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resOPENQUERY} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resOPENROWSET} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resOPENXML} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resOPTION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resONLY} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resOR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resORDER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resOUTER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resOVER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resPERCENT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resPIVOT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resPLAN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resOUTPUT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resPRECISION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resPRIMARY} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resPRINT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resPROC} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resOVERLAPS} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resPAD} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resPARTIAL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resPROCEDURE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resPASCAL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resPUBLIC} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resPOSITION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resRAISERROR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resPREPARE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resREAD} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resPRESERVE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resREADTEXT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resPRIOR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resRECONFIGURE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resPRIVILEGES} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resREFERENCES} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resREPLICATION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resREAL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resRESTORE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resRESTRICT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resRELATIVE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resRETURN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resREVOKE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resRIGHT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resROLLBACK} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resREVERT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resROWS} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resROWCOUNT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSCHEMA} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSCROLL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resROWGUIDCOL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSECOND} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSECTION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSELECT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSESSION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSESSION_USER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSET} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSIZE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resRULE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSMALLINT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSAVE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSOME} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSECURITYAUDIT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSPACE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSEMANTICKEYPHRASETABLE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSQL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSQLCA} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSEMANTICSIMILARITYDETAILSTABLE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSQLCODE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSEMANTICSIMILARITYTABLE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSQLERROR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSQLSTATE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSQLWARNING} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSUBSTRING} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSUM} {
	TOKENS.add(new MyTOKEN(yytext(), "Funcion Agregacion", yycolumn, yyline));
	}

{resSETUSER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSHUTDOWN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSYSTEM_USER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resSTATISTICS} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resTABLE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resTEMPORARY} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resTHEN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resTIME} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resTIMESTAMP} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resTABLESAMPLE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resTIMEZONE_HOUR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resTEXTSIZE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resTIMEZONE_MINUTE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resTO} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resTRAILING} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resTOP} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resTRANSACTION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resTRAN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resTRANSLATE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resTRANSLATION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resTRIM} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resTRIGGER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resTRUNCATE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resTRUE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resUNION} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resUNIQUE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resTRY_CONVERT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resUNKNOWN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resTSEQUAL} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resUPDATE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resUPPER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resUSAGE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resUSER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resUNPIVOT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resUSING} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resVALUE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resVALUES} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resVARCHAR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resVARYING} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resUPDATETEXT} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resVIEW} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resUSE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resWHEN} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resWHENEVER} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resWHERE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resWITH} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resWAITFOR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resWORK} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resWRITE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resYEAR} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resWHILE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resZONE} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resWITHINGROUP} {
	TOKENS.add(new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));
	}

{resWRITETEXT} {
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
}

{ComentarioLinea} {
	TOKENS.add(new MyTOKEN(yytext(), "Comentario.Linea", yycolumn, yyline));
	}

{ComentarioMultiliena} {
	
	TOKENS.add(new MyTOKEN(yytext(), "Comentario.Multilinea", yycolumn, yyline));
	
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
	//ArchivoEscribir = ArchivoEscribir + "Error en la col: " + yycolumn + " fila: " + yyline + " Caracter no Reconocido" + "\n";
}