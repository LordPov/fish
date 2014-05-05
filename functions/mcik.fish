function mcik -d "Maven clean install, skip tests, Kindle profile enabled"
    mvn -Pkindle clean install -DskipTests $argv
end
