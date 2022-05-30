analyze: analyze.c analyze.h lex.yy.c
	cc analyze.c lex.yy.c -ll -o analyze 

lex.yy.c: analyze.l
	lex analyze.l

clean:
	rm analyze
	rm lex.yy.c
