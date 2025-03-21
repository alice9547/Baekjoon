let N = Int(readLine()!)!
var s = [String](repeating:" ",count:2*N)
for i in 1..<(2*N){
    if i <= N{
        s[i-1] = "*"
        s[2*N-i] = "*"
    }
    else{
        s[i-1] = " "
        s[2*N-i]=" "
    }
    print(s.joined())
}