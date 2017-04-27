
# locale
export LC_ALL='en_US.UTF-8'
export LANG='en_US.UTF-8'

# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
if [ ! -e "${ZSH}/custom/plugins/zsh-syntax-highlighting" ]; then
    git clone git://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/custom/plugins/zsh-syntax-highlighting
fi
plugins=(git history zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# misc file
source $HOME/.zshrc.mil
source $HOME/.zshrc.misc

# alias
alias history="fc -lt '%F %T' 1"
alias py='python'
alias sl='ls'

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

