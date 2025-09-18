let n = Int(readLine()!)!
var list = [Int]()
for _ in 0..<n {
    list.append(Int(readLine()!)!)
}
for i in 0..<n {
    var idx = i
    
    for j in i+1..<n {
        if list[idx] > list[j] {
            idx = j
        }
    }
    list.swapAt(i,idx)
}
list.forEach {
    print($0)
}
