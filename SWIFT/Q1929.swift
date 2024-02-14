let nums = readLine()!.split(separator: " ").map {Int($0)!}
let N = nums[1]

var result: [Bool] = Array(repeating: true, count: N + 1)
result[0] = false
result[1] = false

for i in 2...nums[1] {
    if result[i] {
        for k in stride(from: i+i, through: N, by: i) {
            result[k] = false
        }
    }
}

for i in nums[0]...nums[1] {
    if result[i] {
        print(i)
    }
}