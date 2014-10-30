if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "tomitagrammar"

syntax match tomita_grammarComment "\v//.*$"
highlight link tomita_grammarComment Comment

syntax match tomita_grammarMacro "\v#.*(\/\/)@="
highlight link tomita_grammarMacro Macro

syntax match tomita_grammarOperator "\v->"
syntax match tomita_grammarOperator "\v\*"
syntax match tomita_grammarOperator "\v\+"
syntax match tomita_grammarOperator "\v\|"
highlight link tomita_grammarOperator Operator

syntax keyword tomita_grammarTerminal Adj Adv AnyWord Colon Comma Dollar EOSent Hyphen LBracket Noun OrdinalNumeral Participle Percent PlusSign Prep Punct QuoteDbl QuoteSng RBracket SimConjAnd UnknownPOS Verb Word
highlight link tomita_grammarTerminal Keyword

syntax keyword tomita_grammarTag kwtype kwset kwsetf label gztweight
syntax keyword tomita_grammarTag gram GU
syntax match tomita_grammarTag "\v(gnc-agr|nc-agr|c-agr|gn-agr|gc-agr|fem-c-agr|after-num-agr|sp-agr|fio-agr|geo-agr)"
syntax keyword tomita_grammarTag wfm wff wfl
syntax match tomita_grammarTag "\v(h-reg1|h-reg2|h-reg|l-reg)"
syntax match tomita_grammarTag "\v(l-|r-)?quoted"
syntax keyword tomita_grammarTag fw mw lat no_hom cut rt
syntax keyword tomita_grammarTag dict
highlight link tomita_grammarTag Function

syntax region tomita_grammarString start=/\v['"]/ skip=/\v\\./ end=/\v['"]/
highlight link tomita_grammarString String


