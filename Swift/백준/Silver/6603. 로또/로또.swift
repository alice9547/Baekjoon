var output = ""
var k = 0
var S = [Int]()

while true {
    let input = readLine()!.split(separator: " ").map {Int($0)!}
    if input[0] == 0 { break }
    
    k = input[0]
    S = Array(input[1...]).sorted()
    output = ""
    
    dfs(0, "", 0)
    print(output)
}

func dfs(_ start: Int, _ str: String, _ depth: Int) {
    if depth == 6 {
        output += str + "\n"
        return
    }
    
    for i in start..<k {
        dfs(i+1, str+"\(S[i]) ", depth+1)
    }
}