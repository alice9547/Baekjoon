let T = Int(readLine()!)!
var n = [Int]()
for _ in 0..<T {
    n.append(Int(readLine()!)!)
}
let max = n.max()!+3
var dp = [Int](repeating: 0, count: max)
dp[1...3] = [1,2,4]

for i in 4..<max {
    dp[i] = (dp[i-3] + dp[i-2] + dp[i-1]) % 1000000009
}
n.forEach({
    print(dp[$0])
})