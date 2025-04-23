let cnt = Int(readLine()!)!
for _ in 0..<cnt {
    let l = Int(readLine()!)!
    let start = readLine()!.split(separator: " ").map {Int($0)!}
    let end = readLine()!.split(separator: " ").map {Int($0)!}
    let dx = [-2,-1,1,2,2,1,-1,-2]
    let dy = [1,2,2,1,-1,-2,-2,-1]
    var visit = [[Bool]](repeating: [Bool](repeating: false, count: l), count: l)
    var idx = 0
    var queue = [(start[0],start[1],0)]
    visit[start[1]][start[0]] = true
    
    while idx < queue.count {
        let (cx, cy, cnt) = queue[idx]
        idx += 1
        if (cx, cy) == (end[0], end[1]) {
            print(cnt)
            break
        }
        for i in 0..<8 {
            let (nx, ny) = (cx+dx[i], cy+dy[i])
            if nx>=0, ny>=0, nx<l, ny<l, !visit[ny][nx] {
                visit[ny][nx] = true
                queue.append((nx, ny, cnt+1))
            }
        }
    }
}