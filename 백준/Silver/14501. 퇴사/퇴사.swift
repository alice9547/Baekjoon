var N = Int(readLine()!)!
var TP = [[Int]]()
for _ in 0..<N {
    TP.append(readLine()!.split(separator: " ").map {Int($0)!})
}
var cost = 0

func dfs(_ day: Int, _ sum: Int) {
    if day >= N {
        cost = max(cost, sum)
        return
    }

    if day + TP[day][0] <= N {
        dfs(day + TP[day][0], sum + TP[day][1])
    }

    dfs(day + 1, sum)
}
dfs(0, 0)
print(cost)