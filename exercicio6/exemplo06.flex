%%
%standalone
%line
%column
%class Ex06

letra = [A-Za-z]
digito = [0-9]
digitos = {digito}{digito}*
ident = {letra}({letra}|{digito})*

KW_IF = "if"
KW_WHILE = "while"
KW_INT = "int"
KW_FLOAT = "float"
KW_DOUBLE = "double"
KW_CHAR = "char"
KW_STRING = "String"
KW_BOOL = "boolean"
KW_PRINT = "print"

fimdeLinha = \r|\n|\r\n
branco = " "
espaco = ({fimdeLinha}|[ \t]|{branco})*

KW_COUT = "cout"
concat = "<<"
qualquerLetra = .
texto = {qualquerLetra}*
msgTela = {KW_COUT}{espaco}{concat}{espaco}{texto}

tipoVariavel = {KW_INT}|{KW_FLOAT}|{KW_DOUBLE}|{KW_CHAR}|{KW_STRING}|{KW_BOOL}
variavelCompleta = {tipoVariavel}{espaco}{ident}{espaco}"="{espaco}{texto}";"
%%

{msgTela} {System.out.println("<msgTela: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }
{variavelCompleta} {System.out.println("<dec com atribuicao: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }
