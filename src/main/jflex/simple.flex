package com.pi;

import java_cup.runtime.*;

%%
%class Scanner
%cup

%public
%class Analyser

digit = [0-9];
letter = [a-zA-Z];
whitespace = [ \t\r]
%type Token

%eofval{
    return new Token(TokenConstant.EOF, null);
%eofval}

%%

{letter}({letter}|{digit})* {return new Token(TokenConstants.ID, yytext());}
{digit}+ {return new Token(TokenConstants.NUM, yytext());}
[^] {throw new Error("La cadena is ilegal -> " + yytext());}