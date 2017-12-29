import sets

var accessSet = toSet(["Jack", "Hurley", "Desmond"])

if "John" notin accessSet:
    echo("Access denied")
else:
    echo("Access granted")