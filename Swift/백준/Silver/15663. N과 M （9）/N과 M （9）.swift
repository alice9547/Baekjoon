let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], M = input[1]
let list = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()

var visit = Array(repeating: false, count: N)
var result = [String]()
var check = Set<String>()

func dfs() {
    if result.count == M {
        let resultString = result.joined(separator: " ")
        if !check.contains(resultString) {
            check.insert(resultString)
            print(resultString)
        }
        return
    }
    
    for i in 0..<N {
        if !visit[i] {
            visit[i] = true
            result.append("\(list[i])")
            dfs()
            visit[i] = false
            result.popLast()
        }
    }
}
dfs()