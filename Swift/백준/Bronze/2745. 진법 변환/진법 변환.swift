import Foundation

var nums = readLine()!.split(separator: " ")
var result = 0

nums[0].reversed().enumerated().forEach({
    var value: Double = Double($1.asciiValue!)
    value = value >= 65 ? value - 55 : value - 48
    let a: Double = pow(Double(nums[1])!, Double($0)) * value
    result += Int(a)
})

print(result)
