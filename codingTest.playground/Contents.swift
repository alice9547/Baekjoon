import Foundation
import Foundation
let N = 5
let input = ["1","2","3","*","+","4","5","/","-"]
let numArray: [Double] = [1,2,3,4,5]
var stack = [Double]()

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
        stack.append(Double(i)!)
    }
}
print(String(format: "%.2f", stack[0]))