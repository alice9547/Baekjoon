let N = Int(readLine()!)!

for i in 0..<N{
    let ab = readLine()!.split{$0 == ","}.map{Int(String($0))!}
    print(ab.reduce(0,+))
}