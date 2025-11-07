# Functions 
pip_install() {
    python3 -m pip install --upgrade "$@"
}

# Paths
fpath+=("$(brew --prefix)/share/zsh/site-functions")
export PATH="/opt/homebrew/bin:$PATH"
export PATH=${PATH}:/usr/local/mysql-9.4.0-macos15-arm64/bin
export PATH="$HOME/dotfiles/scripts:$PATH"

# aliases
alias evenv="source .venv/bin/activate"
alias dvenv="deactivate"
alias cvenv="python3 -m venv .venv"
alias la="ls -a"
alias fetch="fastfetch"
alias src="source ~/.zshrc"
alias stmux='tmux source-file ~/dotfiles/tmux/tmux.conf && echo "tmux config reloaded ✅"'

# zsh prompt
autoload -U promptinit; promptinit
zstyle :prompt:pure:path color '#569cd6'
zstyle :prompt:pure:git:branch color '#9cdcfe'
zstyle :prompt:pure:git:dirty color '#d7ba7d'
zstyle :prompt:pure:virtualenv color '#d7ba7d'
zstyle :prompt:pure:prompt:success color '#56b97f'
zstyle :prompt:pure:execution_time color '#c586c0'
prompt pure

# Plugins

# syntax highlighting 
[[ -f "$HOME/dotfiles/plugins/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]] && source ~/dotfiles/plugins/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# auto suggestions
[[ -f "$HOME/dotfiles/plugins/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" ]] && source ~/dotfiles/plugins/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh


