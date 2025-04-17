let NM = readLine()!.split(separator: " ").map {Int($0)!}
let N = NM[0], M = NM[1]
var graph = [[Int]](repeating: [], count: N + 1)
for _ in 0..<M {
    let n = readLine()!.split(separator: " ").map { Int($0)! }
    graph[n[0]].append(n[1])
        graph[n[1]].append(n[0])
}
var visit = [Bool](repeating: false, count: N+1)
var result = 0

func dfs(_ now: Int) {
    visit[now] = true
    for i in graph[now] {
        if !visit[i] {
            dfs(i)
        }
    }
}

for i in 1...N {
    if !visit[i] {
        result += 1
        dfs(i)
    }
}
print(result)