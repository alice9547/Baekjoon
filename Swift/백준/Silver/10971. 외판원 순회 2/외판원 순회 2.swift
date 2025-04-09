let N = Int(readLine()!)!
var W = [[Int]]()
for _ in 0..<N {
    W.append(readLine()!.split(separator: " ").map {Int($0)!})
}
var list = [Int]()
var cost = Int.max

func dfs() {
    if list.count == N {
        var sum = 0
        var canGo = true
        var back = W[list[N-1]][list[0]]
        for j in 0..<N-1 {
            let c = W[list[j]][list[j+1]]
            if c == 0 {
                canGo = false
            }
            sum += c
        }
        canGo && back != 0 ? cost = min(cost, sum+back) : nil
    }
    
    for i in 0..<N {
        if !list.contains(i) {
            list.append(i)
            dfs()
            list.popLast()
        }
    }
}
dfs()
print(cost)