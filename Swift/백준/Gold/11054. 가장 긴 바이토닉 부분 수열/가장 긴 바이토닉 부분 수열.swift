let N = Int(readLine()!)!
var A = readLine()!.split(separator: " ").map {Int($0)!}
var dp = [Int](repeating: 1, count: N)
var dp1 = [Int](repeating: 1, count: N)
var result = [Int]()

for i in 0..<N {
    for j in 0..<i {
        if A[j] < A[i] {
            dp[i] = max(dp[i], dp[j]+1)
        }
    }
}
for i in stride(from: N-1, through: 0, by: -1) {
    for j in stride(from: N-1, through: i, by: -1) {
        if A[j] < A[i] {
            dp1[i] = max(dp1[i], dp1[j]+1)
        }
    }
}

for i in 0..<N {
    result.append(dp[i]+dp1[i]-1)
}
print(result.max()!)