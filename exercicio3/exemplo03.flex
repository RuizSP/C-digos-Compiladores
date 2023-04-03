%%
%standalone
%line
%column
%class Ex03

KW_IF = "if"
KW_WHILE = "while"
KW_INT = "int"
KW_FLOAT = "float"
KW_DOUBLE = "double"
KW_CHAR = "char"
KW_STRING = "String"
KW_BOOL = "boolean"
KW_PRINT = "print"
digitos = [0-9]
letras = [a-zA-Z]
tipo = {KW_BOOL}|{KW_INT}|{KW_CHAR}|{KW_DOUBLE}|{KW_FLOAT}|{KW_INT}|{KW_STRING}
ident = ({letras})({letras}|{digitos})*
variavel = (\t)*{tipo}(" ")+{ident}(";")

%%

{KW_IF} {System.out.println("<if: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }

{KW_WHILE} {System.out.println("<while: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }

{KW_INT} {System.out.println("<int: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }

{KW_FLOAT} {System.out.println("<float: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }

{KW_DOUBLE} {System.out.println("<double: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }

{KW_CHAR} {System.out.println("<char: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }

{KW_STRING} {System.out.println("<string: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }

{KW_BOOL} {System.out.println("<bool: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }

{KW_PRINT} {System.out.println("<print: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }
{variavel} {System.out.println("<variavel: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" );}