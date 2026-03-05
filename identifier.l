%{
#include <stdio.h>
%}

%%
[a-zA-Z][a-zA-Z0-9]*    { printf("%s is IDENTIFIER\n", yytext); }
[0-9][a-zA-Z0-9]*      { printf("%s is NOT AN IDENTIFIER\n", yytext); }
.                      { printf("%s is NOT AN IDENTIFIER\n", yytext); }
\n                     { /* ignore newline */ }
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter input:\n");
    yylex();
    return 0;
}
