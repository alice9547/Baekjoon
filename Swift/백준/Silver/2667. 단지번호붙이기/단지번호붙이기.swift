let N = Int(readLine()!)!
var list = [[Int]]()
for _ in 0..<N {
    list.append(readLine()!.map {Int(String($0))!})
}
var result = [Int]()
var cnt = 0

func dfs(_ x: Int, _ y: Int) {
    if x>=0, y>=0, x<N, y<N, list[x][y]==1 {
        list[x][y] = 0
        cnt += 1
        dfs(x+1, y)
        dfs(x-1, y)
        dfs(x, y+1)
        dfs(x, y-1)
    } else {
        return
    }
}

for i in 0..<N {
    for j in 0..<N {
        if list[i][j] == 1{
            cnt = 0
            dfs(i, j)
            result.append(cnt)
        }
    }
}
print(result.count)
result.sorted().forEach{
    print($0)
}