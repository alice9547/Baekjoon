import Foundation

let N = readLine()!
var result = 0
var n = Int(N)!
let cnt = N.count

result += (n-tenPow(cnt-1)+1) * cnt
for i in 1..<N.count {
    result += (tenPow(i)-tenPow(i-1)) * i
}
print(result)

func tenPow(_ exp: Int) -> Int {
    return Int(pow(10.0, Double(exp)))
}