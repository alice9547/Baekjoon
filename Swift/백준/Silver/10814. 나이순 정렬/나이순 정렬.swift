struct member{ //1번
    var name: String
    var age: Int
    var order: Int
}

let n = Int(readLine()!)!
var memArr: [member] = [] //2번

for i in 0..<n {
    let a = readLine()!.split(separator: " ").map { s in
        String(s)
    }
    let mem = member(name: a[1], age: Int(a[0])!, order: i)
    memArr.append(mem) //3번
}

//4번
memArr.sort { a, b in
    a.age == b.age ? a.order < b.order : a.age < b.age
}

for j in 0..<n { //5번
    print("\(memArr[j].age) \(memArr[j].name)")
}