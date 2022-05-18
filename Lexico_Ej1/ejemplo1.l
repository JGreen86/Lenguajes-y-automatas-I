%{
	int noLineas;
%}
%%
pera|manzana|uva	printf("%s es una fruta\n", yytext);
cebolla|apio|zanahoria	printf("%s es una verdura\n", yytext);
\n			{printf("noLinea=%d\n",noLineas);noLineas++;}
.			;
%%

int yywrap() {}

int main(){
	yylex();
	return 0;
}
