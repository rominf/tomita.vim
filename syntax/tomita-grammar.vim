# if exists("b:current_syntax")
#     finish
# endif

let b:current_syntax = "tomita-grammar"

syntax keyword tomita_grammarOperator "\v->"
syntax match tomita_grammarComment "\v//.*$"

highlight link tomita_grammarOperator Operator
highlight link tomita_grammarComment Comment
