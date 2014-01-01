function fn -d "Find files roughly matching given string"
    find . -iname "*$@*"
end
