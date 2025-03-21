let n = Int(readLine()!)
let a = readLine()!

print(a.map{Int(String($0))!}.reduce(0,+))