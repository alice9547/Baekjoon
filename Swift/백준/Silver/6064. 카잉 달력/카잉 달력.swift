let T = Int(readLine()!)!
for _ in 0..<T {
    let input = readLine()!.split(separator: " ").map {Int($0)!}
    let M = input[0]
    let N = input[1]
    let x = input[2]
    let y = input[3]
    
    var result = -1
    var k = x
    
    while k <= M * N {
        if (k - 1) % N + 1 == y {
            result = k
            break
        }
        k += M
    }
    
    print(result)
}