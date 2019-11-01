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
DBit = [01]
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
<YYINITIAL> {resABSOLUTE} { return symbol(sym.ABSOLUTE,"ABSOLUTE"); }

<YYINITIAL> {resACTION} { return symbol(sym.ACTION,"ACTION"); }

<YYINITIAL> {resADA} { return symbol(sym.ADA,"ADA"); }

<YYINITIAL> {resADD} { return symbol(sym.ADD,"ADD"); }

<YYINITIAL> {resALL} { return symbol(sym.ALL,"ALL"); }

<YYINITIAL> {resALLOCATE} { return symbol(sym.ALLOCATE,"ALLOCATE"); }

<YYINITIAL> {resALTER} { return symbol(sym.ALTER,"ALTER"); }

<YYINITIAL> {resAND} { return symbol(sym.AND,"AND"); }

<YYINITIAL> {resANY} { return symbol(sym.ANY,"ANY"); }

<YYINITIAL> {resARE} { return symbol(sym.ARE,"ARE"); }

<YYINITIAL> {resAS} { return symbol(sym.AS,"AS"); }

<YYINITIAL> {resASC} { return symbol(sym.ASC,"ASC"); }

<YYINITIAL> {resASSERTION} { return symbol(sym.ASSERTION,"ASSERTION"); }

<YYINITIAL> {resAT} { return symbol(sym.AT,"AT"); }

<YYINITIAL> {resAUTHORIZATION} { return symbol(sym.AUTHORIZATION,"AUTHORIZATION"); }

<YYINITIAL> {resAVG} { return symbol(sym.AVG,"AVG"); }

<YYINITIAL> {resBACKUP} { return symbol(sym.BACKUP,"BACKUP"); }

<YYINITIAL> {resBEGIN} { return symbol(sym.BEGIN,"BEGIN"); }

<YYINITIAL> {resBETWEEN} { return symbol(sym.BETWEEN,"BETWEEN"); }

<YYINITIAL> {resBIT} { return symbol(sym.BIT,"BIT"); }

<YYINITIAL> {resBIT_LENGTH} { return symbol(sym.BIT_LENGTH,"BIT_LENGTH"); }

<YYINITIAL> {resBOTH} { return symbol(sym.BOTH,"BOTH"); }

<YYINITIAL> {resBREAK} { return symbol(sym.BREAK,"BREAK"); }

<YYINITIAL> {resBROWSE} { return symbol(sym.BROWSE,"BROWSE"); }

<YYINITIAL> {resBULK} { return symbol(sym.BULK,"BULK"); }

<YYINITIAL> {resBY} { return symbol(sym.BY,"BY"); }

<YYINITIAL> {resCASCADE} { return symbol(sym.CASCADE,"CASCADE"); }

<YYINITIAL> {resCASCADED} { return symbol(sym.CASCADED,"CASCADED"); }

<YYINITIAL> {resCASE} { return symbol(sym.CASE,"CASE"); }

<YYINITIAL> {resCAST} { return symbol(sym.CAST,"CAST"); }

<YYINITIAL> {resCATALOG} { return symbol(sym.CATALOG,"CATALOG"); }

<YYINITIAL> {resCHAR} { return symbol(sym.CHAR,"CHAR"); }

<YYINITIAL> {resCHAR_LENGTH} { return symbol(sym.CHAR_LENGTH,"CHAR_LENGTH"); }

<YYINITIAL> {resCHARACTER} { return symbol(sym.CHARACTER,"CHARACTER"); }

<YYINITIAL> {resCHARACHTER_LENGTH} { return symbol(sym.CHARACHTER_LENGTH,"CHARACHTER_LENGTH"); }

<YYINITIAL> {resCHECK} { return symbol(sym.CHECK,"CHECK"); }

<YYINITIAL> {resCHECKPOINT} { return symbol(sym.CHECKPOINT,"CHECKPOINT"); }

<YYINITIAL> {resCLOSE} { return symbol(sym.CLOSE,"CLOSE"); }

<YYINITIAL> {resCLUSTERED} { return symbol(sym.CLUSTERED,"CLUSTERED"); }

<YYINITIAL> {resCOALESCE} { return symbol(sym.COALESCE,"COALESCE"); }

<YYINITIAL> {resCOLLATE} { return symbol(sym.COLLATE,"COLLATE"); }

<YYINITIAL> {resCOALLITION} { return symbol(sym.COALLITION,"COALLITION"); }

<YYINITIAL> {resCOLUMN} { return symbol(sym.COLUMN,"COLUMN"); }

<YYINITIAL> {resCOMMIT} { return symbol(sym.COMMIT,"COMMIT"); }

<YYINITIAL> {resCOMPUTE} { return symbol(sym.COMPUTE,"COMPUTE"); }

<YYINITIAL> {resCONNECT} { return symbol(sym.CONNECT,"CONNECT"); }

<YYINITIAL> {resCONNECTION} { return symbol(sym.CONNECTION,"CONNECTION"); }

<YYINITIAL> {resCONSTRAINT} { return symbol(sym.CONSTRAINT,"CONSTRAINT"); }

<YYINITIAL> {resCONSTRAINTS} { return symbol(sym.CONSTRAINTS,"CONSTRAINTS"); }

<YYINITIAL> {resCONTAINS} { return symbol(sym.CONTAINS,"CONTAINS"); }

<YYINITIAL> {resCONTAINSTABLE} { return symbol(sym.CONTAINSTABLE,"CONTAINSTABLE"); }

<YYINITIAL> {resCONTINUE} { return symbol(sym.CONTINUE,"CONTINUE"); }

<YYINITIAL> {resCONVERT} { return symbol(sym.CONVERT,"CONVERT"); }

<YYINITIAL> {resCORRESPONDING} { return symbol(sym.CORRESPONDING,"CORRESPONDING"); }

<YYINITIAL> {resCOUNT} { return symbol(sym.COUNT,"COUNT"); }

<YYINITIAL> {resCREATE} { return symbol(sym.CREATE,"CREATE"); }

<YYINITIAL> {resCROSS} { return symbol(sym.CROSS,"CROSS"); }

<YYINITIAL> {resCURRENT} { return symbol(sym.CURRENT,"CURRENT"); }

<YYINITIAL> {resCURRENT_DATE} { return symbol(sym.CURRENT_DATE,"CURRENT_DATE"); }

<YYINITIAL> {resCURRENT_TIME} { return symbol(sym.CURRENT_TIME,"CURRENT_TIME"); }

<YYINITIAL> {resCURRENT_TIMES} { return symbol(sym.CURRENT_TIMESTAMP,"CURRENT_TIMESTAMP"); }

<YYINITIAL> {resCURRENT_USER} { return symbol(sym.CURRENT_USER,"CURRENT_USER"); }

<YYINITIAL> {resCURSOR} { return symbol(sym.CURSOR,"CURSOR"); }

<YYINITIAL> {resDATABASE} { return symbol(sym.DATABASE,"DATABASE"); }

<YYINITIAL> {resDATE} { return symbol(sym.DATE,"DATE"); }

<YYINITIAL> {resDAY} { return symbol(sym.DAY,"DAY"); }

<YYINITIAL> {resDBCC} { return symbol(sym.DBCC,"DBCC"); }

<YYINITIAL> {resDEALLOCATE} { return symbol(sym.DEALLOCATE,"DEALLOCATE"); }

<YYINITIAL> {resDEC} { return symbol(sym.DEC,"DEC"); }

<YYINITIAL> {resDECIMAL} { return symbol(sym.DECIMAL,"DECIMAL"); }

<YYINITIAL> {resDECLARE} { return symbol(sym.DECLARE,"DECLARE"); }

<YYINITIAL> {resDEFAULT} { return symbol(sym.DEFAULT,"DEFAULT"); }

<YYINITIAL> {resDEFERRABLE} { return symbol(sym.DEFERRABLE,"DEFERRABLE"); }

<YYINITIAL> {resDEFERRED} { return symbol(sym.DEFERRED,"DEFERRED"); }

<YYINITIAL> {resDELETE} { return symbol(sym.DELETE,"DELETE"); }

<YYINITIAL> {resDENY} { return symbol(sym.DENY,"DENY"); }

<YYINITIAL> {resDESC} { return symbol(sym.DESC,"DESC"); }

<YYINITIAL> {resDESCRIBE} { return symbol(sym.DESCRIBE,"DESCRIBE"); }

<YYINITIAL> {resDESCRIPTOR} { return symbol(sym.DESCRIPTOR,"DESCRIPTOR"); }

<YYINITIAL> {resDIAGNOSTICS} { return symbol(sym.DIAGNOSTICS,"DIAGNOSTICS"); }

<YYINITIAL> {resDISCONNECT} { return symbol(sym.DISCONNECT,"DISCONNECT"); }

<YYINITIAL> {resDISK} { return symbol(sym.DISK,"DISK"); }

<YYINITIAL> {resDISTINCT} { return symbol(sym.DISTINCT,"DISTINCT"); }

<YYINITIAL> {resDISTURBED} { return symbol(sym.DISTURBED,"DISTURBED"); }

<YYINITIAL> {resDOMAIN} { return symbol(sym.DOMAIN,"DOMAIN"); }

<YYINITIAL> {resDOUBLE} { return symbol(sym.DOUBLE,"DOUBLE"); }

<YYINITIAL> {resDROP} { return symbol(sym.DROP,"DROP"); }

<YYINITIAL> {resDUMP} { return symbol(sym.DUMP,"DUMP"); }

<YYINITIAL> {resELSE} { return symbol(sym.ELSE,"ELSE"); }

<YYINITIAL> {resEND} { return symbol(sym.END,"END"); }

<YYINITIAL> {resENDEXEC} { return symbol(sym.END_EXEC,"END_EXEC"); }

<YYINITIAL> {resERRLVL} { return symbol(sym.ERRLVL,"ERRLVL"); }

<YYINITIAL> {resESCAPE} { return symbol(sym.ESCAPE,"ESCAPE"); }

<YYINITIAL> {resEXCEPT} { return symbol(sym.EXCEPT,"EXCEPT"); }

<YYINITIAL> {resEXCEPTION} { return symbol(sym.EXCEPTION,"EXCEPTION"); }

<YYINITIAL> {resEXEC} { return symbol(sym.EXEC,"EXEC"); }

<YYINITIAL> {resEXECUTE} { return symbol(sym.EXECUTE,"EXECUTE"); }

<YYINITIAL> {resEXISTS} { return symbol(sym.EXISTS,"EXISTS"); }

<YYINITIAL> {resEXIT} { return symbol(sym.EXIT,"EXIT"); }

<YYINITIAL> {resEXTERNAL} { return symbol(sym.EXTERNAL,"EXTERNAL"); }

<YYINITIAL> {resFETCH} { return symbol(sym.FETCH,"FETCH"); }

<YYINITIAL> {resEXTRACT} { return symbol(sym.EXTRACT,"EXTRACT"); }

<YYINITIAL> {resFALSE} { return symbol(sym.FALSE,"FALSE"); }

<YYINITIAL> {resFILE} { return symbol(sym.FILE,"FILE"); }

<YYINITIAL> {resFILLFACTOR} { return symbol(sym.FILLFACTOR,"FILLFACTOR"); }

<YYINITIAL> {resFIRST} { return symbol(sym.FIRST,"FIRST"); }

<YYINITIAL> {resFOR} { return symbol(sym.FOR,"FOR"); }

<YYINITIAL> {resFLOAT} { return symbol(sym.FLOAT,"FLOAT"); }

<YYINITIAL> {resFOREIGN} { return symbol(sym.FOREIGN,"FOREIGN"); }

<YYINITIAL> {resFREETEXT} { return symbol(sym.FREETEXT,"FREETEXT"); }

<YYINITIAL> {resFORTRAN} { return symbol(sym.FORTRAN,"FORTRAN"); }

<YYINITIAL> {resFOUND} { return symbol(sym.FOUND,"FOUND"); }

<YYINITIAL> {resFROM} { return symbol(sym.FROM,"FROM"); }

<YYINITIAL> {resFREETEXTTABLE} { return symbol(sym.FREETEXTTABLE,"FREETEXTTABLE"); }

<YYINITIAL> {resFULL} { return symbol(sym.FULL,"FULL"); }

<YYINITIAL> {resGET} { return symbol(sym.GET,"GET"); }

<YYINITIAL> {resGLOBAL} { return symbol(sym.GLOBAL,"GLOBAL"); }

<YYINITIAL> {resFUNCTION} { return symbol(sym.FUNCTION,"FUNCTION"); }

<YYINITIAL> {resGO} { return symbol(sym.GO,"GO"); }

<YYINITIAL> {resGOTO} { return symbol(sym.GOTO,"GOTO"); }

<YYINITIAL> {resGRANT} { return symbol(sym.GRANT,"GRANT"); }

<YYINITIAL> {resGROUP} { return symbol(sym.GROUP,"GROUP"); }

<YYINITIAL> {resHAVING} { return symbol(sym.HAVING,"HAVING"); }

<YYINITIAL> {resHOLDLOCK} { return symbol(sym.HOLDLOCK,"HOLDLOCK"); }

<YYINITIAL> {resHOUR} { return symbol(sym.HOUR,"HOUR"); }

<YYINITIAL> {resIDENTITY} { return symbol(sym.IDENTITY,"IDENTITY"); }

<YYINITIAL> {resIMMEDIATE} { return symbol(sym.IMMEDIATE,"IMMEDIATE"); }

<YYINITIAL> {resIN} { return symbol(sym.IN,"IN"); }

<YYINITIAL> {resINCLUDE} { return symbol(sym.INCLUDE,"INCLUDE"); }

<YYINITIAL> {resINDEX} { return symbol(sym.INDEX,"INDEX"); }

<YYINITIAL> {resINDICATOR} { return symbol(sym.INDICATOR,"INDICATOR"); }

<YYINITIAL> {resINITIALLY} { return symbol(sym.INITIALLY,"INITIALLY"); }

<YYINITIAL> {resINNER} { return symbol(sym.INNER,"INNER"); }

<YYINITIAL> {resIDENTITY_INSERT} { return symbol(sym.IDENTITY_INSERT,"IDENTITY_INSERT"); }

<YYINITIAL> {resINPUT} { return symbol(sym.INPUT,"INPUT"); }

<YYINITIAL> {resIDENTITYCOL} { return symbol(sym.IDENTITYCOL,"IDENTITYCOL"); }

<YYINITIAL> {resIF} { return symbol(sym.IF,"IF"); }

<YYINITIAL> {resINSENSITIVE} { return symbol(sym.INSENSITIVE,"INSENSITIVE"); }

<YYINITIAL> {resINSERT} { return symbol(sym.INSERT,"INSERT"); }

<YYINITIAL> {resINT} { return symbol(sym.INT,"INT"); }

<YYINITIAL> {resINTEGER} { return symbol(sym.INTEGER,"INTEGER"); }

<YYINITIAL> {resINTERSECT} { return symbol(sym.INTERSECT,"INTERSECT"); }

<YYINITIAL> {resINTERVAL} { return symbol(sym.INTERVAL,"INTERVAL"); }

<YYINITIAL> {resINTO} { return symbol(sym.INTO,"INTO"); }

<YYINITIAL> {resIS} { return symbol(sym.IS,"IS"); }

<YYINITIAL> {resISOLATION} { return symbol(sym.ISOLATION,"ISOLATION"); }

<YYINITIAL> {resJOIN} { return symbol(sym.JOIN,"JOIN"); }

<YYINITIAL> {resKEY} { return symbol(sym.KEY,"KEY"); }

<YYINITIAL> {resKILL} { return symbol(sym.KILL,"KILL"); }

<YYINITIAL> {resLEFT} { return symbol(sym.LEFT,"LEFT"); }

<YYINITIAL> {resLANGUAGE} { return symbol(sym.LANGUAGE,"LANGUAGE"); }

<YYINITIAL> {resLAST} { return symbol(sym.LAST,"LAST"); }

<YYINITIAL> {resLEADING} { return symbol(sym.LEADING,"LEADING"); }

<YYINITIAL> {resLIKE} { return symbol(sym.LIKE,"LIKE"); }

<YYINITIAL> {resLINENO} { return symbol(sym.LINENO,"LINENO"); }

<YYINITIAL> {resLEVEL} { return symbol(sym.LEVEL,"LEVEL"); }

<YYINITIAL> {resLOAD} { return symbol(sym.LOAD,"LOAD"); }

<YYINITIAL> {resMERGE} { return symbol(sym.MERGE,"MERGE"); }

<YYINITIAL> {resLOCAL} { return symbol(sym.LOCAL,"LOCAL"); }

<YYINITIAL> {resNATIONAL} { return symbol(sym.NATIONAL,"NATIONAL"); }

<YYINITIAL> {resLOWER} { return symbol(sym.LOWER,"LOWER"); }

<YYINITIAL> {resNOCHECK} { return symbol(sym.NOCHECK,"NOCHECK"); }

<YYINITIAL> {resMATCH} { return symbol(sym.MATCH,"MATCH"); }

<YYINITIAL> {resNONCLUSTERED} { return symbol(sym.NONCLUSTERED,"NONCLUSTERED"); }

<YYINITIAL> {resMAX} { return symbol(sym.MAX,"MAX"); }

<YYINITIAL> {resNOT} { return symbol(sym.NOT,"NOT"); }

<YYINITIAL> {resMIN} { return symbol(sym.MIN,"MIN"); }

<YYINITIAL> {resNULL} { return symbol(sym.NULL,"NULL"); }

<YYINITIAL> {resMINUTE} { return symbol(sym.MINUTE,"MINUTE"); }

<YYINITIAL> {resMODULE} { return symbol(sym.MODULE,"MODULE"); }

<YYINITIAL> {resNULLIF} { return symbol(sym.NULLIF,"NULLIF"); }

<YYINITIAL> {resOF} { return symbol(sym.OF,"OF"); }

<YYINITIAL> {resMONTH} { return symbol(sym.MONTH,"MONTH"); }

<YYINITIAL> {resNAMES} { return symbol(sym.NAMES,"NAMES"); }

<YYINITIAL> {resOFF} { return symbol(sym.OFF,"OFF"); }

<YYINITIAL> {resNATURAL} { return symbol(sym.NATURAL,"NATURAL"); }

<YYINITIAL> {resOFFSES} { return symbol(sym.OFFSES,"OFFSES"); }

<YYINITIAL> {resNCHAR} { return symbol(sym.NCHAR,"NCHAR"); }

<YYINITIAL> {resNEXT} { return symbol(sym.NEXT,"NEXT"); }

<YYINITIAL> {resNO} { return symbol(sym.NO,"NO"); }

<YYINITIAL> {resON} { return symbol(sym.ON,"ON"); }

<YYINITIAL> {resNONE} { return symbol(sym.NONE,"NONE"); }

<YYINITIAL> {resOPEN} { return symbol(sym.OPEN,"OPEN"); }

<YYINITIAL> {resOPENDATASOURCE} { return symbol(sym.OPENDATASOURCE,"OPENDATASOURCE"); }

<YYINITIAL> {resNUMERIC} { return symbol(sym.NUMERIC,"NUMERIC"); }

<YYINITIAL> {resOCTET_LENGTH} { return symbol(sym.OCTET_LENGTH,"OCTET_LENGTH"); }

<YYINITIAL> {resOPENQUERY} { return symbol(sym.OPENQUERY,"OPENQUERY"); }

<YYINITIAL> {resOPENROWSET} { return symbol(sym.OPENROWSET,"OPENROWSET"); }

<YYINITIAL> {resOPENXML} { return symbol(sym.OPENXML,"OPENXML"); }

<YYINITIAL> {resOPTION} { return symbol(sym.OPTION,"OPTION"); }

<YYINITIAL> {resONLY} { return symbol(sym.ONLY,"ONLY"); }

<YYINITIAL> {resOR} { return symbol(sym.OR,"OR"); }

<YYINITIAL> {resORDER} { return symbol(sym.ORDER,"ORDER"); }

<YYINITIAL> {resOUTER} { return symbol(sym.OUTER,"OUTER"); }

<YYINITIAL> {resOVER} { return symbol(sym.OVER,"OVER"); }

<YYINITIAL> {resPERCENT} { return symbol(sym.PERCENT,"PERCENT"); }

<YYINITIAL> {resPIVOT} { return symbol(sym.PIVOT,"PIVOT"); }

<YYINITIAL> {resPLAN} { return symbol(sym.PLAN,"PLAN"); }

<YYINITIAL> {resOUTPUT} { return symbol(sym.OUTPUT,"OUTPUT"); }

<YYINITIAL> {resPRECISION} { return symbol(sym.PRECISION,"PRECISION"); }

<YYINITIAL> {resPRIMARY} { return symbol(sym.PRIMARY,"PRIMARY"); }

<YYINITIAL> {resPRINT} { return symbol(sym.PRINT,"PRINT"); }

<YYINITIAL> {resPROC} { return symbol(sym.PROC,"PROC"); }

<YYINITIAL> {resOVERLAPS} { return symbol(sym.OVERLAPS,"OVERLAPS"); }

<YYINITIAL> {resPAD} { return symbol(sym.PAD,"PAD"); }

<YYINITIAL> {resPARTIAL} { return symbol(sym.PARTIAL,"PARTIAL"); }

<YYINITIAL> {resPROCEDURE} { return symbol(sym.PROCEDURE,"PROCEDURE"); }

<YYINITIAL> {resPASCAL} { return symbol(sym.PASCAL,"PASCAL"); }

<YYINITIAL> {resPUBLIC} { return symbol(sym.PUBLIC,"PUBLIC"); }

<YYINITIAL> {resPOSITION} { return symbol(sym.POSITION,"POSITION"); }

<YYINITIAL> {resRAISERROR} { return symbol(sym.RAISERROR,"RAISERROR"); }

<YYINITIAL> {resPREPARE} { return symbol(sym.PREPARE,"PREPARE"); }

<YYINITIAL> {resREAD} { return symbol(sym.READ,"READ"); }

<YYINITIAL> {resPRESERVE} { return symbol(sym.PRESERVE,"PRESERVE"); }

<YYINITIAL> {resREADTEXT} { return symbol(sym.READTEXT,"READTEXT"); }

<YYINITIAL> {resPRIOR} { return symbol(sym.PRIOR,"PRIOR"); }

<YYINITIAL> {resRECONFIGURE} { return symbol(sym.RECONFIGURE,"RECONFIGURE"); }

<YYINITIAL> {resPRIVILEGES} { return symbol(sym.PRIVILEGES,"PRIVILEGES"); }

<YYINITIAL> {resREFERENCES} { return symbol(sym.REFERENCES,"REFERENCES"); }

<YYINITIAL> {resREPLICATION} { return symbol(sym.REPLICATION,"REPLICATION"); }

<YYINITIAL> {resREAL} { return symbol(sym.REAL,"REAL"); }

<YYINITIAL> {resRESTORE} { return symbol(sym.RESTORE,"RESTORE"); }

<YYINITIAL> {resRESTRICT} { return symbol(sym.RESTRICT,"RESTRICT"); }

<YYINITIAL> {resRELATIVE} { return symbol(sym.RELATIVE,"RELATIVE"); }

<YYINITIAL> {resRETURN} { return symbol(sym.RETURN,"RETURN"); }

<YYINITIAL> {resRETURNS} { return symbol(sym.RETURNS,"RETURNS"); }

<YYINITIAL> {resREVOKE} { return symbol(sym.REVOKE,"REVOKE"); }

<YYINITIAL> {resRIGHT} { return symbol(sym.RIGHT,"RIGHT"); }

<YYINITIAL> {resROLLBACK} { return symbol(sym.ROLLBACK,"ROLLBACK"); }

<YYINITIAL> {resREVERT} { return symbol(sym.REVERT,"REVERT"); }

<YYINITIAL> {resROWS} { return symbol(sym.ROWS,"ROWS"); }

<YYINITIAL> {resROWCOUNT} { return symbol(sym.ROWCOUNT,"ROWCOUNT"); }

<YYINITIAL> {resSCHEMA} { return symbol(sym.SCHEMA,"SCHEMA"); }

<YYINITIAL> {resSCROLL} { return symbol(sym.SCROLL,"SCROLL"); }

<YYINITIAL> {resROWGUIDCOL} { return symbol(sym.ROWGUIDCOL,"ROWGUIDCOL"); }

<YYINITIAL> {resSECOND} { return symbol(sym.SECOND,"SECOND"); }

<YYINITIAL> {resSECTION} { return symbol(sym.SECTION,"SECTION"); }

<YYINITIAL> {resSELECT} { return symbol(sym.SELECT,"SELECT"); }

<YYINITIAL> {resSESSION} { return symbol(sym.SESSION,"SESSION"); }

<YYINITIAL> {resSESSION_USER} { return symbol(sym.SESSION_USER,"SESSION_USER"); }

<YYINITIAL> {resSET} { return symbol(sym.SET,"SET"); }

<YYINITIAL> {resSIZE} { return symbol(sym.SIZE,"SIZE"); }

<YYINITIAL> {resRULE} { return symbol(sym.RULE,"RULE"); }

<YYINITIAL> {resSMALLINT} { return symbol(sym.SMALLINT,"SMALLINT"); }

<YYINITIAL> {resSAVE} { return symbol(sym.SAVE,"SAVE"); }

<YYINITIAL> {resSOME} { return symbol(sym.SOME,"SOME"); }

<YYINITIAL> {resSECURITYAUDIT} { return symbol(sym.SECURITYAUDIT,"SECURITYAUDIT"); }

<YYINITIAL> {resSPACE} { return symbol(sym.SPACE,"SPACE"); }

<YYINITIAL> {resSEMANTICKEYPHRASETABLE} { return symbol(sym.SEMANTICKEYPHRASETABLE,"SEMANTICKEYPHRASETABLE"); }

<YYINITIAL> {resSQL} { return symbol(sym.SQL,"SQL"); }

<YYINITIAL> {resSQLCA} { return symbol(sym.SQLCA,"SQLCA"); }

<YYINITIAL> {resSEMANTICSIMILARITYDETAILSTABLE} { return symbol(sym.SEMANTICSIMILARITYDETAILSTABLE,"SEMANTICSIMILARITYDETAILSTABLE"); }

<YYINITIAL> {resSQLCODE} { return symbol(sym.SQLCODE,"SQLCODE"); }

<YYINITIAL> {resSEMANTICSIMILARITYTABLE} { return symbol(sym.SEMANTICSIMILARITYTABLE,"SEMANTICSIMILARITYTABLE"); }

<YYINITIAL> {resSQLERROR} { return symbol(sym.SQLERROR,"SQLERROR"); }

<YYINITIAL> {resSQLSTATE} { return symbol(sym.SQLSTATE,"SQLSTATE"); }

<YYINITIAL> {resSQLWARNING} { return symbol(sym.SQLWARNING,"SQLWARNING"); }

<YYINITIAL> {resSUBSTRING} { return symbol(sym.SUBSTRING,"SUBSTRING"); }

<YYINITIAL> {resSUM} { return symbol(sym.SUM,"SUM"); }

<YYINITIAL> {resSETUSER} { return symbol(sym.SETUSER,"SETUSER"); }

<YYINITIAL> {resSHUTDOWN} { return symbol(sym.SHUTDOWN,"SHUTDOWN"); }

<YYINITIAL> {resSYSTEM_USER} { return symbol(sym.SYSTEM_USER,"SYSTEM_USER"); }

<YYINITIAL> {resSTATISTICS} { return symbol(sym.STATISTICS,"STATISTICS"); }

<YYINITIAL> {resTABLE} { return symbol(sym.TABLE,"TABLE"); }

<YYINITIAL> {resTEMPORARY} { return symbol(sym.TEMPORARY,"TEMPORARY"); }

<YYINITIAL> {resTHEN} { return symbol(sym.THEN,"THEN"); }

<YYINITIAL> {resTIME} { return symbol(sym.TIME,"TIME"); }

<YYINITIAL> {resTIMESTAMP} { return symbol(sym.TIMESTAMP,"TIMESTAMP"); }

<YYINITIAL> {resTABLESAMPLE} { return symbol(sym.TABLESAMPLE,"TABLESAMPLE"); }

<YYINITIAL> {resTIMEZONE_HOUR} { return symbol(sym.TIMEZONE_HOUR,"TIMEZONE_HOUR"); }

<YYINITIAL> {resTEXTSIZE} { return symbol(sym.TEXTSIZE,"TEXTSIZE"); }

<YYINITIAL> {resTIMEZONE_MINUTE} { return symbol(sym.TIMEZONE_MINUTE,"TIMEZONE_MINUTE"); }

<YYINITIAL> {resTO} { return symbol(sym.TO,"TO"); }

<YYINITIAL> {resTRAILING} { return symbol(sym.TRAILING,"TRAILING"); }

<YYINITIAL> {resTOP} { return symbol(sym.TOP,"TOP"); }

<YYINITIAL> {resTRANSACTION} { return symbol(sym.TRANSACTION,"TRANSACTION"); }

<YYINITIAL> {resTRAN} { return symbol(sym.TRAN,"TRAN"); }

<YYINITIAL> {resTRANSLATE} { return symbol(sym.TRANSLATE,"TRANSLATE"); }

<YYINITIAL> {resTRANSLATION} { return symbol(sym.TRANSLATION,"TRANSLATION"); }

<YYINITIAL> {resTRIM} { return symbol(sym.TRIM,"TRIM"); }

<YYINITIAL> {resTRIGGER} { return symbol(sym.TRIGGER,"TRIGGER"); }

<YYINITIAL> {resTRUNCATE} { return symbol(sym.TRUNCATE,"TRUNCATE"); }

<YYINITIAL> {resTRUE} { return symbol(sym.TRUE,"TRUE"); }

<YYINITIAL> {resUNION} { return symbol(sym.UNION,"UNION"); }

<YYINITIAL> {resUNIQUE} { return symbol(sym.UNIQUE,"UNIQUE"); }

<YYINITIAL> {resTRY_CONVERT} { return symbol(sym.TRY_CONVERT,"TRY_CONVERT"); }

<YYINITIAL> {resUNKNOWN} { return symbol(sym.UNKNOWN,"UNKNOWN"); }

<YYINITIAL> {resTSEQUAL} { return symbol(sym.TSEQUAL,"TSEQUAL"); }

<YYINITIAL> {resUPDATE} { return symbol(sym.UPDATE,"UPDATE"); }

<YYINITIAL> {resUPPER} { return symbol(sym.UPPER,"UPPER"); }

<YYINITIAL> {resUSAGE} { return symbol(sym.USAGE,"USAGE"); }

<YYINITIAL> {resUSER} { return symbol(sym.USER,"USER"); }

<YYINITIAL> {resUNPIVOT} { return symbol(sym.UNPIVOT,"UNPIVOT"); }

<YYINITIAL> {resUSING} { return symbol(sym.USING,"USING"); }

<YYINITIAL> {resVALUE} { return symbol(sym.VALUE,"VALUE"); }

<YYINITIAL> {resVALUES} { return symbol(sym.VALUES,"VALUES"); }

<YYINITIAL> {resVARCHAR} { return symbol(sym.VARCHAR,"VARCHAR"); }

<YYINITIAL> {resVARYING} { return symbol(sym.VARYING,"VARYING"); }

<YYINITIAL> {resUPDATETEXT} { return symbol(sym.UPDATETEXT,"UPDATETEXT"); }

<YYINITIAL> {resVIEW} { return symbol(sym.VIEW,"VIEW"); }

<YYINITIAL> {resUSE} { return symbol(sym.USE,"USE"); }

<YYINITIAL> {resWHEN} { return symbol(sym.WHEN,"WHEN"); }

<YYINITIAL> {resWHENEVER} { return symbol(sym.WHENEVER,"WHENEVER"); }

<YYINITIAL> {resWHERE} { return symbol(sym.WHERE,"WHERE"); }

<YYINITIAL> {resWITH} { return symbol(sym.WITH,"WITH"); }

<YYINITIAL> {resWAITFOR} { return symbol(sym.WAITFOR,"WAITFOR"); }

<YYINITIAL> {resWORK} { return symbol(sym.WORK,"WORK"); }

<YYINITIAL> {resWRITE} { return symbol(sym.WRITE,"WRITE"); }

<YYINITIAL> {resYEAR} { return symbol(sym.YEAR,"YEAR"); }

<YYINITIAL> {resWHILE} { return symbol(sym.WHILE,"WHILE"); }

<YYINITIAL> {resZONE} { return symbol(sym.ZONE,"ZONE"); }

<YYINITIAL> {resWITHINGROUP} { return symbol(sym.WITHINGROUP,"WITHINGROUP"); }

<YYINITIAL> {resWRITETEXT} { return symbol(sym.WRITETEXT,"WRITETEXT"); }


//FIN RESERVADAS
{DBit} {
    return symbol(sym.DBit,"DBit");
}

{Entero} {
	//TOKENS.add(new MyTOKEN(yytext(), "Entero", yycolumn, yyline)) ;
    return symbol(sym.Entero,"Entero");
	}

{Boolean} {
	//TOKENS.add(new MyTOKEN(yytext(), "Boolean", yycolumn, yyline));
    return symbol(sym.Boolean,"Boolean");
	}

{Float} {
	//TOKENS.add(new MyTOKEN(yytext(), "Float", yycolumn, yyline));
    return symbol(sym.Float,"Float");
	}

{Cadena} {
	//TOKENS.add(new MyTOKEN(yytext(), "Cadena", yycolumn, yyline));
    return symbol(sym.Cadena,"Cadena");
	}

{Cadenaerror} {//ArchivoEscribir = ArchivoEscribir + "Error en la col: " + yycolumn + " fila: " + yyline + " Cadena sin cerrar"+ "\n";
	//TOKENS.add(new MyTOKEN(yytext(), "ERROR", yycolumn, yyline));
    return symbol(sym.ERROR,"ERROR");
}

{ComentarioLinea} {
	////TOKENS.add(new MyTOKEN(yytext(), "Comentario.Linea", yycolumn, yyline));
    //return symbol(sym.ComentarioLinea,"ComentarioLinea");
	}

{ComentarioMultiliena} {
	
	////TOKENS.add(new MyTOKEN(yytext(), "Comentario.Multilinea", yycolumn, yyline));
    //return symbol(sym.ComentarioMultiliena,"ComentarioMultiliena");
	//System.out.println(yytext());
	
	}
//{ComentarioMultilienaerror} {ArchivoEscribir = ArchivoEscribir + "Error en la col: " + yycolumn + " fila: " + yyline + " Comentario multilinea sin cerrar"+ "\n";}

{Signomas} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signomas,"Signomas");
	}

{Signomenos} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signomenos,"Signomenos");
	}

{Signomult} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signomult,"Signomult");
	}

{Signodiv} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signodiv,"Signodiv");
	}

{Signoporcentaje} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signoporcentaje,"Signoporcentaje");
	}

{Signomayor} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signomayor,"Signomayor");
	}

{Signomayorigual} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signomayorigual,"Signomayorigual");
	}

{Signomenor} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signomenor,"Signomenor");
	}

{Signomenorigual} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signomenorigual,"Signomenorigual");
	}

{Signoigual} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signoigual,"Signoigual");
	}

{Signoigualigual} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signoigualigual,"Signoigualigual");
	}

{Signonotigual} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signonotigual,"Signonotigual");
	}

{Signoyy} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signoyy,"Signoyy");
	}

{Signoor} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signoor,"Signoor");
	}

{Signoadmiracion} {
	//TOKENS.add(new MyTOKEN(yytext(), "Operador", yycolumn, yyline));
    return symbol(sym.Signoadmiracion,"Signoadmiracion");
	}

{Puntoycoma} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Puntoycoma,"Puntoycoma");
	}

{Coma} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Coma,"Coma");
	}

{Punto} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Punto,"Punto");
	}

{Corcheteapertura} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Corcheteapertura,"Corcheteapertura");
	}

{Corchetecerradura} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Corchetecerradura,"Corchetecerradura");
	}

{Corchetes} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Corchetes,"Corchetes");
	}

{Parentesisapertura} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Parentesisapertura,"Parentesisapertura");
	}

{Parentesiscerradura} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Parentesiscerradura,"Parentesiscerradura");
	}

{Parentesis} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Parentesis,"Parentesis");
	}

{Llaveapertura} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Llaveapertura,"Llaveapertura");
	}

{Llavecerradura} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Llavecerradura,"Llavecerradura");
	}

{Llaves} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Llaves,"Llaves");
	}

{Arroba} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Arroba,"Arroba");
	}

{Sharp} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Sharp,"Sharp");
	}

{Sharpsharp} {
	//TOKENS.add(new MyTOKEN(yytext(), "Simbolo", yycolumn, yyline));
    return symbol(sym.Sharpsharp,"Sharpsharp");
	}
 
{Identificador} { 
	if(yylength() < 31)
	{
		//TOKENS.add(new MyTOKEN(yytext(), "Identificador", yycolumn, yyline));
        return symbol(sym.Identificador,"Identificador");
	}else{
		Advertencia(yyline, yycolumn);
		//TOKENS.add(new MyTOKEN(yytext(), "Identificador", yycolumn, yyline)) ;
        return symbol(sym.Identificador,"Identificador");
	}
}

{Espacio} {/*Hacer nada equisde*/}

[^] {
	//TOKENS.add(new MyTOKEN(yytext(), "ERROR", yycolumn, yyline));
    return symbol(sym.ERROR,"ERROR");
	//ArchivoEscribir = ArchivoEscribir + "Error en la col: " + yycolumn + " fila: " + yyline + " Caracter no Reconocido" + "\n";
}
