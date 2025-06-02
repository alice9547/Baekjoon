let K = Int(readLine()!)!
var stack = [Int]()

for _ in 0..<K {
    let cmd = Int(readLine()!)!
    
    if cmd == 0 {
        stack.removeLast()
    } else {
        stack.append(cmd)
    }
}
print(stack.reduce(0,+))