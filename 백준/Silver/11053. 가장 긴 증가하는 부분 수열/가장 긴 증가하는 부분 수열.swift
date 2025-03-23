var N = Int(readLine()!)!
var input = readLine()!.split(separator: " ").map {Int($0)!}
var dp = [Int](repeating: 1, count: N+1)

for i in 0..<N {
    for j in 0..<i+1 {
        if input[i]>input[j] {
            dp[i] = max(dp[i], dp[j]+1)
        }
    }
}

print(dp.max()!)