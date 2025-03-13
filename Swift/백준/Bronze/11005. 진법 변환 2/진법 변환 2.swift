var nums = readLine()!.split(separator: " ").map {Int($0)!}

print(String(nums[0], radix: nums[1]).uppercased())