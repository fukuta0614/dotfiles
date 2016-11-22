export LC_ALL='en_US.UTF-8'
export PATH=$HOME/local/bin:$PATH

source $HOME/.zshrc.antigen

alias py="python"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

source $HOME/.zshrc.misc
