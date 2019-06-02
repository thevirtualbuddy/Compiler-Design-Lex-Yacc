%{#include<stdio.h>

int posint=0;
int negint=0;
%}
%%
[+]?[0-9]?+\.[0-9]+ {posint++;}  
[-][0-9]?+\.[0-9]+ {negint++;}	

[+]?[0-9]+ {posint++;} 
[-][0-9]+ {negint++;} 
%%

main(int argc,char*argv[])
{
        if(argc==1)
        {
                printf("please insert a source file");
        }
        yyin=fopen(argv[1],"r");
        yylex();
        printf("no of +ve int = %d \n no of -ve int = %d\n",posint,negint);
}
