
#SOBIX

#####PATHS

#####PYENV
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

######GOLANG
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

#####INIT
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
#source ~/.bash_aliases

#####ALIASES

#####PYENV
alias pyv='pyenv'
alias pyver='pyenv versions'

#####UBUNTU
alias install="sudo apt install"
alias uninstall="sudo apt uninstall"
alias updg="sudo apt update && sudo apt upgrade -y"
alias upd="sudo apt update"
alias upg="sudo apt upgrade"

#####UBUNTU-JAVA
#sudo apt install openjdk-17-jre-headless openjdk-8-jre-headless openjdk-11-jre-headless
alias 11j="sudo -S <<< "z" update-java-alternatives -s java-1.11.0-openjdk-amd64"
alias 17j="sudo update-java-alternatives -s java-1.17.0-openjdk-amd64"
alias 8j="sudo update-java-alternatives -s java-1.8.0-openjdk-amd64"
alias jv="java -version"

#####ENV
alias nv="nvim"
alias E="Emacs -nw"
alias freeswap="sudo swapoff -a; sudo swapon -a"
alias shut="shutdown -h now"

#####WEATHER
alias weather="curl wttr.in/Tehran"
alias weathL="curl wttr.in/Tehran?format=3"
alias weath="curl wttr.in/Tehran?format=\"%l:+%c+%t+%l\n\""

#####PYTHON
#alias ptp="ptpython"
#alias pi="ptipython"

#####XAMPP
alias lamp="sudo /opt/lampp/lampp start"

#####SEC
alias ws="sudo wireshark"

#####ARCHIVE###################################################################
. "$HOME/.cargo/env"
