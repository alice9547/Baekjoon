var nums = readLine()!.split(separator: " ").map {Int($0)!}
var minute = Int(readLine()!)!

let nM = nums[1] + minute
print((nums[0] + nM / 60) % 24, nM % 60)