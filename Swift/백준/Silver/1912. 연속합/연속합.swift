var N = Int(readLine()!)!
var A = readLine()!.split(separator: " ").map {Int($0)!}
var dp = [Int](repeating: -1001, count: N)

dp[0] = A[0]
for i in 1..<N {
    dp[i] = max(dp[i-1] + A[i], A[i])
}
print(dp.max()!)