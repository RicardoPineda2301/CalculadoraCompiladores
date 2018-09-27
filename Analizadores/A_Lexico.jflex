/*---------1er Area: Codigo de Usuario -------*/
// ------------> Paquetes e importaciones
package Analizadores;
import java_cup.runtime.*;
import java.util.LinkedList;

/*---------2da Area: Opciones y Declaraciones -------*/
%%
%{
    // -----> Codigo de usuario en sintaxis Java
    public static  LinkedList<TError> TablaEL = new LinkedList<TError>();
%}

// ------------> Directivas
%public 
%class Analizador_Lexico
%cupsym Simbolos
%cup
%char
%column
%full
%ignorecase
%line
%unicode

// ---------> Expresiones Regulares
numero = ([0-9]*[.])?[0-9]+

// ---------> Estados

%%
/*---------3ra Area: Reglas Lexicas -------*/

// ------> Simbolos

<YYINITIAL> "+"  { System.out.println("Dato reconocido: " + yytext() + " mas"); return new Symbol(Simbolos.mas, yycolumn, yyline, yytext()); }
<YYINITIAL> "-"  { System.out.println("Dato reconocido: " + yytext() + " menos"); return new Symbol(Simbolos.menos, yycolumn, yyline, yytext()); }
<YYINITIAL> "*"  { System.out.println("Dato reconocido: " + yytext() + " por"); return new Symbol(Simbolos.por, yycolumn, yyline, yytext()); }
<YYINITIAL> "/"  { System.out.println("Dato reconocido: " + yytext() + " div"); return new Symbol(Simbolos.div, yycolumn, yyline, yytext()); }
<YYINITIAL> "("  { System.out.println("Dato reconocido: " + yytext() + " parentesis abre"); return new Symbol(Simbolos.para, yycolumn, yyline, yytext()); }
<YYINITIAL> ")"  { System.out.println("Dato reconocido: " + yytext() + " parentesis cierra"); return new Symbol(Simbolos.parc, yycolumn, yyline, yytext()); }

// ------------> Simbolos ER
<YYINITIAL> {numero}   { System.out.println("Dato reconocido: " + yytext() + " num"); return new Symbol(Simbolos.num, yycolumn, yyline, yytext()); }

// ---------> Espacios en blanco
[ \t\r\n\f]         {/* Espacios en blanco se ignoran*/}

// --------> Errores Lexicos
.        { System.out.println("Error Lexico"+yytext()+" Linea de error: " + yyline + "columna de error: " + yycolumn);
            TError datos = new TError(yytext(), yyline, yycolumn, "Error Lexico", "Simbolo no existe");
            TablaEL.add(datos);}






