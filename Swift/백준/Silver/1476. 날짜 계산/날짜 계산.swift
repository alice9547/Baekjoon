let input = readLine()!.split(separator: " ").map {Int($0)!}
let E = input[0] % 15, S = input[1] % 28, M = input[2] % 19
var result = 1

while true {
    if result % 15 == E, result % 28 == S, result % 19 == M {
        break
    } else {
        result += 1
    }
}

print(result)