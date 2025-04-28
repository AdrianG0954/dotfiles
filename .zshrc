# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# -----------------------------
# Aliases
# -----------------------------
alias ll="ls -lah"
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gpull="git pull"

# -----------------------------
# Environment Variables
# -----------------------------

# Python
export PATH="/usr/local/opt/python@3.9/bin:$PATH"

# Java
export JAVA_HOME=$(/usr/libexec/java_home -v 22.0.1)
export PATH="$JAVA_HOME/bin:$PATH"

# MongoDB
export PATH="$PATH:/Users/ag1/mongodb-macos-x86_64-7.0.11/bin"

# -----------------------------
# Starship Prompt
# -----------------------------
eval "$(starship init zsh)"
