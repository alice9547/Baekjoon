var nk = readLine()!.split(separator: " ").map {Int($0)!}
let N = nk[0]
let K = nk[1]
var dp = [[Int]](repeating: [Int](repeating: 0, count: N+1), count: K+1)

for i in 1..<K+1 {
    for j in 0..<N+1 {
        if j == 0 {
            dp[i][0] = 1
        } else {
            dp[i][j] = (dp[i][j-1] + dp[i-1][j]) % 1000000000
        }
    }
}
print(dp[K][N])