export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


 if [ -d "$HOME/bin" ] ; then
       PATH="$HOME/bin:$PATH"
    fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

PATH=$PATH:/usr/local/sbin

export PATH="$PATH:/usr/local/smlnj/bin"

export PATH=/usr/local/share/npm/bin:$PATH


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH=/usr/local/bin:$PATH

function dockerdie() {
docker images --filter "dangling=true"
docker rmi $(docker images -f "dangling=true" -q)/
docker rm $(docker ps -a -q)
}

function docker-delete-all(){
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
}

function docker-recreate-vb(){
docker-machine create --driver virtualbox --virtualbox-memory 4096 --virtualbox-disk-size "30000" default
}

function docker-kill-all(){
docker kill $(docker ps -a -q)
}

function noVolumeFix() {
    docker volume rm $(docker volume ls -qf dangling=true)
}

export GOPATH=$HOME/projects/go

export PATH="$PATH:/usr/local/smlnj/bin:$GOPATH/bin"


export PATH="$HOME/.cargo/bin:$PATH"
