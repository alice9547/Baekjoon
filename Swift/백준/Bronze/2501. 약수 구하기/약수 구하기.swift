var nums = readLine()!.split(separator: " ").map {Int($0)!}
var array = [Int]()

let cnt = nums[1]

var i = 1
while i <= nums[0] {
    if nums[0] % i == 0 {
        array.append(i)
    }
    i += 1
}
if array.count < cnt {
    print("0")
} else {
    print(array[cnt-1])
}