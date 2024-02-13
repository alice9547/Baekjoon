let nums = readLine()!.split(separator: " ").map {Int($0)!}
var result = [Int]()

for i in nums[0]...nums[1] {
    var isPrime = true

    for z in 2..<i {
        if i % z == 0 {
            isPrime = false
        }
    }

    if isPrime {
        print(i)
    }
}
