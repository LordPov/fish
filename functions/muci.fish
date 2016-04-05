function muci -d "Maven clean install with updates, skip tests"
    mvn -U clean install -q -DskipTests $argv
end
