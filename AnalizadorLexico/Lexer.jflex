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

	public int noToken = 0;	

    String File = "";
    String ArchivoEscribir = "";
    Scanner scanner = new Scanner(System.in);

	public void nextToken() {

	}

	public List<MyTOKEN> TOKENS = new ArrayList<MyTOKEN>();
%}
%eof{
	//System.out.println("Inserte nombre de archivo");
	//File = scanner.nextLine();
	try{
		PrintWriter writer = new PrintWriter(MiniSQL.File + ".out", "UTF-8");
		writer.print(ArchivoEscribir);
		writer.close();
		System.out.println("El archivo a sido generado con exito");
	}catch (Exception e){
		System.err.println("Error: " + e.getMessage());
	}
%eof}

%%
{resABSOLUTE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resACTION} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resADA} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resADD} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resALL} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resALLOCATE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resALTER} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resAND} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resANY} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resARE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resAS} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resASC} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resASSERTION} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resAT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resAUTHORIZATION} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resAVG} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resBACKUP} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resBEGIN} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resBETWEEN} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resBIT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resBIT_LENGTH} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resBOTH} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resBREAK} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resBROWSE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resBULK} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resBY} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCASCADE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCASCADED} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCASE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCAST} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCATALOG} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCHAR} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCHAR_LENGTH} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCHARACTER} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCHARACHTER_LENGTH} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCHECK} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCHECKPOINT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCLOSE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCLUSTERED} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCOALESCE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCOLLATE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCOALLITION} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCOLUMN} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCOMMIT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCOMPUTE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCONNECT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCONNECTION} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCONSTRAINT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCONSTRAINTS} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCONTAINS} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCONTAINSTABLE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCONTINUE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCONVERT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCORRESPONDING} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCOUNT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCREATE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCROSS} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCURRENT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCURRENT_DATE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCURRENT_TIME} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCURRENT_TIMES} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCURRENT_USER} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resCURSOR} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resDATABASE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resDATE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resDAY} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resDBCC} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resDEALLOCATE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resDEC} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resDECIMAL} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resDECLARE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resDEFAULT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resDEFERRABLE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resDEFERRED} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resDELETE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resDENY} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resDESC} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resDESCRIBE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resDESCRIPTOR} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resDIAGNOSTICS} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resDISCONNECT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resDISK} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resDISTINCT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resDISTURBED} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resDOMAIN} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resDOUBLE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resDROP} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resDUMP} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resELSE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resEND} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resENDEXEC} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resERRLVL} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resESCAPE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resEXCEPT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resEXCEPTION} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resEXEC} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resEXECUTE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resEXISTS} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resEXIT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resEXTERNAL} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resFETCH} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resEXTRACT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resFALSE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resFILE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resFILLFACTOR} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resFIRST} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resFOR} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resFLOAT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resFOREIGN} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resFREETEXT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resFORTRAN} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resFOUND} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resFROM} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resFREETEXTTABLE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resFULL} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resGET} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resGLOBAL} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resFUNCTION} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resGO} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resGOTO} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resGRANT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resGROUP} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resHAVING} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resHOLDLOCK} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resHOUR} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resIDENTITY} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resIMMEDIATE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resIN} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resINCLUDE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resINDEX} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resINDICATOR} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resINITIALLY} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resINNER} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resIDENTITY_INSERT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resINPUT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resIDENTITYCOL} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resIF} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resINSENSITIVE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resINSERT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resINT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resINTEGER} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resINTERSECT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resINTERVAL} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resINTO} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resIS} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resISOLATION} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resJOIN} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resKEY} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resKILL} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resLEFT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resLANGUAGE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resLAST} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resLEADING} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resLIKE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resLINENO} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resLEVEL} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resLOAD} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resMERGE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resLOCAL} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resNATIONAL} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resLOWER} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resNOCHECK} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resMATCH} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resNONCLUSTERED} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resMAX} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resNOT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resMIN} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resNULL} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resMINUTE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resMODULE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resNULLIF} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resOF} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resMONTH} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resNAMES} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resOFF} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resNATURAL} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resOFFSES} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resNCHAR} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resNEXT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resNO} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resON} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resNONE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resOPEN} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resOPENDATASOURCE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resNUMERIC} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resOCTET_LENGTH} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resOPENQUERY} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resOPENROWSET} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resOPENXML} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resOPTION} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resONLY} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resOR} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resORDER} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resOUTER} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resOVER} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resPERCENT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resPIVOT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resPLAN} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resOUTPUT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resPRECISION} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resPRIMARY} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resPRINT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resPROC} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resOVERLAPS} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resPAD} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resPARTIAL} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resPROCEDURE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resPASCAL} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resPUBLIC} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resPOSITION} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resRAISERROR} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resPREPARE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resREAD} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resPRESERVE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resREADTEXT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resPRIOR} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resRECONFIGURE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resPRIVILEGES} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resREFERENCES} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resREPLICATION} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resREAL} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resRESTORE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resRESTRICT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resRELATIVE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resRETURN} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resREVOKE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resRIGHT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resROLLBACK} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resREVERT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resROWS} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resROWCOUNT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSCHEMA} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSCROLL} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resROWGUIDCOL} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSECOND} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSECTION} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSELECT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSESSION} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSESSION_USER} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSET} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSIZE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resRULE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSMALLINT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSAVE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSOME} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSECURITYAUDIT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSPACE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSEMANTICKEYPHRASETABLE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSQL} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSQLCA} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSEMANTICSIMILARITYDETAILSTABLE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSQLCODE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSEMANTICSIMILARITYTABLE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSQLERROR} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSQLSTATE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSQLWARNING} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSUBSTRING} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSUM} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSETUSER} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSHUTDOWN} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSYSTEM_USER} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resSTATISTICS} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resTABLE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resTEMPORARY} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resTHEN} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resTIME} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resTIMESTAMP} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resTABLESAMPLE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resTIMEZONE_HOUR} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resTEXTSIZE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resTIMEZONE_MINUTE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resTO} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resTRAILING} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resTOP} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resTRANSACTION} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resTRAN} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resTRANSLATE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resTRANSLATION} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resTRIM} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resTRIGGER} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resTRUNCATE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resTRUE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resUNION} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resUNIQUE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resTRY_CONVERT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resUNKNOWN} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resTSEQUAL} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resUPDATE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resUPPER} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resUSAGE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resUSER} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resUNPIVOT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resUSING} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resVALUE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resVALUES} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resVARCHAR} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resVARYING} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resUPDATETEXT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resVIEW} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resUSE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resWHEN} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resWHENEVER} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resWHERE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resWITH} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resWAITFOR} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resWORK} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resWRITE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resYEAR} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resWHILE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resZONE} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resWITHINGROUP} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}

{resWRITETEXT} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Reservada", yycolumn, yyline));}


{Entero} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Entero", yycolumn, yyline))); }

{Boolean} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Boolean", yycolumn, yyline));}

{Float} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Float", yycolumn, yyline));}

{Cadena} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Cadena", yycolumn, yyline));}

{Cadenaerror} {ArchivoEscribir = ArchivoEscribir + "Error en la col: " + yycolumn + " fila: " + yyline + " Cadena sin cerrar"+ "\n";}

{ComentarioLinea} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Comentario.Linea", yycolumn, yyline));}

{ComentarioMultiliena} {
	
	TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Comentario.Multilinea", yycolumn, yyline));
	
	}

//{ComentarioMultilienaerror} {ArchivoEscribir = ArchivoEscribir + "Error en la col: " + yycolumn + " fila: " + yyline + " Comentario multilinea sin cerrar"+ "\n";}

{Signomas} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Operador", yycolumn, yyline));}

{Signomenos} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Operador", yycolumn, yyline));}

{Signomult} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Operador", yycolumn, yyline));}

{Signodiv} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Operador", yycolumn, yyline));}

{Signoporcentaje} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Operador", yycolumn, yyline));}

{Signomayor} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Operador", yycolumn, yyline));}

{Signomayorigual} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Operador", yycolumn, yyline));}

{Signomenor} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Operador", yycolumn, yyline));}

{Signomenorigual} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Operador", yycolumn, yyline));}

{Signoigual} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Operador", yycolumn, yyline));}

{Signoigualigual} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Operador", yycolumn, yyline));}

{Signonotigual} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Operador", yycolumn, yyline));}

{Signoyy} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Operador", yycolumn, yyline));}

{Signoor} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Operador", yycolumn, yyline));}

{Signoadmiracion} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Operador", yycolumn, yyline));}

{Puntoycoma} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));}

{Coma} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));}

{Punto} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));}

{Corcheteapertura} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));}

{Corchetecerradura} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));}

{Corchetes} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));}

{Parentesisapertura} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));}

{Parentesiscerradura} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));}

{Parentesis} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));}

{Llaveapertura} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));}

{Llavecerradura} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));}

{Llaves} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));}

{Arroba} {-TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));}

{Sharp} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));}

{Sharpsharp} {TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));}
 
{Identificador} { 
	if(yylength() < 31)
	{
		TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Identificador", yycolumn, yyline));
	}else{
	TOKENS.ADD(MyTOKEN token = new MyTOKEN(yytext(), "Identificador", yycolumn, yyline)); }
}

{Espacio} {/*Hacer nada equisde*/}

[^] {
	ArchivoEscribir = ArchivoEscribir + "Error en la col: " + yycolumn + " fila: " + yyline + " Caracter no Reconocido" + "\n";
		 }