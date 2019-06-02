  
%{ 
#include<stdio.h> 
int lc=0, sc=0, tc=0, ch=0; /*Global variables*/
%} 
  
/*Rule Section*/
%% 
[\n] lc++; //line counter 
[' '] sc++; //space counter 
[\t] tc++; //tab counter 
[^\t\n] ch++;     //characters counter 
%% 
  
main(int argc,char* argv[]) 
{ 
    if(argc==1)
		printf("Please enter a source file.\n");
	yyin = fopen(argv[1],"r");
	yylex();
    yylex(); 
      
    printf("\nNo. of lines=%d", lc);   
    printf("\nNo. of spaces=%d", sc); 
    printf("\nNo. of tabs=%d", tc); 
    printf("\nNo. of other characters=%d\n", ch); 
      
} 
