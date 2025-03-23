let n = Int(readLine()!)!
var list = [0]
for _ in 0..<n {
    list.append(Int(readLine()!)!)
}
var dp = [Int](repeating: 0, count: n+1)

if n == 1 {
    print(list[n])
} else if n == 2 {
    print(list[1]+list[2])
} else {
    dp[1...2] = [list[1], list[1]+list[2]]
    for i in 3...n {
        dp[i] = max(dp[i-1], dp[i-2]+list[i], dp[i-3]+list[i-1]+list[i])
    }
    print(dp[n])
}