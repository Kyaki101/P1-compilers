import java_cup.runtime.*;

%%

%class Lexer
%unicode
%public
%type java_cup.runtime.Symbol

%{
  // Definir variables o importaciones si es necesario
  int currentToken;
%}

%%

NUMERO      = [0-9]+
MAS         = "+"
MENOS       = "-"
POR         = "*"
ENTRE       = "/"
PARENIZQ    = "("
PARENDER    = ")"
ESPACIOS    = [ \t\n\r]+

%%

<YYINITIAL> {
  {NUMERO}     { return new Symbol(sym.NUMERO, Integer.parseInt(yytext())); }
  {MAS}        { return new Symbol(sym.MAS); }
  {MENOS}      { return new Symbol(sym.MENOS); }
  {POR}        { return new Symbol(sym.POR); }
  {ENTRE}      { return new Symbol(sym.ENTRE); }
  {PARENIZQ}   { return new Symbol(sym.PARENIZQ); }
  {PARENDER}   { return new Symbol(sym.PARENDER); }
  {ESPACIOS}   { /* Ignorar espacios, tabulaciones y saltos de línea */ }
  .            { return new Symbol(sym.ERROR); }
}