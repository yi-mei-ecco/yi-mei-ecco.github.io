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

open Parsing;;
let _ = parse_error;;
# 38 "bibtex_parser.mly"

  open Bibtex

# 22 "bibtex_parser.ml"
let yytransl_const = [|
  261 (* Tabbrev *);
  262 (* Tpreamble *);
  263 (* Tlbrace *);
  264 (* Trbrace *);
  265 (* Tcomma *);
  266 (* Tequal *);
    0 (* EOF *);
  267 (* Tsharp *);
    0|]

let yytransl_block = [|
  257 (* Tident *);
  258 (* Tstring *);
  259 (* Tcomment *);
  260 (* Tentry *);
    0|]

let yylhs = "\255\255\
\001\000\003\000\003\000\002\000\002\000\002\000\002\000\005\000\
\006\000\006\000\006\000\007\000\007\000\008\000\008\000\004\000\
\004\000\009\000\009\000\000\000\000\000"

let yylen = "\002\000\
\002\000\002\000\000\000\001\000\003\000\005\000\004\000\001\000\
\003\000\001\000\002\000\003\000\002\000\001\000\001\000\003\000\
\001\000\001\000\001\000\002\000\002\000"

let yydefred = "\000\000\
\003\000\000\000\000\000\020\000\000\000\004\000\008\000\000\000\
\000\000\021\000\000\000\001\000\002\000\000\000\018\000\019\000\
\000\000\000\000\000\000\000\000\005\000\000\000\014\000\015\000\
\000\000\000\000\000\000\000\000\016\000\007\000\000\000\000\000\
\006\000\009\000\012\000"

let yydgoto = "\003\000\
\004\000\010\000\005\000\017\000\011\000\025\000\026\000\027\000\
\018\000"

let yysindex = "\009\000\
\000\000\000\255\000\000\000\000\001\000\000\000\000\000\018\255\
\012\255\000\000\255\254\000\000\000\000\010\255\000\000\000\000\
\013\255\011\255\006\255\012\255\000\000\012\255\000\000\000\000\
\015\255\016\255\014\255\019\255\000\000\000\000\006\255\012\255\
\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\007\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\020\255\000\000\000\000\000\000\000\000\021\255\009\255\
\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\021\000\000\000\236\255\000\000\255\255\000\000\000\000\
\000\000"

let yytablesize = 263
let yytable = "\028\000\
\012\000\029\000\006\000\007\000\008\000\009\000\023\000\019\000\
\024\000\001\000\002\000\035\000\015\000\016\000\017\000\017\000\
\013\000\013\000\014\000\020\000\021\000\022\000\030\000\032\000\
\031\000\013\000\033\000\010\000\011\000\034\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\006\000\007\000\008\000\009\000"

let yycheck = "\020\000\
\000\000\022\000\003\001\004\001\005\001\006\001\001\001\009\001\
\003\001\001\000\002\000\032\000\001\001\002\001\008\001\009\001\
\008\001\009\001\001\001\010\001\008\001\011\001\008\001\010\001\
\009\001\005\000\008\001\008\001\008\001\031\000\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\003\001\004\001\005\001\006\001"

let yynames_const = "\
  Tabbrev\000\
  Tpreamble\000\
  Tlbrace\000\
  Trbrace\000\
  Tcomma\000\
  Tequal\000\
  EOF\000\
  Tsharp\000\
  "

let yynames_block = "\
  Tident\000\
  Tstring\000\
  Tcomment\000\
  Tentry\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'commands) in
    Obj.repr(
# 55 "bibtex_parser.mly"
               ( _1 )
# 176 "bibtex_parser.ml"
               : Bibtex.biblio))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'commands) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Bibtex.command) in
    Obj.repr(
# 60 "bibtex_parser.mly"
     ( add_new_entry _2 _1 )
# 184 "bibtex_parser.ml"
               : 'commands))
; (fun __caml_parser_env ->
    Obj.repr(
# 62 "bibtex_parser.mly"
     ( empty_biblio )
# 190 "bibtex_parser.ml"
               : 'commands))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 66 "bibtex_parser.mly"
     ( Comment _1 )
# 197 "bibtex_parser.ml"
               : Bibtex.command))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'sharp_string_list) in
    Obj.repr(
# 68 "bibtex_parser.mly"
     ( Preamble _2 )
# 204 "bibtex_parser.ml"
               : Bibtex.command))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'sharp_string_list) in
    Obj.repr(
# 70 "bibtex_parser.mly"
     ( Abbrev (String.lowercase_ascii _2,_4) )
# 212 "bibtex_parser.ml"
               : Bibtex.command))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'entry) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'comma_field_list) in
    Obj.repr(
# 72 "bibtex_parser.mly"
     ( let et,key = _1 in Entry (String.lowercase_ascii et, key, _3) )
# 220 "bibtex_parser.ml"
               : Bibtex.command))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string * string) in
    Obj.repr(
# 77 "bibtex_parser.mly"
     ( let et,key = _1 in Bibtex.current_key := key; (et,key) )
# 227 "bibtex_parser.ml"
               : 'entry))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'field) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'comma_field_list) in
    Obj.repr(
# 81 "bibtex_parser.mly"
     ( _1::_3 )
# 235 "bibtex_parser.ml"
               : 'comma_field_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'field) in
    Obj.repr(
# 83 "bibtex_parser.mly"
     ( [_1] )
# 242 "bibtex_parser.ml"
               : 'comma_field_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'field) in
    Obj.repr(
# 85 "bibtex_parser.mly"
     ( [_1] )
# 249 "bibtex_parser.ml"
               : 'comma_field_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'field_name) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'sharp_string_list) in
    Obj.repr(
# 89 "bibtex_parser.mly"
     ( (_1,_3) )
# 257 "bibtex_parser.ml"
               : 'field))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'field_name) in
    Obj.repr(
# 91 "bibtex_parser.mly"
     ( (_1,[String ""]) )
# 264 "bibtex_parser.ml"
               : 'field))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 94 "bibtex_parser.mly"
            ( String.lowercase_ascii _1 )
# 271 "bibtex_parser.ml"
               : 'field_name))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 95 "bibtex_parser.mly"
            ( "comment" )
# 278 "bibtex_parser.ml"
               : 'field_name))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'atom) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'sharp_string_list) in
    Obj.repr(
# 99 "bibtex_parser.mly"
     ( _1::_3 )
# 286 "bibtex_parser.ml"
               : 'sharp_string_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'atom) in
    Obj.repr(
# 101 "bibtex_parser.mly"
     ( [_1] )
# 293 "bibtex_parser.ml"
               : 'sharp_string_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 105 "bibtex_parser.mly"
     ( Id (String.lowercase_ascii _1) )
# 300 "bibtex_parser.ml"
               : 'atom))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 107 "bibtex_parser.mly"
     ( String _1 )
# 307 "bibtex_parser.ml"
               : 'atom))
(* Entry command_list *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
(* Entry command *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let command_list (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Bibtex.biblio)
let command (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 2 lexfun lexbuf : Bibtex.command)
;;
