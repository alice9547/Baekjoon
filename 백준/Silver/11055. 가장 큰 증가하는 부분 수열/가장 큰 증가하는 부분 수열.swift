let N = Int(readLine()!)!
var A = readLine()!.split(separator: " ").map {Int($0)!}
A.insert(0, at: 0)
var dp = [Int](repeating: 0, count: N+1)

for i in 0...N {
    dp[i] = A[i]
    for j in 0..<i {
        if A[j] < A[i] {
            dp[i] = max(dp[i], dp[j]+A[i])
        }
    }
}
print(dp.max()!)