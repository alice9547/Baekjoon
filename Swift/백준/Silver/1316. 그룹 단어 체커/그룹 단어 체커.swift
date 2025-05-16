let N = Int(readLine()!)!
var result = 0

for _ in 0..<N {
    let list = Array(readLine()!)
    var stack = [Character]()
    var group = true
    for i in 0..<list.count {
        if !stack.contains(list[i]) {
            stack.append(list[i])
        } else {
            if stack.last != list[i] {
                group = false
                break
            }
        }
    }
    if group { result += 1 }
}
print(result)