%{
#include<stdio.h>
int no_1,no_2;
%}
no_sequence [0-9]*
%%
{no_sequence}[0|2|4|6|8] {printf("even no [%d]",yyleng);return atoi(yytext);}

{no_sequence}[1|3|5|7|9] {printf("odd no [%d]",yyleng);return atoi(yytext);}
%%

int main()
{
	printf("\n enter the even and odd no:\n");
	no_1=yylex();
	no_2=yylex();
	
	int diff=no_1 - no_2;
	if(diff % 2 !=0)
	{
		printf("\n input are correct");
	}
	else
		printf("\n input are not correct");
	return 0;
}
