var list = [Int]()

for _ in 0..<9 {
    list.append(Int(readLine()!)!)
}
first: for i in 0..<8 {
    var total = list.reduce(0, +)
    total -= list[i]
    
    for j in i+1..<9 {
        var totalJ = total
        totalJ -= list[j]
        if totalJ == 100 {
            list.remove(at: i)
            list.remove(at: j-1)
            break first
        }
    }
}
list.sorted().forEach{ print($0) }