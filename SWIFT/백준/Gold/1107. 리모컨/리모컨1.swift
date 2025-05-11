var N = Int(String(readLine()!))!
let M = Int(String(readLine()!))!
var broken: [Int] = []
if M != 0 {
    broken = readLine()!.split(separator: " ").map{Int(String($0))!}
}
var current = 100
var result = abs(N - current)

for i in 0..<1000000 {
    let list = String(i).map { Int(String($0))! }

    if !(list.contains{ broken.contains($0) }) {
        let cnt = list.count
        result = min(result, cnt+abs(N-i))
    }
}

print(result)
