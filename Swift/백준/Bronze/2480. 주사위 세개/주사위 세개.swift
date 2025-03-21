var nums = readLine()!.split(separator: " ").map {Int($0)!}.sorted(by: >)
let result = Set<Int>(nums)

if result.count == 1 {
    print(10000+nums[0]*1000)
} else if result.count == 2 {
    print(1000+nums[1]*100)
} else {
    print(nums[0]*100)
}