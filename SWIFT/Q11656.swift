var input: [String] = Array(readLine()!).map {String($0)}
var result = [String]()
var x = ""

for _ in 0..<input.count {
    x = input.popLast()! + x
    result.append(x)
}

result.sort()

result.forEach{
    print($0)
}