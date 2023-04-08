%%
%standalone
%line
%column
%class Ex05

letra = [A-Za-z]
digito = [0-9]
digitos = {digito}{digito}*
ident = {letra}({letra}|{digito})*

fimdeLinha = \r|\n|\r\n
branco = " "
espaco = ({fimdeLinha}|[ \t]|{branco})*

KW_COUT = "cout"
concat = "<<"
qualquerLetra = .
texto = {qualquerLetra}*
msgTela = {KW_COUT}{espaco}{concat}{espaco}{texto}

%%

{msgTela} {System.out.println("<msgTela: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }
