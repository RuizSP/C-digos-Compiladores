%%
%standalone
%line
%column
%class Ex07

letra = [a-zA-Z]
letraAsc = [a-zA-ZÀ-ÿ]
digito = [0-9]
digitos = {digito}{digito}*
ident = {letra}({letra}|{digito})*

fimdeLinha = \r|\n|\r\n
branco = " "
espaco = ({fimdeLinha}|[ \t]|{branco})*

KW_IF = "if"
KW_WHILE = "while"
KW_INT = "int"
KW_FLOAT = "float"
KW_DOUBLE = "double"
KW_CHAR = "char"
KW_STRING = "String"
KW_BOOL = "boolean"
KW_PRINT = "print"
tipoVariavel = {KW_INT}|{KW_FLOAT}|{KW_DOUBLE}|{KW_CHAR}|{KW_STRING}|{KW_BOOL}

conteudoVar = {ident}|{digitos}|{charArray}|{numReal}
variavelCompleta = {tipoVariavel}{espaco}{ident}{espaco}"="{espaco}{conteudoVar}";"

KW_COUT = "cout"
concat = "<<"
//qualquerLetra = .
branco = " "
charArray = "\""{texto}"\""
espaco = ({fimdeLinha}|[ \t]|{branco})*
texto = {letraAsc}({espaco}{letraAsc})*
formatMSG = {KW_COUT}({espaco}{concat}{espaco}{charArray})
//msgTela = {formatMSG}";"
msgTela = {formatMSG}({espaco}{concat}{espaco}{ident})?";"

declaracaoVariavel = {tipoVariavel}{espaco}{ident}";"
atribuicaoVar = {ident}{espaco}"="{espaco}{conteudoVar}";"

fimdeLinha = \r|\n|\r\n
branco = " "
espaco = ({fimdeLinha}|[ \t]|{branco})*
fracao ="\."{digitos}|ε
exponencial =("E"("+"|"-")?{digitos})?
numReal = "-"?{digitos}{fracao}{exponencial}

exprecao = {ident}|{numReal}|{digitos}
comparador = "=="|"<"|">"|">="|"<="|"!="
condicao = "("{espaco}{exprecao}{espaco}{comparador}{espaco}{exprecao}{espaco}")"
iniBloco = "{"
finBloco = "}"

%%

{msgTela} {System.out.println("<msgTela: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }

//{msgTelaVar} {System.out.println("<msgTela com variavel: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }

{variavelCompleta} {System.out.println("<dec com atribuicao: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }

{declaracaoVariavel} {System.out.println("<declaracaoVar: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }

{atribuicaoVar} {System.out.println("<atribuicaoVar: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }

{KW_IF} {System.out.println("<if: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }

{KW_WHILE} {System.out.println("<while: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }

{KW_INT} {System.out.println("<int: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }

{KW_FLOAT} {System.out.println("<float: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }

{KW_DOUBLE} {System.out.println("<double: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }

{KW_CHAR} {System.out.println("<char: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }

{KW_STRING} {System.out.println("<string: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }

{KW_BOOL} {System.out.println("<bool: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }

{KW_PRINT} {System.out.println("<print: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }

{numReal} {System.out.println("<num: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }

{condicao} {System.out.println("<Condicao: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }

{iniBloco} {System.out.println("<inicio Bloco: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }

{finBloco} {System.out.println("<fim Bloco: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }