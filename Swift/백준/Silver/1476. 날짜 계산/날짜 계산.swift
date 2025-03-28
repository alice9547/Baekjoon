let nums = readLine()!.split(separator: " ").map {Int($0)!}
let E = nums[0] == 15 ? 0 : nums[0]
let S = nums[1] == 28 ? 0 : nums[1]
let M = nums[2] == 19 ? 0 : nums[2]
var result = 1

while true {
    if (result % 15 == E) && (result % 28 == S) && (result % 19 == M) {
        break
    } else {
        result += 1
    }
}

print(result)