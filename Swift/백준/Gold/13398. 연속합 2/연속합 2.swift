let N = Int(readLine()!)!
var A = readLine()!.split(separator: " ").map {Int($0)!}
var dp = A
var deleteDp = A

for i in 1..<N {
    dp[i] = max(dp[i-1]+A[i], A[i])
    deleteDp[i] = max(dp[i-1], A[i]+deleteDp[i-1], A[i])
}
print(max(dp.max()!, deleteDp.max()!))