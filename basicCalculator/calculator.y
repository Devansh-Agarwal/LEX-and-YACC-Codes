%token INTEGER VARIABLE
%left '+' '-'
%left '*' '/'

%{
	#include <stdio.h>
	#include <stdlib.h>
	void yyerror(char *);
	void end();	
	int yylex(void);
	int sym[52];
%}
%%
para    : para statement '\n'
	|
	;
statement:expr 		{ printf("%d\n", $1); }
	 | VARIABLE '=' expr 	{ sym[$1] = $3; }
	 ;
expr:	INTEGER
	| VARIABLE { $$ = sym[$1]; }
	| expr '+' expr { $$ = $1 + $3; }
	| expr '-' expr { $$ = $1 - $3; }
	| expr '*' expr { $$ = $1 * $3; }
	| expr '/' expr { $$ = $1 / $3; }
	| '(' expr ')' { $$ = $2; }
	;
%%
void yyerror(char *s) 
	{

	printf("%s\n", s);

	}
void end()
{
	exit(0);
}
int main(void) 
{
	yyparse();
	return 0;
}
