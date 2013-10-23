
:syntax region sString start=/'/ skip=/\\'/ end=/'/  oneline
:syntax match xComment /^\s*#.*/ " Leading # 
:syntax match xPragma /%\i\+/ 
:syntax match xMacro /\$\i\+/
:syntax match xLexName /^[A-Z]\i*:/
:syntax match xRuleName /^[a-z]\i*:/
:syntax match xName / \i\+:/

:highlight link sString String
:highlight link xComment Comment
:highlight link xPragma Comment
:highlight link xMacro Type
:highlight link xName Special
:highlight link xLexName Keyword
:highlight link xRuleName Keyword
