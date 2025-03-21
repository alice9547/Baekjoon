let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var bro = readLine()!.split(separator: " ").map { Int(String($0))! }
var distance: [Int] = []

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a%b)
    }
}

for b in bro {
    distance.append(abs(input[1]-b))
}

var ans = distance[0]
for i in 1..<distance.count {
    ans = gcd(ans, distance[i])
}

print(ans)
