package Analizadores;

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
//import MiniSQL;



%%
%class Lexer
%unicode
%public
//%standalone
%cup
%line
%column
%char
%eofval{
    return symbol(sym.EOF);
%eofval}
%function next_token
%{
    public Symbol symbol(int type) {
        return new Symbol(type, yyline, yycolumn);
    }

    private Symbol symbol(int type, Object value) {
        return new Symbol(type, yyline, yycolumn, value);
    }
%}

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
resRETURNS = RETURNS 
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
<YYINITIAL> {resABSOLUTE} { return symbol(sym.ABSOLUTE); }

<YYINITIAL> {resACTION} { return symbol(sym.ACTION); }

<YYINITIAL> {resADA} { return symbol(sym.ADA); }

<YYINITIAL> {resADD} { return symbol(sym.ADD); }

<YYINITIAL> {resALL} { return symbol(sym.ALL); }

<YYINITIAL> {resALLOCATE} { return symbol(sym.ALLOCATE); }

<YYINITIAL> {resALTER} { return symbol(sym.ALTER); }

<YYINITIAL> {resAND} { return symbol(sym.AND); }

<YYINITIAL> {resANY} { return symbol(sym.ANY); }

<YYINITIAL> {resARE} { return symbol(sym.ARE); }

<YYINITIAL> {resAS} { return symbol(sym.AS); }

<YYINITIAL> {resASC} { return symbol(sym.ASC); }

<YYINITIAL> {resASSERTION} { return symbol(sym.ASSERTION); }

<YYINITIAL> {resAT} { return symbol(sym.AT); }

<YYINITIAL> {resAUTHORIZATION} { return symbol(sym.AUTHORIZATION); }

<YYINITIAL> {resAVG} { return symbol(sym.AVG); }

<YYINITIAL> {resBACKUP} { return symbol(sym.BACKUP); }

<YYINITIAL> {resBEGIN} { return symbol(sym.BEGIN); }

<YYINITIAL> {resBETWEEN} { return symbol(sym.BETWEEN); }

<YYINITIAL> {resBIT} { return symbol(sym.BIT); }

<YYINITIAL> {resBIT_LENGTH} { return symbol(sym.BIT_LENGTH); }

<YYINITIAL> {resBOTH} { return symbol(sym.BOTH); }

<YYINITIAL> {resBREAK} { return symbol(sym.BREAK); }

<YYINITIAL> {resBROWSE} { return symbol(sym.BROWSE); }

<YYINITIAL> {resBULK} { return symbol(sym.BULK); }

<YYINITIAL> {resBY} { return symbol(sym.BY); }

<YYINITIAL> {resCASCADE} { return symbol(sym.CASCADE); }

<YYINITIAL> {resCASCADED} { return symbol(sym.CASCADED); }

<YYINITIAL> {resCASE} { return symbol(sym.CASE); }

<YYINITIAL> {resCAST} { return symbol(sym.CAST); }

<YYINITIAL> {resCATALOG} { return symbol(sym.CATALOG); }

<YYINITIAL> {resCHAR} { return symbol(sym.CHAR); }

<YYINITIAL> {resCHAR_LENGTH} { return symbol(sym.CHAR_LENGTH); }

<YYINITIAL> {resCHARACTER} { return symbol(sym.CHARACTER); }

<YYINITIAL> {resCHARACHTER_LENGTH} { return symbol(sym.CHARACHTER_LENGTH); }

<YYINITIAL> {resCHECK} { return symbol(sym.CHECK); }

<YYINITIAL> {resCHECKPOINT} { return symbol(sym.CHECKPOINT); }

<YYINITIAL> {resCLOSE} { return symbol(sym.CLOSE); }

<YYINITIAL> {resCLUSTERED} { return symbol(sym.CLUSTERED); }

<YYINITIAL> {resCOALESCE} { return symbol(sym.COALESCE); }

<YYINITIAL> {resCOLLATE} { return symbol(sym.COLLATE); }

<YYINITIAL> {resCOALLITION} { return symbol(sym.COALLITION); }

<YYINITIAL> {resCOLUMN} { return symbol(sym.COLUMN); }

<YYINITIAL> {resCOMMIT} { return symbol(sym.COMMIT); }

<YYINITIAL> {resCOMPUTE} { return symbol(sym.COMPUTE); }

<YYINITIAL> {resCONNECT} { return symbol(sym.CONNECT); }

<YYINITIAL> {resCONNECTION} { return symbol(sym.CONNECTION); }

<YYINITIAL> {resCONSTRAINT} { return symbol(sym.CONSTRAINT); }

<YYINITIAL> {resCONSTRAINTS} { return symbol(sym.CONSTRAINTS); }

<YYINITIAL> {resCONTAINS} { return symbol(sym.CONTAINS); }

<YYINITIAL> {resCONTAINSTABLE} { return symbol(sym.CONTAINSTABLE); }

<YYINITIAL> {resCONTINUE} { return symbol(sym.CONTINUE); }

<YYINITIAL> {resCONVERT} { return symbol(sym.CONVERT); }

<YYINITIAL> {resCORRESPONDING} { return symbol(sym.CORRESPONDING); }

<YYINITIAL> {resCOUNT} { return symbol(sym.COUNT); }

<YYINITIAL> {resCREATE} { return symbol(sym.CREATE); }

<YYINITIAL> {resCROSS} { return symbol(sym.CROSS); }

<YYINITIAL> {resCURRENT} { return symbol(sym.CURRENT); }

<YYINITIAL> {resCURRENT_DATE} { return symbol(sym.CURRENT_DATE); }

<YYINITIAL> {resCURRENT_TIME} { return symbol(sym.CURRENT_TIME); }

<YYINITIAL> {resCURRENT_TIMES} { return symbol(sym.CURRENT_TIMESTAMP); }

<YYINITIAL> {resCURRENT_USER} { return symbol(sym.CURRENT_USER); }

<YYINITIAL> {resCURSOR} { return symbol(sym.CURSOR); }

<YYINITIAL> {resDATABASE} { return symbol(sym.DATABASE); }

<YYINITIAL> {resDATE} { return symbol(sym.DATE); }

<YYINITIAL> {resDAY} { return symbol(sym.DAY); }

<YYINITIAL> {resDBCC} { return symbol(sym.DBCC); }

<YYINITIAL> {resDEALLOCATE} { return symbol(sym.DEALLOCATE); }

<YYINITIAL> {resDEC} { return symbol(sym.DEC); }

<YYINITIAL> {resDECIMAL} { return symbol(sym.DECIMAL); }

<YYINITIAL> {resDECLARE} { return symbol(sym.DECLARE); }

<YYINITIAL> {resDEFAULT} { return symbol(sym.DEFAULT); }

<YYINITIAL> {resDEFERRABLE} { return symbol(sym.DEFERRABLE); }

<YYINITIAL> {resDEFERRED} { return symbol(sym.DEFERRED); }

<YYINITIAL> {resDELETE} { return symbol(sym.DELETE); }

<YYINITIAL> {resDENY} { return symbol(sym.DENY); }

<YYINITIAL> {resDESC} { return symbol(sym.DESC); }

<YYINITIAL> {resDESCRIBE} { return symbol(sym.DESCRIBE); }

<YYINITIAL> {resDESCRIPTOR} { return symbol(sym.DESCRIPTOR); }

<YYINITIAL> {resDIAGNOSTICS} { return symbol(sym.DIAGNOSTICS); }

<YYINITIAL> {resDISCONNECT} { return symbol(sym.DISCONNECT); }

<YYINITIAL> {resDISK} { return symbol(sym.DISK); }

<YYINITIAL> {resDISTINCT} { return symbol(sym.DISTINCT); }

<YYINITIAL> {resDISTURBED} { return symbol(sym.DISTURBED); }

<YYINITIAL> {resDOMAIN} { return symbol(sym.DOMAIN); }

<YYINITIAL> {resDOUBLE} { return symbol(sym.DOUBLE); }

<YYINITIAL> {resDROP} { return symbol(sym.DROP); }

<YYINITIAL> {resDUMP} { return symbol(sym.DUMP); }

<YYINITIAL> {resELSE} { return symbol(sym.ELSE); }

<YYINITIAL> {resEND} { return symbol(sym.END); }

<YYINITIAL> {resENDEXEC} { return symbol(sym.END_EXEC); }

<YYINITIAL> {resERRLVL} { return symbol(sym.ERRLVL); }

<YYINITIAL> {resESCAPE} { return symbol(sym.ESCAPE); }

<YYINITIAL> {resEXCEPT} { return symbol(sym.EXCEPT); }

<YYINITIAL> {resEXCEPTION} { return symbol(sym.EXCEPTION); }

<YYINITIAL> {resEXEC} { return symbol(sym.EXEC); }

<YYINITIAL> {resEXECUTE} { return symbol(sym.EXECUTE); }

<YYINITIAL> {resEXISTS} { return symbol(sym.EXISTS); }

<YYINITIAL> {resEXIT} { return symbol(sym.EXIT); }

<YYINITIAL> {resEXTERNAL} { return symbol(sym.EXTERNAL); }

<YYINITIAL> {resFETCH} { return symbol(sym.FETCH); }

<YYINITIAL> {resEXTRACT} { return symbol(sym.EXTRACT); }

<YYINITIAL> {resFALSE} { return symbol(sym.FALSE); }

<YYINITIAL> {resFILE} { return symbol(sym.FILE); }

<YYINITIAL> {resFILLFACTOR} { return symbol(sym.FILLFACTOR); }

<YYINITIAL> {resFIRST} { return symbol(sym.FIRST); }

<YYINITIAL> {resFOR} { return symbol(sym.FOR); }

<YYINITIAL> {resFLOAT} { return symbol(sym.FLOAT); }

<YYINITIAL> {resFOREIGN} { return symbol(sym.FOREIGN); }

<YYINITIAL> {resFREETEXT} { return symbol(sym.FREETEXT); }

<YYINITIAL> {resFORTRAN} { return symbol(sym.FORTRAN); }

<YYINITIAL> {resFOUND} { return symbol(sym.FOUND); }

<YYINITIAL> {resFROM} { return symbol(sym.FROM); }

<YYINITIAL> {resFREETEXTTABLE} { return symbol(sym.FREETEXTTABLE); }

<YYINITIAL> {resFULL} { return symbol(sym.FULL); }

<YYINITIAL> {resGET} { return symbol(sym.GET); }

<YYINITIAL> {resGLOBAL} { return symbol(sym.GLOBAL); }

<YYINITIAL> {resFUNCTION} { return symbol(sym.FUNCTION); }

<YYINITIAL> {resGO} { return symbol(sym.GO); }

<YYINITIAL> {resGOTO} { return symbol(sym.GOTO); }

<YYINITIAL> {resGRANT} { return symbol(sym.GRANT); }

<YYINITIAL> {resGROUP} { return symbol(sym.GROUP); }

<YYINITIAL> {resHAVING} { return symbol(sym.HAVING); }

<YYINITIAL> {resHOLDLOCK} { return symbol(sym.HOLDLOCK); }

<YYINITIAL> {resHOUR} { return symbol(sym.HOUR); }

<YYINITIAL> {resIDENTITY} { return symbol(sym.IDENTITY); }

<YYINITIAL> {resIMMEDIATE} { return symbol(sym.IMMEDIATE); }

<YYINITIAL> {resIN} { return symbol(sym.IN); }

<YYINITIAL> {resINCLUDE} { return symbol(sym.INCLUDE); }

<YYINITIAL> {resINDEX} { return symbol(sym.INDEX); }

<YYINITIAL> {resINDICATOR} { return symbol(sym.INDICATOR); }

<YYINITIAL> {resINITIALLY} { return symbol(sym.INITIALLY); }

<YYINITIAL> {resINNER} { return symbol(sym.INNER); }

<YYINITIAL> {resIDENTITY_INSERT} { return symbol(sym.IDENTITY_INSERT); }

<YYINITIAL> {resINPUT} { return symbol(sym.INPUT); }

<YYINITIAL> {resIDENTITYCOL} { return symbol(sym.IDENTITYCOL); }

<YYINITIAL> {resIF} { return symbol(sym.IF); }

<YYINITIAL> {resINSENSITIVE} { return symbol(sym.INSENSITIVE); }

<YYINITIAL> {resINSERT} { return symbol(sym.INSERT); }

<YYINITIAL> {resINT} { return symbol(sym.INT); }

<YYINITIAL> {resINTEGER} { return symbol(sym.INTEGER); }

<YYINITIAL> {resINTERSECT} { return symbol(sym.INTERSECT); }

<YYINITIAL> {resINTERVAL} { return symbol(sym.INTERVAL); }

<YYINITIAL> {resINTO} { return symbol(sym.INTO); }

<YYINITIAL> {resIS} { return symbol(sym.IS); }

<YYINITIAL> {resISOLATION} { return symbol(sym.ISOLATION); }

<YYINITIAL> {resJOIN} { return symbol(sym.JOIN); }

<YYINITIAL> {resKEY} { return symbol(sym.KEY); }

<YYINITIAL> {resKILL} { return symbol(sym.KILL); }

<YYINITIAL> {resLEFT} { return symbol(sym.LEFT); }

<YYINITIAL> {resLANGUAGE} { return symbol(sym.LANGUAGE); }

<YYINITIAL> {resLAST} { return symbol(sym.LAST); }

<YYINITIAL> {resLEADING} { return symbol(sym.LEADING); }

<YYINITIAL> {resLIKE} { return symbol(sym.LIKE); }

<YYINITIAL> {resLINENO} { return symbol(sym.LINENO); }

<YYINITIAL> {resLEVEL} { return symbol(sym.LEVEL); }

<YYINITIAL> {resLOAD} { return symbol(sym.LOAD); }

<YYINITIAL> {resMERGE} { return symbol(sym.MERGE); }

<YYINITIAL> {resLOCAL} { return symbol(sym.LOCAL); }

<YYINITIAL> {resNATIONAL} { return symbol(sym.NATIONAL); }

<YYINITIAL> {resLOWER} { return symbol(sym.LOWER); }

<YYINITIAL> {resNOCHECK} { return symbol(sym.NOCHECK); }

<YYINITIAL> {resMATCH} { return symbol(sym.MATCH); }

<YYINITIAL> {resNONCLUSTERED} { return symbol(sym.NONCLUSTERED); }

<YYINITIAL> {resMAX} { return symbol(sym.MAX); }

<YYINITIAL> {resNOT} { return symbol(sym.NOT); }

<YYINITIAL> {resMIN} { return symbol(sym.MIN); }

<YYINITIAL> {resNULL} { return symbol(sym.NULL); }

<YYINITIAL> {resMINUTE} { return symbol(sym.MINUTE); }

<YYINITIAL> {resMODULE} { return symbol(sym.MODULE); }

<YYINITIAL> {resNULLIF} { return symbol(sym.NULLIF); }

<YYINITIAL> {resOF} { return symbol(sym.OF); }

<YYINITIAL> {resMONTH} { return symbol(sym.MONTH); }

<YYINITIAL> {resNAMES} { return symbol(sym.NAMES); }

<YYINITIAL> {resOFF} { return symbol(sym.OFF); }

<YYINITIAL> {resNATURAL} { return symbol(sym.NATURAL); }

<YYINITIAL> {resOFFSES} { return symbol(sym.OFFSES); }

<YYINITIAL> {resNCHAR} { return symbol(sym.NCHAR); }

<YYINITIAL> {resNEXT} { return symbol(sym.NEXT); }

<YYINITIAL> {resNO} { return symbol(sym.NO); }

<YYINITIAL> {resON} { return symbol(sym.ON); }

<YYINITIAL> {resNONE} { return symbol(sym.NONE); }

<YYINITIAL> {resOPEN} { return symbol(sym.OPEN); }

<YYINITIAL> {resOPENDATASOURCE} { return symbol(sym.OPENDATASOURCE); }

<YYINITIAL> {resNUMERIC} { return symbol(sym.NUMERIC); }

<YYINITIAL> {resOCTET_LENGTH} { return symbol(sym.OCTET_LENGTH); }

<YYINITIAL> {resOPENQUERY} { return symbol(sym.OPENQUERY); }

<YYINITIAL> {resOPENROWSET} { return symbol(sym.OPENROWSET); }

<YYINITIAL> {resOPENXML} { return symbol(sym.OPENXML); }

<YYINITIAL> {resOPTION} { return symbol(sym.OPTION); }

<YYINITIAL> {resONLY} { return symbol(sym.ONLY); }

<YYINITIAL> {resOR} { return symbol(sym.OR); }

<YYINITIAL> {resORDER} { return symbol(sym.ORDER); }

<YYINITIAL> {resOUTER} { return symbol(sym.OUTER); }

<YYINITIAL> {resOVER} { return symbol(sym.OVER); }

<YYINITIAL> {resPERCENT} { return symbol(sym.PERCENT); }

<YYINITIAL> {resPIVOT} { return symbol(sym.PIVOT); }

<YYINITIAL> {resPLAN} { return symbol(sym.PLAN); }

<YYINITIAL> {resOUTPUT} { return symbol(sym.OUTPUT); }

<YYINITIAL> {resPRECISION} { return symbol(sym.PRECISION); }

<YYINITIAL> {resPRIMARY} { return symbol(sym.PRIMARY); }

<YYINITIAL> {resPRINT} { return symbol(sym.PRINT); }

<YYINITIAL> {resPROC} { return symbol(sym.PROC); }

<YYINITIAL> {resOVERLAPS} { return symbol(sym.OVERLAPS); }

<YYINITIAL> {resPAD} { return symbol(sym.PAD); }

<YYINITIAL> {resPARTIAL} { return symbol(sym.PARTIAL); }

<YYINITIAL> {resPROCEDURE} { return symbol(sym.PROCEDURE); }

<YYINITIAL> {resPASCAL} { return symbol(sym.PASCAL); }

<YYINITIAL> {resPUBLIC} { return symbol(sym.PUBLIC); }

<YYINITIAL> {resPOSITION} { return symbol(sym.POSITION); }

<YYINITIAL> {resRAISERROR} { return symbol(sym.RAISERROR); }

<YYINITIAL> {resPREPARE} { return symbol(sym.PREPARE); }

<YYINITIAL> {resREAD} { return symbol(sym.READ); }

<YYINITIAL> {resPRESERVE} { return symbol(sym.PRESERVE); }

<YYINITIAL> {resREADTEXT} { return symbol(sym.READTEXT); }

<YYINITIAL> {resPRIOR} { return symbol(sym.PRIOR); }

<YYINITIAL> {resRECONFIGURE} { return symbol(sym.RECONFIGURE); }

<YYINITIAL> {resPRIVILEGES} { return symbol(sym.PRIVILEGES); }

<YYINITIAL> {resREFERENCES} { return symbol(sym.REFERENCES); }

<YYINITIAL> {resREPLICATION} { return symbol(sym.REPLICATION); }

<YYINITIAL> {resREAL} { return symbol(sym.REAL); }

<YYINITIAL> {resRESTORE} { return symbol(sym.RESTORE); }

<YYINITIAL> {resRESTRICT} { return symbol(sym.RESTRICT); }

<YYINITIAL> {resRELATIVE} { return symbol(sym.RELATIVE); }

<YYINITIAL> {resRETURN} { return symbol(sym.RETURN); }

<YYINITIAL> {resRETURNS} { return symbol(sym.RETURNS); }

<YYINITIAL> {resREVOKE} { return symbol(sym.REVOKE); }

<YYINITIAL> {resRIGHT} { return symbol(sym.RIGHT); }

<YYINITIAL> {resROLLBACK} { return symbol(sym.ROLLBACK); }

<YYINITIAL> {resREVERT} { return symbol(sym.REVERT); }

<YYINITIAL> {resROWS} { return symbol(sym.ROWS); }

<YYINITIAL> {resROWCOUNT} { return symbol(sym.ROWCOUNT); }

<YYINITIAL> {resSCHEMA} { return symbol(sym.SCHEMA); }

<YYINITIAL> {resSCROLL} { return symbol(sym.SCROLL); }

<YYINITIAL> {resROWGUIDCOL} { return symbol(sym.ROWGUIDCOL); }

<YYINITIAL> {resSECOND} { return symbol(sym.SECOND); }

<YYINITIAL> {resSECTION} { return symbol(sym.SECTION); }

<YYINITIAL> {resSELECT} { return symbol(sym.SELECT); }

<YYINITIAL> {resSESSION} { return symbol(sym.SESSION); }

<YYINITIAL> {resSESSION_USER} { return symbol(sym.SESSION_USER); }

<YYINITIAL> {resSET} { return symbol(sym.SET); }

<YYINITIAL> {resSIZE} { return symbol(sym.SIZE); }

<YYINITIAL> {resRULE} { return symbol(sym.RULE); }

<YYINITIAL> {resSMALLINT} { return symbol(sym.SMALLINT); }

<YYINITIAL> {resSAVE} { return symbol(sym.SAVE); }

<YYINITIAL> {resSOME} { return symbol(sym.SOME); }

<YYINITIAL> {resSECURITYAUDIT} { return symbol(sym.SECURITYAUDIT); }

<YYINITIAL> {resSPACE} { return symbol(sym.SPACE); }

<YYINITIAL> {resSEMANTICKEYPHRASETABLE} { return symbol(sym.SEMANTICKEYPHRASETABLE); }

<YYINITIAL> {resSQL} { return symbol(sym.SQL); }

<YYINITIAL> {resSQLCA} { return symbol(sym.SQLCA); }

<YYINITIAL> {resSEMANTICSIMILARITYDETAILSTABLE} { return symbol(sym.SEMANTICSIMILARITYDETAILSTABLE); }

<YYINITIAL> {resSQLCODE} { return symbol(sym.SQLCODE); }

<YYINITIAL> {resSEMANTICSIMILARITYTABLE} { return symbol(sym.SEMANTICSIMILARITYTABLE); }

<YYINITIAL> {resSQLERROR} { return symbol(sym.SQLERROR); }

<YYINITIAL> {resSQLSTATE} { return symbol(sym.SQLSTATE); }

<YYINITIAL> {resSQLWARNING} { return symbol(sym.SQLWARNING); }

<YYINITIAL> {resSUBSTRING} { return symbol(sym.SUBSTRING); }

<YYINITIAL> {resSUM} { return symbol(sym.SUM); }

<YYINITIAL> {resSETUSER} { return symbol(sym.SETUSER); }

<YYINITIAL> {resSHUTDOWN} { return symbol(sym.SHUTDOWN); }

<YYINITIAL> {resSYSTEM_USER} { return symbol(sym.SYSTEM_USER); }

<YYINITIAL> {resSTATISTICS} { return symbol(sym.STATISTICS); }

<YYINITIAL> {resTABLE} { return symbol(sym.TABLE); }

<YYINITIAL> {resTEMPORARY} { return symbol(sym.TEMPORARY); }

<YYINITIAL> {resTHEN} { return symbol(sym.THEN); }

<YYINITIAL> {resTIME} { return symbol(sym.TIME); }

<YYINITIAL> {resTIMESTAMP} { return symbol(sym.TIMESTAMP); }

<YYINITIAL> {resTABLESAMPLE} { return symbol(sym.TABLESAMPLE); }

<YYINITIAL> {resTIMEZONE_HOUR} { return symbol(sym.TIMEZONE_HOUR); }

<YYINITIAL> {resTEXTSIZE} { return symbol(sym.TEXTSIZE); }

<YYINITIAL> {resTIMEZONE_MINUTE} { return symbol(sym.TIMEZONE_MINUTE); }

<YYINITIAL> {resTO} { return symbol(sym.TO); }

<YYINITIAL> {resTRAILING} { return symbol(sym.TRAILING); }

<YYINITIAL> {resTOP} { return symbol(sym.TOP); }

<YYINITIAL> {resTRANSACTION} { return symbol(sym.TRANSACTION); }

<YYINITIAL> {resTRAN} { return symbol(sym.TRAN); }

<YYINITIAL> {resTRANSLATE} { return symbol(sym.TRANSLATE); }

<YYINITIAL> {resTRANSLATION} { return symbol(sym.TRANSLATION); }

<YYINITIAL> {resTRIM} { return symbol(sym.TRIM); }

<YYINITIAL> {resTRIGGER} { return symbol(sym.TRIGGER); }

<YYINITIAL> {resTRUNCATE} { return symbol(sym.TRUNCATE); }

<YYINITIAL> {resTRUE} { return symbol(sym.TRUE); }

<YYINITIAL> {resUNION} { return symbol(sym.UNION); }

<YYINITIAL> {resUNIQUE} { return symbol(sym.UNIQUE); }

<YYINITIAL> {resTRY_CONVERT} { return symbol(sym.TRY_CONVERT); }

<YYINITIAL> {resUNKNOWN} { return symbol(sym.UNKNOWN); }

<YYINITIAL> {resTSEQUAL} { return symbol(sym.TSEQUAL); }

<YYINITIAL> {resUPDATE} { return symbol(sym.UPDATE); }

<YYINITIAL> {resUPPER} { return symbol(sym.UPPER); }

<YYINITIAL> {resUSAGE} { return symbol(sym.USAGE); }

<YYINITIAL> {resUSER} { return symbol(sym.USER); }

<YYINITIAL> {resUNPIVOT} { return symbol(sym.UNPIVOT); }

<YYINITIAL> {resUSING} { return symbol(sym.USING); }

<YYINITIAL> {resVALUE} { return symbol(sym.VALUE); }

<YYINITIAL> {resVALUES} { return symbol(sym.VALUES); }

<YYINITIAL> {resVARCHAR} { return symbol(sym.VARCHAR); }

<YYINITIAL> {resVARYING} { return symbol(sym.VARYING); }

<YYINITIAL> {resUPDATETEXT} { return symbol(sym.UPDATETEXT); }

<YYINITIAL> {resVIEW} { return symbol(sym.VIEW); }

<YYINITIAL> {resUSE} { return symbol(sym.USE); }

<YYINITIAL> {resWHEN} { return symbol(sym.WHEN); }

<YYINITIAL> {resWHENEVER} { return symbol(sym.WHENEVER); }

<YYINITIAL> {resWHERE} { return symbol(sym.WHERE); }

<YYINITIAL> {resWITH} { return symbol(sym.WITH); }

<YYINITIAL> {resWAITFOR} { return symbol(sym.WAITFOR); }

<YYINITIAL> {resWORK} { return symbol(sym.WORK); }

<YYINITIAL> {resWRITE} { return symbol(sym.WRITE); }

<YYINITIAL> {resYEAR} { return symbol(sym.YEAR); }

<YYINITIAL> {resWHILE} { return symbol(sym.WHILE); }

<YYINITIAL> {resZONE} { return symbol(sym.ZONE); }

<YYINITIAL> {resWITHINGROUP} { return symbol(sym.WITHINGROUP); }

<YYINITIAL> {resWRITETEXT} { return symbol(sym.WRITETEXT); }


//FIN RESERVADAS
{Entero} {
	//TOKENS.add(new MyTOKEN(yytext(), "Entero", yycolumn, yyline)) ;
    return symbol(sym.Entero);
	}

{Boolean} {
	//TOKENS.add(new MyTOKEN(yytext(), "Boolean", yycolumn, yyline));
    return symbol(sym.Boolean);
	}

{Float} {
	//TOKENS.add(new MyTOKEN(yytext(), "Float", yycolumn, yyline));
    return symbol(sym.Float);
	}

{Cadena} {
	//TOKENS.add(new MyTOKEN(yytext(), "Cadena", yycolumn, yyline));
    return symbol(sym.Cadena);
	}

{Cadenaerror} {//ArchivoEscribir = ArchivoEscribir + "Error en la col: " + yycolumn + " fila: " + yyline + " Cadena sin cerrar"+ "\n";
	//TOKENS.add(new MyTOKEN(yytext(), "ERROR", yycolumn, yyline));
    return symbol(sym.ERROR);
}

{ComentarioLinea} {
	////TOKENS.add(new MyTOKEN(yytext(), "Comentario.Linea", yycolumn, yyline));
    //return symbol(sym.ComentarioLinea);
	}

{ComentarioMultiliena} {
	
	////TOKENS.add(new MyTOKEN(yytext(), "Comentario.Multilinea", yycolumn, yyline));
    //return symbol(sym.ComentarioMultiliena);
	//System.out.println(yytext());
	
	}
//{ComentarioMultilienaerror} {ArchivoEscribir = ArchivoEscribir + "Error en la col: " + yycolumn + " fila: " + yyline + " Comentario multilinea sin cerrar"+ "\n";}

{Signomas} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signomas);
	}

{Signomenos} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signomenos);
	}

{Signomult} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signomult);
	}

{Signodiv} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signodiv);
	}

{Signoporcentaje} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signoporcentaje);
	}

{Signomayor} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signomayor);
	}

{Signomayorigual} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signomayorigual);
	}

{Signomenor} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signomenor);
	}

{Signomenorigual} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signomenorigual);
	}

{Signoigual} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signoigual);
	}

{Signoigualigual} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signoigualigual);
	}

{Signonotigual} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signonotigual);
	}

{Signoyy} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signoyy);
	}

{Signoor} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signoor);
	}

{Signoadmiracion} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signoadmiracion);
	}

{Puntoycoma} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Puntoycoma);
	}

{Coma} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Coma);
	}

{Punto} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Punto);
	}

{Corcheteapertura} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Corcheteapertura);
	}

{Corchetecerradura} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Corchetecerradura);
	}

{Corchetes} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Corchetes);
	}

{Parentesisapertura} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Parentesisapertura);
	}

{Parentesiscerradura} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Parentesiscerradura);
	}

{Parentesis} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Parentesis);
	}

{Llaveapertura} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Llaveapertura);
	}

{Llavecerradura} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Llavecerradura);
	}

{Llaves} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Llaves);
	}

{Arroba} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Arroba);
	}

{Sharp} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Sharp);
	}

{Sharpsharp} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Sharpsharp);
	}
 
{Identificador} { 
	if(yylength() < 31)
	{
		//TOKENS.add(new MyTOKEN(yytext(), "Identificador", yycolumn, yyline));
        return symbol(sym.Identificador);
	}else{
		Advertencia(yyline, yycolumn);
		//TOKENS.add(new MyTOKEN(yytext(), "Identificador", yycolumn, yyline)) ;
        return symbol(sym.Identificador);
	}
}

{Espacio} {/*Hacer nada equisde*/}

[^] {
	//TOKENS.add(new MyTOKEN(yytext(), "ERROR", yycolumn, yyline));
    return symbol(sym.ERROR);
	//ArchivoEscribir = ArchivoEscribir + "Error en la col: " + yycolumn + " fila: " + yyline + " Caracter no Reconocido" + "\n";
}
