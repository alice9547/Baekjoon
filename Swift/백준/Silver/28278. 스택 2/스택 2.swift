let N = Int(readLine()!)!
var stack = [Int]()
for _ in 0..<N {
    let cmd = readLine()!.split(separator: " ").map{Int($0)!}
    switch cmd[0] {
        case 1:
        stack.append(cmd[1])
        case 2:
        if stack.isEmpty {
            print(-1)
        } else {
            print(stack.removeLast())
        }
        case 3:
        print(stack.count)
        case 4:
        print(stack.isEmpty ? 1 : 0)
        default:
        print(stack.isEmpty ? -1 : stack.last!)
    }
}