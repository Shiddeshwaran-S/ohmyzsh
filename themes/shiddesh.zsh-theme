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

# Make sure you have your git functions defined before this PROMPT
# For example: autoload -U +X promptinit && promptinit

# Define a variable for your theme name for easier editing
SPARTAN_THEME="%{$fg[white]%}%BShiddesh ⚡ SPARTANS%b%{$reset_color%}"

# Define a variable for your Git colors
GIT_PROMPT_COLOR="%{$fg[green]%}"

# Set the PROMPT
PROMPT=$'%{$fg[cyan]%}╭─(${SPARTAN_THEME}%{$fg[cyan]%}) - [%{$fg[white]%}%~%{$fg[cyan]%}] ${GIT_PROMPT_COLOR}$(git_current_branch)$(git_prompt_short_sha)$(git_prompt_status)%{$reset_color%}
%{$fg[cyan]%}╰─$%{$reset_color%} '


PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '