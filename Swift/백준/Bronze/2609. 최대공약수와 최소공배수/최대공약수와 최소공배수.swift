var nums = readLine()!.split(separator: " ").map {Int($0)!}

func gcd(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : gcd(b, a % b)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

print(gcd(nums[0], nums[1]))
print(lcm(nums[0], nums[1]))
