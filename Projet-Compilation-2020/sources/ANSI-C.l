D                       [0-9]
L                       [a-zA-Z_]
/*H                       [a-fA-F0-9]
E                       [Ee][+-]?{D}+
FS                      (f|F|l|L)
IS                      (u|U|l|L)* */

%{
#include <stdio.h>
#include "y.tab.h"
#include <stdlib.h>
<<<<<<< HEAD
/* Ne g�re pas les commentaires. A rajouter */
=======
/* Ne gère pas les commentaires. A rajouter */
>>>>>>> master
/* Supprimer les lignes dont vous n'avez pas besoin. */

%}

%%
"else"                  { return ELSE ; }
"extern"                { return EXTERN ;}
"for"                   { return FOR ; }
"goto"                  { return GOTO ;}
"if"                    { return IF ;}
"int"                   { return INT ;}
"return"                { return RETURN ;}
"sizeof"                { return SIZEOF ;}
"struct"                { return STRUCT ;}
"void"                  { return VOID ;}
"while"                 { return WHILE ;}

<<<<<<< HEAD
{L}({L}|{D})*           { yylval=atoi(yytext) ; return IDENTIFIER ;}
{D}+			{ yylval=atoi(yytext) ; return CONSTANT;}
=======
{L}({L}|{D})*           { yylval=atoi(yytext) ;return IDENTIFIER ;}
{D}+			{return CONSTANT;}
>>>>>>> master

"->"                    { return PTR_OP ;}
"&&"                    { return AND_OP ;}
"||"                    { return OR_OP ;}
"<="                    { return LE_OP ;}
">="                    { return GE_OP ;}
"=="                    { return EQ_OP ;}
"!="                    { return NE_OP ;}

[ \t\v\n\f]             ;
.                       { return yytext[0]; }
%%

