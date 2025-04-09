let N = Int(readLine()!)!
var arr = [Int]()

func dfs() {
    if arr.count == N {
        print(arr.map{String($0)}.joined(separator: " "))
    }
    
    for i in 1...N {
        if !arr.contains(i) {
            arr.append(i)
            dfs()
            arr.popLast()
        }
    }
}
dfs()