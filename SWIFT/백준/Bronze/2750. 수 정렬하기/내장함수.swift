let n = Int(readLine()!)!
var list = [Int]()
for _ in 0..<n {
    list.append(Int(readLine()!)!)
}
list.sorted().forEach {
    print($0)
}
