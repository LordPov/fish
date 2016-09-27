function m -d "Maven quickener"
  set skiptests "-DskipTests"
  for a in (string split '' $argv[1])
    switch $a
      case c
        set margs $margs clean
      case i
        set margs $margs install
      case s
        set margs $margs "-Psystem"
      case u
        set margs $margs "-U"
      case t
        set -e skiptests
      case d
        set margs $margs dependency:tree "-Dverbose"
    end
  end
  set margs $margs $skiptests

  switch (count $argv)
    case 0
      mvn
    case 1
      mvn $margs
    case '*'
      mvn $margs $argv[2..-1]
  end
end
