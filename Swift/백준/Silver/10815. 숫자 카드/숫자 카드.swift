let N = Int(readLine()!)!
let nList = Set(readLine()!.split(separator: " ").map{Int($0)!})
let M = Int(readLine()!)!
let mList = readLine()!.split(separator: " ").map{Int($0)!}
var result = ""
mList.forEach {
    result += nList.contains($0) ? "1 " : "0 "
}
print(result)