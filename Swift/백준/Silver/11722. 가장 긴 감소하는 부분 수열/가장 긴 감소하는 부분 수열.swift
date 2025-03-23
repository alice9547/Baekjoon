let N = Int(readLine()!)!
var A = readLine()!.split(separator: " ").map {Int($0)!}
var dp = [Int](repeating: 1, count: N)

for i in 0..<N {
    for j in 0..<i {
        if A[j] > A[i] {
            dp[i] = max(dp[i], dp[j]+1)
        }
    }
}
print(dp.max()!)