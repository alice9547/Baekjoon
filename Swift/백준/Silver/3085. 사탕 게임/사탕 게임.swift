let n = Int(readLine()!)!
var board: [[Character]] = []
var answer = 0

for _ in 0..<n {
    board.append(readLine()!.map { $0 })
}

for y in 0..<n {
    for x in 0..<n - 1 {
        board[y].swapAt(x, x + 1)
        check()
        board[y].swapAt(x, x + 1)
    }
}

for y in 0..<n - 1 {
    for x in 0..<n {
        (board[y][x], board[y + 1][x]) = (board[y + 1][x], board[y][x])
        check()
        (board[y][x], board[y + 1][x]) = (board[y + 1][x], board[y][x])
    }
}

print(answer)

func check() {
    for y in 0..<n {
        var count = 1
        for x in 1..<n {
            if board[y][x] == board[y][x - 1] {
                count += 1
            } else {
                count = 1
            }
            answer = max(answer, count)
        }
    }
    for x in 0..<n {
        var count = 1
        for y in 1..<n {
            if board[y][x] == board[y - 1][x] {
                count += 1
            } else {
                count = 1
            }
            answer = max(answer, count)
        }
        
    }
}