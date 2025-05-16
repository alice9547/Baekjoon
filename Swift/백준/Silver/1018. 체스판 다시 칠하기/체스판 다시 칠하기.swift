let NM = readLine()!.split(separator: " ").map {Int($0)!}
let N = NM[0], M = NM[1]

var board = [[String]]()
for _ in 0..<N {
    board.append(Array(readLine()!).map {String($0)})
}

var result = N*M

for i in 0..<N-7 {
    for j in 0..<M-7 {
        var cnt1 = 0
        var cnt2 = 0
        for n in i..<8+i {
            for m in j..<8+j {
                if (n + m) % 2 == 0 {
                    if board[n][m] == "B" {
                        cnt1 += 1
                    } else {
                        cnt2 += 1
                    }
                } else {
                    if board[n][m] == "W" {
                        cnt1 += 1
                    } else {
                        cnt2 += 1
                    }
                }
            }
        }
        result = min(result, cnt1, cnt2)
    }
}
print(result)