let NMV = readLine()!.split(separator: " ").map {Int($0)!}
let N = NMV[0], M = NMV[1], V = NMV[2]
var graph = [[Int]](repeating: [], count: N + 1)
for _ in 0..<M {
    let list = readLine()!.split(separator: " ").map { Int($0)! }
    let (a, b) = (list[0], list[1])
    graph[a].append(b)
    graph[b].append(a)
}
for i in 1...N {
    graph[i].sort()
}

var visit = [Bool](repeating: false, count: N+1)
var result = ""

func dfs(_ now: Int) {
    visit[now] = true
    result += "\(now) "
    for i in graph[now] {
        if !visit[i] {
            dfs(i)
        }
    }
}

func bfs(_ now: Int) {
    var queue = [now]
    var visited = [Bool](repeating: false, count: N+1)
    visited[now] = true
    while !queue.isEmpty {
        let current = queue.removeFirst()
        result += "\(current) "
        for i in graph[current] {
            if !visited[i] {
                queue.append(i)
                visited[i] = true
            }
        }
    }
}
dfs(V)
result += "\n"
bfs(V)
print(result)