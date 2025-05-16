let cmd = readLine()!.split(separator: " ").map {Int($0)!}
let a = cmd[0], b = cmd[1], c = cmd[2], d = cmd[3], e = cmd[4], f = cmd[5]

loop: for x in -999...999 {
    for y in -999...999 {
        if a*x + b*y == c, d*x + e*y == f {
            print("\(x) \(y)")
            break loop
        }
    }
}