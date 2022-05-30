%{
#include "analyze.h"
%}
%option nounput yylineno

%%
=					return EQUAL;
"name"				return NAME;
"lastname"			return LASTNAME;
"country"			return COUNTRY;
"year"				return YEAR;

[a-zA-Z][_a-zA-Z0-9]*	return IDENTIFIER;
[1-9][0-9]*				return INTEGER;
[ \t\n]					;
.					printf("Error\n");

%%

int yywrap(void)
{
	return 1;
}

