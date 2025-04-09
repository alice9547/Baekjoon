let N = Int(readLine()!)!
var list: [Int] = readLine()!.split(separator: " ").map {Int($0)!}.reversed()

if list == Array(1...N).reversed() {
    print(-1)
} else {
    var index = 0
    for i in 0..<N-1 {
        if list[i] < list[i+1] {
            index = i
            break
        }
    }
    for j in 0..<index+1 {
        if list[j] < list[index+1] {
            list.swapAt(j, index+1)
            break
        }
    }
    var result = (list[...index].sorted()+list[(index+1)...]).reversed()
    print(result.map({String($0)}).joined(separator: " "))
}