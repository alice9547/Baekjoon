let n = Int(readLine()!)!
var list = [[0]]
for _ in 0..<n {
    list.append(readLine()!.split(separator: " ").map {Int($0)!})
}
var dp = [[Int]](repeating: [Int](repeating: 0, count: n), count: n+1)
dp[0][0] = list[0][0]

for i in 1...n {
    for j in 0..<list[i].count {
        if j == 0 {
            dp[i][j] = dp[i-1][0] + list[i][0]
        } else {
            dp[i][j] = max(dp[i-1][j-1], dp[i-1][j]) + list[i][j]
        }
    }
}
print(dp[n].max()!)