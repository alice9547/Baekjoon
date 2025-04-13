let N = Int(readLine()!)!
var S = [[Int]]()
for _ in 0..<N {
    S.append(readLine()!.split(separator: " ").map {Int($0)!})
}
var visit = Array(repeating: false, count: N)
var result = Int.max

func dfs(_ start: Int, _ depth: Int) {
    if depth == N/2 {
        var team1 = 0
        var team2 = 0
        
        for i in 0..<N {
            for j in 0..<N {
                if visit[i], visit[j] {
                    team1 += S[i][j]
                }
                if !visit[i], !visit[j] {
                    team2 += S[i][j]
                }
            }
        }
        result = min(result, abs(team1-team2))
    }
    
    for i in start..<N {
        if !visit[i] {
            visit[i] = true
            dfs(i, depth+1)
            visit[i] = false
        }
    }
}
dfs(0, 0)
print(result)