# LEX-and-YACC-Codes
Contains some basic codes that I wrote for practising LEX and YACC.

Commands for Running stuff in configFileScanner:

$ lex myscanner.l 

$ gcc myscanner.c lex.yy.c -o myscanner

$ ./myscanner <config.in

Commands for Running stuff in basicCalculator:

$ yaac -d calculator.y

$ lex calculator.l 

$ gcc y.tab.c lex.yy.c 

$ ./a.out
