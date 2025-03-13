let N = Int(readLine()!)!
var i = 2
var n = N

while n != 1 {
    if n % i != 0 {
        i += 1
    } else {
        print(i)
        n /= i
    }
}