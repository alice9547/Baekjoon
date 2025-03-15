var result = [Int]()
for _ in 0..<Int(readLine()!)! {
    result.append(Int(readLine()!)!)
}

var dp = [Int](repeating: 1, count: result.max()! + 2)
dp[1] = 2
dp[2] = 4

for i in 3..<result.max()!+2 {
    dp[i] = (dp[i-1] + dp[i-2] + dp[i-3]) % 10007
}
result.forEach({
    print(dp[$0-1])
})