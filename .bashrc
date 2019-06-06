#!/usr/env/bin bash

export EDITOR=vim

export WWW_HOME="https://duckduckgo.com"

export JDK_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre/

export ANDROID_HOME=~/Android/Sdk/
export ANDROID_AVD_HOME=/root/.android/avd/

export PATH=$PATH:/usr/gradle/gradle-5.4/bin
export PATH=${PATH}:~/Android/Sdk/tools/bin/:~/Android/Sdk/platform-tools/bin/

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

for f in ./.bash_shopts ./.bash_aliases ./.bash_functions
do {
        if [ -f $f ]; then
                source $f
        fi
}; done

