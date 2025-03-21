let t = Int(readLine()!)!

for _ in 0..<t {
    var total = 0

    let n = readLine()!.split(separator: " ").map{Int(String($0))!}

    for i in 1..<n.count-1 {
        for j in i+1..<n.count {
            total += gcd(n[i],n[j])
        }
    }
    print(total)
}

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a%b)
    }
}