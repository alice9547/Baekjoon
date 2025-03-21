var nums = readLine()!.split(separator: " ").map {Int($0)!}

let A = nums[0]
let B = nums[1]

print("\(A==B ? "==" : A>B ? ">" : "<")")