var array = [Int]()

while true {
    let num = Int(readLine()!)!
    if num == -1 {
        break
    } else {
        array.append(num)
    }
}

for i in array {
    if i == -1 {
        break
    } else {
    var result = [Int]()
        for x in 1 ..< i {
            if i % x == 0 {
                result.append(x)
            }
        }
        if result.reduce(0, +) == i {
        let sen = result.map{String($0)}.joined(separator: " + ")
            print("\(i) = \(sen)")
        } else {
            print("\(i) is NOT perfect.")
        }
    }
}