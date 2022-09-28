# username : color 129
# directory : color 112
# for the rest : color 117

lambda() {
    echo "%{$FG[117]%}\u03bb%f"
}

left_bracket() {
    echo "%{$FG[117]%}┌─%f"
}

right_bracket() {
    echo "\n%{$FG[117]%}└─%f"
}

username() {
    echo "%{$FG[129]%}%n%f"
}

directory() {
    echo "%{$FG[112]%}[%2~]%f"
}


ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="]"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='$(left_bracket) $(username)$(directory)%{$FG[117]%}$(git_prompt_info)%f$(right_bracket) $(lambda) '
RPROMPT=''