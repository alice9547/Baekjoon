import Foundation

let N = Int(readLine()!)!
var input = readLine()!
var stack = [Double]()
var numArray: [Double]()

for _ in 0..<N {
    numArray.append(Double(readLine()!)!)
}

for i in input {
    
    switch i {
    case "*":
        stack.append(stack.removeLast() * stack.removeLast())
        
    case "/":
        let a = stack.removeLast()
        let b = stack.removeLast()
        stack.append(b / a)
        
    case "+":
        stack.append(stack.removeLast() + stack.removeLast())
        
    case "-":
        let a = stack.removeLast()
        let b = stack.removeLast()
        stack.append(b - a)
    default:
        stack.append(Double("\(i)")!)
    }
}
print(String(format: "%.2f", stack[0]))
