%{
#include <stdio.h>
#include <stdlib.h>
%}
%%
[\t]+ {fprintf(yyout," ");}
[" "]+  {fprintf(yyout," ");}
^[\n] {fprintf(yyout,"%s","");}
. {fprintf(yyout,"%s",yytext);}
%%
int main(int argc,char *argv[])
{

	yyin=fopen("a.txt","r");
	yyout=fopen("b.txt","w");
	yylex();
	return 0;
}
