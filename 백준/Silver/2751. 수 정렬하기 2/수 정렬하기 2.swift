let N = Int(readLine()!)!
var list = [Int]()
for _ in 0..<N {
    list.append(Int(readLine()!)!)
}
list.sorted().forEach { print($0) }