%{
#include <stdio.h>
#include "y.tab.h"
%}

letra		[a-zA-Z]
digito		[0-9]
numEntero	{digito}+
id		{letra}({letra}|{digito})*

%%
{id}		return ID;
{numEntero}	{yylval=atoi(yytext); return NUM;}
"="		return OP_IGUAL;
"+"		return OP_SUMA;
\n		return SL;
" "		;
\t		;
.		;
%%

int yywrap() {}
