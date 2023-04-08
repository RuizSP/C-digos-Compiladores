%%

%standalone
%line
%column
%class Ex04

letra = [A-Za-z]
digito = [0-9]
digitos = {digito}{digito}*
ident = {letra}({letra}|{digito})*
fracao ="\."{digitos}|ε
exponencial =("E"("+"|"-")?{digitos})?
numReal = {digitos}{fracao}{exponencial}

%%

{numReal} {System.out.println("<num: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }

{ident} {System.out.println("<ident: "+ yytext()+ ", linha:"+ yyline + ", coluna:"+ yycolumn +">" ); }
