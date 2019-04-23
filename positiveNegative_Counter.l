%{#include <stdio.h>
int posnum=0;
int negnum=0;
%}
%%
[+]?[0-9]+ {posnum++;}
[-][0-9]+ {negnum++;}
%%

main(int argc,char* argv[])
{
	if(argc==1)
		printf("Please enter a source file.\n");
	yyin = fopen(argv[1],"r");
	yylex();
		printf("Positive number = %d\n Negative number = %d\n",posnum,negnum);
}
