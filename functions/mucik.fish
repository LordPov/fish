function mucik -d "Maven clean install with updates, skip tests, Kindle profile enabled"
    mvn -U -Pkindle clean install -DskipTests $argv
end
