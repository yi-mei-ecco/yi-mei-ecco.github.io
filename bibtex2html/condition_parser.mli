type token =
  | IDENT of (string)
  | STRING of (string)
  | COMP of (string)
  | INT of (string)
  | COLON
  | AND
  | OR
  | NOT
  | LPAR
  | RPAR
  | DOLLAR_KEY
  | DOLLAR_TYPE
  | EXISTS
  | EOF

val condition_start :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Condition.condition
