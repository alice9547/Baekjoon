let N = Int(readLine()!)!
var dp = [Int](repeating: 0, count: N+3)
dp[2] = 3

for i in 3..<N+3 {
    if i % 2 == 0 {
        dp[i] = dp[i-2] * dp[2] + 2
        if i > 4 {
            for j in stride(from: 0, through: i-4, by: 2) {
                dp[i] += dp[j]*2
            }
        }
    }
}
print(dp[N])