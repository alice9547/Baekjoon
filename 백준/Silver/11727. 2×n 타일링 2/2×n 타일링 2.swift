var n = Int(readLine()!)!
var dp = [Int](repeating: 1, count: n+1)
dp[1] = 3

for i in 2..<n+1 {
    dp[i] = (dp[i-1] + 2*dp[i-2]) % 10007
}
print(dp[n-1])