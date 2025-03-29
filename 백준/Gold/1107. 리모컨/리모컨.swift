
let N = Int(readLine()!)!
let M = Int(readLine()!)!
var Ms = [Int]()
if M != 0 {
    Ms = readLine()!.split(separator: " ").map {Int($0)!}
}
var count = abs(N-100)
for i in 0...1000000 {
    let cnt = closeBtn(n: i)
    if cnt > 0 {
        count = min(count, cnt+abs(N-i))
    }
}
print(count)

private func closeBtn(n: Int) -> Int {
    var n = n
    if n == 0 {
        return Ms.contains(n) ? 0 : 1
    }
    var cnt = 0
    while n > 0 {
        if Ms.contains(n%10) {
            return 0
        }
        n /= 10
        cnt += 1
    }
    return cnt
}