%{ 
%}
  
/*Rule Section*/ 
%%   
\/\/(.*) {};                      
\/\*(.*\n)*.*\*\/  {};
%% 
  
/*Driver function*/ 
int main() 
{
yyin=fopen("in.c","r"); 
yyout=fopen("out.c","w"); 
yylex(); 
return 0; 
} 

