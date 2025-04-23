let MN = readLine()!.split(separator: " ").map {Int($0)!}
let M = MN[0], N = MN[1]
var map = [[Int]]()
for _ in 0..<N {
    map.append(readLine()!.split(separator: " ").map {Int($0)!})
}
let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]
var queue = [(Int, Int)]()

for i in 0..<N {
    for j in 0..<M {
        if map[i][j] == 1 {
            queue.append((i,j))
        }
    }
}

var idx = 0
func bfs() {
    while idx < queue.count {
        let (cx,cy) = queue[idx]
        idx += 1
        for i in 0..<4 {
            let nx = cx + dx[i]
            let ny = cy + dy[i]
            
            if nx>=0, ny>=0, nx<N, ny<M, map[nx][ny] == 0 {
                map[nx][ny] = map[cx][cy] + 1
                queue.append((nx,ny))
            }
        }
    }
}
bfs()
let list = map.flatMap { $0 }
print(list.contains(0) ? -1 : list.max()! - 1)