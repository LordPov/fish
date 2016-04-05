function mdeps -d "Show Maven dependency tree"
    mvn dependency:tree -q -Dverbose $argv
end
