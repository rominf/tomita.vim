if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "tomita-grammar"

syntax keyword tomita_grammarKeyword ->
syntax match tomita_grammarComment "\v#.*$"

highlight link tomita_grammarKeyword Keyword
highlight link tomita_grammarComment Comment
