run:
	bison -yd sintactico.y
	flex lexico.l
	gcc y.tab.c lex.yy.c -lfl -o sintactico
	clear
	./sintactico < codigo.txt
