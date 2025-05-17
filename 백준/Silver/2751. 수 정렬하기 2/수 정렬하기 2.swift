let N = Int(readLine()!)!
var list = [Int]()
var result = ""
for _ in 0..<N {
    list.append(Int(readLine()!)!)
}
list.sorted().forEach { result += "\($0)\n" }
print(result)