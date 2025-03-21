var x = [[Int]]()
for i in 0...8 {
    x.append(readLine()!.split(separator: " ").map {Int($0)!})
}
let max = x.flatMap {$0}.max()!

for i in 0...8 {
    for a in 0...8 {
        if x[i][a] == max {
            print(max)
            print("\(i+1) \(a+1)")
            break
        }
    }
}