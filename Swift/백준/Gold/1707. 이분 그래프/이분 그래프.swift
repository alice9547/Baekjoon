let K = Int(readLine()!)!
for _ in 0..<K {
    let VE = readLine()!.split(separator: " ").map {Int($0)!}
    let V = VE[0], E = VE[1]
    var graph = [[Int]](repeating: [], count: V + 1)
    for _ in 0..<E {
        let n = readLine()!.split(separator: " ").map { Int($0)! }
        graph[n[0]].append(n[1])
        graph[n[1]].append(n[0])
    }
    var visit = [Int](repeating: 0, count: V+1)
    var result = "YES"
    
    func dfs(_ now: Int, _ check: Int) {
        visit[now] = check
        
        for i in graph[now] {
            if visit[i] == 0 {
                dfs(i, 3-check)
            } else if visit[i] == check {
                result = "NO"
                return
            }
        }
    }
    
    for i in 1...V {
        if visit[i] == 0 {
            dfs(i, 1)
        }
    }
    print(result)
}
