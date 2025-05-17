var N = Int(readLine()!)!
var result = 0

while N >= 3 {
    if N % 5 == 0 {
        N -= 5
        result += 1
    } else {
        N -= 3
        result += 1
    }
}
print(N == 0 ? result : -1)