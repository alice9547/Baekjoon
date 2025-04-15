let N = Int(readLine()!)!
var S = [[Int]]()
for _ in 0..<N {
    S.append(readLine()!.split(separator: " ").map {Int($0)!})
}
var visited = Array(repeating: false, count: N)
var result = Int.max

func dfs(_ start: Int, _ depth: Int) {
    if depth == N/2 {
        var team1 = 0
        var team2 = 0
        for i in 0..<N {
            for j in 0..<N {
                if visited[i], visited[j] {
                    team1 += S[i][j]
                }
                if !visited[i], !visited[j] {
                    team2 += S[i][j]
                }
            }
        }
        result = min(result, abs(team1-team2))
    }
    
    for i in start..<N {
        if !visited[i] {
            visited[i] = true
            dfs(i, depth+1)
            visited[i] = false
        }
    }
}

dfs(0,0)
print(result)
