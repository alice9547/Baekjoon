let N = Int(readLine()!)!
var list = [[Int]]()
for _ in 0..<N {
    list.append(readLine()!.map {Int(String($0))!})
}
var result = [Int]()
var visit = [[Bool]](repeating: [Bool](repeating: false, count: N), count: N)

let dx = [-1,1,0,0]
let dy = [0,0,-1,1]

func dfs(_ x: Int, _ y: Int) -> Int {
    visit[x][y] = true
    var cnt = 1
    for i in 0..<4 {
        let nx = x+dx[i]
        let ny = y+dy[i]
        
        if nx >= 0, nx < N, ny >= 0, ny < N {
            if list[nx][ny] == 1 && !visit[nx][ny] {
                cnt += dfs(nx, ny)
            }
        }
    }
    return cnt
}

for i in 0..<N {
    for j in 0..<N {
        if list[i][j] == 1, !visit[i][j] {
            result.append(dfs(i, j))
        }
    }
}
print(result.count)
result.sorted().forEach{
    print($0)
}