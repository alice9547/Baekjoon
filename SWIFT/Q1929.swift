let nums = readLine()!.split(separator: " ").map {Int($0)!}
let N = nums[1]

var result: [Int] = Array(repeating: 0, count: N + 1)
for i in 2...N {
    result[i] = i
}

for i in 2...nums[1] {
    if result[i] == 0 { continue }
    for k in stride(from: i+i, through: N, by: i) {
        result[k] = 0
    }
}
result.filter({$0 != 0}).forEach {
    print($0)
}