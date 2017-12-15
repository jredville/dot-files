# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/jim/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=1

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    docker
    git
    golang
    history-substring-search
    node
    npm
    nyan
    rbenv
    rust
    ssh-agent
    tmux
    thefuck
    ubuntu
    vi-mode
    z
)

# ssh agent config
zstyle :omz:plugins:ssh-agent agent-forwarding on

source $ZSH/oh-my-zsh.sh

# User configuration

export GOPATH=~/go
export RUST_SRC_PATH=~/proj/rust/src

path=(
    ./bin
    ~/go/bin
    ~/.cargo/bin
    $path
)

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='e'
else
  export EDITOR='e'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias e='emacsclient -nw -s foo -a ""'
alias artisan='php artisan'
unalias ag
alias alg="alias | ag"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
# alias o="xdg-open"
# alias wakejamespc="wakeonlan 50:46:5D:66:46:87"


alias text-disapproval="echo 'ಠ_ಠ' | clipit"
alias text-fliptable="echo '(╯°□°)╯︵ ┻━┻' | clipit"
alias text-fliptableharder="echo '(ノಠ益ಠ)ノ彡 ┻━┻' | clipit"
alias text-tableflipsyou="echo 'ノ┬─┬ノ ︵ ( \o°o )\' | clipit"
alias text-puttableback="echo '┬──┬◡ﾉ(° -°ﾉ)' | clipit"
alias text-puttablesback="echo '┬──┬︵/(ツ)\︵┬──┬' | clipit"
alias text-puttablebackharder="echo '┬──┬◡ﾉ(ಠ益ಠﾉ)' | clipit"
alias text-shrug="echo '¯\_(ツ)_/¯' | clipit"
alias text-handsup="echo '٩◔̯◔۶' | clipit"
alias text-sad="echo '(˘_˘٥)' | clipit"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(rbenv init -)"
