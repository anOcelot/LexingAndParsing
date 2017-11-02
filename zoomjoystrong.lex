%{
/*
* A lex file defining tokens for a programmatic drawing app
* Written by Pieter Holleman, October 2017
*
*/
#include <stdio.h>
#include "zoomjoystrong.tab.h"
#include "zoomjoystrong.h"

%}

%option noyywrap
%%
; {
	return END_STATEMENT;

} 

point { 
	return POINT;
} 

line {
	return LINE;
}

circle {
	return CIRCLE;
}

rectangle {
	return RECTANGLE;
}

set_color {
	return SET_COLOR; 
}

end {
	return END;
}

(-?[0-9]+) {
	yylval.intVal = atoi(yytext);
	return INTEGER;
};


(-?[0-9]+)\.([0-9]+) {
	yylval.floatVal = atof(yytext);
	printf("float");
	return FLOATVAL;
}


.|\n {
   ;
}




       
%%




