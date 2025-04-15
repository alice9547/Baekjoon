let N = Int(String(readLine()!))!
var S = readLine()!.split(separator: " ").map{String($0)}
var answer = [String]()
var visited = Array(repeating: false, count: 10)
var resultArr = [Int]()

func dfs(_ prev: Int, _ depth: Int) {
    if depth == N+1 {
        answer.append(resultArr.map{"\($0)"}.joined())
        return
    }
    for i in 0...9 {
        if !visited[i] {
            if depth > 0 {
                if prev <= i && S[depth-1] == ">" { continue }
                if prev >= i && S[depth-1] == "<" { continue }
            }
            visited[i] = true
            resultArr.append(i)
            dfs(i, depth + 1)
            visited[i] = false
            resultArr.removeLast()
        }
    }
}
dfs(0, 0)
print(answer.max()!)
print(answer.min()!)