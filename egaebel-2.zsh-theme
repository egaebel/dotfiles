PROMPT='%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )'
PROMPT+='%{$FG[045]%}%0/ %{$FG[252]%}%n%{$FG[076]%}@%m $(git_prompt_info)%{$reset_color%}
'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[069]%}git:(%{$FG[124]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[069]%}) %{$FG[011]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[069]%})"
