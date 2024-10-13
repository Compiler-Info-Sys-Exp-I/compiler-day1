(* File lexer.mll *)
{
open Parser        (* The type token is defined in parser.mli *)
exception Eof      (* Defition of exception *)
}

rule token = parse
| [' ']          { token lexbuf  }
| ['\t']         { token lexbuf  }
| ['\n' ]        { EOL }
| ['0'-'9']+     { INT(int_of_string(Lexing.lexeme lexbuf)) }
| '+'            { PLUS }
| '*'            { TIMES  }
| '('            { LPAREN }
| ')'            { RPAREN }
| eof            { raise Eof }
