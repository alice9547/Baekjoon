import Foundation

var radixs = readLine()!.split(separator: " ").map {Int($0)!}
readLine()!
var inputs = readLine()!.split(separator: " ").map {Int($0)!}
var num = 0
var result = [Int]()

inputs.reversed().enumerated().forEach({
    num += $1 * Int(pow(Double(radixs[0]), Double($0)))
})

for i in String(num, radix: radixs[1]) {
    if i.isNumber {
        result.append(Int("\(i)")!)
    } else {
        result.append(Int(i.asciiValue!) - 87)
    }
}
result.forEach({
    print($0, terminator: " ")
})