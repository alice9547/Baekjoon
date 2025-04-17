let NM = readLine()!.split(separator: " ").map {Int($0)!}
let N = NM[0], M = NM[1]
var graph = [[Int]](repeating: [], count: N + 1)
for _ in 0..<M {
    let list = readLine()!.split(separator: " ").map { Int($0)! }
    let (a, b) = (list[0], list[1])
    graph[a].append(b)
    graph[b].append(a)
}
var visit = [Bool](repeating: false, count: N+1)
var result = Set<Set<Int>>()

func bfs(_ now: Int) -> Set<Int> {
    var queue = [now]
    var list = Set<Int>()
    var visited = [Bool](repeating: false, count: N+1)
    visited[now] = true
    while !queue.isEmpty {
        let current = queue.removeFirst()
        list.insert(current)
        for i in graph[current] {
            if !visited[i] {
                queue.append(i)
                visited[i] = true
            }
        }
    }
    return list
}

for i in 1...N {
    result.insert(bfs(i))
}
print(result.count)