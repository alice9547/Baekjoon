let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let N = input[0]
let M = input[1]
var list = [[Int]]()
var result = 0

for _ in 0..<N { list.append(readLine()!.split(separator: " ").map{Int(String($0))!}) }

func check(_ x: Int, _ y: Int, _ before: Int, _ cnt: Int, _ sum: Int) {
    guard cnt < 4 else { return result = max(result, sum) }
    
    if x-1 >= 0 && before != 1 { check(x-1, y, 2, cnt+1, sum+list[x-1][y]) }
    if x+1 < N && before != 2 { check(x+1, y, 1, cnt+1, sum+list[x+1][y]) }
    if y-1 >= 0 && before != 3 { check(x, y-1, 4, cnt+1, sum+list[x][y-1]) }
    if y+1 < M && before != 4 { check(x, y+1, 3, cnt+1, sum+list[x][y+1]) }
}

func checkSpecial(_ x: Int, _ y: Int) {
    // 'ㅗ', 'ㅜ'
    if x+1 < N && y-1 >= 0 && y+1 < M {
        result = max(result, max(list[x][y] + list[x+1][y-1] + list[x+1][y] + list[x+1][y+1], list[x][y] + list[x][y-1] + list[x+1][y] + list[x][y+1]))
    }
    
    // 'ㅏ', 'ㅓ'
    if x+2 < N && y+1 < M {
        result = max(result, max(list[x][y] + list[x+1][y] + list[x+1][y+1] + list[x+2][y], list[x+1][y] + list[x][y+1] + list[x+1][y+1] + list[x+2][y+1]))
    }
}

for i in 0..<N {
    for j in 0..<M {
        check(i, j, 0, 1, list[i][j])
        checkSpecial(i, j)
    }
}
print(result)