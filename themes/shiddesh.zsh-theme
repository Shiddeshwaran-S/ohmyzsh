grey='\e[0;90m'
white='%{$fg[white]%}'
cyan='%{$fg[cyan]%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$grey%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$grey%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$grey%})"

setopt prompt_subst

PROMPT=$'%{$fg[cyan]%}┌─(%{$fg[white]%}%B%n⚡%m%b%{$fg[cyan]%}) - [%{$fg[white]%}%~%{$fg[cyan]%}]
%{$fg[cyan]%}└─$%{\e[0m%}%b '

PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '