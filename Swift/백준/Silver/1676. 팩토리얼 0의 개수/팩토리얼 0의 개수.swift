let N = Int(readLine()!)!
var cnt = 0

if N != 0 {
    for i in 1...N {
        var num = i
        
        while num % 5 == 0 {
            cnt += 1
            num /= 5    
        }
    }
}

print(cnt)