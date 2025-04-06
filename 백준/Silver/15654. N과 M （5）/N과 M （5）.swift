let input = readLine()!.split(separator: " ").map {Int($0)!}
let N = input[0], M = input[1]
var list = readLine()!.split(separator: " ").map {Int($0)!}
list.sort()

var output = ""
var result = [Int]()

func dfs(_ str: String, _ depth: Int) {
    if depth == M {
        output += str + "\n"
        return
    }
    
    for i in 1...N {
        if !result.contains(list[i-1]) {
            result.append(list[i-1])
            dfs(str + "\(list[i-1]) ", depth + 1)
            result.removeLast()
        }
    }
}
dfs("", 0)
print(output)