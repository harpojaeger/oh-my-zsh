# Adapted from robbyrussel and Steve Losh's prose theme: http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/
# In-progress: hg repo status
local ret_status="%(?:%{$fg_bold[green]%}%n@%m :%{$fg_bold[red]%}%n@%m)$reset_color"
function repo_type_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    hg root >/dev/null 2>/dev/null && echo '☿' && return
    echo '○'
}

PROMPT='$(repo_type_char) ${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{ $fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{ $fg[green]%}✓"
