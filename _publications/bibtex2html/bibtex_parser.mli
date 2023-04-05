type token =
  | Tident of (string)
  | Tstring of (string)
  | Tcomment of (string)
  | Tentry of (string * string)
  | Tabbrev
  | Tpreamble
  | Tlbrace
  | Trbrace
  | Tcomma
  | Tequal
  | EOF
  | Tsharp

val command_list :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Bibtex.biblio
val command :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Bibtex.command
