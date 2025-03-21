func d(_ n:Int) -> Int{
    let a = String(n).map { Int(String($0))! }.reduce(0) { $0 + $1 }
    return n+a
}
var s = Set<Int>()

for i in 1...10000 {
    s.insert(d(i))
}

for i in 1...10000 {
    if !s.contains(i){
        print(i)
    }
}