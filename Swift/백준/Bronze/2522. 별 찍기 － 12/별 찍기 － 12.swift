let N = Int(readLine()!)!
var S = [String](repeating:" ", count:N)

for i in 1...2*N-1{
    if i<=N{
        S[N-i] = "*"
    }
    else{
        S[i-N-1] = " "
    }
    print(S.joined())
}