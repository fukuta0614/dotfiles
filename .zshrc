export LC_ALL='en_US.UTF-8'

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
export PATH=$HOME/local/bin:$PATH

source $HOME/.zshrc.antigen

export LD_LIBRARY_PATH=$HOME/local/lib
export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/:$LD_LIBRARY_PATH

# CUDA
export CUDA_HOME=$HOME/local/cuda
export PATH=${CUDA_HOME}/bin:${PATH}
export CPATH=${CUDA_HOME}/include:$CPATH
export LIBRARY_PATH=${CUDA_HOME}/lib64:$LIBRARY_PATH
export LD_LIBRARY_PATH=${CUDA_HOME}/lib64:$LD_LIBRARY_PATH

# CUDNN
export CUDNN_HOME=$HOME/local/cudnn/v5_1
export CPATH=${CUDNN_HOME}/include:$CPATH
export LIBRARY_PATH=${CUDNN_HOME}/lib64:$LIBRARY_PATH
export LD_LIBRARY_PATH=${CUDNN_HOME}/lib64:$LD_LIBRARY_PATH

# GO
export GOROOT=$HOME/tmp/go
export GOPATH=$HOME/tmp/go/work
export PATH=${GOROOT}/bin:${GOPATH}/bin:$PATH

# ANACONDA
#export PYTHONPATH=/home/mil/fukuta/work_space/activityNet/flownet-release/python:$PYTHONPATH
#export LD_LIBRARY_PATH=/home/mil/fukuta/work_space/activityNet/flownet-release/build/lib:$LD_LIBRARY_PATH
export CPATH=/home/mil/fukuta/.pyenv/versions/anaconda-2.4.0/include:$CPATH
#export LD_LIBRARY_PATH=/home/mil/fukuta/.pyenv/versions/anaconda-2.4.0/lib:$LD_LIBRARY_PATH

# TORCH
. /home/mil/fukuta/torch/install/bin/torch-activate

#PYENV
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# autojump peco tmux
source $HOME/.zshrc.misc

alias py="python"
setopt correct
setopt nolistbeep
