import Foundation

let input = Array("abca")
var stack = [Int](repeating: -1, count: 26)

for i in 0..<input.count {
    let index = input[i].asciiValue! % 97
    
    if stack[Int(index)] == -1 {
        stack[Int(index)] = i
    }
}

let result = stack.map {String($0)}
print(result.joined(separator: " "))
