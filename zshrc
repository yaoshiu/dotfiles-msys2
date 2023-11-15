
# The following lines were added by compinstall
zstyle :compinstall filename '/home/yaosh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install

# Environment Variables
export HTTP_PROXY="http://192.168.110.2:7890"
export HTTPS_PROXY="http://192.168.110.2:7890"
export EDITOR=nvim
export CARGO_HOME=/home/yaosh/.cargo
export PATH=$PATH:/home/yaosh/.cargo/bin
export NODE_PATH=$(npm root -g)

# rsync aliases
cpr() {
  rsync --archive -hh --partial --info=stats1,progress2 --modify-window=1 "$@"
} 
mvr() {
  rsync --archive -hh --partial --info=stats1,progress2 --modify-window=1 --remove-source-files "$@"
}

# Starship config
export STARSHIP_CACHE="C:\\msys64\\home\\yaosh\\.cache\\starship"
export STARSHIP_CONFIG="C:\\msys64\\home\\yaosh\\.config\\starship.toml"
eval "$(starship completions zsh)"
eval "$(starship init zsh)"

# Zoxide config
eval "$(zoxide init zsh)"

# Vivid config
export LS_COLORS="$(vivid generate catppuccin-macchiato)"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select

# Zsh extra features
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpath=(~/.zsh/zsh-completions/src $fpath)

# Bat config
export BAT_CONFIG_DIR="C:\\msys64\\home\\yaosh\\.config\\bat"
export BAT_THEME="Catppuccin-macchiato"

# Bottom config
alias btm="btm -C C:\\\\msys64\\\\home\\\\yaosh\\\\.config\\\\bottom\\\\bottom.toml"

# Eza config
alias ls=eza
alias ll="eza -l"
alias l="eza -lah"
alias la="eza -a"
alias lla="eza -la"
alias lT="eza -T"
alias lTa="eza -Ta"

# Fzf config
export FZF_DEFAULT_OPTS="
--color 'bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796,fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6,marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796'"
alias fzp="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"

# Lazygit config
export LG_CONFIG_FILE="C:\\msys64\\home\\yaosh\\.config\\lazygit\\config.yml"

# Tealdeer config
export TEALDEER_CONFIG_DIR="C:\\msys64\\home\\yaosh\\.config\\tealdeer"

# Neovim config
export XDG_CONFIG_HOME="C:\\msys64\\home\\yaosh\\.config"
export XDG_STATE_HOME="C:\\msys64\\home\\yaosh\\.local\\state"
export XDG_DATA_HOME="C:\\msys64\\home\\yaosh\\.local\\share"
export XDG_CACHE_HOME="C:\\msys64\\home\\yaosh\\.cache"

# Completions
source ~/.zsh/rust-zsh-completions/rust.plugin.zsh 
source <(wezterm shell-completion --shell zsh)
