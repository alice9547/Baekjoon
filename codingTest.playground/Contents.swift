import Foundation

let input = ["A", "*", "(", "B", "+", "C", ")" ]
var stack = [String]()
var result = ""
let priority = ["(": 0,
                ")": 0,
                "+": 2,
                "-": 2,
                "/": 1,
                "*": 1,
                "": 3]

for i in input {
    switch i {
    case "(":
        stack.append(i)
    case ")":
        while !stack.isEmpty {
            if priority[stack.last ?? ""]! <= priority[i]! {
                result += stack.popLast()!
            }
        }
        stack.popLast()
    case "+", "-", "/", "*":
        while !stack.isEmpty {
            if priority[stack.last ?? ""]! <= priority[i]! {
                result += stack.popLast()!
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
