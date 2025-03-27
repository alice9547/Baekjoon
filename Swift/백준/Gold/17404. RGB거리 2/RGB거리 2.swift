let N = Int(readLine()!)!
var cost = [[0,0,0]]
for _ in 0..<N {
    cost.append(readLine()!.split(separator: " ").map {Int($0)!})
}
var result = Int.max

for j in 0...2 {
    var dp = [[Int]](repeating: [Int](repeating: 1001, count: 3), count: N+1)
    let a = (j+1)%3
    let b = (j+2)%3
    dp[0] = [0,0,0]
    dp[1][j] = cost[1][j]
    
    for i in 2...N {
        dp[i][0] = min(dp[i-1][1], dp[i-1][2]) + cost[i][0]
        dp[i][1] = min(dp[i-1][0], dp[i-1][2]) + cost[i][1]
        dp[i][2] = min(dp[i-1][0], dp[i-1][1]) + cost[i][2]
    }
    result = min(result, dp[N][a], dp[N][b])
}

print(result)