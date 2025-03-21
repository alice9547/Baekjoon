var cnt = Int(readLine()!)!
var result = [Int]()
var array = readLine()!.split(separator: " ").map {Int($0)!}

for i in array {
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

print(result.count)