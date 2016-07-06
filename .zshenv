# pyenv
PYENV_ROOT=$HOME/.pyenv
PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

# rbenv
RBENV_ROOT=$HOME/.rbenv
PATH=$RBENV_ROOT/bin:$PATH
eval "$(rbenv init -)"

# phpenv
PHPENV_ROOT=$HOME/.phpenv
PATH=$PHPENV_ROOT/bin:$PATH
eval "$(phpenv init -)"

# nvm
if [[ -s ~/.nvm/nvm.sh ]];
then source ~/.nvm/nvm.sh
fi

# pandoc
STASH_PATH=$HOME/.local
PATH=$STASH_PATH/bin:$PATH

# opam
eval `opam config env`
alias ocaml='rlwrap ocaml'

# boot
export BOOT_EMIT_TARGET=no

# rust
export RUST_SRC_PATH=~/src/rust/src
PATH=$PATH:$HOME/.cargo/bin
PATH=$PATH:$HOME/.multirust/toolchains/stable/cargo/bin

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/hara_s/.sdkman"
[[ -s "/home/hara_s/.sdkman/bin/sdkman-init.sh" ]] && source "/home/hara_s/.sdkman/bin/sdkman-init.sh"
