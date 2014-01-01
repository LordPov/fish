#
# General
#
set -x CDPATH . ~ ~/data
set -x JAVA_HOME "/Library/Java/Home"
set -x PATH $HOME/bin $JAVA_HOME/bin $PATH
#set -x PYTHONPATH "${HOME}/Library/Python/2.7/site-packages"
set -x M2_HOME "/usr/local/opt/maven/libexec"
set -x EDITOR (which vi)
set -x BROWSER "/Applications/Google\ Chrome.app"
set -x CLICOLOR 1
set -x SBT_OPTS "-XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"
set -x HOMEBREW_GITHUB_API_TOKEN "d56b5a03b50908001f669fdfd9b1e70f4c557716"

#
# IMC
#
#set -x JAVA_OPTIONS "-da:ca.odell.glazedlists.impl.adt.barcode2.SimpleTree"
set -x LOG_DIR {$HOME}/Work/log
set -x DEPLOYMENT_DIR {$HOME}/Work/deployment
set -x MAVEN_OPTS -Xmx1024m
set -x TAGID_DIR {$HOME}/data/tagid
#set -x http_proxy 'http://unixproxy:3128/'
#set -x https_proxy 'http://unixproxy:3128/'
