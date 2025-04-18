while true {
    let wh = readLine()!.split(separator: " ").map {Int($0)!}
    if wh.contains(0) { break }
    let w = wh[0], h = wh[1]
    var map = [[Int]]()
    for _ in 0..<h {
        map.append(readLine()!.split(separator: " ").map {Int($0)!})
    }
    let dx = [-1,-1,-1,0,0,1,1,1]
    let dy = [-1,0,1,-1,1,-1,0,1]
    var cnt = 0
    
    func dfs(_ x: Int, _ y: Int) {
        map[x][y] = 0
        
        for i in 0..<8 {
            let nx = dx[i] + x
            let ny = dy[i] + y
            
            if nx>=0, ny>=0, nx<h, ny<w, map[nx][ny] == 1 {
                dfs(nx, ny)
            }
        }
    }
    
    for i in 0..<h {
        for j in 0..<w {
            if map[i][j] == 1 {
                cnt += 1
                dfs(i, j)
            }
        }
    }
    print(cnt)
}