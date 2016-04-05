function mci -d "Maven clean install, skip tests"
    mvn clean install -q -DskipTests $argv
end
