let T = Int(readLine()!)!
for _ in 0..<T {
    let n = Int(readLine()!)!
    var input = [[Int]]()
    for _ in 0..<2 {
        input.append(readLine()!.split(separator: " ").map {Int($0)!})
    }
    var dp = [[Int]](repeating: [Int](repeating: 0, count: 3), count: n)
    dp[0] = [0, input[0][0], input[1][0]]
    
    for i in 1..<n {
        dp[i][0] = max(dp[i-1][0], dp[i-1][1], dp[i-1][2])
        dp[i][1] = max(dp[i-1][0], dp[i-1][2]) + input[0][i]
        dp[i][2] = max(dp[i-1][0], dp[i-1][1]) + input[1][i]
    }
    print(dp[n-1].max()!)
}