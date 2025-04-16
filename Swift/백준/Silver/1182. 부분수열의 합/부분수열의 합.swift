let ns = readLine()!.split(separator: " ").map {Int($0)!}
let N = ns[0]
let S = ns[1]
let arr = readLine()!.split(separator: " ").map {Int($0)!}
var result = 0
var sum = 0
var visited = [Bool](repeating: false, count: N)

func dfs(_ start: Int, _ depth: Int) {
    if sum == S && depth >= 1 {
        result += 1
    }
    for i in start..<N {
        if !visited[i] {
            visited[i] = true
            sum += arr[i]
            dfs(i, depth+1)
            visited[i] = false
            sum -= arr[i]
        }
    }
}
dfs(0, 0)
print(result)