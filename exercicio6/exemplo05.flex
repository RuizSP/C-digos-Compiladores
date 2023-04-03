%%

%standalone

%%
[0-9] { System.out.print(" digito "); }
[A-Za-z] { System.out.print(" letra "); }
("if"|"while"|"for"|"final"|"main") { System.out.print(" Key_words "); }
