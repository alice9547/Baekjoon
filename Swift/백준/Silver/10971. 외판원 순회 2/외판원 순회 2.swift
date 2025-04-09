let N = Int(readLine()!)!
var W = [[Int]]()
for _ in 0..<N {
    W.append(readLine()!.split(separator: " ").map {Int($0)!})
}
var visit = [Bool](repeating: false, count: N)
var cost = Int.max

func dfs(_ start: Int, _ sum: Int, _ digit: Int, _ cur: Int) {
    if digit == N {
        if W[cur][start] == 0 { return }
        cost = min(cost, sum+W[cur][start])
        return
    }
    
    for i in 0..<N {
        if !visit[i] && W[cur][i] != 0 {
            visit[i] = true
            dfs(start, sum + W[cur][i], digit+1, i)
            visit[i] = false
        }
    }
}
visit[0] = true
dfs(0,0,1,0)
print(cost)