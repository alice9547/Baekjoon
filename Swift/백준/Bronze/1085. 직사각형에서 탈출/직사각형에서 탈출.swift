var nums = readLine()!.split(separator: " ").map {Int($0)!}

let x = nums[0]
let y = nums[1]
let w = nums[2]
let h = nums[3]

let result = [x, y, w-x, h-y]
print(result.min()!)