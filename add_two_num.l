%{
#include <stdio.h>
#include <stdlib.h>
%}
dgt [0-9]
%%
{dgt}+ return atoi(yytext);
%%

int main(int argc,char* argv[])
{
	if(argc==1)
	{
		printf("Enter a source file");
		return 0;
	}
	yyin = fopen(argv[1],"r");

	int val1, total=0, n=0;
	while((val1=yylex())>0)
	{
		total+=val1;

	}
		
	if(n>0)
		printf("Sum = %d\n",total);
	return 0;
}
