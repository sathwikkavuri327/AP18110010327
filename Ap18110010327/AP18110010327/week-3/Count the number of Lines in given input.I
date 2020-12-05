%{ 
#include<stdio.h>

int num_lines=0;

%}

%%

\n {++num_lines;}

%%

int main(int argc[],char *argv[])
{
 yyin=fopen("number.txt", "r"); 
 yylex();
 printf("n# of lines: %d",num_lines);
 printf("\n"); 
 return 0;
}

int yywrap()
{
  return 1;
}