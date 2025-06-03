let NK = readLine()!.split(separator: " ").map{Int($0)!}
let N = NK[0], K = NK[1]

var queue = Array(1...N)
var result = [Int]()
var idx = 0

for _ in 0..<N {
    idx = (idx + K - 1) % queue.count
    result.append(queue.remove(at: idx))
}
print("<\(result.map{String($0)}.joined(separator: ", "))>")