let NM = readLine()!.split(separator: " ").map { Int($0)! }
let N = NM[0], M = NM[1]
var map = [[Int]]()
for _ in 0..<N {
    map.append(readLine()!.map { Int(String($0))! })
}
let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

func bfs(_ x: Int, _ y: Int) {
    var queue = [(x,y)]
    
    while !queue.isEmpty {
        let (cx,cy) = queue.removeFirst()
        for i in 0..<4 {
            let nx = cx + dx[i]
            let ny = cy + dy[i]
            
            if nx>=0, ny>=0, nx<N, ny<M, map[nx][ny] == 1 {
                map[nx][ny] = map[cx][cy] + 1
                queue.append((nx,ny))
            }
        }
    }
}
bfs(0, 0)
print(map[N-1][M-1])