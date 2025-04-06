let input = readLine()!.split(separator: " ").map {Int($0)!}

let N = input[0]
let M = input[1]
var result = [Int]()

func dfs() {
    if result.count == M {
        print(result.map{String($0)}.joined(separator: " "))
        return
    }
    for i in 1...N {
        if !result.contains(i) {
            result.append(i)
            dfs()
            result.removeLast()
        }
    }
}
dfs()