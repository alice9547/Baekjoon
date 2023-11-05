import Foundation

let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }
let dict = Dictionary(array.map { ($0, 1) }, uniquingKeysWith: +)
var answer = [Int](repeating: -1, count: n)
private var stack: [Int] = []

private func method() {
    for i in 0..<n {
        while !stack.isEmpty && dict[array[stack.last!]]! < dict[array[i]]! {
            answer[stack.removeLast()] = array[i]
        }
        stack.append(i)
    }
    
    print(answer.map { String($0) }.joined(separator: " "))
}
