let input = Array(readLine()!.map {String($0)})
var stack = [String]()
var result = ""

for i in input {
    switch i {
    case "(":
        stack.append(i)
    case ")":
        while !stack.isEmpty {
            if stack.last! != "(" {
                result += stack.popLast()!
            } else {
                break
            }
        }
        stack.popLast()
    case "+", "-":
        while !stack.isEmpty {
            if stack.last! != "(" {
                result += stack.popLast()!
            } else {
                break
            }
        }
        stack.append(i)
    case "/", "*":
        while !stack.isEmpty {
            if stack.last! == "*" || stack.last! == "/" {
                result += stack.popLast()!
            } else {
                break
            }
        }
        stack.append(i)
    default:
        result += i
    }
}

while !stack.isEmpty {
    result += stack.popLast()!
}

print(result)