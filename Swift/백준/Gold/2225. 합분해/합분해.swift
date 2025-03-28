let input = readLine()!.split(separator: " ").map {Int($0)!}
let N = input[0]
let K = input[1]
var dp = [[Int]](repeating: [Int](repeating: 1, count: N+1), count: K+2)

for i in 1..<N+1 {
    dp[2][i] = i+1
    for j in 2..<K+2 {
        dp[j][i] = dp[j-1][0...i].reduce(0, +)%1000000000
    }
}
print(dp[K][N])