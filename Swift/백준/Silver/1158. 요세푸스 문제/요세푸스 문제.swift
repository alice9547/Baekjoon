import Foundation

let nums = readLine()!.split(separator: " ").map {Int($0)!}

var array: [Int] = Array(1...nums[0])
var result = [Int]()

var index = nums[1] - 1

while true {
    result.append(array.remove(at: index))
    if array.isEmpty { break }
    index = (index + (nums[1] - 1)) % array.count
}

print("<\(result.map{String($0)}.joined(separator: ", "))>")
