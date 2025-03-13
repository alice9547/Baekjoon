let N = Int(readLine()!)!
var result = [Int]()

if N != 1 {
    var n = N
    for i in 2...N {
        if n % i == 0 {
            while n % i == 0 {
                result.append(i)
                n /= i
            }
        }
    }
}
result.forEach({ print($0) })
