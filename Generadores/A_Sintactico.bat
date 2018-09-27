SET JAVA_HOME="C:\Program Files\Java\jdk1.8.0_181\bin"
SET PATH=%JAVA_HOME%;%PATH%
SET CLASSPATH=%JAVA_HOME%;
cd "C:\Universidad\Sexto Semestre\Compiladores\Lab1\LexerYScanner\JFlexYCupFin\src\Analizadores"
java -jar "C:\Universidad\Sexto Semestre\Compiladores\Cup\java-cup-11b.jar" -parser analisis_sintactico -symbols Simbolos A_Sintactico.cup
pause
