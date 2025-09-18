let n = Int(readLine()!)!
var list = [Int]()
for _ in 0..<n {
    list.append(Int(readLine()!)!)
}
for i in 0..<n {
    for j in 0..<n-i-1 {
        if list[j]>list[j+1] {
            list.swapAt(j,j+1)
        }
    }
}
list.forEach {
    print($0)
}
