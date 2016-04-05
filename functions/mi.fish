function mi -d "Maven install, skip tests"
    mvn install -q -DskipTests $argv
end
