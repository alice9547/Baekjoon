let NM = readLine()!.split(separator: " ").map {Int($0)!}
let N = NM[0], M = NM[1]
var list = [[Int]]()
for _ in 0..<N {
    list.append(readLine()!.map{ Int(String($0))! })
}
var result = 0
var visit = [[Bool]](repeating: [Bool](repeating: false, count: M), count: N)

func sum() {
    var sum = 0
    
    for i in 0..<N {
        var num = 0
        for j in 0..<M {
            if visit[i][j] {
                num = num * 10 + list[i][j]
            } else {
                sum += num
                num = 0
            }
        }
        sum += num
    }
    
    for i in 0..<M {
        var num = 0
        for j in 0..<N {
            if !visit[j][i] {
                num = num * 10 + list[j][i]
            } else {
                sum += num
                num = 0
            }
        }
        sum += num
    }
    result = max(result, sum)
}

func dfs(_ x: Int, _ y: Int) {
    if x == N {
        sum()
        return
    }
    
    let (nextX, nextY) = (y+1 == M) ? (x+1, 0) : (x, y+1)

    visit[x][y] = true  // 가로
    dfs(nextX, nextY)

    visit[x][y] = false // 세로
    dfs(nextX, nextY)
}
dfs(0, 0)
print(result)