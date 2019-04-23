%{#include <stdio.h>
int countline=0;
%}
%%
{

	.*\n   printf("%d\t%s",++countline,yytext);
}
%%

int main(int argc,char* argv[])
{
	if(argc==1)
		printf("Please enter a source file.\n");
	yyin = fopen(argv[1],"r");
	yylex();
		printf("Total lines = %d\n",countline);
	return 0;
}
