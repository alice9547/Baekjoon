var min = Int(readLine()!)!
var max = Int(readLine()!)!
var result = [Int]()

for i in min ... max {
    if i != 1 {
        var bool = false
        for x in 2 ..< i {
            if i % x == 0 {
                bool = true
            }
        }
        bool ? nil : result.append(i)
    }
}

if result.isEmpty {
    print("-1")
} else {
    print(result.reduce(0, +))
    print(result[0])   
}