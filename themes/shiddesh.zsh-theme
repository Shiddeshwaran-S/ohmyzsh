grey='\e[0;90m'
white='%{$fg[white]%}'
cyan='%{$fg[cyan]%}'

# Color shortcuts
RED=$fg[red]
YELLOW=$fg[yellow]
GREEN=$fg[green]
WHITE=$fg[white]
BLUE=$fg[blue]
CYAN=$fg[cyan]
RED_BOLD=$fg_bold[red]
YELLOW_BOLD=$fg_bold[yellow]
GREEN_BOLD=$fg_bold[green]
WHITE_BOLD=$fg_bold[white]
BLUE_BOLD=$fg_bold[blue]
RESET_COLOR=$reset_color

# Format for git_prompt_info()
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""

# Format for parse_git_dirty()
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$RED%}(*)"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Format for git_prompt_status()
ZSH_THEME_GIT_PROMPT_UNMERGED=" %{$RED%}unmerged"
ZSH_THEME_GIT_PROMPT_DELETED=" %{$RED%}deleted"
ZSH_THEME_GIT_PROMPT_RENAMED=" %{$BLUE%}renamed"
ZSH_THEME_GIT_PROMPT_MODIFIED=" %{$BLUE%}modified"
ZSH_THEME_GIT_PROMPT_ADDED=" %{$GREEN%}added"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$WHITE%}untracked"

# Format for git_prompt_ahead()
ZSH_THEME_GIT_PROMPT_AHEAD=" %{$RED%}(!)"

# Format for git_prompt_long_sha() and git_prompt_short_sha()
ZSH_THEME_GIT_PROMPT_SHA_BEFORE=" %{$WHITE%}(%{$CYAN%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$WHITE%})"

setopt prompt_subst

PROMPT=$'%{$fg[cyan]%}┌─(%{$fg[white]%}%BShiddesh ⚡ FLASH Team%b%{$fg[cyan]%}) - [%{$fg[white]%}%~%{$fg[cyan]%}] %{$GREEN_BOLD%}$(git_current_branch)$(git_prompt_short_sha)$(git_prompt_status)%{$RESET_COLOR%}
%{$fg[cyan]%}└─$%{\e[0m%}%b '
PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '