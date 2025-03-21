let N = Int(readLine()!)!
var dp = [[Int]](repeating: [Int](repeating: 0, count: 10), count: N+1)
dp[1] = [Int](repeating: 1, count: 10)
let mod = 10007

for i in 2..<N+1 {
    for j in 0...9{
        dp[i][j] = dp[i-1][j...9].reduce(0, +) % mod
    }
}
print(dp[N].reduce(0, +) % mod)