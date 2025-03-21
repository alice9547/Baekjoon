let n = Int(readLine()!)!

for i in 1...n {
    var s = [String](repeating:" ", count:n+i-1)
    for j in 1...i{
        s[n+i-2*j] = "*"
    }
    print(s.joined())
}
