complete -A -f -c j -a (cat $HOME/.imc/deployment_aliases | cut -f 1 -d ":" | tr '\n' ' ')
