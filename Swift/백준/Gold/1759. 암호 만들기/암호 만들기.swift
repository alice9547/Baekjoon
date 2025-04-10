let LC = readLine()!.split(separator: " ").map { Int($0)! }
let list = readLine()!.split(separator: " ").map { String($0) }.sorted()

let L = LC[0]
let C = LC[1]
let vo = ["a", "e", "i", "o", "u"]
var output = ""

func dfs(_ str: String, _ start: Int, _ depth: Int) {
    if depth == L {
        var cntVo = 0
        var cntCo = 0
        for char in str {
            if vo.contains(String(char)) {
                cntVo += 1
            } else {
                cntCo += 1
            }
        }
        if cntVo >= 1 && cntCo >= 2 {
            output += str + "\n"
        }
        return
    }

    for i in start..<C {
        dfs(str + list[i], i + 1, depth + 1)
    }
}

dfs("", 0, 0)
print(output)