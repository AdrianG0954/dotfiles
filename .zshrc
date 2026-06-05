# Paths
fpath+=("$(brew --prefix)/share/zsh/site-functions")
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/dotfiles/scripts:$PATH"
export PATH="/opt/homebrew/Cellar/postgresql@18/18.3/bin:$PATH"
export PATH="$HOME/.local/share/flutter/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
# Gem-installed CLIs (e.g. CocoaPods `pod`) — not in /opt/homebrew/bin by default
export PATH="$(ruby -e 'print Gem.bindir'):$PATH"

# aliases
alias evenv="source .venv/bin/activate"
alias dvenv="deactivate"
alias cvenv="python3 -m venv .venv"
alias la="ls -a"
alias lla="ls -la"
alias fetch="fastfetch"
alias src='source ~/.zshrc && echo "zshrc config reloaded ✅"'
alias stmux='tmux source-file ~/.config/tmux/tmux.conf && echo "tmux config reloaded ✅"'

# zsh prompt (using pure)
autoload -U promptinit; promptinit
zstyle :prompt:pure:path color '#8167f5'
zstyle :prompt:pure:git:branch color '#56b97f'
zstyle :prompt:pure:git:dirty color '#d7ba7d'
zstyle :prompt:pure:virtualenv color '#d7ba7d'
zstyle :prompt:pure:prompt:success color '#56b97f'
zstyle :prompt:pure:execution_time color '#c586c0'
prompt pure

# Plugins

# fuzzy autocomplete (and styles) 
autoload -U compinit; compinit
[[ -f "$HOME/dotfiles/plugins/zsh/fzf-tab/fzf-tab.plugin.zsh" ]] && source "$HOME/dotfiles/plugins/zsh/fzf-tab/fzf-tab.plugin.zsh"

# preview directory's content with eza when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1A --color=always $realpath'

# auto suggestions (zsh prompt)
[[ -f "$HOME/dotfiles/plugins/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" ]] && source "$HOME/dotfiles/plugins/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"

# syntax highlighting (zsh prompt)
[[ -f "$HOME/dotfiles/plugins/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]] && source "$HOME/dotfiles/plugins/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

