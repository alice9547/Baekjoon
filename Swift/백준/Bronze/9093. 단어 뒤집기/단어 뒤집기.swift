import Foundation

let num = Int(readLine()!)!
var array: [String] = []

for _ in 0..<num {
    let words = readLine()!.split(separator: " ").map{String($0)}
    let result = words.map{String($0.reversed())}
    let x = result.joined(separator: " ")
    array.append(x)
    
}

array.forEach{print($0)}