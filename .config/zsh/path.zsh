export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/.local/bin

export GOPATH=$HOME/go
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh

# JAVA 
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
export PATH=$PATH:/usr/lib/jvm/java-11-openjdk/bin

# Android
export ANDROID_SDK_HOME=$HOME/Android/Sdk/
export PATH=$PATH:$ANDROID_SDK_HOME/emulator
