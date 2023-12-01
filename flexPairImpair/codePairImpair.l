%{
#include <stdio.h>
%}

%%
[0-9]+(0|2|4|6|8) {printf("%d est un nombre pair.\n", atoi(yytext));}
[0-9]+(1|3|5|7|9) {printf("%d est un nombre impair.\n", atoi(yytext));}
[0-9]+ {printf("Nombre valide : %s\n", yytext);}
.+ {printf("le mot non n'appartient a aucun caratére : %s\n", yytext);}

%%

int main() {
    yylex();
    return 0;
}

