var N = Int(readLine()!)!
var dp = [Int](repeating: 0, count: N+2)
dp[1] = 1
dp[2] = 1

for i in 2..<N+1 {
    dp[i] = dp[i-2] + dp[i-1]
}

print(dp[N])