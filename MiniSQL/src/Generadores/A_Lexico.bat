SET JAVA_HOME="C:\Program Files\Java\jdk1.8.0_111\bin"
SET PATH=%JAVA_HOME%;%PATH%
SET CLASSPATH=%JAVA_HOME%;
cd D:\Proyectos\AnalizadorLexico\MiniSQL\src\Analizadores
java -jar C:\jflex-1.7.0\lib\jflex-full-1.7.0.jar Lexer.jflex
pause
