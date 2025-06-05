let N = Int(readLine()!)!
var result = 1
solution(N)

func solution(_ num: Int) {
    if num == 0 {
        print(result)
    } else {
        result *= num
        solution(num-1)
    }
}