type token = 
    | CREATE 
    | DATABASE
    | DROP
    | INDENT of string
    | SEMICOLON 
    | EOF
    | UNKNOWN of string

let is_letter = function 
    | 'a'..'z' | 'A'..'Z' | '_' -> true
    | _ -> false

