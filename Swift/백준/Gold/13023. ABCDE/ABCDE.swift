let NM = readLine()!.split(separator: " ").map {Int($0)!}
let N = NM[0], M = NM[1]
var graph = [[Int]](repeating: [], count: N)
var visit = [Bool](repeating: false, count: N)
var result = 0

for _ in 0..<M {
    let list = readLine()!.split(separator: " ").map {Int($0)!}
    graph[list[0]].append(list[1])
    graph[list[1]].append(list[0])
}
func dfs(_ now: Int, _ depth: Int) {
    if result == 1 { return }
    if depth == 5 {
        result = 1
        return
    }
    visit[now] = true
    for i in graph[now] {
        if !visit[i] {
            dfs(i, depth+1)
        }
    }
    visit[now] = false
}
for i in 0..<N {
    dfs(i, 1)
}
print(result)