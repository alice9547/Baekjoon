let input = readLine()!.split(separator: " ").map {Int($0)!}

let N = input[0], M = input[1]
var result = [Int]()
var output = ""

func dfs() {
    if result.count == M {
        output += result.map{String($0)}.joined(separator: " ") + "\n"
        return
    }
    for i in 1...N {
        result.append(i)
        dfs()
        result.removeLast()
    }
}
dfs()
print(output)