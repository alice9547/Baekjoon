let NM = readLine()!.split(separator: " ").map {Int($0)!}
let N = NM[0], M = NM[1]
var list = Array(1...N)
for _ in 0..<M {
    let cmd = readLine()!.split(separator: " ").map {Int($0)!-1}
    list[cmd[0]...cmd[1]].reverse()
}
list.forEach { print($0, terminator: " ") }