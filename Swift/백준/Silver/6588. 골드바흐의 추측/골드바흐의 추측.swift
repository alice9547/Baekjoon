var N = 1000000
var result: [Bool] = Array(repeating: true, count: N + 1)

for i in 2...N {
    if result[i] {
        for k in stride(from: i+i, through: N, by: i) {
            result[k] = false
        }
    }
}

while true {
    let n = Int(readLine()!)!

    if n == 0 { break }

    for i in 3...n {
        if result[i] {
            let m = n - i
            if result[m] {
                print("\(n) = \(i) + \(m)")
                break
            }
        }
    }
}