%{
#include <stdio.h>
%}

%%

[0-9]+ {
    printf("Nombre valide : %s\n", yytext);
}

.+ {
    printf("le mot non n'appartient a aucun caratére : %s\n", yytext);
}

%%

int main() {
    yylex();
    return 0;
}

