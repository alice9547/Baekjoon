let input = readLine()!.split(separator: " ").map {Int($0)!}

let N = input[0], M = input[1]
var result = [Int]()

func dfs() {
    if result.count == M {
        print(result.map{String($0)}.joined(separator: " "))
        return
    }
    for i in 1...N {
        if result.last ?? 0 <= i {
            result.append(i)
            dfs()
            result.removeLast()
        }
    }
}
dfs()