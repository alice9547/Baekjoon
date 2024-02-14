let N = Int(readLine()!)!

if N == 0 {
    print("0")
} else {
    var x = 1
    for i in 1...N {
        x = x * i
    }
    var cnt = 0
    
    while true {
        if x % 10 == 0 {
            cnt += 1
            x = x / 10
        } else {
            break
        }
    }
    print(cnt)
}