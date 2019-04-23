%{
#include <stdio.h>
#include <stdlib.h>
%}
dgt [0-9]
%%
{dgt}+ return atoi(yytext);
%%

int main(int argc,char* argv[])
{
	if(argc==1)
	{
		printf("Enter a source file");
		return 0;
	}
	yyin = fopen(argv[1],"r");

	int arr[20],arrodd[20],arreven[20],val1, total=0, n=0;
	while((val1=yylex())>0)
	{
		arr[n]=val1;
		n++;
	}
		
	int i,evencount=0,oddcount=0;
	if(n>0)
	{
		for(i=0;i<n;i++)
		{
			//printf("The number is %d ",arr[i]);
			if(arr[i]%2==0)
			{
				arreven[evencount]=arr[i];
				evencount++;
			}
			else
			{
				arrodd[oddcount]=arr[i];
				oddcount++;
			}
		}
		printf("The list of odd numbers are:\t");
		for(i=0;i<oddcount;i++)
		{	
			printf("%d\t",arrodd[i]);
		}
		printf("\nThe list of even numbers are:\t");
		for(i=0;i<evencount;i++)
		{
			printf("%d\t",arreven[i]);
		}
		printf("\n");

	}
	return 0;
}
