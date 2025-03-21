import Foundation

let n = Int(readLine()!)!

var count = 1
var stack: [Int] = []
var result: [String] = []

for _ in 0..<n {
    let x = Int(readLine()!)!
    
    while count <= x {
        stack.append(count)
        result.append("+")
        count += 1
    }
    
    if stack.last == x {
        stack.popLast()
        result.append("-")
    } else {
        print("NO")
        exit(0)
    }
}

print(result.joined(separator: "\n"))
