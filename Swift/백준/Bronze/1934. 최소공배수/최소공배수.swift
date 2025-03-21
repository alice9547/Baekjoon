func gcd(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : gcd(b, a%b)
}

for _ in 0..<Int(readLine()!)! {
    var nums = readLine()!.split(separator: " ").map {Int(String($0))!}
    print(nums[0] * nums[1] / gcd(nums[0], nums[1]))
}