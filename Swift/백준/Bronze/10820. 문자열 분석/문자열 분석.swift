while let input = readLine() {
    var upper = 0
    var lower = 0
    var num = 0
    var space = 0
    
    for i in input {
        if i.isUppercase {
            upper += 1
        } else if i.isLowercase {
            lower += 1
        } else if i == " " {
            space += 1
        } else {
            num += 1
        }
    }
    
    print("\(lower) \(upper) \(num) \(space)")
}
