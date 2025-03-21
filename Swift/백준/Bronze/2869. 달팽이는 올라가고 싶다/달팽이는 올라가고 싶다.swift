var nums = readLine()!.split(separator: " ").map {Int($0)!}

var height = nums[2]
var up = nums[0]
var down = nums[1]

if (height - up) % (up - down) == 0 {
    print(((height - up) / (up - down)) + 1)
} else {
    print(((height - up) / (up - down)) + 2)
}