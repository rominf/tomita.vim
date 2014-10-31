if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "tomitagrammar"

syntax region tomita_grammarOperations matchgroup=Special start="{" end="}" contains=tomita_grammarOperation

syntax region tomita_grammarTags matchgroup=Special start="<" end=">" contains=tomita_grammarGram,tomita_grammarTag

syntax region tomita_grammarString start=/\v['"]/ skip=/\v\\./ end=/\v['"]/
highlight link tomita_grammarString String


syntax match tomita_grammarComment "\v//.*$"
highlight link tomita_grammarComment Comment

syntax match tomita_grammarMacro "\v#.*(\/\/)@="
highlight link tomita_grammarMacro PreProc

syntax match tomita_grammarOperator "\v->"
syntax match tomita_grammarOperator "\v\*"
syntax match tomita_grammarOperator "\v\+"
syntax match tomita_grammarOperator "\v\|"
highlight link tomita_grammarOperator Operator

syntax keyword tomita_grammarTerminal Adj Adv AnyWord Colon Comma Dollar EOSent Hyphen LBracket Noun OrdinalNumeral Participle Percent PlusSign Prep Punct QuoteDbl QuoteSng RBracket SimConjAnd UnknownPOS Verb Word
highlight link tomita_grammarTerminal Keyword

syntax keyword tomita_grammarTag kwtype kwset kwsetf label gztweight contained containedin=tomita_grammarTags
syntax keyword tomita_grammarTag gram GU contained containedin=tomita_grammarTags
syntax match tomita_grammarTag "\v(gnc-agr|nc-agr|c-agr|gn-agr|gc-agr|fem-c-agr|after-num-agr|sp-agr|fio-agr|geo-agr)" contained containedin=tomita_grammarTags
syntax keyword tomita_grammarTag wfm wff wfl contained containedin=tomita_grammarTags
syntax match tomita_grammarTag "\v(h-reg1|h-reg2|h-reg|l-reg)" contained containedin=tomita_grammarTags
syntax match tomita_grammarTag "\v(l-|r-)?quoted" contained containedin=tomita_grammarTags
syntax keyword tomita_grammarTag fw mw lat no_hom cut rt contained containedin=tomita_grammarTags
syntax keyword tomita_grammarTag dict contained containedin=tomita_grammarTags
highlight link tomita_grammarTag Function

syntax keyword tomita_grammarOperation outgram count weight trim not_hreg_fact contained containedin=tomita_grammarOperations
highlight link tomita_grammarOperation StorageClass

" Части речи
syntax keyword tomita_grammarGram A ADV ADVPRO ANUM APRO COM CONJ INTJ NUM PART PR S SPRO V contained containedin=tomita_grammarTags 
" Одушевленность
syntax keyword tomita_grammarGram anim од inan неод contained containedin=tomita_grammarTags
" Число
syntax keyword tomita_grammarGram sg ед pl мн dual дв contained containedin=tomita_grammarTags
" Род
syntax keyword tomita_grammarGram m муж f жен n сред mf мж contained containedin=tomita_grammarTags
" Падеж
syntax keyword tomita_grammarGram nom им gen род dat дат acc вин ins твор loc местн abl пр voc зват contained containedin=tomita_grammarTags
" Форма прилагательных
syntax keyword tomita_grammarGram brev кр plen полн poss притяж contained containedin=tomita_grammarTags
" Степень сравнения
syntax keyword tomita_grammarGram supr прев comp срав contained containedin=tomita_grammarTags
" Лицо
syntax keyword tomita_grammarGram 1p 1-л 2p 2-л 3p 3-л contained containedin=tomita_grammarTags
" Время
syntax keyword tomita_grammarGram praes наст inpraes непрош praet прош aor прош2 fut буд contained containedin=tomita_grammarTags
" Вид
syntax keyword tomita_grammarGram ipf несов pf сов contained containedin=tomita_grammarTags
" Залог
syntax keyword tomita_grammarGram act действ pass страд contained containedin=tomita_grammarTags
" Репрезентация и наклонение глагола
syntax keyword tomita_grammarGram partcp прич ger деепр inf инф indic изъяв imper пов subj сослаг contained containedin=tomita_grammarTags
" Переходность
syntax keyword tomita_grammarGram tran пе intr нп contained containedin=tomita_grammarTags
" Прочие обозначения
syntax keyword tomita_grammarGram reflex возвр praed прдк geo гео persn имя famn фам patrn отч awkw затр obsol устар inform разг rare редк obsc обсц abbr сокр dist искаж contained containedin=tomita_grammarTags
highlight link tomita_grammarGram Type

syntax match tomita_grammarNumber "\v\d+" contained containedin=tomita_grammarTags
highlight link tomita_grammarNumber Number

" That breaks everything
" syntax match tomita_grammarNonTerminal "\v\w*"
" highlight link tomita_grammarNonTerminal Identifier
