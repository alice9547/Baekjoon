var nums = [Int]()
var array = [[Int]]()
var result = [String]()

while true {
    nums = readLine()!.split(separator: " ").map {Int($0)!}
    array.append(nums)
    
    if nums[0] > nums[1] {
        if (nums[0] % nums[1] == 0) {
            result.append("multiple")
        } else {
            result.append("neither")
        }
    } else if nums == [0, 0] {
        break
    } else {
        if (nums[1] % nums[0] == 0) {
            result.append("factor")
        } else {
            result.append("neither")
        }
    }
}
result.forEach { print($0) }