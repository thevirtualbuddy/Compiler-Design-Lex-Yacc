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
	
	int x,check=0;
	for(x=2;x<=i/2;x++)
	{	
		check=0;
		if(i%x==0)
		{
			check=1;
			break;
		}
	}
	if(check==1)
		printf("Not prime\n");
	else
		printf("Prime\n");
}
