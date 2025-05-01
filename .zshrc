export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
    # other plugins...
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias makere="make re"
alias ls="eza"


autoload -Uz vcs_info
precmd() { vcs_info }

# Configure vcs_info with a nicer format
zstyle ':vcs_info:git:*' formats '%F{white}[%F{blue}%b%F{white}]%f'

# New PS1 with improved styling
PS1='%F{255}⎇ %F{blue}%1~ %F{white}❯%f ${vcs_info_msg_0_} '

export PATH="$HOME/.cargo/bin:$PATH"
export HOME="/home/void_id"
echo -ne "\e[4 q"
export PATH=$HOME/.local/bin:$PATH
