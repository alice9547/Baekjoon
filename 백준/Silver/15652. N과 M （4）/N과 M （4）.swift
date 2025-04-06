let input = readLine()!.split(separator: " ").map {Int($0)!}
let N = input[0], M = input[1]

var result = ""

func dfs(_ now: Int, _ str: String, _ depth: Int) {
    if depth == M {
        result += str + "\n"
        return
    }
    
    for i in now...N {
        dfs(i, str + "\(i) ", depth + 1)
    }
}
dfs(1, "", 0)
print(result)