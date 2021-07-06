PROMPT='%{$fg[green]%}%n%{$fg[white]%}@%{$fg[red]%}%m%{$reset_color%} '

# git in prompt
# RPROMPT='$(git_prompt_status)%{$reset_color%} $(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%}*"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}+"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%}*"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}-"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%}_"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[blue]%}~"

# ls colors
autoload -U colors && colors

# Enable ls colors
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=1;34:cd=1;35:su=1;32:sg=1;36:tw=1;33:ow=1;30"

# ls colors completion
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
autoload -Uz compinit
compinit
