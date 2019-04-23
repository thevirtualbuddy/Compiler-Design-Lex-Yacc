%{#include <stdio.h>
#include <stdlib.h>
int countv=0, countletter=0;
%}
%%
[aeiouAEIOU] {countv++;}
[a-zA-Z] {countletter++;}
%%

main(int argc,char* argv[])
{
	if(argc==1)
		printf("Please enter a source file.\n");
	yyin = fopen(argv[1],"r");
	yylex();
		printf("%d consonants and %d vowel\n",countletter,countv);
}
