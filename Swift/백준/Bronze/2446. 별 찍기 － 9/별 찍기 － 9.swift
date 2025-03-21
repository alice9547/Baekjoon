let n = Int(readLine() ?? "") ?? 0

for i in 1...n {
    var string = ""
    for _ in 1..<i {
        string += " "
    }
    for _ in 1...2*n - (2*i - 1) {
        string += "*"
    }
    print(string)
}

for i in 1..<n {
    var string = ""
    for _ in 1..<n - i {
        string += " "
    }
    for _ in 1...2*i + 1{
        string += "*"
    }
    print(string)
}