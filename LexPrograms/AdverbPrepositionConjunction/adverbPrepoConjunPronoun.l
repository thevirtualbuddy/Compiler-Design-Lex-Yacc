%{
#include <stdio.h>
#include <stdlib.h>
%}

%%

very|simply|gently|calmly|angrily {printf("%s\t is an adverb\n",yytext);}

to|from|behind|above|below|between {printf("%s\t is a preposition\n",yytext);}

if|then|but|and|or {printf("%s\t is a conjunction\n",yytext);}

happy|sad|upset|joy|merry {printf("%s\t is an adjective\n",yytext);}

I|you|he|she|we|they {printf("%s\t is a pronoun\n",yytext);}

[a-zA-Z]+ {printf("%s\t don't recognize, might be a noun\n",yytext);}
.|\n {ECHO;}
%%

int main(int argc,char* argv[])
{
	yyin = fopen(argv[1],"r");

	yylex();
	return 0;
}
