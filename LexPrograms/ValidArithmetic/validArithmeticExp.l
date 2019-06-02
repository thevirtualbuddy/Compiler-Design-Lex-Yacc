%{
#include <stdio.h>
int a=0,s=0,m=0,d=0,ob=0,cb=0;
int flaga=0,flags=0,flagm=0,flagd=0;
%}
id [a-zA-Z]+

%%
{id} {printf("\n%s is an identifier\n",yytext);}
[+] {a++;flaga=1;}
[-] {s++;flags=1;}
[*] {m++;flagm=1;}
[/] {d++;flagd=1;}
[(] {ob++;}
[)] {cb++;}
%%

int main(int argc, char* argv[])
{
	yyin = fopen(argv[1],"r");
	yylex();
	
	if(ob-cb==0)
		printf("Valid Expression\n");
	else
		printf("Invalid Expression\n");

	printf("\nAdd=%d\nSub=%d\nMul=%d\nDiv=%d\n",a,s,m,d);

	if(flaga)
		printf("+\n");
	if(flags)
		printf("-\n");
	if(flagm)
		printf("*\n");
	if(flagd)
		printf("/\n");

	return 0;
}
