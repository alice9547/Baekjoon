import Foundation

let input = readLine()!
var stack = [Int]()
var totalPieces = 0

for (index, char) in input.enumerated() {
    if char == "(" {
        stack.append(index)
    } else if char == ")" {
        if let last = stack.popLast() {
            if index - last == 1 {
                totalPieces += stack.count
            } else {
                totalPieces += 1
            }
        }
    }
}

print(totalPieces)
