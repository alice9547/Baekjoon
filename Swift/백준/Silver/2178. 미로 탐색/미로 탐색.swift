let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var map = [[Int]]()

for _ in 0..<n {
    map.append(readLine()!.map { Int(String($0))! })
}

let dx = [-1, 1, 0, 0] // 상, 하, 좌, 우
let dy = [0, 0, -1, 1]

func bfs(_ x: Int, _ y: Int) {
    var queue = [(x, y)]

    while !queue.isEmpty {
        let (cx, cy) = queue.removeFirst()

        for i in 0..<4 {
            let nx = cx + dx[i]
            let ny = cy + dy[i]

            if nx >= 0, ny >= 0, nx < n, ny < m {
                if map[nx][ny] == 1 {
                    map[nx][ny] = map[cx][cy] + 1
                    queue.append((nx, ny))
                }
            }
        }
    }
}

bfs(0, 0)
print(map[n - 1][m - 1])