%{
	int linea;

	#define TDATO	1
	#define ID	2
	#define OP	3
	#define NUM	4
	#define SIGNP	5

%}
letra	[a-zA-Z]
digito	[0-9]
id	{letra}({letra}*{digito}*)
op	"="|"=="|"<"
num	{digito}({digito}*"."{digito}*)?
%%
(i)(n)(t)		return TDATO;
(d)(o)(u)(b)(l)(e)	return TDATO;
{id}			return ID;
{op}			return OP;
";"			return SIGNP;
{num}			return NUM;
\n			linea++;
.			;

%%

int yywrap() {}

int main(){
int token = yylex();
while(token) {
	printf("Token de tipo %d reconocido en linea %d: %s\n",token,linea,yytext);
	token=yylex();
}
return 0;
}



























