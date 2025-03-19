var count = Int(readLine()!)!
var stack = [Int]()

for i in 0..<count {
    var input = readLine()!.split(separator: " ")
    let order = input[0]
    
    if order == "push" {
        let num = Int(input[1])!
       stack.append(num)
    } else if order == "pop" {
        if let element = stack.last {
            print(element)
            stack.removeLast()    
        } else {
            print("-1")
        }
        
    } else if order == "size" {
        print(stack.count)
    } else if order == "empty" {
        print("\(stack.isEmpty ? "1" : "0")")
    } else if order == "top" {
        if let last = stack.last {
            print(last)
        } else {
            print("-1")
        }
    }
}