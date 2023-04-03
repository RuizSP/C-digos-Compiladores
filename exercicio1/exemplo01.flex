%%

%standalone
%class exercicio1
%line
%column

parLetra = (aa | bb | (ab|ba)(bb|aa)*(ba|ab) )*

%%
{parLetra} { System.out.print("<numero par a e b:"+ yytext()+", linha:"+ yyline +", coluna:"+ yycolumn +">" ); } 
