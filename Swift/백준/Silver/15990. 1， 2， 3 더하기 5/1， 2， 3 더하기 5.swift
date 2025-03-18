var n = Int(readLine()!)!
var result = [Int]()
for _ in 0..<n {
    result.append(Int(readLine()!)!)
}
let max = result.max()! + 1
var dp = [[Int]](repeating: [Int](repeating: 0, count: 3), count: max)
dp[1] = [1,0,0]
dp[2] = [0,1,0]
dp[3] = [1,1,1]

for i in 4..<max {
    dp[i][0] = (dp[i-1][1]+dp[i-1][2])%1000000009
    dp[i][1] = (dp[i-2][0]+dp[i-2][2])%1000000009
    dp[i][2] = (dp[i-3][0]+dp[i-3][1])%1000000009
}
result.forEach({
    print((dp[$0][0]+dp[$0][1]+dp[$0][2])%1000000009)
})