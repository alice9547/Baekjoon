let n = Int(readLine()!)!
var list = [[0]]
for _ in 0..<n {
    list.append(readLine()!.split(separator: " ").map {Int($0)!})
}
var dp = [[Int]](repeating: [Int](repeating: 0, count: n), count: n+1)

for i in 1...n {
    dp[i][0] = dp[i-1][0] + list[i][0]
    for j in 1..<list[i].count {
        dp[i][j] = max(dp[i-1][j-1], dp[i-1][j]) + list[i][j]
    }
}
print(dp[n].max()!)