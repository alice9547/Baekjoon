let mod = 1000000000
var n = Int(readLine()!)!
var dp = [[Int]](repeating: [Int](repeating: 0, count: 10), count: n+1)
dp[1] = [0,1,1,1,1,1,1,1,1,1]
for i in 2..<n+1 {
    for j in 0...9 {
        if j == 0 {
            dp[i][j] = dp[i-1][j+1] % mod
        } else if j == 9 {
            dp[i][j] = dp[i-1][j-1] % mod
        } else {
            dp[i][j] = (dp[i-1][j-1] + dp[i-1][j+1]) % mod
        }
    }
}
let result = dp[n].reduce(0) { ($0 + $1) % mod }
print(result)