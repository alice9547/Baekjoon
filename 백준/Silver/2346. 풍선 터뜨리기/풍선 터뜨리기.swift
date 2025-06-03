let n = Int(readLine()!)!
var array = readLine()!.split { $0 == " " }.enumerated().map { (Int($0.element)!, $0.offset + 1) }
while true {
    let element = array.removeFirst()
    let isMinus = element.0 < 0
    print(element.1, terminator: " ")
    if array.isEmpty { break }
    let x = abs(element.0)
    
    if !isMinus {
        for _ in 0..<x - 1 { array.append(array.removeFirst()) }
    } else {
        for _ in 0..<x { array.insert(array.removeLast(), at: 0) }
    }
}