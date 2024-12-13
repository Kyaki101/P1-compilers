package com.pi;

%%

%public
%class Analyser

digit = [0-9];
letter = [a-zA-Z];
whitespace = [ \t\r]
%type Token

%eofval{
    //return new Token(TokenConstant.EOF, null);
%eofval}

%%


{letter}({letter}|{digit})* {/*bruh*/}
{digit}+ {/* */}