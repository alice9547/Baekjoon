let input = readLine()!.split(separator: " ").map {Int($0)!}
let N = input[0], M = input[1]
let list = readLine()!.split(separator: " ").map {Int($0)!}.sorted()

var result = [String]()
var check = Set<String>()

func dfs(_ prev: Int) {
    if result.count == M {
        let resultString = result.joined(separator: " ")
        if !check.contains(resultString) {
            check.insert(resultString)
            print(resultString)
        }
        return
    }
    
    for i in 0..<N {
        if prev <= list[i] {
            result.append("\(list[i])")
            dfs(list[i])
            result.popLast()
        }
    }
}
dfs(0)