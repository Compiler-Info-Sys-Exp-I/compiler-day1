SOURCES = parser.mly lexer.mll calc.ml
RESULT = calc

all: bc

clean::
	$(RM) *.cmt *.cmi

-include OCamlMakefile
