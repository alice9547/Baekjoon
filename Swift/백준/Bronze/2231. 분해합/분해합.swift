let N = Int(readLine()!)!
var result : Int?

for i in 1...N{
    var hap = 0
    for j in String(i){
        hap += Int(String(j))!
    }
    if hap + i == N{
        result = i
        break
    }
}
print(result ?? 0)