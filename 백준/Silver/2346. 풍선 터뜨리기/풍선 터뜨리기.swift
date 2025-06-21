let N = Int(readLine()!)!
let paper = readLine()!.split(separator: " ").map { Int($0)! }
var list = Array(1...N)
var idx = 0
var result = ""

for _ in 0..<N {
    let now = list[idx]
    result += "\(now) "
    let move = paper[now - 1]
    list.remove(at: idx)

    if list.isEmpty { break }
    
    idx = (idx + move + (move > 0 ? -1 : 0)) % list.count
    
    if idx < 0 {
        idx += list.count
    }
}

print(result)