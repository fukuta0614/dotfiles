
# locale
export LC_ALL='en_US.UTF-8'
export LANG='en_US.UTF-8'

# oh-my-zsh
if [ ! -e "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi 
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
if [ ! -e "${ZSH}/custom/plugins/zsh-syntax-highlighting" ]; then
    git clone git://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/custom/plugins/zsh-syntax-highlighting
fi
plugins=(git history zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

bindkey "^P" up-line-or-beginning-search
bindkey "^N" down-line-or-beginning-search

# misc file
[[ -e $HOME/.zshrc.mil ]] && source $HOME/.zshrc.mil
[[ -e $HOME/.zshrc.misc ]] && source $HOME/.zshrc.misc

# alias
alias history="fc -lt '%F %T' 1"
alias py='python'
alias sl='ls'
alias jp="jupyter notebook --no-browser --ip='*'"
alias n='nvidia-smi'

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

