let N = Int(readLine()!)!
var result = [Int]()
var cnt = 666

while result.count<N{
    var temp = cnt

    while temp > 0 {
        if temp % 1000 == 666{
            result.append(cnt)
            break
         }
        temp /= 10
    }
    cnt += 1
}
print(result.last!)