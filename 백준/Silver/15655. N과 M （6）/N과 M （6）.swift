let input = readLine()!.split(separator: " ").map {Int($0)!}
let N = input[0], M = input[1]
var list = readLine()!.split(separator: " ").map {Int($0)!}.sorted()
var output = ""

func dfs(_ now: Int, _ str: String, _ depth: Int) {
    if depth == M {
        output += str + "\n"
        return
    }
    
    for i in now..<N {
        dfs(i+1, str+"\(list[i]) ", depth+1)
    }
}
dfs(0, "", 0)
print(output)