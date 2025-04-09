let N = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map {Int($0)!}
var visit = [Bool](repeating: false, count: N)
var list = [Int]()
var result = 0

func dfs() {
    if list.count == N {
        var sum = 0
        for j in 1..<N {
            sum += abs(list[j-1]-list[j])
        }
        result = max(result, sum)
    }
    
    for i in 0..<N {
        if !visit[i] {
            list.append(arr[i])
            visit[i] = true
            dfs()
            list.popLast()
            visit[i] = false
        }
    }
}
dfs()
print(result)