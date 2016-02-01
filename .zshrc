# Path to your oh-my-zsh installation.
export ZSH=/Users/Souhei/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="dallas"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
ZSH_CUSTOM=$HOME/dotfiles/zsh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/Users/Souhei/.pyenv/shims:/Users/Souhei/.pyenv/bin:/Users/Souhei/.rbenv/shims:/usr/bin/ghc:/Users/Souhei/.cabal/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/bin/gosh:/Users/Souhei/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# login and start up tmux
[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux

# path
path=($HOME/bin(N-/) /usr/local/bin(N-/) $path)

# alias
alias maxwell41='ssh -i ~/.ssh/hara_s -l hara_s 192.168.129.41'
alias maxwell120='ssh -i ~/.ssh/hara_s -l hara_s 192.168.129.120'
alias maxwell220='ssh -i ~/.ssh/hara_s -l hara_s 192.168.3.220'
alias maxwell221='ssh -i ~/.ssh/hara_s -l laplace 192.168.3.221'
alias redmine='ssh -i ~/.ssh/hara_s -l hara_s 192.168.129.40'
alias sakura='ssh -i ~/.ssh/hara_s -l lapsys lapsys.sakura.ne.jp'
alias sshsvn='ssh -i ~/.ssh/hara_s -l hara_s 192.168.1.43'
alias centos='ssh -l hara_s 192.168.1.112'

alias ls='ls -l'

# pyenv
PYENV_ROOT=$HOME/.pyenv
PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

# rbenv
RBENV_ROOT=$HOME/.rbenv
PATH=$RBENV_ROOT/bin:$PATH
eval "$(rbenv init -)"

# plenv
PLENV_ROOT=$HOME/.plenv
PATH=$PLENV_ROOT/bin:$PATH
eval "$(plenv init -)"
