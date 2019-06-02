%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
[\t]+ 
is|am|are|were|was|be|being|been|do|does|did|will|would|should|can|could|has|had|have|go|went|gone {printf("%s\t is a verb\n",yytext);}

[a-zA-Z]+ {printf("%s\t is not a verb\n",yytext);}
.|\n {ECHO;}
%%

int main(int argc,char* argv[])
{
	yyin = fopen(argv[1],"r");

	yylex();
	return 0;
}
