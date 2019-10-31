SET JAVA_HOME="C:\Program Files\Java\jdk1.8.0_111\bin"
SET PATH=%JAVA_HOME%;%PATH%
SET CLASSPATH=%JAVA_HOME%;
cd D:\Proyectos\AnalizadorLexico\MiniSQL\src\Analizadores
java -jar C:\cup\lib\java-cup-11b.jar -parser MiniSQL -expect 24 Parser.cup 
pause
