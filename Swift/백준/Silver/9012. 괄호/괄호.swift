let num = Int(readLine()!)!
var array: [String] = []

func makeResult(_ s: String) -> String {
    var stack: [String] = []
    
    for i in Array(s) {
        if i == "(" {
            stack.append("(")
        } else {
            if stack.isEmpty {
                return "NO"
            } else {
                stack.popLast()
            }
        }
    }
    return stack.isEmpty ? "YES" : "NO"
}

for _ in 0..<num {
    let string = readLine()!
    array.append(makeResult(string))
}
array.forEach{print($0)}