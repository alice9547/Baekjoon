let T = Int(readLine()!)!
for _ in 0..<T {
    var result = -1
    let input = readLine()!.split(separator: " ").map {Int($0)!}
    let M = input[0], N = input[1], x = input[2], y = input[3]
    
    var k = x
    while k <= M*N {
        if (k-y) % N == 0 {
            result = k
            break
        }
        k += M
    }
    print(result)
}