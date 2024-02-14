let N = Int(readLine()!)!

if N == 0 {
    print("1")
} else {
    var x = 1
    for i in 1...N {
        x = x * i
    }
    print(x)
}