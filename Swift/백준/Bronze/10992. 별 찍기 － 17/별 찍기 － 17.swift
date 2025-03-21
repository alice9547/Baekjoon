let n = Int(readLine()!)!

for i in 1...n {
    var s = [String](repeating:" ", count:n+i-1)
    
    if i == n{
        print(String(repeating:"*", count:2*n-1))
    }
    else{
        s[n+i-2] = "*"
        s[n-i] = "*"
        print(s.joined())
    }
}
