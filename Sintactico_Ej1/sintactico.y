%{
#include <stdio.h>
extern int yylex();
void yyerror(const char* s);
%}

%token ID OP_IGUAL OP_SUMA NUM SL
%start instrucciones
%%

instrucciones	: instrucciones instruccion
		| instruccion
		;
instruccion	: ID OP_IGUAL expresion SL	{printf("%d\n", $3);}
		;
expresion	: expresion OP_SUMA termino	{$$ = $1 + $3;}
		| termino
		;
termino		: NUM
		;
%%

int main() {

	yyparse();
	return 0;
}

void yyerror(const char* s) {
	printf("%s\n",s);
}
