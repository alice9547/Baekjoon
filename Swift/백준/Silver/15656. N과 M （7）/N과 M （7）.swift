let input = readLine()!.split(separator: " ").map {Int($0)!}
let N = input[0], M = input[1]
var list = readLine()!.split(separator: " ").map {Int($0)!}.sorted()

var output = ""

func dfs(_ str: String, _ depth: Int) {
    if depth == M {
        output += str + "\n"
        return
    }
    
    for i in 1...N {
        dfs(str + "\(list[i-1]) ", depth + 1)
    }
}
dfs("", 0)
print(output)