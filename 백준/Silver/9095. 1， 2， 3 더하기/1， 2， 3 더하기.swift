let T = Int(readLine()!)!
var dp = [0,1,2,4]
for i in 4..<12{
    dp.append(dp[i-1]+dp[i-2]+dp[i-3])
}
for _ in 0..<T {
    let n = Int(readLine()!)!
    print(dp[n])
}