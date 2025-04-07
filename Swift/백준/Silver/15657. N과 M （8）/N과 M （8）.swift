let input = readLine()!.split(separator: " ").map {Int($0)!}
let N = input[0], M = input[1]
let list = readLine()!.split(separator: " ").map {Int($0)!}.sorted()
var output = ""
var arr = [Int]()

func dfs(_ str: String, _ depth: Int) {
    if depth == M {
        output += str + "\n"
        return
    }
    
    for i in 1...N {
        if arr.last ?? 0 <= list[i-1] {
            arr.append(list[i-1])
            dfs(str + "\(list[i-1]) ", depth + 1)
            arr.popLast()
        }
    }
}
dfs("", 0)
print(output)