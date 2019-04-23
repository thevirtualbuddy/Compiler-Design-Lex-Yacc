%{#include <stdio.h>
int countword=0;
%}
%%
[a-zA-Z0-9]* {countword++;}

%%

int main(int argc,char* argv[])
{
	if(argc==1)
		printf("Please enter a source file.\n");
	yyin = fopen(argv[1],"r");
	yylex();
		printf("Total words = %d\n",countword);
	return 0;
}
