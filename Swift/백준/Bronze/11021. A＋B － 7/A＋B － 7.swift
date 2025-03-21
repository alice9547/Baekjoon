let N = Int(readLine()!)!

for i in 1...N{
    let ab = readLine()!.split{$0 == " "}.map{Int(String($0))!}
    print("Case #\(i): \(ab.reduce(0,+))")
}