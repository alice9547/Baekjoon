import Foundation

let N = Int(readLine()!)!
let A = readLine()!.split(separator: " ").map { Int($0)! }

var result = [Int](repeating: -1, count: N)
private var stack = [Int]()

private func method17298() {
    for i in 0..<N {
        while !stack.isEmpty && A[i] > A[stack.last!] {
            let index = stack.removeLast()
            result[index] = A[i]
        }
        stack.append(i)
    }
    
    print(result.map { String($0) }.joined(separator: " "))
}
