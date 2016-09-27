#
# OS Specific
#
switch (uname)
    case Darwin
        set -x JAVA_HOME (/usr/libexec/java_home)
        set -x M2_HOME "/usr/local/opt/maven/libexec"
        set -x BROWSER "/Applications/Google\ Chrome.app"
        if test -e /usr/local/bin/src-hilite-lesspipe.sh
            set -x LESSOPEN "| /usr/local/bin/src-hilite-lesspipe.sh %s"
            set -x LESS ' -R '
        end
        #set -x PYTHONPATH "${HOME}/Library/Python/2.7/site-packages"
    case Linux
        set -x BROWSER (which links)
        set -x M2_HOME "/usr/share/maven"
        switch (lsb_release -i | cut -c 17-)
            case Arch
                set -x JAVA_HOME "/usr/lib/jvm/java-8-openjdk/jre"
            case Fedora
                set -x JAVA_HOME "/opt/imc/oracle-jdk-1.7.0_u11"
            case '*'
                echo "config.fish: unsupported distro"
        end
    case '*'
        echo "config.fish: unsupported operating system"
end

#
# General
#
set -x CDPATH . ~ ~/data
if test -e $HOME/miniconda3/bin
    set miniconda_bin = $HOME/miniconda3/bin
end
set -x PATH $HOME/bin $miniconda_bin $JAVA_HOME/bin /usr/local/bin $PATH
set -x EDITOR (which vi)
#set -x PAGER (which vimpager)
set -x CLICOLOR 1
set -x SBT_OPTS "-XX:+CMSClassUnloadingEnabled"
#set -x PYTHONPATH "/usr/local/lib/python2.7/site-packages:$PYTHONPATH"
set -x GOPATH "/usr/local"

#
# IMC
#
#set -x JAVA_OPTIONS "-da:ca.odell.glazedlists.impl.adt.barcode2.SimpleTree"
set -x LOG_DIR {$HOME}/Work/log
set -x DEPLOYMENT_DIR {$HOME}/Work/deployment
set -x MAVEN_OPTS "-Xmx4096m"
set -x TAGID_DIR {$HOME}/data/tagid
#set -x http_proxy 'http://unixproxy:3128/'
#set -x https_proxy 'http://unixproxy:3128/'

alias dk='docker'
alias dkm='docker-machine'

alias dog='pygmentize'

alias vi='vim'

#source /Users/bryan/.iterm2_shell_integration.fish
