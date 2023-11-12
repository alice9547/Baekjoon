import Foundation

class Q10808 {
    let input = readLine()!
    var stack = [Int](repeating: 0, count: 26)

    for i in input {
        let index = i.asciiValue! % 97
        stack[Int(index)] += 1
    }
    let result = stack.map {String($0)}
    print(result.joined(separator: " "))
}
