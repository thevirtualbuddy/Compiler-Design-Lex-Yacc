%{#include <stdio.h>
#include <string.h>
int wordc=1,linec=1;
char ch[30];
char str[50];
%}
%%
[\n]	{linec++;wordc=1;}
[a-zA-Z0-9]* {if((strcmp(yytext,str)==0)){printf("Word found in line no %d and word no %d\n",linec,wordc);}else wordc++;}
%%

int main(int argc,char* argv[])
{
	if(argc==1)
		printf("Please enter a source file.\n");
	yyin = fopen(argv[1],"r");
	printf("Enter the word to search: ");
	scanf("%s",str);
	yylex();
		//printf("Total words = %d\n",countword);
	return 0;
}
