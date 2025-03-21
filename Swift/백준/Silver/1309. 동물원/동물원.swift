let N = Int(readLine()!)!
let mod = 9901
var dp = [[Int]](repeating: [0,0,0], count: N+2)
dp[1] = [1,1,1]

for i in 2..<N+1 {
    dp[i][0] = (dp[i-1][0] + dp[i-1][1] + dp[i-1][2]) % mod
    dp[i][1] = (dp[i-1][0] + dp[i-1][2]) % mod
    dp[i][2] = (dp[i-1][0] + dp[i-1][1]) % mod
}
print((dp[N].reduce(0){$0+$1}) % mod)