%{#include <stdio.h>
#include <stdlib.h>
int i;
%}
%%
[0-9]+ {i=atoi(yytext);}
%%

main(int argc,char* argv[])
{
	if(argc==1)
		printf("Please enter a source file.\n");
	yyin = fopen(argv[1],"r");
	yylex();
		if(i%2==0)
			printf("Even\n");
		else
			printf("Odd\n");
}
