# 19 "latex_accents.mll"
 

  let string_buf = Buffer.create 79
                     
  let add_string s = Buffer.add_string string_buf s

  let add lexbuf = Buffer.add_string string_buf (Lexing.lexeme lexbuf)

  let produce_regexp = ref false


# 14 "latex_accents.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base =
   "\000\000\203\255\204\255\205\255\206\255\207\255\208\255\209\255\
    \210\255\211\255\212\255\213\255\214\255\215\255\216\255\217\255\
    \218\255\219\255\220\255\221\255\222\255\223\255\224\255\225\255\
    \226\255\227\255\228\255\229\255\230\255\231\255\232\255\233\255\
    \234\255\235\255\236\255\237\255\238\255\239\255\240\255\241\255\
    \242\255\243\255\244\255\245\255\246\255\247\255\248\255\249\255\
    \250\255\251\255\252\255\253\255\254\255\255\255\001\000\244\255\
    \245\255\246\255\247\255\248\255\249\255\001\000\252\255\253\255\
    \254\255\255\255\000\000\001\000\003\000\251\255\250\255\037\000\
    \244\255\245\255\246\255\000\000\247\255\248\255\249\255\250\255\
    \251\255\252\255\253\255\254\255\066\000\255\255\005\000\002\000\
    \007\000\008\000\011\000\012\000\015\000\016\000\018\000\019\000\
    \021\000\022\000\000\000\190\000\243\255\244\255\245\255\003\000\
    \246\255\247\255\248\255\249\255\250\255\251\255\252\255\253\255\
    \254\255\189\000\255\255\024\000\004\000\025\000\027\000\028\000\
    \030\000\031\000\032\000\034\000\036\000\037\000\039\000\001\000\
    \219\000\243\255\244\255\245\255\006\000\246\255\247\255\248\255\
    \249\255\250\255\251\255\252\255\253\255\254\255\249\000\255\255\
    \040\000\007\000\041\000\043\000\044\000\045\000\047\000\048\000\
    \049\000\050\000\051\000\053\000\002\000\252\000\244\255\245\255\
    \246\255\008\000\247\255\248\255\249\255\250\255\251\255\252\255\
    \253\255\254\255\026\001\255\255\054\000\009\000\055\000\056\000\
    \057\000\059\000\060\000\061\000\062\000\063\000\064\000\065\000\
    \003\000\005\001\248\255\249\255\250\255\251\255\252\255\253\255\
    \254\255\199\000\255\255\066\000\072\000\073\000\083\000\090\000\
    \091\000\047\001\248\255\249\255\250\255\010\000\251\255\252\255\
    \253\255\254\255\052\001\255\255\096\000\012\000\097\000\098\000\
    \105\000\115\000\122\000\123\000\004\000\080\001\244\255\245\255\
    \246\255\015\000\247\255\248\255\249\255\250\255\251\255\252\255\
    \253\255\254\255\095\001\255\255\128\000\016\000\135\000\136\000\
    \140\000\141\000\142\000\145\000\146\000\147\000\148\000\151\000\
    \005\000\071\001\250\255\251\255\252\255\253\255\254\255\218\000\
    \255\255\154\000\155\000\158\000\160\000";
  Lexing.lex_backtrk =
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\010\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\010\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\010\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\008\000\255\255\255\255\255\255\255\255\011\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\011\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\009\000\
    \255\255\255\255\255\255\255\255\011\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\011\000\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\009\000\255\255\255\255\255\255\
    \255\255\010\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\010\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \008\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\006\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\006\000\255\255\255\255\
    \255\255\255\255\006\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\004\000\255\255\255\255\255\255\
    \255\255\010\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\010\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \008\000\255\255\255\255\255\255\255\255\255\255\255\255\004\000\
    \255\255\255\255\255\255\255\255\255\255";
  Lexing.lex_default =
   "\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\056\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\255\255\000\000\000\000\
    \000\000\000\000\255\255\255\255\255\255\000\000\000\000\073\000\
    \000\000\000\000\000\000\255\255\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\255\255\000\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\101\000\000\000\000\000\000\000\255\255\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\255\255\000\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \130\000\000\000\000\000\000\000\255\255\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\255\255\000\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\159\000\000\000\000\000\
    \000\000\255\255\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\255\255\000\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\187\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\255\255\000\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\203\000\000\000\000\000\000\000\255\255\000\000\000\000\
    \000\000\000\000\255\255\000\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\223\000\000\000\000\000\
    \000\000\255\255\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\255\255\000\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\251\000\000\000\000\000\000\000\000\000\000\000\255\255\
    \000\000\255\255\255\255\255\255\255\255";
  Lexing.lex_trans =
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\098\000\127\000\156\000\184\000\220\000\248\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\065\000\000\000\000\000\000\000\000\000\
    \064\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\067\000\000\000\000\000\000\000\000\000\
    \000\000\058\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\053\000\000\000\000\000\062\000\
    \000\000\063\000\000\000\068\000\061\000\000\000\080\000\000\000\
    \000\000\098\000\077\000\097\000\127\000\126\000\074\000\156\000\
    \155\000\184\000\183\000\220\000\079\000\219\000\059\000\060\000\
    \248\000\247\000\078\000\052\000\066\000\051\000\070\000\057\000\
    \069\000\075\000\074\000\092\000\076\000\077\000\085\000\089\000\
    \078\000\079\000\081\000\086\000\080\000\081\000\076\000\082\000\
    \083\000\091\000\085\000\076\000\083\000\102\000\104\000\090\000\
    \106\000\107\000\082\000\108\000\109\000\110\000\087\000\111\000\
    \084\000\112\000\114\000\096\000\104\000\131\000\133\000\093\000\
    \135\000\136\000\137\000\088\000\138\000\139\000\140\000\141\000\
    \143\000\095\000\133\000\160\000\162\000\163\000\164\000\094\000\
    \165\000\166\000\167\000\168\000\169\000\171\000\162\000\188\000\
    \018\000\028\000\007\000\045\000\038\000\189\000\190\000\049\000\
    \015\000\025\000\004\000\035\000\013\000\023\000\003\000\033\000\
    \191\000\047\000\017\000\027\000\006\000\043\000\037\000\192\000\
    \194\000\016\000\026\000\005\000\036\000\204\000\206\000\207\000\
    \022\000\032\000\012\000\046\000\042\000\105\000\208\000\050\000\
    \019\000\029\000\009\000\039\000\014\000\024\000\008\000\034\000\
    \209\000\048\000\021\000\031\000\011\000\044\000\041\000\211\000\
    \206\000\020\000\030\000\010\000\040\000\224\000\121\000\109\000\
    \001\000\055\000\118\000\106\000\226\000\227\000\115\000\102\000\
    \198\000\228\000\229\000\230\000\120\000\108\000\231\000\232\000\
    \233\000\235\000\119\000\107\000\226\000\195\000\197\000\252\000\
    \253\000\116\000\103\000\254\000\138\000\000\001\125\000\114\000\
    \135\000\000\000\122\000\110\000\131\000\072\000\117\000\104\000\
    \200\000\002\001\137\000\000\000\124\000\112\000\000\000\001\001\
    \136\000\000\000\123\000\111\000\000\000\196\000\199\000\132\000\
    \000\000\113\000\150\000\134\000\143\000\166\000\147\000\000\000\
    \139\000\163\000\144\000\000\000\133\000\160\000\191\000\000\000\
    \149\000\004\001\141\000\165\000\000\000\000\000\148\000\003\001\
    \140\000\164\000\000\000\188\000\190\000\145\000\142\000\000\000\
    \161\000\000\000\154\000\178\000\000\000\171\000\151\000\175\000\
    \000\000\167\000\146\000\172\000\000\000\162\000\194\000\000\000\
    \153\000\177\000\000\000\169\000\000\000\000\000\152\000\176\000\
    \000\000\168\000\000\000\189\000\192\000\000\000\173\000\170\000\
    \204\000\000\000\000\000\182\000\000\000\212\000\000\000\179\000\
    \193\000\209\000\207\000\174\000\000\000\000\000\217\000\215\000\
    \000\000\181\000\000\000\205\000\000\000\000\000\000\000\180\000\
    \213\000\230\000\000\000\000\000\000\000\227\000\253\000\000\000\
    \206\000\224\000\000\000\000\000\252\000\214\000\000\000\229\000\
    \242\000\211\000\208\000\000\000\239\000\228\000\218\000\216\000\
    \236\000\000\000\210\000\000\000\225\000\000\000\241\000\000\000\
    \000\000\235\000\000\000\000\000\240\000\231\000\000\001\000\000\
    \000\000\226\000\000\000\237\000\254\000\000\000\100\000\233\000\
    \246\000\000\000\255\000\000\000\243\000\232\000\000\000\000\000\
    \238\000\000\000\000\000\234\000\000\000\000\000\245\000\000\000\
    \000\000\000\000\000\000\000\000\244\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\129\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\158\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\186\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\202\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\250\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \222\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    ";
  Lexing.lex_check =
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\098\000\127\000\156\000\184\000\220\000\248\000\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\054\000\255\255\255\255\255\255\255\255\
    \054\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\066\000\255\255\255\255\255\255\255\255\
    \255\255\054\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\000\000\255\255\255\255\054\000\
    \255\255\054\000\255\255\066\000\054\000\255\255\071\000\255\255\
    \255\255\075\000\071\000\087\000\103\000\116\000\071\000\132\000\
    \145\000\161\000\173\000\205\000\071\000\213\000\054\000\054\000\
    \225\000\237\000\071\000\000\000\061\000\000\000\067\000\054\000\
    \068\000\071\000\086\000\084\000\088\000\089\000\071\000\084\000\
    \090\000\091\000\071\000\084\000\092\000\093\000\071\000\094\000\
    \095\000\084\000\096\000\097\000\071\000\115\000\117\000\084\000\
    \118\000\119\000\071\000\120\000\121\000\122\000\084\000\123\000\
    \071\000\124\000\125\000\084\000\126\000\144\000\146\000\084\000\
    \147\000\148\000\149\000\084\000\150\000\151\000\152\000\153\000\
    \154\000\084\000\155\000\172\000\174\000\175\000\176\000\084\000\
    \177\000\178\000\179\000\180\000\181\000\182\000\183\000\195\000\
    \000\000\000\000\000\000\000\000\000\000\196\000\197\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \198\000\000\000\000\000\000\000\000\000\000\000\000\000\199\000\
    \200\000\000\000\000\000\000\000\000\000\212\000\214\000\215\000\
    \000\000\000\000\000\000\000\000\000\000\099\000\216\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \217\000\000\000\000\000\000\000\000\000\000\000\000\000\218\000\
    \219\000\000\000\000\000\000\000\000\000\236\000\113\000\099\000\
    \000\000\054\000\113\000\099\000\238\000\239\000\113\000\099\000\
    \193\000\240\000\241\000\242\000\113\000\099\000\243\000\244\000\
    \245\000\246\000\113\000\099\000\247\000\193\000\193\000\001\001\
    \002\001\113\000\099\000\003\001\128\000\004\001\113\000\099\000\
    \128\000\255\255\113\000\099\000\128\000\071\000\113\000\099\000\
    \193\000\255\000\128\000\255\255\113\000\099\000\255\255\255\000\
    \128\000\255\255\113\000\099\000\255\255\193\000\193\000\128\000\
    \255\255\099\000\142\000\128\000\128\000\157\000\142\000\255\255\
    \128\000\157\000\142\000\255\255\128\000\157\000\185\000\255\255\
    \142\000\255\000\128\000\157\000\255\255\255\255\142\000\255\000\
    \128\000\157\000\255\255\185\000\185\000\142\000\128\000\255\255\
    \157\000\255\255\142\000\170\000\255\255\157\000\142\000\170\000\
    \255\255\157\000\142\000\170\000\255\255\157\000\185\000\255\255\
    \142\000\170\000\255\255\157\000\255\255\255\255\142\000\170\000\
    \255\255\157\000\255\255\185\000\185\000\255\255\170\000\157\000\
    \201\000\255\255\255\255\170\000\255\255\210\000\255\255\170\000\
    \185\000\201\000\201\000\170\000\255\255\255\255\210\000\210\000\
    \255\255\170\000\255\255\201\000\255\255\255\255\255\255\170\000\
    \210\000\221\000\255\255\255\255\255\255\221\000\249\000\255\255\
    \201\000\221\000\255\255\255\255\249\000\210\000\255\255\221\000\
    \234\000\201\000\201\000\255\255\234\000\221\000\210\000\210\000\
    \234\000\255\255\201\000\255\255\221\000\255\255\234\000\255\255\
    \255\255\221\000\255\255\255\255\234\000\221\000\249\000\255\255\
    \255\255\221\000\255\255\234\000\249\000\255\255\099\000\221\000\
    \234\000\255\255\249\000\255\255\234\000\221\000\255\255\255\255\
    \234\000\255\255\255\255\221\000\255\255\255\255\234\000\255\255\
    \255\255\255\255\255\255\255\255\234\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\128\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\157\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\185\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\201\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\249\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \221\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    ";
  Lexing.lex_base_code =
   "";
  Lexing.lex_backtrk_code =
   "";
  Lexing.lex_default_code =
   "";
  Lexing.lex_trans_code =
   "";
  Lexing.lex_check_code =
   "";
  Lexing.lex_code =
   "";
}

let rec next_char lexbuf =
   __ocaml_lex_next_char_rec lexbuf 0
and __ocaml_lex_next_char_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 34 "latex_accents.mll"
        ( control lexbuf )
# 295 "latex_accents.ml"

  | 1 ->
# 35 "latex_accents.mll"
        ( next_char lexbuf )
# 300 "latex_accents.ml"

  | 2 ->
# 36 "latex_accents.mll"
        ( next_char lexbuf )
# 305 "latex_accents.ml"

  | 3 ->
# 37 "latex_accents.mll"
        ( add_string "&ccedil;" ; next_char lexbuf )
# 310 "latex_accents.ml"

  | 4 ->
# 38 "latex_accents.mll"
        ( add_string "&Ccedil;" ; next_char lexbuf )
# 315 "latex_accents.ml"

  | 5 ->
# 39 "latex_accents.mll"
        ( add_string "&ntilde;"; next_char lexbuf )
# 320 "latex_accents.ml"

  | 6 ->
# 40 "latex_accents.mll"
        ( add_string "&Ntilde;"; next_char lexbuf )
# 325 "latex_accents.ml"

  | 7 ->
# 41 "latex_accents.mll"
        ( add_string "&atilde;"; next_char lexbuf )
# 330 "latex_accents.ml"

  | 8 ->
# 42 "latex_accents.mll"
        ( add_string "&Atilde;"; next_char lexbuf )
# 335 "latex_accents.ml"

  | 9 ->
# 43 "latex_accents.mll"
        ( add_string "&otilde;"; next_char lexbuf )
# 340 "latex_accents.ml"

  | 10 ->
# 44 "latex_accents.mll"
        ( add_string "&Otilde;"; next_char lexbuf )
# 345 "latex_accents.ml"

  | 11 ->
# 45 "latex_accents.mll"
        ( add_string "&auml;"; next_char lexbuf )
# 350 "latex_accents.ml"

  | 12 ->
# 46 "latex_accents.mll"
        ( add_string "&ouml;"; next_char lexbuf )
# 355 "latex_accents.ml"

  | 13 ->
# 47 "latex_accents.mll"
        ( add_string "&uuml;"; next_char lexbuf )
# 360 "latex_accents.ml"

  | 14 ->
# 48 "latex_accents.mll"
        ( add_string "&euml;"; next_char lexbuf )
# 365 "latex_accents.ml"

  | 15 ->
# 49 "latex_accents.mll"
        ( add_string "&Auml;"; next_char lexbuf )
# 370 "latex_accents.ml"

  | 16 ->
# 50 "latex_accents.mll"
        ( add_string "&Ouml;"; next_char lexbuf )
# 375 "latex_accents.ml"

  | 17 ->
# 51 "latex_accents.mll"
        ( add_string "&Uuml;"; next_char lexbuf )
# 380 "latex_accents.ml"

  | 18 ->
# 52 "latex_accents.mll"
        ( add_string "&Euml;"; next_char lexbuf )
# 385 "latex_accents.ml"

  | 19 ->
# 53 "latex_accents.mll"
        ( add_string "&iuml;"; next_char lexbuf )
# 390 "latex_accents.ml"

  | 20 ->
# 54 "latex_accents.mll"
        ( add_string "&Iuml;"; next_char lexbuf )
# 395 "latex_accents.ml"

  | 21 ->
# 55 "latex_accents.mll"
        ( add_string "&aacute;"; next_char lexbuf )
# 400 "latex_accents.ml"

  | 22 ->
# 56 "latex_accents.mll"
        ( add_string "&oacute;"; next_char lexbuf )
# 405 "latex_accents.ml"

  | 23 ->
# 57 "latex_accents.mll"
        ( add_string "&uacute;"; next_char lexbuf )
# 410 "latex_accents.ml"

  | 24 ->
# 58 "latex_accents.mll"
        ( add_string "&eacute;"; next_char lexbuf )
# 415 "latex_accents.ml"

  | 25 ->
# 59 "latex_accents.mll"
        ( add_string "&Aacute;"; next_char lexbuf )
# 420 "latex_accents.ml"

  | 26 ->
# 60 "latex_accents.mll"
        ( add_string "&Oacute;"; next_char lexbuf )
# 425 "latex_accents.ml"

  | 27 ->
# 61 "latex_accents.mll"
        ( add_string "&Uacute;"; next_char lexbuf )
# 430 "latex_accents.ml"

  | 28 ->
# 62 "latex_accents.mll"
        ( add_string "&Eacute;"; next_char lexbuf )
# 435 "latex_accents.ml"

  | 29 ->
# 63 "latex_accents.mll"
        ( add_string "&iacute;"; next_char lexbuf )
# 440 "latex_accents.ml"

  | 30 ->
# 64 "latex_accents.mll"
        ( add_string "&Iacute;"; next_char lexbuf )
# 445 "latex_accents.ml"

  | 31 ->
# 65 "latex_accents.mll"
        ( add_string "&agrave;"; next_char lexbuf )
# 450 "latex_accents.ml"

  | 32 ->
# 66 "latex_accents.mll"
        ( add_string "&ograve;"; next_char lexbuf )
# 455 "latex_accents.ml"

  | 33 ->
# 67 "latex_accents.mll"
        ( add_string "&ugrave;"; next_char lexbuf )
# 460 "latex_accents.ml"

  | 34 ->
# 68 "latex_accents.mll"
        ( add_string "&egrave;"; next_char lexbuf )
# 465 "latex_accents.ml"

  | 35 ->
# 69 "latex_accents.mll"
        ( add_string "&Agrave;"; next_char lexbuf )
# 470 "latex_accents.ml"

  | 36 ->
# 70 "latex_accents.mll"
        ( add_string "&Ograve;"; next_char lexbuf )
# 475 "latex_accents.ml"

  | 37 ->
# 71 "latex_accents.mll"
        ( add_string "&Ugrave;"; next_char lexbuf )
# 480 "latex_accents.ml"

  | 38 ->
# 72 "latex_accents.mll"
        ( add_string "&Egrave;"; next_char lexbuf )
# 485 "latex_accents.ml"

  | 39 ->
# 73 "latex_accents.mll"
        ( add_string "&igrave;"; next_char lexbuf )
# 490 "latex_accents.ml"

  | 40 ->
# 74 "latex_accents.mll"
        ( add_string "&Igrave;"; next_char lexbuf )
# 495 "latex_accents.ml"

  | 41 ->
# 75 "latex_accents.mll"
        ( add_string "&acirc;"; next_char lexbuf )
# 500 "latex_accents.ml"

  | 42 ->
# 76 "latex_accents.mll"
        ( add_string "&ocirc;"; next_char lexbuf )
# 505 "latex_accents.ml"

  | 43 ->
# 77 "latex_accents.mll"
        ( add_string "&ucirc;"; next_char lexbuf )
# 510 "latex_accents.ml"

  | 44 ->
# 78 "latex_accents.mll"
        ( add_string "&ecirc;"; next_char lexbuf )
# 515 "latex_accents.ml"

  | 45 ->
# 79 "latex_accents.mll"
        ( add_string "&icirc;"; next_char lexbuf )
# 520 "latex_accents.ml"

  | 46 ->
# 80 "latex_accents.mll"
        ( add_string "&Acirc;"; next_char lexbuf )
# 525 "latex_accents.ml"

  | 47 ->
# 81 "latex_accents.mll"
        ( add_string "&Ocirc;"; next_char lexbuf )
# 530 "latex_accents.ml"

  | 48 ->
# 82 "latex_accents.mll"
        ( add_string "&Ucirc;"; next_char lexbuf )
# 535 "latex_accents.ml"

  | 49 ->
# 83 "latex_accents.mll"
        ( add_string "&Ecirc;"; next_char lexbuf )
# 540 "latex_accents.ml"

  | 50 ->
# 84 "latex_accents.mll"
        ( add_string "&Icirc;"; next_char lexbuf )
# 545 "latex_accents.ml"

  | 51 ->
# 85 "latex_accents.mll"
        ( add lexbuf ; next_char lexbuf )
# 550 "latex_accents.ml"

  | 52 ->
# 86 "latex_accents.mll"
        ( () )
# 555 "latex_accents.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_next_char_rec lexbuf __ocaml_lex_state

and control lexbuf =
   __ocaml_lex_control_rec lexbuf 54
and __ocaml_lex_control_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 92 "latex_accents.mll"
                     ( quote_char lexbuf )
# 567 "latex_accents.ml"

  | 1 ->
# 93 "latex_accents.mll"
                     ( right_accent lexbuf )
# 572 "latex_accents.ml"

  | 2 ->
# 94 "latex_accents.mll"
                     ( left_accent lexbuf )
# 577 "latex_accents.ml"

  | 3 ->
# 95 "latex_accents.mll"
                     ( hat lexbuf )
# 582 "latex_accents.ml"

  | 4 ->
# 96 "latex_accents.mll"
                     ( add_string "&ccedil;" ; next_char lexbuf )
# 587 "latex_accents.ml"

  | 5 ->
# 97 "latex_accents.mll"
                     ( add_string "&Ccedil;" ; next_char lexbuf )
# 592 "latex_accents.ml"

  | 6 ->
# 98 "latex_accents.mll"
                     ( czech lexbuf )
# 597 "latex_accents.ml"

  | 7 ->
# 99 "latex_accents.mll"
            ( breve lexbuf )
# 602 "latex_accents.ml"

  | 8 ->
# 100 "latex_accents.mll"
                     ( hungarian lexbuf )
# 607 "latex_accents.ml"

  | 9 ->
# 101 "latex_accents.mll"
                     ( tilde lexbuf )
# 612 "latex_accents.ml"

  | 10 ->
# 102 "latex_accents.mll"
                     ( add_string "\\" ; add lexbuf ; next_char lexbuf  )
# 617 "latex_accents.ml"

  | 11 ->
# 103 "latex_accents.mll"
                     ( add_string "\\" )
# 622 "latex_accents.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_control_rec lexbuf __ocaml_lex_state

and quote_char lexbuf =
   __ocaml_lex_quote_char_rec lexbuf 71
and __ocaml_lex_quote_char_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 107 "latex_accents.mll"
                ( add_string "&auml;" ; next_char lexbuf )
# 634 "latex_accents.ml"

  | 1 ->
# 108 "latex_accents.mll"
                ( add_string "&ouml;" ; next_char lexbuf )
# 639 "latex_accents.ml"

  | 2 ->
# 109 "latex_accents.mll"
                ( add_string "&uuml;" ; next_char lexbuf )
# 644 "latex_accents.ml"

  | 3 ->
# 110 "latex_accents.mll"
                ( add_string "&euml;" ; next_char lexbuf )
# 649 "latex_accents.ml"

  | 4 ->
# 111 "latex_accents.mll"
                ( add_string "&Auml;" ; next_char lexbuf )
# 654 "latex_accents.ml"

  | 5 ->
# 112 "latex_accents.mll"
                ( add_string "&Ouml;" ; next_char lexbuf )
# 659 "latex_accents.ml"

  | 6 ->
# 113 "latex_accents.mll"
                ( add_string "&Uuml;" ; next_char lexbuf )
# 664 "latex_accents.ml"

  | 7 ->
# 114 "latex_accents.mll"
                ( add_string "&Euml;" ; next_char lexbuf )
# 669 "latex_accents.ml"

  | 8 ->
# 116 "latex_accents.mll"
                ( add_string "&iuml;" ; next_char lexbuf )
# 674 "latex_accents.ml"

  | 9 ->
# 117 "latex_accents.mll"
                ( add_string "&Iuml;" ; next_char lexbuf )
# 679 "latex_accents.ml"

  | 10 ->
# 118 "latex_accents.mll"
                ( add_string "\\\"" ; add lexbuf )
# 684 "latex_accents.ml"

  | 11 ->
# 119 "latex_accents.mll"
                ( add_string "\\\"" )
# 689 "latex_accents.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_quote_char_rec lexbuf __ocaml_lex_state

and right_accent lexbuf =
   __ocaml_lex_right_accent_rec lexbuf 99
and __ocaml_lex_right_accent_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 123 "latex_accents.mll"
                ( add_string "&aacute;" ; next_char lexbuf )
# 701 "latex_accents.ml"

  | 1 ->
# 124 "latex_accents.mll"
                ( add_string "&oacute;" ; next_char lexbuf )
# 706 "latex_accents.ml"

  | 2 ->
# 125 "latex_accents.mll"
                ( add_string "&uacute;" ; next_char lexbuf )
# 711 "latex_accents.ml"

  | 3 ->
# 126 "latex_accents.mll"
                ( add_string "&eacute;" ; next_char lexbuf )
# 716 "latex_accents.ml"

  | 4 ->
# 127 "latex_accents.mll"
                ( add_string "&Aacute;" ; next_char lexbuf )
# 721 "latex_accents.ml"

  | 5 ->
# 128 "latex_accents.mll"
                ( add_string "&Oacute;" ; next_char lexbuf )
# 726 "latex_accents.ml"

  | 6 ->
# 129 "latex_accents.mll"
                ( add_string "&Uacute;" ; next_char lexbuf )
# 731 "latex_accents.ml"

  | 7 ->
# 130 "latex_accents.mll"
                ( add_string "&Eacute;" ; next_char lexbuf )
# 736 "latex_accents.ml"

  | 8 ->
# 131 "latex_accents.mll"
                ( add_string "&rdquo;" ; next_char lexbuf )
# 741 "latex_accents.ml"

  | 9 ->
# 133 "latex_accents.mll"
                ( add_string "&iacute;" ; next_char lexbuf )
# 746 "latex_accents.ml"

  | 10 ->
# 134 "latex_accents.mll"
                ( add_string "&Iacute;" ; next_char lexbuf )
# 751 "latex_accents.ml"

  | 11 ->
# 135 "latex_accents.mll"
                ( add_string "\\'" ; add lexbuf ; next_char lexbuf )
# 756 "latex_accents.ml"

  | 12 ->
# 136 "latex_accents.mll"
                ( add_string "\\'" )
# 761 "latex_accents.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_right_accent_rec lexbuf __ocaml_lex_state

and left_accent lexbuf =
   __ocaml_lex_left_accent_rec lexbuf 128
and __ocaml_lex_left_accent_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 140 "latex_accents.mll"
                ( add_string "&agrave;" ; next_char lexbuf )
# 773 "latex_accents.ml"

  | 1 ->
# 141 "latex_accents.mll"
                ( add_string "&ograve;" ; next_char lexbuf )
# 778 "latex_accents.ml"

  | 2 ->
# 142 "latex_accents.mll"
                ( add_string "&ugrave;" ; next_char lexbuf )
# 783 "latex_accents.ml"

  | 3 ->
# 143 "latex_accents.mll"
                ( add_string "&egrave;" ; next_char lexbuf )
# 788 "latex_accents.ml"

  | 4 ->
# 144 "latex_accents.mll"
                ( add_string "&Agrave;" ; next_char lexbuf )
# 793 "latex_accents.ml"

  | 5 ->
# 145 "latex_accents.mll"
                ( add_string "&Ograve;" ; next_char lexbuf )
# 798 "latex_accents.ml"

  | 6 ->
# 146 "latex_accents.mll"
                ( add_string "&Ugrave;" ; next_char lexbuf )
# 803 "latex_accents.ml"

  | 7 ->
# 147 "latex_accents.mll"
                ( add_string "&Egrave;" ; next_char lexbuf )
# 808 "latex_accents.ml"

  | 8 ->
# 148 "latex_accents.mll"
                ( add_string "&ldquo;" ; next_char lexbuf )
# 813 "latex_accents.ml"

  | 9 ->
# 150 "latex_accents.mll"
                ( add_string "&igrave;" ; next_char lexbuf )
# 818 "latex_accents.ml"

  | 10 ->
# 151 "latex_accents.mll"
                ( add_string "&Igrave;" ; next_char lexbuf )
# 823 "latex_accents.ml"

  | 11 ->
# 152 "latex_accents.mll"
                ( add_string "\\`" ; add lexbuf ; next_char lexbuf )
# 828 "latex_accents.ml"

  | 12 ->
# 153 "latex_accents.mll"
                ( add_string "\\`" )
# 833 "latex_accents.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_left_accent_rec lexbuf __ocaml_lex_state

and hat lexbuf =
   __ocaml_lex_hat_rec lexbuf 157
and __ocaml_lex_hat_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 157 "latex_accents.mll"
                ( add_string "&acirc;" ; next_char lexbuf )
# 845 "latex_accents.ml"

  | 1 ->
# 158 "latex_accents.mll"
                ( add_string "&ocirc;" ; next_char lexbuf )
# 850 "latex_accents.ml"

  | 2 ->
# 159 "latex_accents.mll"
                ( add_string "&ucirc;" ; next_char lexbuf )
# 855 "latex_accents.ml"

  | 3 ->
# 160 "latex_accents.mll"
                ( add_string "&ecirc;" ; next_char lexbuf )
# 860 "latex_accents.ml"

  | 4 ->
# 161 "latex_accents.mll"
                ( add_string "&Acirc;" ; next_char lexbuf )
# 865 "latex_accents.ml"

  | 5 ->
# 162 "latex_accents.mll"
                ( add_string "&Ocirc;" ; next_char lexbuf )
# 870 "latex_accents.ml"

  | 6 ->
# 163 "latex_accents.mll"
                ( add_string "&Ucirc;" ; next_char lexbuf )
# 875 "latex_accents.ml"

  | 7 ->
# 164 "latex_accents.mll"
                ( add_string "&Ecirc;" ; next_char lexbuf )
# 880 "latex_accents.ml"

  | 8 ->
# 166 "latex_accents.mll"
                ( add_string "&icirc;" ; next_char lexbuf )
# 885 "latex_accents.ml"

  | 9 ->
# 167 "latex_accents.mll"
                ( add_string "&Icirc;" ; next_char lexbuf )
# 890 "latex_accents.ml"

  | 10 ->
# 168 "latex_accents.mll"
                ( add_string "\\^" ; add lexbuf ; next_char lexbuf )
# 895 "latex_accents.ml"

  | 11 ->
# 169 "latex_accents.mll"
                ( add_string "\\^" )
# 900 "latex_accents.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_hat_rec lexbuf __ocaml_lex_state

and tilde lexbuf =
   __ocaml_lex_tilde_rec lexbuf 185
and __ocaml_lex_tilde_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 173 "latex_accents.mll"
                ( add_string "&atilde;" ; next_char lexbuf )
# 912 "latex_accents.ml"

  | 1 ->
# 174 "latex_accents.mll"
                ( add_string "&otilde;" ; next_char lexbuf )
# 917 "latex_accents.ml"

  | 2 ->
# 175 "latex_accents.mll"
                ( add_string "&Atilde;" ; next_char lexbuf )
# 922 "latex_accents.ml"

  | 3 ->
# 176 "latex_accents.mll"
                ( add_string "&Otilde;" ; next_char lexbuf )
# 927 "latex_accents.ml"

  | 4 ->
# 177 "latex_accents.mll"
                ( add_string "&ntilde;" ; next_char lexbuf )
# 932 "latex_accents.ml"

  | 5 ->
# 178 "latex_accents.mll"
                ( add_string "&Ntilde;" ; next_char lexbuf )
# 937 "latex_accents.ml"

  | 6 ->
# 179 "latex_accents.mll"
                ( add_string "\\~" ; add lexbuf ; next_char lexbuf )
# 942 "latex_accents.ml"

  | 7 ->
# 180 "latex_accents.mll"
                ( add_string "\\~" )
# 947 "latex_accents.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_tilde_rec lexbuf __ocaml_lex_state

and czech lexbuf =
   __ocaml_lex_czech_rec lexbuf 201
and __ocaml_lex_czech_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 184 "latex_accents.mll"
                ( add_string "&#X0159;" ; next_char lexbuf )
# 959 "latex_accents.ml"

  | 1 ->
# 185 "latex_accents.mll"
                ( add_string "&#X0158;" ; next_char lexbuf )
# 964 "latex_accents.ml"

  | 2 ->
# 186 "latex_accents.mll"
                ( add_string "&#X0161;" ; next_char lexbuf )
# 969 "latex_accents.ml"

  | 3 ->
# 187 "latex_accents.mll"
                ( add_string "&#X0160;" ; next_char lexbuf )
# 974 "latex_accents.ml"

  | 4 ->
# 189 "latex_accents.mll"
                ( add_string "&#X012D;" ; next_char lexbuf )
# 979 "latex_accents.ml"

  | 5 ->
# 190 "latex_accents.mll"
                ( add_string "&#X012C;" ; next_char lexbuf )
# 984 "latex_accents.ml"

  | 6 ->
# 191 "latex_accents.mll"
                ( add_string "\\^" ; add lexbuf ; next_char lexbuf )
# 989 "latex_accents.ml"

  | 7 ->
# 192 "latex_accents.mll"
                ( add_string "\\^" )
# 994 "latex_accents.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_czech_rec lexbuf __ocaml_lex_state

and breve lexbuf =
   __ocaml_lex_breve_rec lexbuf 221
and __ocaml_lex_breve_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 196 "latex_accents.mll"
                ( add_string "&#259;" ; next_char lexbuf )
# 1006 "latex_accents.ml"

  | 1 ->
# 197 "latex_accents.mll"
                ( add_string "&#335;" ; next_char lexbuf )
# 1011 "latex_accents.ml"

  | 2 ->
# 198 "latex_accents.mll"
                ( add_string "&#365;" ; next_char lexbuf )
# 1016 "latex_accents.ml"

  | 3 ->
# 199 "latex_accents.mll"
                ( add_string "&#277;" ; next_char lexbuf )
# 1021 "latex_accents.ml"

  | 4 ->
# 200 "latex_accents.mll"
                ( add_string "&#258;" ; next_char lexbuf )
# 1026 "latex_accents.ml"

  | 5 ->
# 201 "latex_accents.mll"
                ( add_string "&#334;" ; next_char lexbuf )
# 1031 "latex_accents.ml"

  | 6 ->
# 202 "latex_accents.mll"
                ( add_string "&#364;" ; next_char lexbuf )
# 1036 "latex_accents.ml"

  | 7 ->
# 203 "latex_accents.mll"
                ( add_string "&#276;" ; next_char lexbuf )
# 1041 "latex_accents.ml"

  | 8 ->
# 205 "latex_accents.mll"
                ( add_string "&#301;" ; next_char lexbuf )
# 1046 "latex_accents.ml"

  | 9 ->
# 206 "latex_accents.mll"
                ( add_string "&#300;" ; next_char lexbuf )
# 1051 "latex_accents.ml"

  | 10 ->
# 207 "latex_accents.mll"
                ( add_string "\\u" ; add lexbuf ; next_char lexbuf )
# 1056 "latex_accents.ml"

  | 11 ->
# 208 "latex_accents.mll"
                ( add_string "\\u" )
# 1061 "latex_accents.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_breve_rec lexbuf __ocaml_lex_state

and hungarian lexbuf =
   __ocaml_lex_hungarian_rec lexbuf 249
and __ocaml_lex_hungarian_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 212 "latex_accents.mll"
                ( add_string "&#337;" ; next_char lexbuf )
# 1073 "latex_accents.ml"

  | 1 ->
# 213 "latex_accents.mll"
                ( add_string "&#369;" ; next_char lexbuf )
# 1078 "latex_accents.ml"

  | 2 ->
# 214 "latex_accents.mll"
                ( add_string "&#336;" ; next_char lexbuf )
# 1083 "latex_accents.ml"

  | 3 ->
# 215 "latex_accents.mll"
                ( add_string "&#368;" ; next_char lexbuf )
# 1088 "latex_accents.ml"

  | 4 ->
# 216 "latex_accents.mll"
                ( add_string "\\H" ; add lexbuf ; next_char lexbuf )
# 1093 "latex_accents.ml"

  | 5 ->
# 217 "latex_accents.mll"
                ( add_string "\\H" )
# 1098 "latex_accents.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_hungarian_rec lexbuf __ocaml_lex_state

;;

# 219 "latex_accents.mll"
 

let normalize to_regexp s = 
  Buffer.clear string_buf;
  produce_regexp := to_regexp;
  next_char (Lexing.from_string s);
  Buffer.contents string_buf
;;


# 1116 "latex_accents.ml"
